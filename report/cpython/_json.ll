Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_json?download=true
inline.NumInlined: 263
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@scan_once_unicode:bb.a
  %n.vec313 = and i64 %i.ts, 9223372036854775800  ; 3 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph312
  %index315 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body314 ] ; 3 uses
  %i.vt = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %index315 ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 16
  %wide.load316 = load <4 x i32>, ptr %i.vt, align 4, !tbaa !10, !alias.scope !119
  %wide.load317 = load <4 x i32>, ptr %i.vu, align 4, !tbaa !10, !alias.scope !119
  %i.vv = trunc <4 x i32> %wide.load316 to <4 x i8>
  %i.vw = trunc <4 x i32> %wide.load317 to <4 x i8>
  %i.vx = getelementptr i8, ptr %i.tv, i64 %index315 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 4
  store <4 x i8> %i.vv, ptr %i.vx, align 1, !tbaa !28, !alias.scope !120, !noalias !119
  store <4 x i8> %i.vw, ptr %i.vy, align 1, !tbaa !28, !alias.scope !120, !noalias !119
  %index.next318 = add nuw i64 %index315, 8       ; 2 uses
  %i.vz = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.vz, label %middle.block319, label %vector.body314, !llvm.loop !107

middle.block319:                                  ; preds = %vector.body314
  %cmp.n320 = icmp eq i64 %i.ts, %n.vec313
  br i1 %cmp.n320, label %._crit_edge.i, label %PyUnicode_READ.exit204.i.preheader

PyUnicode_READ.exit204.i.preheader:               ; preds = %vector.memcheck308, %PyUnicode_READ.exit204.preheader.i, %middle.block319
  %.0236.i.ph = phi i64 [ 0, %vector.memcheck308 ], [ 0, %PyUnicode_READ.exit204.preheader.i ], [ %n.vec313, %middle.block319 ] ; 3 uses
  %i.wa = sub i64 %.8208223.i, %3
  %xtraiter329 = and i64 %i.wa, 3                 ; 2 uses
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br i1 %lcmp.mod330.not, label %PyUnicode_READ.exit204.i.prol.loopexit, label %PyUnicode_READ.exit204.i.prol

PyUnicode_READ.exit204.i.prol:                    ; preds = %PyUnicode_READ.exit204.i.preheader, %PyUnicode_READ.exit204.i.prol
  %.0236.i.prol = phi i64 [ %i.we, %PyUnicode_READ.exit204.i.prol ], [ %.0236.i.ph, %PyUnicode_READ.exit204.i.preheader ] ; 3 uses
  %prol.iter331 = phi i64 [ %prol.iter331.next, %PyUnicode_READ.exit204.i.prol ], [ 0, %PyUnicode_READ.exit204.i.preheader ]
  %gep271.i.prol = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %.0236.i.prol
  %i.wb = load i32, ptr %gep271.i.prol, align 4, !tbaa !10
  %i.wc = trunc i32 %i.wb to i8
  %i.wd = getelementptr i8, ptr %i.tv, i64 %.0236.i.prol
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !28
  %i.we = add nuw nsw i64 %.0236.i.prol, 1        ; 2 uses
  %prol.iter331.next = add i64 %prol.iter331, 1   ; 2 uses
  %prol.iter331.cmp.not = icmp eq i64 %prol.iter331.next, %xtraiter329
  br i1 %prol.iter331.cmp.not, label %PyUnicode_READ.exit204.i.prol.loopexit, label %PyUnicode_READ.exit204.i.prol, !llvm.loop !108

PyUnicode_READ.exit204.i.prol.loopexit:           ; preds = %PyUnicode_READ.exit204.i.prol, %PyUnicode_READ.exit204.i.preheader
  %.0236.i.unr = phi i64 [ %.0236.i.ph, %PyUnicode_READ.exit204.i.preheader ], [ %i.we, %PyUnicode_READ.exit204.i.prol ]
  %i.wf = sub i64 %.0236.i.ph, %.8208223.i
  %i.wg = add i64 %i.wf, %3
  %i.wh = icmp ugt i64 %i.wg, -4
  br i1 %i.wh, label %._crit_edge.i, label %PyUnicode_READ.exit204.i

PyUnicode_READ.exit204.us.i:                      ; preds = %PyUnicode_READ.exit204.us.i.prol.loopexit, %PyUnicode_READ.exit204.us.i
  %.0236.us.i = phi i64 [ %i.wt, %PyUnicode_READ.exit204.us.i ], [ %.0236.us.i.unr, %PyUnicode_READ.exit204.us.i.prol.loopexit ] ; 6 uses
  %gep269.i = getelementptr i8, ptr %invariant.gep268.i, i64 %.0236.us.i
  %i.wi = load i8, ptr %gep269.i, align 1, !tbaa !28
  %i.wj = getelementptr i8, ptr %i.tv, i64 %.0236.us.i
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !28
  %i.wk = add nuw nsw i64 %.0236.us.i, 1          ; 2 uses
  %gep269.i.1 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wk
  %i.wl = load i8, ptr %gep269.i.1, align 1, !tbaa !28
  %i.wm = getelementptr i8, ptr %i.tv, i64 %i.wk
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !28
  %i.wn = add nuw nsw i64 %.0236.us.i, 2          ; 2 uses
  %gep269.i.2 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wn
  %i.wo = load i8, ptr %gep269.i.2, align 1, !tbaa !28
  %i.wp = getelementptr i8, ptr %i.tv, i64 %i.wn
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !28
  %i.wq = add nuw nsw i64 %.0236.us.i, 3          ; 2 uses
  %gep269.i.3 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wq
  %i.wr = load i8, ptr %gep269.i.3, align 1, !tbaa !28
  %i.ws = getelementptr i8, ptr %i.tv, i64 %i.wq
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !28
  %i.wt = add nuw nsw i64 %.0236.us.i, 4          ; 2 uses
  %exitcond245.not.i.3 = icmp eq i64 %i.wt, %i.ts
  br i1 %exitcond245.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit204.us.i, !llvm.loop !109

