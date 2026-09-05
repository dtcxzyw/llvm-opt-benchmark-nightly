Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytesobject?download=true
inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@stringlib__two_way:bb.a
.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0126199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = getelementptr i8, ptr %i.af, i64 %.0126199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr i8, ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr i8, ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !167

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !168

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1127200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1127200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2139, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !22  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr i8, ptr %i.az, i64 %.4141.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr240                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6143.us, align 1, !tbaa !22
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !22  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6143.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.l
  %.6143.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.l ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph207.us, %bb.i
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cb, %bb.i ] ; 5 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !22
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %.not153.us = icmp eq i8 %i.by, %i.ca
  br i1 %.not153.us, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cb = add i64 %.0124205.us, 1                 ; 2 uses
  %exitcond280.not = icmp eq i64 %i.cb, %.fr240
  br i1 %exitcond280.not, label %..preheader_crit_edge.us, label %bb.h, !llvm.loop !169

bb.j:                                             ; preds = %.lr.ph210.us
  %i.cc = add nuw nsw i64 %.0209.us, 1            ; 2 uses
  %exitcond281.not = icmp eq i64 %i.cc, %.fr239
  br i1 %exitcond281.not, label %.thread170, label %.lr.ph210.us, !llvm.loop !170

.lr.ph210.us:                                     ; preds = %..preheader_crit_edge.us, %bb.j
  %.0209.us = phi i64 [ %i.cc, %bb.j ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.cd = getelementptr i8, ptr %i.g, i64 %.0209.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %i.cf = getelementptr i8, ptr %i.bw, i64 %.0209.us
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !22
  %.not151.us = icmp eq i8 %i.ce, %i.cg
  br i1 %.not151.us, label %bb.j, label %.thread167.us

.thread167.us:                                    ; preds = %.lr.ph210.us
  %i.ch = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ci = icmp slt i64 %.0124205.us, %i.o
  %i.cj = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.ck = sub i64 %.0124205.us, %.fr239
  %i.cl = getelementptr i8, ptr %i.bu, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 1
  %.7144.us = select i1 %i.ci, ptr %i.cj, ptr %i.cm
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread167.us
  %.9.us = phi ptr [ %.7144.us, %bb.k ], [ %i.ch, %.thread167.us ] ; 2 uses
  %i.cn = icmp ult ptr %.9.us, %i.j
  br i1 %i.cn, label %.preheader177.us.backedge, label %.thread

..preheader_crit_edge.us:                         ; preds = %bb.i
  br i1 %.not152208, label %.lr.ph210.us, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6143.us220 = phi ptr [ %.6143.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.co = load i8, ptr %.6143.us220, align 1, !tbaa !22
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.k, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !22  ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr i8, ptr %.6143.us220, i64 %i.ct ; 4 uses
  %.not293 = icmp eq i8 %i.cs, 0
  %.not150.us222 = icmp uge ptr %i.cu, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3131.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3131.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6143.us220.be = phi ptr [ %i.cu, %.preheader177.us217 ], [ %i.db, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.bm
  %i.cw = getelementptr i8, ptr %i.cv, i64 1      ; 2 uses
  br label %bb.m

3:                                                ; preds = %bb.m
  %4 = add nuw nsw i64 %.0209.us231, 1            ; 2 uses
  %exitcond279.not = icmp eq i64 %4, %.fr239
  br i1 %exitcond279.not, label %.thread170, label %bb.m, !llvm.loop !170

bb.m:                                             ; preds = %.preheader.us227, %3
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %4, %3 ] ; 3 uses
  %i.cx = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !22
  %i.cz = getelementptr i8, ptr %i.cw, i64 %.0209.us231
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !22
  %.not151.us232 = icmp eq i8 %i.cy, %i.da
  br i1 %.not151.us232, label %3, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.m
  %i.db = getelementptr i8, ptr %i.cu, i64 %i.bk  ; 2 uses
  %i.dc = icmp ult ptr %i.db, %i.j
  br i1 %i.dc, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6143 = phi ptr [ %i.dj, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.dd = load i8, ptr %.6143, align 1, !tbaa !22
  %i.de = and i8 %i.dd, 63
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.k, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !22  ; 2 uses
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr i8, ptr %.6143, i64 %i.di ; 3 uses
  %.not292 = icmp eq i8 %i.dh, 0
  %.not150 = icmp uge ptr %i.dj, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3131 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3131, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.bm
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  br label %.thread170

.thread170:                                       ; preds = %3, %..preheader_crit_edge.us, %bb.j, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dl, %.preheader ], [ %i.bw, %bb.j ], [ %i.cw, %3 ]
  %i.dm = ptrtoint ptr %.lcssa to i64
  %i.dn = ptrtoint ptr %0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.l, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.do, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.l ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyEval_SaveThread() local_unnamed_addr #2

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #2

declare i32 @PyBuffer_ToContiguous(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyObject_LengthHint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @bytes_mod(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val5 = load i64, ptr %i.b, align 8, !tbaa !54
  %i.c = and i64 %.val5, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.e, align 8, !tbaa !29
  %i.f = tail call ptr @_PyBytes_FormatEx(ptr noundef %i.d, i64 noundef %.val6, ptr noundef %1, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ @_Py_NotImplementedStruct, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @bytes_length(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !29
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_repeat(ptr nofree noundef captures(address, ret: address, provenance) %0, i64 noundef %1) #0 {
bb.a:
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 2 uses
  %.not = icmp slt i64 %1, 1
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val32.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %spec.store.select
  %i.b = icmp sgt i64 %.val32.pre, %i.a
  br i1 %i.b, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.90) #19
  br label %_Py_NewRef.exit

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = mul i64 %.val32.pre, %spec.store.select  ; 10 uses
  %i.f = icmp eq i64 %i.e, %.val32.pre
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.g, align 8, !tbaa !26
  %.not35 = icmp eq ptr %.val34, @PyBytes_Type
  br i1 %.not35, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %0, align 8, !tbaa !22
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.not30 = icmp ult i64 %i.e, -33
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !21
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.90) #19
  br label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.g
  %i.l = add nuw i64 %i.e, 33
  %i.m = tail call ptr @PyObject_Malloc(i64 noundef %i.l) #19 ; 11 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @PyErr_NoMemory() #19
  br label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr @PyBytes_Type, ptr %i.p, align 8, !tbaa !26
  %i.q = load i32, ptr @PyBytes_Type, align 8, !tbaa !22 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_PyObject_InitVar.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr @PyBytes_Type, align 8, !tbaa !22
  br label %_PyObject_InitVar.exit

_PyObject_InitVar.exit:                           ; preds = %bb.k, %bb.l
  tail call void @_Py_NewReference(ptr noundef nonnull %i.m) #19, !inline_history !1
  %i.t = getelementptr i8, ptr %i.m, i64 16
  store i64 %i.e, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr i8, ptr %i.m, i64 24
  store i64 -1, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr i8, ptr %i.m, i64 32       ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 %i.e
  store i8 0, ptr %i.w, align 1, !tbaa !22
  %i.x = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.y = icmp eq i64 %i.e, 0
  br i1 %i.y, label %_Py_NewRef.exit, label %bb.m

bb.m:                                             ; preds = %_PyObject_InitVar.exit
  %i.z = icmp eq i64 %.val, 1
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = load i8, ptr %i.x, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 %i.aa, i64 %i.e, i1 false)
  br label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.m
  %.not.i = icmp eq ptr %0, %i.m
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr readonly align 8 %i.x, i64 %.val, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ab = icmp slt i64 %.val, %i.e
  br i1 %i.ab, label %.lr.ph.i, label %_Py_NewRef.exit

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %.028.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.val, %bb.q ] ; 4 uses
  %i.ac = sub i64 %i.e, %.028.i
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.028.i, i64 %i.ac) ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %.028.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 8 %i.v, i64 %i.ad, i1 false)
end_hunk_0
