inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@ndarray_push_base:bb.a
  %xtraiter166 = and i64 %.pre99.i.i.i, 3         ; 3 uses
  %i.ti = icmp ult i64 %.pre99.i.i.i, 4
  br i1 %i.ti, label %.epil.preheader165, label %.lr.ph91.i.i.i.new

.lr.ph91.i.i.i.new:                               ; preds = %.lr.ph91.i.i.i
  %unroll_iter170 = and i64 %.pre99.i.i.i, 9223372036854775804
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph91.i.i.i.new
  %.16989.i.i.i = phi i64 [ 0, %.lr.ph91.i.i.i.new ], [ %i.ty, %bb.dg ] ; 6 uses
  %niter171 = phi i64 [ 0, %.lr.ph91.i.i.i.new ], [ %niter171.next.3, %bb.dg ]
  %i.tj = mul i64 %.16989.i.i.i, %i.td
  %i.tk = getelementptr i8, ptr %i.th, i64 %i.tj
  %i.tl = getelementptr [8 x i8], ptr %i.sa, i64 %.16989.i.i.i
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !58
  %i.tm = or disjoint i64 %.16989.i.i.i, 1        ; 2 uses
  %i.tn = mul i64 %i.tm, %i.td
  %i.to = getelementptr i8, ptr %i.th, i64 %i.tn
  %i.tp = getelementptr [8 x i8], ptr %i.sa, i64 %i.tm
  store ptr %i.to, ptr %i.tp, align 8, !tbaa !58
  %i.tq = or disjoint i64 %.16989.i.i.i, 2        ; 2 uses
  %i.tr = mul i64 %i.tq, %i.td
  %i.ts = getelementptr i8, ptr %i.th, i64 %i.tr
  %i.tt = getelementptr [8 x i8], ptr %i.sa, i64 %i.tq
  store ptr %i.ts, ptr %i.tt, align 8, !tbaa !58
  %i.tu = or disjoint i64 %.16989.i.i.i, 3        ; 2 uses
  %i.tv = mul i64 %i.tu, %i.td
  %i.tw = getelementptr i8, ptr %i.th, i64 %i.tv
  %i.tx = getelementptr [8 x i8], ptr %i.sa, i64 %i.tu
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !58
  %i.ty = add nuw nsw i64 %.16989.i.i.i, 4        ; 2 uses
  %niter171.next.3 = add i64 %niter171, 4         ; 2 uses
  %niter171.ncmp.3 = icmp eq i64 %niter171.next.3, %unroll_iter170
  br i1 %niter171.ncmp.3, label %._crit_edge92.i.i.i.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !127

._crit_edge92.i.i.i.loopexit.unr-lcssa:           ; preds = %bb.dg
  %lcmp.mod168.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod168.not, label %._crit_edge92.i.i.i, label %.epil.preheader165