PyUnicode_READ.exit204.us240.i:                   ; preds = %PyUnicode_READ.exit204.us240.i.prol.loopexit, %PyUnicode_READ.exit204.us240.i
  %.0236.us239.i = phi i64 [ %i.xj, %PyUnicode_READ.exit204.us240.i ], [ %.0236.us239.i.unr, %PyUnicode_READ.exit204.us240.i.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.0236.us239.i
  %i.wu = load i16, ptr %gep.i, align 2, !tbaa !32
  %i.wv = trunc i16 %i.wu to i8
  %i.ww = getelementptr i8, ptr %i.tv, i64 %.0236.us239.i
  store i8 %i.wv, ptr %i.ww, align 1, !tbaa !28
  %i.wx = add nuw nsw i64 %.0236.us239.i, 1       ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wx
  %i.wy = load i16, ptr %gep.i.1, align 2, !tbaa !32
  %i.wz = trunc i16 %i.wy to i8
  %i.xa = getelementptr i8, ptr %i.tv, i64 %i.wx
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !28
  %i.xb = add nuw nsw i64 %.0236.us239.i, 2       ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.xb
  %i.xc = load i16, ptr %gep.i.2, align 2, !tbaa !32
  %i.xd = trunc i16 %i.xc to i8
  %i.xe = getelementptr i8, ptr %i.tv, i64 %i.xb
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !28
  %i.xf = add nuw nsw i64 %.0236.us239.i, 3       ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.xf
  %i.xg = load i16, ptr %gep.i.3, align 2, !tbaa !32
  %i.xh = trunc i16 %i.xg to i8
  %i.xi = getelementptr i8, ptr %i.tv, i64 %i.xf
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !28
  %i.xj = add nuw nsw i64 %.0236.us239.i, 4       ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.xj, %i.ts
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit204.us240.i, !llvm.loop !110

PyUnicode_READ.exit204.i:                         ; preds = %PyUnicode_READ.exit204.i.prol.loopexit, %PyUnicode_READ.exit204.i
  %.0236.i = phi i64 [ %i.xz, %PyUnicode_READ.exit204.i ], [ %.0236.i.unr, %PyUnicode_READ.exit204.i.prol.loopexit ] ; 6 uses
  %gep271.i = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %.0236.i
  %i.xk = load i32, ptr %gep271.i, align 4, !tbaa !10
  %i.xl = trunc i32 %i.xk to i8
  %i.xm = getelementptr i8, ptr %i.tv, i64 %.0236.i
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !28
  %i.xn = add nuw nsw i64 %.0236.i, 1             ; 2 uses
  %gep271.i.1 = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %i.xn
  %i.xo = load i32, ptr %gep271.i.1, align 4, !tbaa !10
  %i.xp = trunc i32 %i.xo to i8
  %i.xq = getelementptr i8, ptr %i.tv, i64 %i.xn
  store i8 %i.xp, ptr %i.xq, align 1, !tbaa !28
  %i.xr = add nuw nsw i64 %.0236.i, 2             ; 2 uses
  %gep271.i.2 = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %i.xr
  %i.xs = load i32, ptr %gep271.i.2, align 4, !tbaa !10
  %i.xt = trunc i32 %i.xs to i8
  %i.xu = getelementptr i8, ptr %i.tv, i64 %i.xr
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !28
  %i.xv = add nuw nsw i64 %.0236.i, 3             ; 2 uses
  %gep271.i.3 = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %i.xv
  %i.xw = load i32, ptr %gep271.i.3, align 4, !tbaa !10
  %i.xx = trunc i32 %i.xw to i8
  %i.xy = getelementptr i8, ptr %i.tv, i64 %i.xv
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !28
  %i.xz = add nuw nsw i64 %.0236.i, 4             ; 2 uses
  %exitcond246.not.i.3 = icmp eq i64 %i.xz, %i.ts
  br i1 %exitcond246.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit204.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %PyUnicode_READ.exit204.us240.i.prol.loopexit, %PyUnicode_READ.exit204.us240.i, %PyUnicode_READ.exit204.us.i.prol.loopexit, %PyUnicode_READ.exit204.us.i, %PyUnicode_READ.exit204.i.prol.loopexit, %PyUnicode_READ.exit204.i, %middle.block, %vec.epilog.middle.block, %middle.block286, %vec.epilog.middle.block299, %middle.block319, %bb.hw
  br i1 %.not153212221.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge.i
  %i.ya = tail call ptr @PyFloat_FromString(ptr noundef nonnull %i.tt) #6
  br label %.thread224.i

bb.hy:                                            ; preds = %._crit_edge.i
  %i.yb = tail call ptr @PyLong_FromString(ptr noundef %i.tv, ptr noundef null, i32 noundef 10) #6
  br label %.thread224.i

.thread224.i:                                     ; preds = %bb.hy, %bb.hx, %bb.hv
  %.8208222.i = phi i64 [ %.8208.i, %bb.hv ], [ %.8208223.i, %bb.hx ], [ %.8208223.i, %bb.hy ]
  %.2.i = phi ptr [ %i.tr, %bb.hv ], [ %i.ya, %bb.hx ], [ %i.yb, %bb.hy ]
  %.0132.i = phi ptr [ %i.tp, %bb.hv ], [ %i.tt, %bb.hx ], [ %i.tt, %bb.hy ] ; 3 uses
  %i.yc = load i32, ptr %.0132.i, align 8, !tbaa !28 ; 2 uses
  %.not.i.i211 = icmp sgt i32 %i.yc, -1
  br i1 %.not.i.i211, label %bb.hz, label %Py_DECREF.exit.i

bb.hz:                                            ; preds = %.thread224.i
  %i.yd = add nsw i32 %i.yc, -1                   ; 2 uses
  store i32 %i.yd, ptr %.0132.i, align 8, !tbaa !28
  %i.ye = icmp eq i32 %i.yd, 0
  br i1 %i.ye, label %bb.ia, label %Py_DECREF.exit.i

bb.ia:                                            ; preds = %bb.hz
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0132.i) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.ia, %bb.hz, %.thread224.i
  store i64 %.8208222.i, ptr %4, align 8, !tbaa !30
  br label %raise_stop_iteration.exit

