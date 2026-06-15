inline.NumInlined: 679
inline.NumDeleted: 129
begin_hunk_0_@stringlib__two_way:bb.a
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr291, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !161
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr291
  %i.t = sub i64 %.fr291, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1127, align 1, !tbaa !14
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr291
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0135199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = getelementptr i8, ptr %i.af, i64 %.0135199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr i8, ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr291
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !166

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond277.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond277.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !167

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1136200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1136200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2128, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr i8, ptr %i.az, i64 %.4130.idx ; 2 uses
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
  %i.bm = sub i64 0, %.fr291                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr291
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6132.us, align 1, !tbaa !14
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6132.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.k
  %.6132.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.k ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph210.us
  %i.bx = add nuw nsw i64 %.0209.us, 1            ; 2 uses
  %exitcond279.not.a = icmp eq i64 %i.bx, %.fr239
  br i1 %exitcond279.not.a, label %.thread170, label %.lr.ph210.us, !llvm.loop !168

.lr.ph210.us:                                     ; preds = %..preheader_crit_edge.us, %bb.h
  %.0209.us = phi i64 [ %i.bx, %bb.h ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.by = getelementptr i8, ptr %i.g, i64 %.0209.us
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  %i.ca = getelementptr i8, ptr %i.bw, i64 %.0209.us
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.not151.us = icmp eq i8 %i.bz, %i.cb
  br i1 %.not151.us, label %bb.h, label %.thread167.us

.thread167.us:                                    ; preds = %.lr.ph210.us
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph207.us, %bb.l
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cn, %bb.l ] ; 5 uses
  %i.cd = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.cf = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %.not153.us = icmp eq i8 %i.ce, %i.cg
  br i1 %.not153.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp slt i64 %.0124205.us, %i.o
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.cj = sub i64 %.0124205.us, %.fr239
  %i.ck = getelementptr i8, ptr %i.bu, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.7133.us = select i1 %i.ch, ptr %i.ci, ptr %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.j ], [ %i.cc, %.thread167.us ] ; 2 uses
  %i.cm = icmp ult ptr %.9.us, %i.j
  br i1 %i.cm, label %.preheader177.us.backedge, label %.thread

bb.l:                                             ; preds = %bb.i
  %i.cn = add i64 %.0124205.us, 1                 ; 2 uses
  %exitcond280.not = icmp eq i64 %i.cn, %.fr291
  br i1 %exitcond280.not, label %..preheader_crit_edge.us, label %bb.i, !llvm.loop !169

..preheader_crit_edge.us:                         ; preds = %bb.l
  br i1 %.not152208, label %.lr.ph210.us, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.co = load i8, ptr %.6132.us220, align 1, !tbaa !14
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.k, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14  ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr i8, ptr %.6132.us220, i64 %i.ct ; 4 uses
  %.not293 = icmp eq i8 %i.cs, 0
  %.not150.us222 = icmp uge ptr %i.cu, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cu, %.preheader177.us217 ], [ %i.dc, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.bm
  %i.cw = getelementptr i8, ptr %i.cv, i64 1      ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cx = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond278.not = icmp eq i64 %i.cx, %.fr239
  br i1 %exitcond278.not, label %.thread170, label %bb.n, !llvm.loop !168

bb.n:                                             ; preds = %.preheader.us227, %bb.m
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cx, %bb.m ] ; 3 uses
  %i.cy = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = getelementptr i8, ptr %i.cw, i64 %.0209.us231
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %.not151.us232 = icmp eq i8 %i.cz, %i.db
  br i1 %.not151.us232, label %bb.m, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.n
  %i.dc = getelementptr i8, ptr %i.cu, i64 %i.bk  ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %i.j
  br i1 %i.dd, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dk, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.de = load i8, ptr %.6132, align 1, !tbaa !14
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.k, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !14  ; 2 uses
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr i8, ptr %.6132, i64 %i.dj ; 3 uses
  %.not292 = icmp eq i8 %i.di, 0
  %.not150 = icmp uge ptr %i.dk, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.bm
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  br label %.thread170

.thread170:                                       ; preds = %bb.m, %..preheader_crit_edge.us, %bb.h, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dm, %.preheader ], [ %i.bw, %bb.h ], [ %i.cw, %bb.m ]
  %i.dn = ptrtoint ptr %.lcssa to i64
  %i.do = ptrtoint ptr %0 to i64
  %i.dp = sub i64 %i.dn, %i.do
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.k, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dp, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.k ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
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
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val5 = load i64, ptr %i.b, align 8, !tbaa !48
  %i.c = and i64 %.val5, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.e, align 8, !tbaa !20
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
  %.val = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_repeat(ptr nofree noundef captures(address, ret: address, provenance) %0, i64 noundef %1) #0 {
bb.a:
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 2 uses
  %.not = icmp slt i64 %1, 1
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.val32.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %spec.store.select
  %i.b = icmp sgt i64 %.val32.pre, %i.a
  br i1 %i.b, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.90) #19
  br label %_Py_NewRef.exit

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = mul i64 %.val32.pre, %spec.store.select  ; 10 uses
  %i.f = icmp eq i64 %i.e, %.val32.pre
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.g, align 8, !tbaa !16
  %.not35 = icmp eq ptr %.val34, @PyBytes_Type
  br i1 %.not35, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %0, align 8, !tbaa !14
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.not30 = icmp ult i64 %i.e, -33
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
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
  store ptr @PyBytes_Type, ptr %i.p, align 8, !tbaa !16
  %i.q = load i32, ptr @PyBytes_Type, align 8, !tbaa !14 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
end_hunk_0