.epil.preheader165:                               ; preds = %._crit_edge92.i.i.i.loopexit.unr-lcssa, %.lr.ph91.i.i.i
  %.16989.i.i.i.epil.init = phi i64 [ 0, %.lr.ph91.i.i.i ], [ %i.ty, %._crit_edge92.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter166, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %.epil.preheader165
  %.16989.i.i.i.epil = phi i64 [ %.16989.i.i.i.epil.init, %.epil.preheader165 ], [ %i.uc, %bb.dh ] ; 3 uses
  %epil.iter167 = phi i64 [ 0, %.epil.preheader165 ], [ %epil.iter167.next, %bb.dh ]
  %i.tz = mul i64 %.16989.i.i.i.epil, %i.td
  %i.ua = getelementptr i8, ptr %i.th, i64 %i.tz
  %i.ub = getelementptr [8 x i8], ptr %i.sa, i64 %.16989.i.i.i.epil
  store ptr %i.ua, ptr %i.ub, align 8, !tbaa !58
  %i.uc = add nuw nsw i64 %.16989.i.i.i.epil, 1
  %epil.iter167.next = add i64 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %._crit_edge92.i.i.i, label %bb.dh, !llvm.loop !128

._crit_edge92.i.i.i:                              ; preds = %._crit_edge92.i.i.i.loopexit.unr-lcssa, %bb.dh, %._crit_edge.i47.i.i, %.lr.ph.i48.i.i
  %.070.lcssa110.i.i.i = phi i64 [ 0, %.lr.ph.i48.i.i ], [ %.070.lcssa.i.i.i, %._crit_edge.i47.i.i ], [ %.070.lcssa.i.i.i, %bb.dh ], [ %.070.lcssa.i.i.i, %._crit_edge92.i.i.i.loopexit.unr-lcssa ]
  %i.ud = shl nsw i64 %i.sk, 3
  %i.ue = tail call ptr @PyMem_Malloc(i64 noundef %i.ud) #15 ; 4 uses
  %i.uf = getelementptr i8, ptr %i.az, i64 120
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !46
  %i.ug = icmp eq ptr %i.ue, null
  br i1 %i.ug, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge92.i.i.i
  %i.uh = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  br label %init_simple.exit.thread.i

bb.dj:                                            ; preds = %._crit_edge92.i.i.i
  store i64 %.070.lcssa110.i.i.i, ptr %i.ue, align 8, !tbaa !17
  %i.ui = load i32, ptr %i.bt, align 4, !tbaa !27 ; 2 uses
  %i.uj = icmp sgt i32 %i.ui, 1
  br i1 %i.uj, label %.lr.ph95.preheader.i.i.i, label %._crit_edge96.i.i.i

.lr.ph95.preheader.i.i.i:                         ; preds = %bb.dj
  %i.uk = zext nneg i32 %i.ui to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.ue, i64 8
  %i.ul = shl nuw nsw i64 %i.uk, 3
  %i.um = add nsw i64 %i.ul, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 -1, i64 %i.um, i1 false), !tbaa !17
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %.lr.ph95.preheader.i.i.i, %bb.dj
  %i.un = load ptr, ptr %i.nz, align 8, !tbaa !45 ; 3 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !17
  %i.up = icmp sgt i64 %i.uo, -1
  br i1 %i.up, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %._crit_edge96.i.i.i
  store i64 8, ptr %i.un, align 8, !tbaa !17
  br label %bb.dn

bb.dl:                                            ; preds = %._crit_edge96.i.i.i
  store i64 -8, ptr %i.un, align 8, !tbaa !17
  %i.uq = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !17 ; 2 uses
  %i.us = icmp sgt i64 %i.ur, 0
  br i1 %i.us, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ut = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.uu = shl i64 %i.ur, 3
  %i.uv = getelementptr i8, ptr %i.ut, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 -8
  store ptr %i.uw, ptr %i.bn, align 8, !tbaa !48
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.ux = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.uy = and i32 %i.ux, -261
  store i32 %i.uy, ptr %i.bl, align 8, !tbaa !49
  store i64 0, ptr %i.bd, align 8, !tbaa !101
  br label %init_structure.exit.i

init_structure.exit.i:                            ; preds = %bb.dn, %._crit_edge.i.i, %bb.cj
  %i.uz = load i32, ptr %.049.i, align 8, !tbaa !16 ; 2 uses
  %.not.i70.i = icmp sgt i32 %i.uz, -1
  br i1 %.not.i70.i, label %bb.do, label %init_ndbuf.exit

bb.do:                                            ; preds = %init_structure.exit.i
  %i.va = add nsw i32 %i.uz, -1                   ; 2 uses
  store i32 %i.va, ptr %.049.i, align 8, !tbaa !16
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %bb.dp, label %init_ndbuf.exit

bb.dp:                                            ; preds = %bb.do
  tail call void @_Py_Dealloc(ptr noundef nonnull %.049.i) #15
  br label %init_ndbuf.exit

init_simple.exit.thread.i:                        ; preds = %bb.di, %bb.da, %verify_structure.exit.i.i, %strides_from_shape.exit.i.i, %strides_from_shape.exit.i.thread132.i, %bb.ck, %bb.ci, %init_simple.exit.thread123.i, %init_simple.exit.thread200.i, %Py_DECREF.exit.i.i, %bb.am
  %i.vc = load i32, ptr %.049.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.vc, -1
  br i1 %.not.i.i, label %bb.dq, label %Py_DECREF.exit.i