raise_stop_iteration.exit:                        ; preds = %Py_DECREF.exit.i, %.thread216.i, %bb.hu, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.i, %bb.h, %bb.g, %bb.f, %_Py_EnterRecursiveCall.exit153, %_Py_EnterRecursiveCall.exit, %bb.ef, %bb.cx, %bb.bt, %bb.bj, %bb.ar, %bb.ad, %_Py_EnterRecursiveCall.exit153.thread, %_Py_EnterRecursiveCall.exit.thread, %bb.n, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %_Py_EnterRecursiveCall.exit153 ], [ null, %bb.i ], [ %i.aa, %bb.n ], [ %i.lq, %bb.ef ], [ %i.ak, %_Py_EnterRecursiveCall.exit.thread ], [ null, %_Py_EnterRecursiveCall.exit ], [ %i.au, %_Py_EnterRecursiveCall.exit153.thread ], [ @_Py_NoneStruct, %bb.ad ], [ @_Py_TrueStruct, %bb.ar ], [ @_Py_FalseStruct, %bb.bj ], [ %i.fs, %bb.bt ], [ %i.im, %bb.cx ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.hu ], [ null, %bb.eq ], [ %.2.i, %Py_DECREF.exit.i ], [ null, %bb.fo ], [ null, %bb.en ], [ null, %bb.eo ], [ null, %bb.ep ], [ null, %bb.fl ], [ null, %bb.fm ], [ null, %bb.fn ], [ null, %.thread216.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_Py_EnterRecursiveCall(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyThreadState_GetCurrent() #6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 952
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %i.c = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = icmp ule i64 %.val.i, %i.d
  %i.f = add i64 %.val.i, -32768
  %i.g = icmp ugt i64 %i.f, %i.d
  %narrow.i.not.i = or i1 %i.e, %i.g
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.a, ptr noundef %0) #6
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_parse_object_unicode(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %.not = icmp eq ptr %i.d, @_Py_NoneStruct       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = getelementptr i8, ptr %2, i64 32
  %.val.i = load i32, ptr %i.e, align 8           ; 3 uses
  %i.f = and i32 %.val.i, 32
  %.not.i267 = icmp eq i32 %i.f, 0
  br i1 %.not.i267, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 78 uses
  %i.i = lshr i32 %.val.i, 2
  %i.j = and i32 %i.i, 7                          ; 26 uses
  %i.k = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !27
  %i.l = add i64 %.val, -1                        ; 11 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.m = tail call ptr @PyList_New(i64 noundef 0) #6
  br label %bb.f

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = tail call ptr @PyDict_New() #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0191 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 13 uses
  %i.o = icmp eq ptr %.0191, null
  br i1 %i.o, label %Py_DECREF.exit247, label %.preheader363

.preheader363:                                    ; preds = %bb.f
  %.not231406 = icmp sgt i64 %3, %i.l
  br i1 %.not231406, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader363, %.critedge2
  %.0188407 = phi i64 [ %i.az, %.critedge2 ], [ %3, %.preheader363 ] ; 18 uses
  switch i32 %i.j, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %.0.i, i64 %.0188407
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28
  %i.r = zext i8 %i.q to i32
  br label %PyUnicode_READ.exit

bb.h:                                             ; preds = %.lr.ph
  %i.s = getelementptr [2 x i8], ptr %.0.i, i64 %.0188407
  %i.t = load i16, ptr %i.s, align 2, !tbaa !32
  %i.u = zext i16 %i.t to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %.lr.ph
  %i.v = getelementptr [4 x i8], ptr %.0.i, i64 %.0188407
  %i.w = load i32, ptr %i.v, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i268 = phi i32 [ %i.r, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.i ]
  %i.x = icmp eq i32 %.0.i268, 32
  br i1 %i.x, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %PyUnicode_READ.exit
  switch i32 %i.j, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %.0.i, i64 %.0188407
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit270

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr [2 x i8], ptr %.0.i, i64 %.0188407
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !32
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit270

bb.m:                                             ; preds = %bb.j
  %i.ae = getelementptr [4 x i8], ptr %.0.i, i64 %.0188407
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  br label %PyUnicode_READ.exit270

PyUnicode_READ.exit270:                           ; preds = %bb.k, %bb.l, %bb.m
  %.0.i269 = phi i32 [ %i.aa, %bb.k ], [ %i.ad, %bb.l ], [ %i.af, %bb.m ]
  %i.ag = icmp eq i32 %.0.i269, 9
  br i1 %i.ag, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %PyUnicode_READ.exit270
  switch i32 %i.j, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %.0.i, i64 %.0188407
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  br label %PyUnicode_READ.exit272

bb.p:                                             ; preds = %bb.n
  %i.ak = getelementptr [2 x i8], ptr %.0.i, i64 %.0188407
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !32
  %i.am = zext i16 %i.al to i32
  br label %PyUnicode_READ.exit272

bb.q:                                             ; preds = %bb.n
  %i.an = getelementptr [4 x i8], ptr %.0.i, i64 %.0188407
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !10
  br label %PyUnicode_READ.exit272

PyUnicode_READ.exit272:                           ; preds = %bb.o, %bb.p, %bb.q
  %.0.i271 = phi i32 [ %i.aj, %bb.o ], [ %i.am, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = icmp eq i32 %.0.i271, 10
  br i1 %i.ap, label %.critedge2, label %bb.r

bb.r:                                             ; preds = %PyUnicode_READ.exit272
  switch i32 %i.j, label %bb.u [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %.0.i, i64 %.0188407
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28
  %i.as = zext i8 %i.ar to i32
  br label %PyUnicode_READ.exit274

bb.t:                                             ; preds = %bb.r
  %i.at = getelementptr [2 x i8], ptr %.0.i, i64 %.0188407
  %i.au = load i16, ptr %i.at, align 2, !tbaa !32
  %i.av = zext i16 %i.au to i32
  br label %PyUnicode_READ.exit274

bb.u:                                             ; preds = %bb.r
  %i.aw = getelementptr [4 x i8], ptr %.0.i, i64 %.0188407
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  br label %PyUnicode_READ.exit274

PyUnicode_READ.exit274:                           ; preds = %bb.s, %bb.t, %bb.u
  %.0.i273 = phi i32 [ %i.as, %bb.s ], [ %i.av, %bb.t ], [ %i.ax, %bb.u ]
  %i.ay = icmp eq i32 %.0.i273, 13
  br i1 %i.ay, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %PyUnicode_READ.exit272, %PyUnicode_READ.exit270, %PyUnicode_READ.exit, %PyUnicode_READ.exit274
  %i.az = add i64 %.0188407, 1                    ; 3 uses
  %.not231 = icmp sgt i64 %i.az, %i.l
  br i1 %.not231, label %.critedge.thread, label %.lr.ph, !llvm.loop !121

.critedge:                                        ; preds = %PyUnicode_READ.exit274
  switch i32 %i.j, label %bb.x [
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.v:                                             ; preds = %.critedge
  %i.ba = getelementptr i8, ptr %.0.i, i64 %.0188407
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i32
  br label %PyUnicode_READ.exit276

bb.w:                                             ; preds = %.critedge
  %i.bd = getelementptr [2 x i8], ptr %.0.i, i64 %.0188407
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !32
  %i.bf = zext i16 %i.be to i32
  br label %PyUnicode_READ.exit276

bb.x:                                             ; preds = %.critedge
  %i.bg = getelementptr [4 x i8], ptr %.0.i, i64 %.0188407
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !10
  br label %PyUnicode_READ.exit276

PyUnicode_READ.exit276:                           ; preds = %bb.v, %bb.w, %bb.x
  %.0.i275 = phi i32 [ %i.bc, %bb.v ], [ %i.bf, %bb.w ], [ %i.bh, %bb.x ]
  %.not232 = icmp eq i32 %.0.i275, 125
  br i1 %.not232, label %bb.dw, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge2, %.preheader363, %PyUnicode_READ.exit276
  %.0188405 = phi i64 [ %.0188407, %PyUnicode_READ.exit276 ], [ %3, %.preheader363 ], [ %i.az, %.critedge2 ]
  %5 = getelementptr i8, ptr %0, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.critedge244, %.critedge.thread
  %.1 = phi i64 [ %.0188405, %.critedge.thread ], [ %.6, %.critedge244 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bi = icmp sgt i64 %.1, %i.l
  br i1 %i.bi, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  switch i32 %i.j, label %bb.ac [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr i8, ptr %.0.i, i64 %.1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  br label %PyUnicode_READ.exit278

bb.ab:                                            ; preds = %bb.z
  %i.bm = getelementptr [2 x i8], ptr %.0.i, i64 %.1
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !32
  %i.bo = zext i16 %i.bn to i32
  br label %PyUnicode_READ.exit278

bb.ac:                                            ; preds = %bb.z
  %i.bp = getelementptr [4 x i8], ptr %.0.i, i64 %.1
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !10
  br label %PyUnicode_READ.exit278

PyUnicode_READ.exit278:                           ; preds = %bb.aa, %bb.ab, %bb.ac
  %.0.i277 = phi i32 [ %i.bl, %bb.aa ], [ %i.bo, %bb.ab ], [ %i.bq, %bb.ac ]
  %.not233 = icmp eq i32 %.0.i277, 34
  br i1 %.not233, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %PyUnicode_READ.exit278, %bb.y
  call fastcc void @raise_errmsg(ptr noundef nonnull @.str.31, ptr noundef %2, i64 noundef %.1)
  br label %Py_XDECREF.exit.thread

bb.ae:                                            ; preds = %PyUnicode_READ.exit278
  %i.br = add i64 %.1, 1
  %i.bs = load i8, ptr %5, align 8, !tbaa !43
  %i.bt = sext i8 %i.bs to i32
  %i.bu = call fastcc ptr @scanstring_unicode(ptr noundef %2, i64 noundef %i.br, i32 noundef %i.bt, ptr noundef %i.a) ; 7 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %Py_XDECREF.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = call i32 @PyDict_SetDefaultRef(ptr noundef nonnull %1, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.b) #6
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.thread351, label %bb.ag

.thread351:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ec

bb.ag:                                            ; preds = %bb.af
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !29  ; 12 uses
  %i.bz = load i32, ptr %i.bu, align 8, !tbaa !28 ; 2 uses
  %.not.i258 = icmp sgt i32 %i.bz, -1
  br i1 %.not.i258, label %bb.ah, label %Py_DECREF.exit259

bb.ah:                                            ; preds = %bb.ag
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.bu, align 8, !tbaa !28
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ai, label %Py_DECREF.exit259

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.bu) #6
  br label %Py_DECREF.exit259

Py_DECREF.exit259:                                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  %.not234408 = icmp sgt i64 %i.cc, %i.l
  br i1 %.not234408, label %.critedge4.thread, label %.lr.ph410

.lr.ph410:                                        ; preds = %Py_DECREF.exit259, %.critedge6
  %.2409 = phi i64 [ %i.dn, %.critedge6 ], [ %i.cc, %Py_DECREF.exit259 ] ; 18 uses
  switch i32 %i.j, label %bb.al [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %.lr.ph410
  %i.cd = getelementptr i8, ptr %.0.i, i64 %.2409
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !28
  %i.cf = zext i8 %i.ce to i32
  br label %PyUnicode_READ.exit280

bb.ak:                                            ; preds = %.lr.ph410
  %i.cg = getelementptr [2 x i8], ptr %.0.i, i64 %.2409
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !32
  %i.ci = zext i16 %i.ch to i32
  br label %PyUnicode_READ.exit280

bb.al:                                            ; preds = %.lr.ph410
  %i.cj = getelementptr [4 x i8], ptr %.0.i, i64 %.2409
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !10
  br label %PyUnicode_READ.exit280

PyUnicode_READ.exit280:                           ; preds = %bb.aj, %bb.ak, %bb.al
  %.0.i279 = phi i32 [ %i.cf, %bb.aj ], [ %i.ci, %bb.ak ], [ %i.ck, %bb.al ]
  %i.cl = icmp eq i32 %.0.i279, 32
  br i1 %i.cl, label %.critedge6, label %bb.am

bb.am:                                            ; preds = %PyUnicode_READ.exit280
  switch i32 %i.j, label %bb.ap [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.cm = getelementptr i8, ptr %.0.i, i64 %.2409
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !28
  %i.co = zext i8 %i.cn to i32
  br label %PyUnicode_READ.exit282

bb.ao:                                            ; preds = %bb.am
  %i.cp = getelementptr [2 x i8], ptr %.0.i, i64 %.2409
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !32
  %i.cr = zext i16 %i.cq to i32
  br label %PyUnicode_READ.exit282

bb.ap:                                            ; preds = %bb.am
  %i.cs = getelementptr [4 x i8], ptr %.0.i, i64 %.2409
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  br label %PyUnicode_READ.exit282

PyUnicode_READ.exit282:                           ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.i281 = phi i32 [ %i.co, %bb.an ], [ %i.cr, %bb.ao ], [ %i.ct, %bb.ap ]
  %i.cu = icmp eq i32 %.0.i281, 9
  br i1 %i.cu, label %.critedge6, label %bb.aq

bb.aq:                                            ; preds = %PyUnicode_READ.exit282
  switch i32 %i.j, label %bb.at [
    i32 1, label %bb.ar
    i32 2, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.cv = getelementptr i8, ptr %.0.i, i64 %.2409
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !28
  %i.cx = zext i8 %i.cw to i32
  br label %PyUnicode_READ.exit284

bb.as:                                            ; preds = %bb.aq
  %i.cy = getelementptr [2 x i8], ptr %.0.i, i64 %.2409
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !32
  %i.da = zext i16 %i.cz to i32
  br label %PyUnicode_READ.exit284

bb.at:                                            ; preds = %bb.aq
  %i.db = getelementptr [4 x i8], ptr %.0.i, i64 %.2409
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !10
  br label %PyUnicode_READ.exit284

PyUnicode_READ.exit284:                           ; preds = %bb.ar, %bb.as, %bb.at
  %.0.i283 = phi i32 [ %i.cx, %bb.ar ], [ %i.da, %bb.as ], [ %i.dc, %bb.at ]
  %i.dd = icmp eq i32 %.0.i283, 10
  br i1 %i.dd, label %.critedge6, label %bb.au

bb.au:                                            ; preds = %PyUnicode_READ.exit284
  switch i32 %i.j, label %bb.ax [
    i32 1, label %bb.av
    i32 2, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.de = getelementptr i8, ptr %.0.i, i64 %.2409
  %i.df = load i8, ptr %i.de, align 1, !tbaa !28
  %i.dg = zext i8 %i.df to i32
  br label %PyUnicode_READ.exit286

bb.aw:                                            ; preds = %bb.au
  %i.dh = getelementptr [2 x i8], ptr %.0.i, i64 %.2409
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !32
  %i.dj = zext i16 %i.di to i32
  br label %PyUnicode_READ.exit286

bb.ax:                                            ; preds = %bb.au
  %i.dk = getelementptr [4 x i8], ptr %.0.i, i64 %.2409
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  br label %PyUnicode_READ.exit286

PyUnicode_READ.exit286:                           ; preds = %bb.av, %bb.aw, %bb.ax
  %.0.i285 = phi i32 [ %i.dg, %bb.av ], [ %i.dj, %bb.aw ], [ %i.dl, %bb.ax ]
  %i.dm = icmp eq i32 %.0.i285, 13
  br i1 %i.dm, label %.critedge6, label %.critedge4

.critedge6:                                       ; preds = %PyUnicode_READ.exit284, %PyUnicode_READ.exit282, %PyUnicode_READ.exit280, %PyUnicode_READ.exit286
  %i.dn = add i64 %.2409, 1                       ; 3 uses
  %.not234 = icmp sgt i64 %i.dn, %i.l
  br i1 %.not234, label %.critedge4.thread, label %.lr.ph410, !llvm.loop !122

.critedge4:                                       ; preds = %PyUnicode_READ.exit286
  switch i32 %i.j, label %bb.ba [
    i32 1, label %bb.ay
    i32 2, label %bb.az
  ]

bb.ay:                                            ; preds = %.critedge4
  %i.do = getelementptr i8, ptr %.0.i, i64 %.2409
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28
  %i.dq = zext i8 %i.dp to i32
  br label %PyUnicode_READ.exit288

bb.az:                                            ; preds = %.critedge4
  %i.dr = getelementptr [2 x i8], ptr %.0.i, i64 %.2409
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !32
  %i.dt = zext i16 %i.ds to i32
  br label %PyUnicode_READ.exit288

bb.ba:                                            ; preds = %.critedge4
  %i.du = getelementptr [4 x i8], ptr %.0.i, i64 %.2409
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !10
  br label %PyUnicode_READ.exit288

PyUnicode_READ.exit288:                           ; preds = %bb.ay, %bb.az, %bb.ba
  %.0.i287 = phi i32 [ %i.dq, %bb.ay ], [ %i.dt, %bb.az ], [ %i.dv, %bb.ba ]
  %.not235 = icmp eq i32 %.0.i287, 58
  br i1 %.not235, label %.preheader360, label %.critedge4.thread

.preheader360:                                    ; preds = %PyUnicode_READ.exit288
  %.3415 = add i64 %.2409, 1                      ; 3 uses
  %.not236416 = icmp sgt i64 %.3415, %i.l
  br i1 %.not236416, label %.critedge8, label %.lr.ph418

.critedge4.thread:                                ; preds = %PyUnicode_READ.exit288, %Py_DECREF.exit259, %.critedge6
  %.2365 = phi i64 [ %i.dn, %.critedge6 ], [ %i.cc, %Py_DECREF.exit259 ], [ %.2409, %PyUnicode_READ.exit288 ]
  call fastcc void @raise_errmsg(ptr noundef nonnull @.str.32, ptr noundef %2, i64 noundef %.2365)
  br label %.thread

.lr.ph418:                                        ; preds = %.preheader360, %.critedge10
  %.3417 = phi i64 [ %.3, %.critedge10 ], [ %.3415, %.preheader360 ] ; 14 uses
  switch i32 %i.j, label %bb.bd [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
  ]

bb.bb:                                            ; preds = %.lr.ph418
  %i.dw = getelementptr i8, ptr %.0.i, i64 %.3417
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = zext i8 %i.dx to i32
  br label %PyUnicode_READ.exit290

bb.bc:                                            ; preds = %.lr.ph418
  %i.dz = getelementptr [2 x i8], ptr %.0.i, i64 %.3417
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !32
  %i.eb = zext i16 %i.ea to i32
  br label %PyUnicode_READ.exit290

bb.bd:                                            ; preds = %.lr.ph418
  %i.ec = getelementptr [4 x i8], ptr %.0.i, i64 %.3417
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !10
  br label %PyUnicode_READ.exit290

PyUnicode_READ.exit290:                           ; preds = %bb.bb, %bb.bc, %bb.bd
  %.0.i289 = phi i32 [ %i.dy, %bb.bb ], [ %i.eb, %bb.bc ], [ %i.ed, %bb.bd ]
  %i.ee = icmp eq i32 %.0.i289, 32
  br i1 %i.ee, label %.critedge10, label %bb.be

bb.be:                                            ; preds = %PyUnicode_READ.exit290
  switch i32 %i.j, label %bb.bh [
    i32 1, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ef = getelementptr i8, ptr %.0.i, i64 %.3417
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = zext i8 %i.eg to i32
  br label %PyUnicode_READ.exit292

bb.bg:                                            ; preds = %bb.be
  %i.ei = getelementptr [2 x i8], ptr %.0.i, i64 %.3417
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !32
  %i.ek = zext i16 %i.ej to i32
  br label %PyUnicode_READ.exit292

bb.bh:                                            ; preds = %bb.be
  %i.el = getelementptr [4 x i8], ptr %.0.i, i64 %.3417
  %i.em = load i32, ptr %i.el, align 4, !tbaa !10
  br label %PyUnicode_READ.exit292

PyUnicode_READ.exit292:                           ; preds = %bb.bf, %bb.bg, %bb.bh
  %.0.i291 = phi i32 [ %i.eh, %bb.bf ], [ %i.ek, %bb.bg ], [ %i.em, %bb.bh ]
  %i.en = icmp eq i32 %.0.i291, 9
  br i1 %i.en, label %.critedge10, label %bb.bi

bb.bi:                                            ; preds = %PyUnicode_READ.exit292
  switch i32 %i.j, label %bb.bl [
    i32 1, label %bb.bj
    i32 2, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.eo = getelementptr i8, ptr %.0.i, i64 %.3417
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = zext i8 %i.ep to i32
  br label %PyUnicode_READ.exit294

bb.bk:                                            ; preds = %bb.bi
  %i.er = getelementptr [2 x i8], ptr %.0.i, i64 %.3417
  %i.es = load i16, ptr %i.er, align 2, !tbaa !32
  %i.et = zext i16 %i.es to i32
  br label %PyUnicode_READ.exit294

bb.bl:                                            ; preds = %bb.bi
  %i.eu = getelementptr [4 x i8], ptr %.0.i, i64 %.3417
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !10
  br label %PyUnicode_READ.exit294

PyUnicode_READ.exit294:                           ; preds = %bb.bj, %bb.bk, %bb.bl
  %.0.i293 = phi i32 [ %i.eq, %bb.bj ], [ %i.et, %bb.bk ], [ %i.ev, %bb.bl ]
  %i.ew = icmp eq i32 %.0.i293, 10
  br i1 %i.ew, label %.critedge10, label %bb.bm

bb.bm:                                            ; preds = %PyUnicode_READ.exit294
  switch i32 %i.j, label %bb.bp [
    i32 1, label %bb.bn
    i32 2, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.ex = getelementptr i8, ptr %.0.i, i64 %.3417
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.ez = zext i8 %i.ey to i32
  br label %PyUnicode_READ.exit296

bb.bo:                                            ; preds = %bb.bm
  %i.fa = getelementptr [2 x i8], ptr %.0.i, i64 %.3417
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !32
  %i.fc = zext i16 %i.fb to i32
  br label %PyUnicode_READ.exit296

bb.bp:                                            ; preds = %bb.bm
  %i.fd = getelementptr [4 x i8], ptr %.0.i, i64 %.3417
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !10
  br label %PyUnicode_READ.exit296

PyUnicode_READ.exit296:                           ; preds = %bb.bn, %bb.bo, %bb.bp
  %.0.i295 = phi i32 [ %i.ez, %bb.bn ], [ %i.fc, %bb.bo ], [ %i.fe, %bb.bp ]
  %i.ff = icmp eq i32 %.0.i295, 13
  br i1 %i.ff, label %.critedge10, label %.critedge8

.critedge10:                                      ; preds = %PyUnicode_READ.exit294, %PyUnicode_READ.exit292, %PyUnicode_READ.exit290, %PyUnicode_READ.exit296
  %.3 = add i64 %.3417, 1                         ; 3 uses
  %.not236 = icmp sgt i64 %.3, %i.l
  br i1 %.not236, label %.critedge8, label %.lr.ph418, !llvm.loop !123

.critedge8:                                       ; preds = %PyUnicode_READ.exit296, %.critedge10, %.preheader360
  %.3.lcssa = phi i64 [ %.3415, %.preheader360 ], [ %.3, %.critedge10 ], [ %.3417, %PyUnicode_READ.exit296 ] ; 2 uses
  %i.fg = call fastcc ptr @scan_once_unicode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.3.lcssa, ptr noundef %i.a) ; 11 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %.critedge8
  br i1 %.not, label %bb.cb, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fi = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %i.by, ptr noundef nonnull %i.fg) #6 ; 5 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not238 = icmp eq ptr %i.by, null
  br i1 %.not238, label %Py_DECREF.exit257, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fk = load i32, ptr %i.by, align 8, !tbaa !28 ; 2 uses
  %.not.i256 = icmp sgt i32 %i.fk, -1
  br i1 %.not.i256, label %bb.bu, label %Py_DECREF.exit257

bb.bu:                                            ; preds = %bb.bt
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.by, align 8, !tbaa !28
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.bv, label %Py_DECREF.exit257

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %i.by) #6
  br label %Py_DECREF.exit257

Py_DECREF.exit257:                                ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %i.fn = load i32, ptr %i.fg, align 8, !tbaa !28 ; 2 uses
  %.not.i254 = icmp sgt i32 %i.fn, -1
  br i1 %.not.i254, label %bb.bw, label %Py_DECREF.exit255

bb.bw:                                            ; preds = %Py_DECREF.exit257
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  store i32 %i.fo, ptr %i.fg, align 8, !tbaa !28
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bx, label %Py_DECREF.exit255

bb.bx:                                            ; preds = %bb.bw
  call void @_Py_Dealloc(ptr noundef nonnull %i.fg) #6
  br label %Py_DECREF.exit255

Py_DECREF.exit255:                                ; preds = %Py_DECREF.exit257, %bb.bw, %bb.bx
  %i.fq = call i32 @PyList_Append(ptr noundef nonnull %.0191, ptr noundef nonnull %i.fi) #6
  %.not359 = icmp eq i32 %i.fq, -1
  %i.fr = load i32, ptr %i.fi, align 8, !tbaa !28 ; 2 uses
  %.not.i252 = icmp sgt i32 %i.fr, -1
  br i1 %.not.i252, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %Py_DECREF.exit255
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.fi, align 8, !tbaa !28
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.fi) #6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %Py_DECREF.exit255
  br i1 %.not359, label %.critedge244, label %Py_DECREF.exit249

bb.cb:                                            ; preds = %bb.bq
  %i.fu = call i32 @PyDict_SetItem(ptr noundef nonnull %.0191, ptr noundef %i.by, ptr noundef nonnull %i.fg) #6
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not237 = icmp eq ptr %i.by, null
  br i1 %.not237, label %Py_DECREF.exit251, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fw = load i32, ptr %i.by, align 8, !tbaa !28 ; 2 uses
  %.not.i250 = icmp sgt i32 %i.fw, -1
  br i1 %.not.i250, label %bb.ce, label %Py_DECREF.exit251

bb.ce:                                            ; preds = %bb.cd
  %i.fx = add nsw i32 %i.fw, -1                   ; 2 uses
  store i32 %i.fx, ptr %i.by, align 8, !tbaa !28
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.cf, label %Py_DECREF.exit251

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.by) #6
  br label %Py_DECREF.exit251

Py_DECREF.exit251:                                ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %i.fz = load i32, ptr %i.fg, align 8, !tbaa !28 ; 2 uses
  %.not.i248 = icmp sgt i32 %i.fz, -1
  br i1 %.not.i248, label %bb.cg, label %Py_DECREF.exit249

bb.cg:                                            ; preds = %Py_DECREF.exit251
  %i.ga = add nsw i32 %i.fz, -1                   ; 2 uses
  store i32 %i.ga, ptr %i.fg, align 8, !tbaa !28
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.ch, label %Py_DECREF.exit249

bb.ch:                                            ; preds = %bb.cg
  call void @_Py_Dealloc(ptr noundef nonnull %i.fg) #6
  br label %Py_DECREF.exit249

Py_DECREF.exit249:                                ; preds = %bb.ch, %bb.cg, %Py_DECREF.exit251, %bb.ca
  %i.gc = load i64, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  %.not239421 = icmp sgt i64 %i.gc, %i.l
  br i1 %.not239421, label %.critedge243.thread, label %.lr.ph423

.lr.ph423:                                        ; preds = %Py_DECREF.exit249, %.critedge14
  %.4422 = phi i64 [ %i.hn, %.critedge14 ], [ %i.gc, %Py_DECREF.exit249 ] ; 23 uses
  switch i32 %i.j, label %bb.ck [
    i32 1, label %bb.ci
    i32 2, label %bb.cj
  ]

bb.ci:                                            ; preds = %.lr.ph423
  %i.gd = getelementptr i8, ptr %.0.i, i64 %.4422
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !28
  %i.gf = zext i8 %i.ge to i32
  br label %PyUnicode_READ.exit298

bb.cj:                                            ; preds = %.lr.ph423
  %i.gg = getelementptr [2 x i8], ptr %.0.i, i64 %.4422
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !32
  %i.gi = zext i16 %i.gh to i32
  br label %PyUnicode_READ.exit298

bb.ck:                                            ; preds = %.lr.ph423
  %i.gj = getelementptr [4 x i8], ptr %.0.i, i64 %.4422
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !10
  br label %PyUnicode_READ.exit298

PyUnicode_READ.exit298:                           ; preds = %bb.ci, %bb.cj, %bb.ck
  %.0.i297 = phi i32 [ %i.gf, %bb.ci ], [ %i.gi, %bb.cj ], [ %i.gk, %bb.ck ]
  %i.gl = icmp eq i32 %.0.i297, 32
  br i1 %i.gl, label %.critedge14, label %bb.cl

bb.cl:                                            ; preds = %PyUnicode_READ.exit298
  switch i32 %i.j, label %bb.co [
    i32 1, label %bb.cm
    i32 2, label %bb.cn
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.gm = getelementptr i8, ptr %.0.i, i64 %.4422
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !28
  %i.go = zext i8 %i.gn to i32
  br label %PyUnicode_READ.exit300

bb.cn:                                            ; preds = %bb.cl
  %i.gp = getelementptr [2 x i8], ptr %.0.i, i64 %.4422
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !32
  %i.gr = zext i16 %i.gq to i32
  br label %PyUnicode_READ.exit300

bb.co:                                            ; preds = %bb.cl
  %i.gs = getelementptr [4 x i8], ptr %.0.i, i64 %.4422
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !10
  br label %PyUnicode_READ.exit300

PyUnicode_READ.exit300:                           ; preds = %bb.cm, %bb.cn, %bb.co
  %.0.i299 = phi i32 [ %i.go, %bb.cm ], [ %i.gr, %bb.cn ], [ %i.gt, %bb.co ]
  %i.gu = icmp eq i32 %.0.i299, 9
  br i1 %i.gu, label %.critedge14, label %bb.cp

bb.cp:                                            ; preds = %PyUnicode_READ.exit300
  switch i32 %i.j, label %bb.cs [
    i32 1, label %bb.cq
    i32 2, label %bb.cr
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.gv = getelementptr i8, ptr %.0.i, i64 %.4422
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !28
  %i.gx = zext i8 %i.gw to i32
  br label %PyUnicode_READ.exit302

bb.cr:                                            ; preds = %bb.cp
  %i.gy = getelementptr [2 x i8], ptr %.0.i, i64 %.4422
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !32
  %i.ha = zext i16 %i.gz to i32
  br label %PyUnicode_READ.exit302

bb.cs:                                            ; preds = %bb.cp
  %i.hb = getelementptr [4 x i8], ptr %.0.i, i64 %.4422
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !10
  br label %PyUnicode_READ.exit302

PyUnicode_READ.exit302:                           ; preds = %bb.cq, %bb.cr, %bb.cs
  %.0.i301 = phi i32 [ %i.gx, %bb.cq ], [ %i.ha, %bb.cr ], [ %i.hc, %bb.cs ]
  %i.hd = icmp eq i32 %.0.i301, 10
  br i1 %i.hd, label %.critedge14, label %bb.ct

bb.ct:                                            ; preds = %PyUnicode_READ.exit302
  switch i32 %i.j, label %bb.cw [
    i32 1, label %bb.cu
    i32 2, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.he = getelementptr i8, ptr %.0.i, i64 %.4422
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !28
  %i.hg = zext i8 %i.hf to i32
  br label %PyUnicode_READ.exit304

bb.cv:                                            ; preds = %bb.ct
  %i.hh = getelementptr [2 x i8], ptr %.0.i, i64 %.4422
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !32
  %i.hj = zext i16 %i.hi to i32
  br label %PyUnicode_READ.exit304

bb.cw:                                            ; preds = %bb.ct
  %i.hk = getelementptr [4 x i8], ptr %.0.i, i64 %.4422
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !10
  br label %PyUnicode_READ.exit304

PyUnicode_READ.exit304:                           ; preds = %bb.cu, %bb.cv, %bb.cw
  %.0.i303 = phi i32 [ %i.hg, %bb.cu ], [ %i.hj, %bb.cv ], [ %i.hl, %bb.cw ]
  %i.hm = icmp eq i32 %.0.i303, 13
  br i1 %i.hm, label %.critedge14, label %.critedge12

.critedge14:                                      ; preds = %PyUnicode_READ.exit302, %PyUnicode_READ.exit300, %PyUnicode_READ.exit298, %PyUnicode_READ.exit304
  %i.hn = add i64 %.4422, 1                       ; 3 uses
  %.not239 = icmp sgt i64 %i.hn, %i.l
  br i1 %.not239, label %.critedge243.thread, label %.lr.ph423, !llvm.loop !124

.critedge12:                                      ; preds = %PyUnicode_READ.exit304
  switch i32 %i.j, label %bb.cz [
    i32 1, label %bb.cx
    i32 2, label %bb.cy
  ]

bb.cx:                                            ; preds = %.critedge12
  %i.ho = getelementptr i8, ptr %.0.i, i64 %.4422
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !28
  %i.hq = zext i8 %i.hp to i32
  br label %PyUnicode_READ.exit306

bb.cy:                                            ; preds = %.critedge12
  %i.hr = getelementptr [2 x i8], ptr %.0.i, i64 %.4422
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !32
  %i.ht = zext i16 %i.hs to i32
  br label %PyUnicode_READ.exit306

bb.cz:                                            ; preds = %.critedge12
  %i.hu = getelementptr [4 x i8], ptr %.0.i, i64 %.4422
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !10
  br label %PyUnicode_READ.exit306

PyUnicode_READ.exit306:                           ; preds = %bb.cx, %bb.cy, %bb.cz
  %.0.i305 = phi i32 [ %i.hq, %bb.cx ], [ %i.ht, %bb.cy ], [ %i.hv, %bb.cz ]
  %i.hw = icmp eq i32 %.0.i305, 125
  br i1 %i.hw, label %.critedge244.thread337, label %.critedge243

.critedge244.thread337:                           ; preds = %PyUnicode_READ.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.dw

.critedge243:                                     ; preds = %PyUnicode_READ.exit306
  switch i32 %i.j, label %bb.dc [
    i32 1, label %bb.da
    i32 2, label %bb.db
  ]

bb.da:                                            ; preds = %.critedge243
  %i.hx = getelementptr i8, ptr %.0.i, i64 %.4422
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !28
  %i.hz = zext i8 %i.hy to i32
  br label %PyUnicode_READ.exit308

bb.db:                                            ; preds = %.critedge243
  %i.ia = getelementptr [2 x i8], ptr %.0.i, i64 %.4422
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !32
  %i.ic = zext i16 %i.ib to i32
  br label %PyUnicode_READ.exit308

bb.dc:                                            ; preds = %.critedge243
  %i.id = getelementptr [4 x i8], ptr %.0.i, i64 %.4422
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !10
  br label %PyUnicode_READ.exit308

PyUnicode_READ.exit308:                           ; preds = %bb.da, %bb.db, %bb.dc
  %.0.i307 = phi i32 [ %i.hz, %bb.da ], [ %i.ic, %bb.db ], [ %i.ie, %bb.dc ]
  %.not240 = icmp eq i32 %.0.i307, 44
  br i1 %.not240, label %.preheader, label %.critedge243.thread

.preheader:                                       ; preds = %PyUnicode_READ.exit308
  %.5426 = add i64 %.4422, 1                      ; 3 uses
  %.not241427 = icmp sgt i64 %.5426, %i.l
  br i1 %.not241427, label %.critedge244, label %.lr.ph429

.critedge243.thread:                              ; preds = %PyUnicode_READ.exit308, %Py_DECREF.exit249, %.critedge14
  %.4373 = phi i64 [ %i.hn, %.critedge14 ], [ %i.gc, %Py_DECREF.exit249 ], [ %.4422, %PyUnicode_READ.exit308 ]
  call fastcc void @raise_errmsg(ptr noundef nonnull @.str.33, ptr noundef %2, i64 noundef %.4373)
  br label %Py_XDECREF.exit.thread

.lr.ph429:                                        ; preds = %.preheader, %.critedge18
  %.5428 = phi i64 [ %.5, %.critedge18 ], [ %.5426, %.preheader ] ; 17 uses
  switch i32 %i.j, label %bb.df [
    i32 1, label %bb.dd
    i32 2, label %bb.de
  ]

bb.dd:                                            ; preds = %.lr.ph429
  %i.if = getelementptr i8, ptr %.0.i, i64 %.5428
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !28
  %i.ih = zext i8 %i.ig to i32
  br label %PyUnicode_READ.exit310

bb.de:                                            ; preds = %.lr.ph429
  %i.ii = getelementptr [2 x i8], ptr %.0.i, i64 %.5428
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !32
  %i.ik = zext i16 %i.ij to i32
  br label %PyUnicode_READ.exit310

bb.df:                                            ; preds = %.lr.ph429
  %i.il = getelementptr [4 x i8], ptr %.0.i, i64 %.5428
  %i.im = load i32, ptr %i.il, align 4, !tbaa !10
  br label %PyUnicode_READ.exit310

PyUnicode_READ.exit310:                           ; preds = %bb.dd, %bb.de, %bb.df
  %.0.i309 = phi i32 [ %i.ih, %bb.dd ], [ %i.ik, %bb.de ], [ %i.im, %bb.df ]
  %i.in = icmp eq i32 %.0.i309, 32
  br i1 %i.in, label %.critedge18, label %bb.dg

bb.dg:                                            ; preds = %PyUnicode_READ.exit310
  switch i32 %i.j, label %bb.dj [
    i32 1, label %bb.dh
    i32 2, label %bb.di
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.io = getelementptr i8, ptr %.0.i, i64 %.5428
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !28
  %i.iq = zext i8 %i.ip to i32
  br label %PyUnicode_READ.exit312

bb.di:                                            ; preds = %bb.dg
  %i.ir = getelementptr [2 x i8], ptr %.0.i, i64 %.5428
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !32
  %i.it = zext i16 %i.is to i32
  br label %PyUnicode_READ.exit312

bb.dj:                                            ; preds = %bb.dg
  %i.iu = getelementptr [4 x i8], ptr %.0.i, i64 %.5428
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !10
  br label %PyUnicode_READ.exit312

PyUnicode_READ.exit312:                           ; preds = %bb.dh, %bb.di, %bb.dj
  %.0.i311 = phi i32 [ %i.iq, %bb.dh ], [ %i.it, %bb.di ], [ %i.iv, %bb.dj ]
  %i.iw = icmp eq i32 %.0.i311, 9
  br i1 %i.iw, label %.critedge18, label %bb.dk

bb.dk:                                            ; preds = %PyUnicode_READ.exit312
  switch i32 %i.j, label %bb.dn [
    i32 1, label %bb.dl
    i32 2, label %bb.dm
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.ix = getelementptr i8, ptr %.0.i, i64 %.5428
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !28
  %i.iz = zext i8 %i.iy to i32
  br label %PyUnicode_READ.exit314

bb.dm:                                            ; preds = %bb.dk
  %i.ja = getelementptr [2 x i8], ptr %.0.i, i64 %.5428
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !32
  %i.jc = zext i16 %i.jb to i32
  br label %PyUnicode_READ.exit314

bb.dn:                                            ; preds = %bb.dk
  %i.jd = getelementptr [4 x i8], ptr %.0.i, i64 %.5428
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !10
  br label %PyUnicode_READ.exit314

PyUnicode_READ.exit314:                           ; preds = %bb.dl, %bb.dm, %bb.dn
  %.0.i313 = phi i32 [ %i.iz, %bb.dl ], [ %i.jc, %bb.dm ], [ %i.je, %bb.dn ]
  %i.jf = icmp eq i32 %.0.i313, 10
  br i1 %i.jf, label %.critedge18, label %bb.do

bb.do:                                            ; preds = %PyUnicode_READ.exit314
  switch i32 %i.j, label %bb.dr [
    i32 1, label %bb.dp
    i32 2, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.jg = getelementptr i8, ptr %.0.i, i64 %.5428
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !28
  %i.ji = zext i8 %i.jh to i32
  br label %PyUnicode_READ.exit316

bb.dq:                                            ; preds = %bb.do
  %i.jj = getelementptr [2 x i8], ptr %.0.i, i64 %.5428
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !32
  %i.jl = zext i16 %i.jk to i32
  br label %PyUnicode_READ.exit316

bb.dr:                                            ; preds = %bb.do
  %i.jm = getelementptr [4 x i8], ptr %.0.i, i64 %.5428
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !10
  br label %PyUnicode_READ.exit316

PyUnicode_READ.exit316:                           ; preds = %bb.dp, %bb.dq, %bb.dr
  %.0.i315 = phi i32 [ %i.ji, %bb.dp ], [ %i.jl, %bb.dq ], [ %i.jn, %bb.dr ]
  %i.jo = icmp eq i32 %.0.i315, 13
  br i1 %i.jo, label %.critedge18, label %.critedge16

.critedge18:                                      ; preds = %PyUnicode_READ.exit314, %PyUnicode_READ.exit312, %PyUnicode_READ.exit310, %PyUnicode_READ.exit316
  %.5 = add i64 %.5428, 1                         ; 3 uses
  %.not241 = icmp sgt i64 %.5, %i.l
  br i1 %.not241, label %.critedge244, label %.lr.ph429, !llvm.loop !125

.critedge16:                                      ; preds = %PyUnicode_READ.exit316
  switch i32 %i.j, label %bb.du [
    i32 1, label %bb.ds
    i32 2, label %bb.dt
  ]

bb.ds:                                            ; preds = %.critedge16
  %i.jp = getelementptr i8, ptr %.0.i, i64 %.5428
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !28
  %i.jr = zext i8 %i.jq to i32
  br label %PyUnicode_READ.exit318

bb.dt:                                            ; preds = %.critedge16
  %i.js = getelementptr [2 x i8], ptr %.0.i, i64 %.5428
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !32
  %i.ju = zext i16 %i.jt to i32
  br label %PyUnicode_READ.exit318

bb.du:                                            ; preds = %.critedge16
  %i.jv = getelementptr [4 x i8], ptr %.0.i, i64 %.5428
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !10
  br label %PyUnicode_READ.exit318

PyUnicode_READ.exit318:                           ; preds = %bb.ds, %bb.dt, %bb.du
  %.0.i317 = phi i32 [ %i.jr, %bb.ds ], [ %i.ju, %bb.dt ], [ %i.jw, %bb.du ]
  %i.jx = icmp eq i32 %.0.i317, 125
  br i1 %i.jx, label %bb.dv, label %.critedge244

bb.dv:                                            ; preds = %PyUnicode_READ.exit318
  call fastcc void @raise_errmsg(ptr noundef nonnull @.str.34, ptr noundef %2, i64 noundef %.4422)
  br label %Py_XDECREF.exit.thread

.critedge244:                                     ; preds = %.critedge18, %.preheader, %PyUnicode_READ.exit318, %bb.ca
  %6 = phi i1 [ true, %PyUnicode_READ.exit318 ], [ false, %bb.ca ], [ true, %.preheader ], [ true, %.critedge18 ]
  %.6 = phi i64 [ %.5428, %PyUnicode_READ.exit318 ], [ %.3.lcssa, %bb.ca ], [ %.5426, %.preheader ], [ %.5, %.critedge18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %6, label %bb.y, label %Py_XDECREF.exit323

bb.dw:                                            ; preds = %.critedge244.thread337, %PyUnicode_READ.exit276
  %.7 = phi i64 [ %.4422, %.critedge244.thread337 ], [ %.0188407, %PyUnicode_READ.exit276 ]
  %i.jy = add i64 %.7, 1
  store i64 %i.jy, ptr %4, align 8, !tbaa !30
  br i1 %.not, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.jz = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.ka = call ptr @PyObject_CallOneArg(ptr noundef %i.jz, ptr noundef nonnull %.0191) #6 ; 3 uses
  %i.kb = load i32, ptr %.0191, align 8, !tbaa !28 ; 2 uses
  %.not.i246 = icmp sgt i32 %i.kb, -1
  br i1 %.not.i246, label %bb.dy, label %Py_DECREF.exit247

bb.dy:                                            ; preds = %bb.dx
  %i.kc = add nsw i32 %i.kb, -1                   ; 2 uses
  store i32 %i.kc, ptr %.0191, align 8, !tbaa !28
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %Py_DECREF.exit247.sink.split, label %Py_DECREF.exit247

bb.dz:                                            ; preds = %bb.dw
  %i.ke = getelementptr i8, ptr %0, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !37 ; 2 uses
  %.not242 = icmp eq ptr %i.kf, @_Py_NoneStruct
  br i1 %.not242, label %Py_DECREF.exit247, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kg = call ptr @PyObject_CallOneArg(ptr noundef %i.kf, ptr noundef nonnull %.0191) #6 ; 3 uses
  %i.kh = load i32, ptr %.0191, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.kh, -1
  br i1 %.not.i, label %bb.eb, label %Py_DECREF.exit247

bb.eb:                                            ; preds = %bb.ea
  %i.ki = add nsw i32 %i.kh, -1                   ; 2 uses
  store i32 %i.ki, ptr %.0191, align 8, !tbaa !28
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %Py_DECREF.exit247.sink.split, label %Py_DECREF.exit247

Py_XDECREF.exit.thread:                           ; preds = %bb.ae, %bb.ad, %.critedge243.thread, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %Py_XDECREF.exit323

.thread:                                          ; preds = %bb.br, %.critedge8, %bb.cb, %.critedge4.thread
  %.5219.ph = phi ptr [ null, %.critedge4.thread ], [ %i.fg, %bb.br ], [ null, %.critedge8 ], [ %i.fg, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %.not.i319 = icmp eq ptr %i.by, null
  br i1 %.not.i319, label %Py_XDECREF.exit, label %bb.ec

bb.ec:                                            ; preds = %.thread351, %.thread
  %.5213.ph356 = phi ptr [ %i.bu, %.thread351 ], [ %i.by, %.thread ] ; 3 uses
  %.5219.ph355 = phi ptr [ null, %.thread351 ], [ %.5219.ph, %.thread ] ; 3 uses
  %i.kk = load i32, ptr %.5213.ph356, align 8, !tbaa !28 ; 2 uses
  %.not.i.i320 = icmp sgt i32 %i.kk, -1
  br i1 %.not.i.i320, label %bb.ed, label %Py_XDECREF.exit

bb.ed:                                            ; preds = %bb.ec
  %i.kl = add nsw i32 %i.kk, -1                   ; 2 uses
  store i32 %i.kl, ptr %.5213.ph356, align 8, !tbaa !28
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.ee, label %Py_XDECREF.exit

bb.ee:                                            ; preds = %bb.ed
  call void @_Py_Dealloc(ptr noundef nonnull %.5213.ph356) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread, %bb.ec, %bb.ed, %bb.ee
  %.5219335346 = phi ptr [ %.5219.ph355, %bb.ee ], [ %.5219.ph, %.thread ], [ %.5219.ph355, %bb.ec ], [ %.5219.ph355, %bb.ed ] ; 4 uses
  %.not.i321 = icmp eq ptr %.5219335346, null
  br i1 %.not.i321, label %Py_XDECREF.exit323, label %bb.ef

bb.ef:                                            ; preds = %Py_XDECREF.exit
  %i.kn = load i32, ptr %.5219335346, align 8, !tbaa !28 ; 2 uses
  %.not.i.i322 = icmp sgt i32 %i.kn, -1
  br i1 %.not.i.i322, label %bb.eg, label %Py_XDECREF.exit323

bb.eg:                                            ; preds = %bb.ef
  %i.ko = add nsw i32 %i.kn, -1                   ; 2 uses
  store i32 %i.ko, ptr %.5219335346, align 8, !tbaa !28
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.eh, label %Py_XDECREF.exit323

bb.eh:                                            ; preds = %bb.eg
  call void @_Py_Dealloc(ptr noundef nonnull %.5219335346) #6
  br label %Py_XDECREF.exit323

Py_XDECREF.exit323:                               ; preds = %.critedge244, %Py_XDECREF.exit.thread, %bb.eh, %bb.eg, %bb.ef, %Py_XDECREF.exit
  %i.kq = load i32, ptr %.0191, align 8, !tbaa !28 ; 2 uses
  %.not.i.i325 = icmp sgt i32 %i.kq, -1
  br i1 %.not.i.i325, label %bb.ei, label %Py_DECREF.exit247

bb.ei:                                            ; preds = %Py_XDECREF.exit323
  %i.kr = add nsw i32 %i.kq, -1                   ; 2 uses
  store i32 %i.kr, ptr %.0191, align 8, !tbaa !28
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %Py_DECREF.exit247.sink.split, label %Py_DECREF.exit247

Py_DECREF.exit247.sink.split:                     ; preds = %bb.ei, %bb.eb, %bb.dy
  %.0.ph = phi ptr [ %i.kg, %bb.eb ], [ %i.ka, %bb.dy ], [ null, %bb.ei ]
  call void @_Py_Dealloc(ptr noundef nonnull %.0191) #6
  br label %Py_DECREF.exit247

Py_DECREF.exit247:                                ; preds = %Py_DECREF.exit247.sink.split, %bb.ei, %Py_XDECREF.exit323, %bb.eb, %bb.ea, %bb.dy, %bb.dx, %bb.dz, %bb.f
  %.0 = phi ptr [ null, %Py_XDECREF.exit323 ], [ null, %bb.f ], [ %.0191, %bb.dz ], [ null, %bb.ei ], [ %i.ka, %bb.dx ], [ %i.ka, %bb.dy ], [ %i.kg, %bb.ea ], [ %i.kg, %bb.eb ], [ %.0.ph, %Py_DECREF.exit247.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_parse_array_unicode(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call ptr @PyList_New(i64 noundef 0) #6 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 32
  %.val.i = load i32, ptr %i.d, align 8           ; 3 uses
  %i.e = and i32 %.val.i, 32
  %.not.i126 = icmp eq i32 %i.e, 0
  br i1 %.not.i126, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !28
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 51 uses
  %i.h = lshr i32 %.val.i, 2
  %i.i = and i32 %i.h, 7                          ; 17 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !27
  %i.k = add i64 %.val, -1                        ; 7 uses
  %.not178 = icmp sgt i64 %3, %i.k
  br i1 %.not178, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit, %.critedge2
  %.0105179 = phi i64 [ %i.av, %.critedge2 ], [ %3, %_PyUnicode_DATA.exit ] ; 18 uses
  switch i32 %i.i, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.0.i, i64 %.0105179
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = zext i8 %i.m to i32
  br label %PyUnicode_READ.exit

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr [2 x i8], ptr %.0.i, i64 %.0105179
  %i.p = load i16, ptr %i.o, align 2, !tbaa !32
  %i.q = zext i16 %i.p to i32
  br label %PyUnicode_READ.exit

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr [4 x i8], ptr %.0.i, i64 %.0105179
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.e, %bb.f, %bb.g
  %.0.i127 = phi i32 [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i127, 32
  br i1 %i.t, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %PyUnicode_READ.exit
  switch i32 %i.i, label %bb.k [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.0.i, i64 %.0105179
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %i.w = zext i8 %i.v to i32
  br label %PyUnicode_READ.exit129

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr [2 x i8], ptr %.0.i, i64 %.0105179
  %i.y = load i16, ptr %i.x, align 2, !tbaa !32
  %i.z = zext i16 %i.y to i32
  br label %PyUnicode_READ.exit129

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr [4 x i8], ptr %.0.i, i64 %.0105179
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  br label %PyUnicode_READ.exit129

PyUnicode_READ.exit129:                           ; preds = %bb.i, %bb.j, %bb.k
  %.0.i128 = phi i32 [ %i.w, %bb.i ], [ %i.z, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i128, 9
  br i1 %i.ac, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %PyUnicode_READ.exit129
  switch i32 %i.i, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.0.i, i64 %.0105179
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = zext i8 %i.ae to i32
  br label %PyUnicode_READ.exit131

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr [2 x i8], ptr %.0.i, i64 %.0105179
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !32
  %i.ai = zext i16 %i.ah to i32
  br label %PyUnicode_READ.exit131

bb.o:                                             ; preds = %bb.l
  %i.aj = getelementptr [4 x i8], ptr %.0.i, i64 %.0105179
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  br label %PyUnicode_READ.exit131

PyUnicode_READ.exit131:                           ; preds = %bb.m, %bb.n, %bb.o
  %.0.i130 = phi i32 [ %i.af, %bb.m ], [ %i.ai, %bb.n ], [ %i.ak, %bb.o ]
  %i.al = icmp eq i32 %.0.i130, 10
  br i1 %i.al, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %PyUnicode_READ.exit131
  switch i32 %i.i, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr i8, ptr %.0.i, i64 %.0105179
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i32
  br label %PyUnicode_READ.exit133

bb.r:                                             ; preds = %bb.p
  %i.ap = getelementptr [2 x i8], ptr %.0.i, i64 %.0105179
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !32
  %i.ar = zext i16 %i.aq to i32
  br label %PyUnicode_READ.exit133

bb.s:                                             ; preds = %bb.p
  %i.as = getelementptr [4 x i8], ptr %.0.i, i64 %.0105179
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  br label %PyUnicode_READ.exit133

PyUnicode_READ.exit133:                           ; preds = %bb.q, %bb.r, %bb.s
  %.0.i132 = phi i32 [ %i.ao, %bb.q ], [ %i.ar, %bb.r ], [ %i.at, %bb.s ]
  %i.au = icmp eq i32 %.0.i132, 13
  br i1 %i.au, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %PyUnicode_READ.exit131, %PyUnicode_READ.exit129, %PyUnicode_READ.exit, %PyUnicode_READ.exit133
  %i.av = add i64 %.0105179, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.av, %i.k
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !126

.critedge:                                        ; preds = %PyUnicode_READ.exit133
  switch i32 %i.i, label %bb.v [
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %.critedge
  %i.aw = getelementptr i8, ptr %.0.i, i64 %.0105179
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32
  br label %PyUnicode_READ.exit135

bb.u:                                             ; preds = %.critedge
  %i.az = getelementptr [2 x i8], ptr %.0.i, i64 %.0105179
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !32
  %i.bb = zext i16 %i.ba to i32
  br label %PyUnicode_READ.exit135

bb.v:                                             ; preds = %.critedge
  %i.bc = getelementptr [4 x i8], ptr %.0.i, i64 %.0105179
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10
  br label %PyUnicode_READ.exit135

end_hunk_0