bb.dq:                                            ; preds = %init_simple.exit.thread.i
  %i.vd = add nsw i32 %i.vc, -1                   ; 2 uses
  store i32 %i.vd, ptr %.049.i, align 8, !tbaa !16
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %bb.dr, label %Py_DECREF.exit.i

bb.dr:                                            ; preds = %bb.dq
  tail call void @_Py_Dealloc(ptr noundef nonnull %.049.i) #15
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.dr, %bb.dq, %init_simple.exit.thread.i
  tail call fastcc void @ndbuf_free(ptr noundef nonnull %i.az)
  br label %init_ndbuf.exit.thread

init_ndbuf.exit:                                  ; preds = %bb.dp, %bb.do, %init_structure.exit.i
  %i.vf = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !41 ; 3 uses
  store ptr %i.vg, ptr %i.az, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.vg, null
  br i1 %.not.i, label %ndbuf_push.exit, label %bb.ds

bb.ds:                                            ; preds = %init_ndbuf.exit
  %i.vh = getelementptr i8, ptr %i.vg, i64 8
  store ptr %i.az, ptr %i.vh, align 8, !tbaa !50
  br label %ndbuf_push.exit

ndbuf_push.exit:                                  ; preds = %init_ndbuf.exit, %bb.ds
  store ptr %i.az, ptr %i.vf, align 8, !tbaa !41
  %i.vi = getelementptr i8, ptr %i.az, i64 8
  store ptr null, ptr %i.vi, align 8, !tbaa !50
  br label %init_ndbuf.exit.thread

init_ndbuf.exit.thread:                           ; preds = %bb.m, %bb.ak, %bb.aj, %bb.z, %bb.y, %bb.t, %bb.r, %bb.g, %bb.l, %bb.j, %bb.v, %bb.al, %Py_DECREF.exit.i, %bb.aa, %bb.q, %bb.b, %bb.d, %ndbuf_push.exit
  %.0 = phi i32 [ 0, %ndbuf_push.exit ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.q ], [ -1, %bb.aa ], [ -1, %Py_DECREF.exit.i ], [ -1, %bb.al ], [ -1, %bb.v ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.y ], [ -1, %bb.z ], [ -1, %bb.aj ], [ -1, %bb.ak ], [ -1, %bb.m ]
  ret i32 %.0
}

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #2

declare ptr @PyMemoryView_FromBuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @seq_as_ssize_array(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 -9223372036854775808, 129) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %1, 3
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #15 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not38 = icmp eq i64 %1, 0
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %3 = trunc nuw i32 %2 to i1
  br i1 %3, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.02635.us = phi i64 [ %i.r, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %.val32.us = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.h = getelementptr i8, ptr %.val32.us, i64 168
  %.val34.us = load i64, ptr %i.h, align 8, !tbaa !19
  %i.i = and i64 %.val34.us, 33554432
  %.not.us = icmp eq i64 %i.i, 0
  br i1 %.not.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us, %bb.c
  %.pn.us = phi ptr [ %i.j, %bb.c ], [ %i.g, %.lr.ph.split.us ]
  %.in.us = getelementptr [8 x i8], ptr %.pn.us, i64 %.02635.us
  %i.k = load ptr, ptr %.in.us, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val.us = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr i8, ptr %.val.us, i64 168
  %.val33.us = load i64, ptr %i.m, align 8, !tbaa !19
  %i.n = and i64 %.val33.us, 16777216
  %.not29.us = icmp eq i64 %i.n, 0
  br i1 %.not29.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.k) #15
  %i.p = tail call ptr @PyErr_Occurred() #15
  %.not31.us = icmp eq ptr %i.p, null
  br i1 %.not31.us, label %bb.f, label %.split37.us

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr [8 x i8], ptr %i.c, i64 %.02635.us
  store i64 %i.o, ptr %i.q, align 8, !tbaa !17
  %i.r = add nuw nsw i64 %.02635.us, 1            ; 2 uses
  %exitcond43.not = icmp eq i64 %i.r, %1
  br i1 %exitcond43.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !129

.thread:                                          ; preds = %bb.a, %bb.b
  %i.s = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  br label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.02635 = phi i64 [ %i.ah, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %.val32 = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %.val32, i64 168
  %.val34 = load i64, ptr %i.t, align 8, !tbaa !19
  %i.u = and i64 %.val34, 33554432
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split, %bb.g
  %.pn = phi ptr [ %i.v, %bb.g ], [ %i.g, %.lr.ph.split ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.02635
  %i.w = load ptr, ptr %.in, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr i8, ptr %.val, i64 168
  %.val33 = load i64, ptr %i.y, align 8, !tbaa !19
  %i.z = and i64 %.val33, 16777216
  %.not29 = icmp eq i64 %i.z, 0
  br i1 %.not29, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.d, %bb.h
  %4 = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  %.not30 = icmp eq i32 %2, 0
  %5 = select i1 %.not30, ptr @.str.55, ptr @.str.54
  %i.aa = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %4, ptr noundef nonnull @.str.76, ptr noundef nonnull %5) #15 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #15
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.w) #15 ; 2 uses
  %i.ac = tail call ptr @PyErr_Occurred() #15
  %.not31 = icmp eq ptr %i.ac, null
  br i1 %.not31, label %bb.j, label %.split37.us

.split37.us:                                      ; preds = %bb.e, %bb.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #15
  br label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp slt i64 %i.ab, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.77) #15 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #15
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr [8 x i8], ptr %i.c, i64 %.02635
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !17
  %i.ah = add nuw nsw i64 %.02635, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !129

.critedge:                                        ; preds = %bb.f, %bb.l, %.preheader, %.split37.us, %bb.k, %.split.us, %.thread
  %.2 = phi ptr [ null, %.thread ], [ null, %.split37.us ], [ null, %.split.us ], [ null, %bb.k ], [ %i.c, %bb.l ], [ %i.c, %.preheader ], [ %i.c, %bb.f ]
  ret ptr %.2
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_flags(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %i.e) #15
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_offset(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !101
  %i.e = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.d) #15
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @ndarray_get_obj(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %i.d, align 8, !tbaa !16
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_nbytes(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.d) #15
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_readonly(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @PyBool_FromLong(i64 noundef %i.e) #15
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_itemsize(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.d) #15
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_format(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not, ptr @.str.63, ptr %i.d
  %i.e = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %spec.select) #15
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_ndim(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.e) #15
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_shape(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27   ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp eq ptr %i.d, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyTuple_New(i64 noundef 0) #15
  br label %ssize_array_as_tuple.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @PyTuple_New(i64 noundef range(i64 -2147483648, 2147483648) %i.g) #15 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ssize_array_as_tuple.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.l = icmp sgt i32 %i.f, 0
  br i1 %i.l, label %.lr.ph.i, label %ssize_array_as_tuple.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.m = getelementptr i8, ptr %i.j, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.018.i = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %.018.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.o) #15 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %ssize_array_as_tuple.exit

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.j, align 8, !tbaa !16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %ssize_array_as_tuple.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #15
  br label %ssize_array_as_tuple.exit

bb.h:                                             ; preds = %bb.d
  %i.u = getelementptr [8 x i8], ptr %i.m, i64 %.018.i
  store ptr %i.p, ptr %i.u, align 8, !tbaa !14
  %i.v = add nuw nsw i64 %.018.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.g
  br i1 %exitcond.not.i, label %ssize_array_as_tuple.exit, label %bb.d, !llvm.loop !130

ssize_array_as_tuple.exit:                        ; preds = %bb.h, %bb.b, %bb.c, %.preheader.i, %bb.e, %bb.f, %bb.g
  %.014.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.f ], [ %i.j, %.preheader.i ], [ %i.j, %bb.h ]
  ret ptr %.014.i
}

; Function Attrs: nounwind uwtable
define internal ptr @ndarray_get_strides(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27   ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp eq ptr %i.d, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyTuple_New(i64 noundef 0) #15
  br label %ssize_array_as_tuple.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @PyTuple_New(i64 noundef range(i64 -2147483648, 2147483648) %i.g) #15 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
end_hunk_0
