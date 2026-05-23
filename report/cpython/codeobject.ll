inline.NumInlined: 358
inline.NumDeleted: 68
begin_hunk_0_@get_localsplus_counts:bb.a
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = add i32 %.0233, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.lobit = lshr i8 %i.ab, 7
  %i.aj = zext nneg i8 %.lobit to i32
  %spec.select35 = add i32 %.0252, %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d
  %.126 = phi i32 [ %.0252, %bb.b ], [ %spec.select35, %bb.e ], [ %.0252, %bb.d ] ; 2 uses
  %.124 = phi i32 [ %spec.select, %bb.b ], [ %.0233, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.ae, %bb.b ], [ %.05, %bb.e ], [ %.05, %bb.d ] ; 2 uses
  %i.ak = add i32 %.0224, 1                       ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp sgt i64 %.16.val, %i.al
  br i1 %i.am, label %scalar.ph, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.f, %middle.block, %bb.a
  %.025.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %middle.block ], [ %.126, %bb.f ]
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %middle.block ], [ %.124, %bb.f ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %middle.block ], [ %.1, %bb.f ]
  store i32 %.0.lcssa, ptr %1, align 4, !tbaa !7
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i32 %.023.lcssa, ptr %2, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.025.lcssa, ptr %3, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCode_New(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val.i.i = load i64, ptr %i.f, align 8, !tbaa !125
  %i.g = add i64 %.val.i.i, -1                    ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %intern_strings.exit9.thread.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val14.i.i = load ptr, ptr %i.n, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %.val14.i.i, @PyUnicode_Type
  br i1 %.not.i.i, label %bb.d, label %intern_strings.exit9.thread.sink.split.i

bb.d:                                             ; preds = %bb.c
  tail call void @_PyUnicode_InternImmortal(ptr noundef %i.e, ptr noundef nonnull %i.k) #14
  %i.o = add nsw i64 %i.j, -1
  %i.p = icmp sgt i64 %i.j, 0
  br i1 %i.p, label %bb.b, label %.loopexit.i, !llvm.loop !136

.loopexit.i:                                      ; preds = %bb.d, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.s = tail call fastcc i32 @intern_constants(ptr noundef %i.r, ptr noundef null)
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Py_XDECREF.exit27, label %bb.e

bb.e:                                             ; preds = %.loopexit.i
  %i.u = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123  ; 2 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i3.i = load i64, ptr %i.x, align 8, !tbaa !125
  %i.y = add i64 %.val.i3.i, -1                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  br i1 %i.z, label %.lr.ph.i5.i, label %intern_code_constants.exit

.lr.ph.i5.i:                                      ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.v, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i5.i
  %i.ab = phi i64 [ %i.y, %.lr.ph.i5.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %intern_strings.exit9.thread.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val14.i6.i = load ptr, ptr %i.af, align 8, !tbaa !114
  %.not.i7.i = icmp eq ptr %.val14.i6.i, @PyUnicode_Type
  br i1 %.not.i7.i, label %bb.h, label %intern_strings.exit9.thread.sink.split.i

bb.h:                                             ; preds = %bb.g
  tail call void @_PyUnicode_InternImmortal(ptr noundef %i.w, ptr noundef nonnull %i.ac) #14
  %i.ag = add nsw i64 %i.ab, -1
  %i.ah = icmp sgt i64 %i.ab, 0
  br i1 %i.ah, label %bb.f, label %intern_code_constants.exit, !llvm.loop !136

intern_strings.exit9.thread.sink.split.i:         ; preds = %bb.c, %bb.b, %bb.g, %bb.f
  %i.ai = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.20) #14
  br label %Py_XDECREF.exit27

intern_code_constants.exit:                       ; preds = %bb.h, %bb.e
  %i.aj = tail call ptr @_Py_GetConfig() #14
  %i.ak = getelementptr i8, ptr %i.aj, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !137
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %bb.x

bb.i:                                             ; preds = %intern_code_constants.exit
  %i.am = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !129 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ap = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 32) #14 ; 4 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !105
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %remove_column_info.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ap, i64 32     ; 2 uses
  %i.at = getelementptr i8, ptr %i.an, i64 16     ; 2 uses
  %.val4454.i = load i64, ptr %i.at, align 8, !tbaa !125
  %i.au = icmp sgt i64 %.val4454.i, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.i
  %.03156.i = phi i64 [ %.132.i, %.critedge.i ], [ 0, %bb.k ] ; 4 uses
  %.03555.i = phi ptr [ %.237.i, %.critedge.i ], [ %i.as, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %i.ax = ptrtoint ptr %.03555.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = add i64 %i.az, 16
  %i.bb = getelementptr i8, ptr %i.av, i64 16
  %.val43.i = load i64, ptr %i.bb, align 8, !tbaa !125 ; 2 uses
  %.not40.i = icmp slt i64 %i.ba, %.val43.i
  br i1 %.not40.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bc = shl i64 %.val43.i, 1
  %i.bd = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.bc) #14
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %remove_column_info.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.az
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.136.i = phi ptr [ %i.bh, %bb.m ], [ %.03555.i, %.lr.ph.i ] ; 4 uses
  %i.bi = getelementptr i8, ptr %i.ao, i64 %.03156.i ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !106 ; 3 uses
  %i.bk = and i8 %i.bj, 120
  %i.bl = icmp eq i8 %i.bk, 120
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %.136.i, i64 1
  store i8 %i.bj, ptr %.136.i, align 1, !tbaa !106
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bn = and i8 %i.bj, 7
  %i.bo = or disjoint i8 %i.bn, -24
  store i8 %i.bo, ptr %.136.i, align 1, !tbaa !106
  %i.bp = getelementptr i8, ptr %.136.i, i64 1    ; 4 uses
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !106
  %1 = lshr i8 %i.bq, 3
  %2 = and i8 %1, 15
  switch i8 %2, label %bb.s [
    i8 12, label %bb.r
    i8 13, label %bb.q
    i8 14, label %bb.q
    i8 11, label %get_line_delta.exit.thread.i
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr i8, ptr %i.bi, i64 1      ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !106
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = and i32 %i.bt, 63                       ; 2 uses
  %i.bv = and i32 %i.bt, 64
  %.not11.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.by, %.lr.ph.i.i.i.i ], [ 0, %bb.q ]
  %.0813.i.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.bu, %bb.q ]
  %.pn12.i.i.i.i = phi ptr [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.br, %bb.q ]
  %.010.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i, i64 1 ; 2 uses
  %i.bw = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !106
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = add i32 %.014.i.i.i.i, 6                ; 2 uses
  %i.bz = and i32 %i.bx, 63
  %i.ca = shl i32 %i.bz, %i.by
  %i.cb = or i32 %i.ca, %.0813.i.i.i.i            ; 2 uses
  %i.cc = and i32 %i.bx, 64
  %.not.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i:                      ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.08.lcssa.i.i.i.i = phi i32 [ %i.bu, %bb.q ], [ %i.cb, %.lr.ph.i.i.i.i ]
  %.08.lcssa.i.i.i.fr.i = freeze i32 %.08.lcssa.i.i.i.i ; 3 uses
  %i.cd = and i32 %.08.lcssa.i.i.i.fr.i, 1
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  %i.ce = lshr i32 %.08.lcssa.i.i.i.fr.i, 1       ; 2 uses
  br i1 %.not.i.i.i, label %get_line_delta.exit.thread.i, label %get_line_delta.exit.i

bb.r:                                             ; preds = %bb.p
  br label %get_line_delta.exit.thread.i

bb.s:                                             ; preds = %bb.p
  br label %get_line_delta.exit.thread.i

get_line_delta.exit.thread.i:                     ; preds = %bb.s, %bb.r, %scan_signed_varint.exit.i.i, %bb.p
  %.0.i.ph.i = phi i32 [ 0, %bb.s ], [ 1, %bb.p ], [ 2, %bb.r ], [ %i.ce, %scan_signed_varint.exit.i.i ]
  %i.cf = shl nuw i32 %.0.i.ph.i, 1
  br label %bb.t

get_line_delta.exit.i:                            ; preds = %scan_signed_varint.exit.i.i
  %.not49.i = icmp eq i32 %i.ce, 0
  br i1 %.not49.i, label %write_signed_varint.exit.i, label %bb.t

bb.t:                                             ; preds = %get_line_delta.exit.i, %get_line_delta.exit.thread.i
  %i.cg = phi i32 [ %i.cf, %get_line_delta.exit.thread.i ], [ %.08.lcssa.i.i.i.fr.i, %get_line_delta.exit.i ] ; 3 uses
  %i.ch = icmp ugt i32 %i.cg, 63
  br i1 %i.ch, label %.lr.ph.i.i.i, label %write_signed_varint.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.i
  %.011.i.i.i = phi i32 [ %i.cn, %.lr.ph.i.i.i ], [ 1, %bb.t ]
  %.0710.i.i.i = phi i32 [ %i.cm, %.lr.ph.i.i.i ], [ %i.cg, %bb.t ] ; 3 uses
  %.089.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %i.bp, %bb.t ] ; 2 uses
  %i.ci = trunc i32 %.0710.i.i.i to i8
  %i.cj = and i8 %i.ci, 63
  %i.ck = or disjoint i8 %i.cj, 64
  %i.cl = getelementptr i8, ptr %.089.i.i.i, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.089.i.i.i, align 1, !tbaa !106
  %i.cm = lshr i32 %.0710.i.i.i, 6                ; 2 uses
  %i.cn = add nuw nsw i32 %.011.i.i.i, 1          ; 2 uses
  %i.co = icmp ugt i32 %.0710.i.i.i, 4095
  br i1 %i.co, label %.lr.ph.i.i.i, label %write_signed_varint.exit.loopexit.i, !llvm.loop !139

write_signed_varint.exit.loopexit.i:              ; preds = %.lr.ph.i.i.i
  %i.cp = zext nneg i32 %i.cn to i64
  br label %write_signed_varint.exit.i

write_signed_varint.exit.i:                       ; preds = %write_signed_varint.exit.loopexit.i, %bb.t, %get_line_delta.exit.i
  %.08.lcssa.i.i.i = phi ptr [ %i.bp, %bb.t ], [ %i.cl, %write_signed_varint.exit.loopexit.i ], [ %i.bp, %get_line_delta.exit.i ]
  %.07.lcssa.i.i.i = phi i32 [ %i.cg, %bb.t ], [ %i.cm, %write_signed_varint.exit.loopexit.i ], [ 0, %get_line_delta.exit.i ]
  %.0.lcssa.i.i.i = phi i64 [ 1, %bb.t ], [ %i.cp, %write_signed_varint.exit.loopexit.i ], [ 1, %get_line_delta.exit.i ]
  %i.cq = trunc nuw nsw i32 %.07.lcssa.i.i.i to i8
  store i8 %i.cq, ptr %.08.lcssa.i.i.i, align 1, !tbaa !106
  %i.cr = getelementptr i8, ptr %i.bp, i64 %.0.lcssa.i.i.i
  br label %bb.u

bb.u:                                             ; preds = %write_signed_varint.exit.i, %bb.o
  %.237.i = phi ptr [ %i.bm, %bb.o ], [ %i.cr, %write_signed_varint.exit.i ] ; 2 uses
  %.val.i = load i64, ptr %i.at, align 8, !tbaa !125 ; 2 uses
  %i.cs = add nsw i64 %.03156.i, 1
  %smax.i = call i64 @llvm.smax.i64(i64 %.val.i, i64 %i.cs)
  %i.ct = add nsw i64 %smax.i, -1                 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %.03156.i, %i.ct
  br i1 %exitcond.not.i81, label %._crit_edge.loopexit.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %.132.i, %i.ct
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph, !llvm.loop !140

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.132.in.i82 = phi i64 [ %.132.i, %bb.v ], [ %.03156.i, %bb.u ]
  %.132.i = add i64 %.132.in.i82, 1               ; 5 uses
  %i.cu = getelementptr i8, ptr %i.ao, i64 %.132.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !106
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.v, label %.critedge.i, !llvm.loop !140

.critedge.i:                                      ; preds = %.lr.ph
  %i.cx = icmp slt i64 %.132.i, %.val.i
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !141

._crit_edge.loopexit.i:                           ; preds = %.critedge.i, %bb.u, %bb.v
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.k
  %i.cy = phi ptr [ %i.ap, %bb.k ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.035.lcssa.i = phi ptr [ %i.as, %bb.k ], [ %.237.i, %._crit_edge.loopexit.i ]
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %i.da = ptrtoint ptr %.035.lcssa.i to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.dc) #14
  %.not.i = icmp eq i32 %i.dd, 0
  %i.de = load ptr, ptr %i.a, align 8             ; 3 uses
  br i1 %.not.i, label %remove_column_info.exit, label %remove_column_info.exit.thread

remove_column_info.exit.thread:                   ; preds = %bb.l, %bb.j, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %Py_XDECREF.exit27

remove_column_info.exit:                          ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %Py_XDECREF.exit27, label %bb.w

bb.w:                                             ; preds = %remove_column_info.exit
  store ptr %i.de, ptr %i.am, align 8, !tbaa !129
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %intern_code_constants.exit
  %.014 = phi ptr [ null, %intern_code_constants.exit ], [ %i.de, %bb.w ] ; 8 uses
  %i.dg = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !113
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %.val = load i64, ptr %i.di, align 8, !tbaa !125
  %i.dj = lshr i64 %.val, 1
  %i.dk = call ptr @_PyObject_NewVar(ptr noundef nonnull @PyCode_Type, i64 noundef %i.dj) #14 ; 30 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %.not.i17 = icmp eq ptr %.014, null
  br i1 %.not.i17, label %Py_XDECREF.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i32, ptr %.014, align 8, !tbaa !106 ; 2 uses
  %.not.i.i18 = icmp sgt i32 %i.dm, -1
  br i1 %.not.i.i18, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %.014, align 8, !tbaa !106
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %.014) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.dp = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %Py_XDECREF.exit27

bb.ac:                                            ; preds = %bb.x
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  %.val76.i = load i64, ptr %i.dr, align 8, !tbaa !125 ; 7 uses
  %i.ds = trunc i64 %.val76.i to i32              ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.du = icmp sgt i64 %.val76.i, 0
  br i1 %i.du, label %.lr.ph.i.i24, label %get_localsplus_counts.exit.i

.lr.ph.i.i24:                                     ; preds = %bb.ac
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !124
  %i.dw = getelementptr i8, ptr %i.dv, i64 32     ; 2 uses
  %min.iters.check = icmp ult i64 %.val76.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i24
  %i.dx = add nsw i64 %.val76.i, -1               ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = icmp ugt i32 %i.dy, 2147483646
  %i.ea = icmp ugt i64 %i.dx, 4294967295
  %i.eb = or i1 %i.dz, %i.ea
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.val76.i, 8589934588          ; 4 uses
  %i.ec = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi90, %vector.body ]
end_hunk_0
begin_hunk_1_@PyCode_NewEmpty:bb.a
bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.024.ph = phi ptr [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 4 uses
  %.022.ph = phi ptr [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 4 uses
  %.021.ph = phi ptr [ %i.i, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 4 uses
  %.0.ph = phi ptr [ %i.y, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !106
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.d, label %Py_XDECREF.exit35, label %bb.j

bb.j:                                             ; preds = %Py_XDECREF.exit
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %.not.i.i34 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i34, label %bb.k, label %Py_XDECREF.exit35

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !106
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %Py_XDECREF.exit35

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #14
  br label %Py_XDECREF.exit35

Py_XDECREF.exit35:                                ; preds = %Py_XDECREF.exit, %bb.j, %bb.k, %bb.l
  %.not.i36 = icmp eq ptr %.024.ph, null
  br i1 %.not.i36, label %Py_XDECREF.exit38, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit35
  %i.af = load i32, ptr %.024.ph, align 8, !tbaa !106 ; 2 uses
  %.not.i.i37 = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i37, label %bb.n, label %Py_XDECREF.exit38

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %.024.ph, align 8, !tbaa !106
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_XDECREF.exit38

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.024.ph) #14
  br label %Py_XDECREF.exit38

Py_XDECREF.exit38:                                ; preds = %Py_XDECREF.exit35, %bb.m, %bb.n, %bb.o
  %.not.i39 = icmp eq ptr %.022.ph, null
  br i1 %.not.i39, label %Py_XDECREF.exit41, label %bb.p

bb.p:                                             ; preds = %Py_XDECREF.exit38
  %i.ai = load i32, ptr %.022.ph, align 8, !tbaa !106 ; 2 uses
  %.not.i.i40 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i40, label %bb.q, label %Py_XDECREF.exit41

bb.q:                                             ; preds = %bb.p
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %.022.ph, align 8, !tbaa !106
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %Py_XDECREF.exit41

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %.022.ph) #14
  br label %Py_XDECREF.exit41

Py_XDECREF.exit41:                                ; preds = %Py_XDECREF.exit38, %bb.p, %bb.q, %bb.r
  %.not.i42 = icmp eq ptr %.021.ph, null
  br i1 %.not.i42, label %Py_XDECREF.exit44, label %bb.s

bb.s:                                             ; preds = %Py_XDECREF.exit41
  %i.al = load i32, ptr %.021.ph, align 8, !tbaa !106 ; 2 uses
  %.not.i.i43 = icmp sgt i32 %i.al, -1
  br i1 %.not.i.i43, label %bb.t, label %Py_XDECREF.exit44

bb.t:                                             ; preds = %bb.s
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %.021.ph, align 8, !tbaa !106
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.u, label %Py_XDECREF.exit44

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.021.ph) #14
  br label %Py_XDECREF.exit44

Py_XDECREF.exit44:                                ; preds = %bb.a, %Py_XDECREF.exit41, %bb.s, %bb.t, %bb.u
  %.05966778287 = phi ptr [ %.0.ph, %bb.u ], [ %.0.ph, %Py_XDECREF.exit41 ], [ %.0.ph, %bb.s ], [ %.0.ph, %bb.t ], [ null, %bb.a ]
  ret ptr %.05966778287
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @_PyCode_SafeAddr2Line(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._line_offsets, align 8      ; 9 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !180
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i32 %1, 1
  %i.i = tail call i32 @_Py_Instrumentation_GetLine(ptr noundef nonnull %0, i32 noundef %i.h) #14
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !125
  %i.l = shl i64 %.val, 1
  %i.m = icmp sgt i64 %i.l, %i.j
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.n = getelementptr i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152  ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 32       ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !tbaa !125
  %i.r = getelementptr i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !151
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.p, ptr %i.u, align 8, !tbaa !183
  %i.v = getelementptr i8, ptr %i.p, i64 %.val.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !186
  store i32 -1, ptr %2, align 8, !tbaa !187
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !188
  store i32 %i.s, ptr %i.t, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.y, align 8, !tbaa !190
  %i.z = call i32 @_PyCode_CheckLineNumber(i32 noundef %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.i, %bb.e ], [ %i.z, %bb.g ], [ -1, %bb.f ]
  ret i32 %.0
}

declare i32 @_Py_Instrumentation_GetLine(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_PyCode_InitAddressRange(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 12), (16, 20), (24, 40)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = getelementptr i8, ptr %1, i64 24
  store ptr %i.c, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr i8, ptr %i.c, i64 %.val
  %i.j = getelementptr i8, ptr %1, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !186
  store i32 -1, ptr %1, align 8, !tbaa !187
  %i.k = getelementptr i8, ptr %1, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !188
  store i32 %i.f, ptr %i.g, align 8, !tbaa !189
  %i.l = getelementptr i8, ptr %1, i64 8
  store i32 -1, ptr %i.l, align 8, !tbaa !190
  ret i32 -1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @_PyCode_CheckLineNumber(i32 noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !188 ; 2 uses
  %.not35 = icmp sgt i32 %.promoted, %0
  br i1 %.not35, label %..preheader_crit_edge, label %.lr.ph.a

..preheader_crit_edge:                            ; preds = %bb.a
  %.promoted38.pre = load i32, ptr %1, align 8, !tbaa !187
  br label %.preheader

.lr.ph.a:                                         ; preds = %bb.a
  %2 = getelementptr i8, ptr %1, i64 24           ; 3 uses
  %3 = getelementptr i8, ptr %1, i64 32
  %.val2.i = load ptr, ptr %3, align 8, !tbaa !186 ; 3 uses
  %4 = getelementptr i8, ptr %1, i64 16           ; 2 uses
  %5 = getelementptr i8, ptr %1, i64 8
  %.promoted36 = load ptr, ptr %2, align 8, !tbaa !183
  br label %6

.preheader:                                       ; preds = %_PyLineTable_NextAddressRange.exit, %..preheader_crit_edge
  %.promoted38 = phi i32 [ %.promoted38.pre, %..preheader_crit_edge ], [ %8, %_PyLineTable_NextAddressRange.exit ] ; 2 uses
  %i.b = icmp sgt i32 %.promoted38, %0
  br i1 %i.b, label %.lr.ph39, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !190
  br label %_PyLineTable_NextAddressRange.exit.thread

.lr.ph39:                                         ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  br label %bb.b

6:                                                ; preds = %.lr.ph.a, %_PyLineTable_NextAddressRange.exit
  %7 = phi ptr [ %.promoted36, %.lr.ph.a ], [ %.lcssa71, %_PyLineTable_NextAddressRange.exit ] ; 6 uses
  %8 = phi i32 [ %.promoted, %.lr.ph.a ], [ %38, %_PyLineTable_NextAddressRange.exit ] ; 3 uses
  %.not3.i = icmp ult ptr %7, %.val2.i
  br i1 %.not3.i, label %9, label %_PyLineTable_NextAddressRange.exit.thread

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1, !tbaa !106
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 15
  switch i8 %12, label %30 [
    i8 12, label %29
    i8 13, label %13
    i8 14, label %13
    i8 11, label %get_line_delta.exit.i.i
  ]

13:                                               ; preds = %9, %9
  %14 = getelementptr i8, ptr %7, i64 1           ; 2 uses
  %15 = load i8, ptr %14, align 1, !tbaa !106
  %16 = zext i8 %15 to i32                        ; 2 uses
  %17 = and i32 %16, 63                           ; 2 uses
  %18 = and i32 %16, 64
  %.not11.i.i.i.i.i = icmp eq i32 %18, 0
  br i1 %.not11.i.i.i.i.i, label %scan_signed_varint.exit.i.i.i, label %.lr.ph.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.a:                               ; preds = %13, %.lr.ph.i.i.i.i.i.a
  %.014.i.i.i.i.i = phi i32 [ %21, %.lr.ph.i.i.i.i.i.a ], [ 0, %13 ]
  %.0813.i.i.i.i.i = phi i32 [ %24, %.lr.ph.i.i.i.i.i.a ], [ %17, %13 ]
  %.pn12.i.i.i.i.i = phi ptr [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i.a ], [ %14, %13 ]
  %.010.i.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i.i, i64 1 ; 2 uses
  %19 = load i8, ptr %.010.i.i.i.i.i, align 1, !tbaa !106
  %20 = zext i8 %19 to i32                        ; 2 uses
  %21 = add i32 %.014.i.i.i.i.i, 6                ; 2 uses
  %22 = and i32 %20, 63
  %23 = shl i32 %22, %21
  %24 = or i32 %23, %.0813.i.i.i.i.i              ; 2 uses
  %25 = and i32 %20, 64
  %.not.i.i.i.i.i.a = icmp eq i32 %25, 0
  br i1 %.not.i.i.i.i.i.a, label %scan_signed_varint.exit.i.i.i, label %.lr.ph.i.i.i.i.i.a, !llvm.loop !138

scan_signed_varint.exit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.a, %13
  %.08.lcssa.i.i.i.i.i = phi i32 [ %17, %13 ], [ %24, %.lr.ph.i.i.i.i.i.a ] ; 2 uses
  %26 = and i32 %.08.lcssa.i.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i32 %26, 0
  %27 = lshr i32 %.08.lcssa.i.i.i.i.i, 1          ; 2 uses
  %28 = sub nsw i32 0, %27
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i32 %27, i32 %28
  br label %get_line_delta.exit.i.i

29:                                               ; preds = %9
  br label %get_line_delta.exit.i.i

30:                                               ; preds = %9
  br label %get_line_delta.exit.i.i

get_line_delta.exit.i.i:                          ; preds = %30, %29, %scan_signed_varint.exit.i.i.i, %9
  %.0.i.i.i = phi i32 [ 0, %30 ], [ 2, %29 ], [ %.0.i.i.i.i, %scan_signed_varint.exit.i.i.i ], [ 1, %9 ]
  %31 = load i32, ptr %4, align 8, !tbaa !189
  %32 = add i32 %31, %.0.i.i.i                    ; 2 uses
  store i32 %32, ptr %4, align 8, !tbaa !189
  %33 = load i8, ptr %7, align 1, !tbaa !106
  %34 = icmp ult i8 %33, -8
  %spec.select.i.i = select i1 %34, i32 %32, i32 -1
  store i32 %spec.select.i.i, ptr %5, align 8, !tbaa !190
  store i32 %8, ptr %1, align 8, !tbaa !187
  %.val.val.i.i = load i8, ptr %7, align 1, !tbaa !106
  %35 = shl i8 %.val.val.i.i, 1
  %narrow.i.i.i = and i8 %35, 14
  %36 = add nuw nsw i8 %narrow.i.i.i, 2
  %37 = zext nneg i8 %36 to i32
  %38 = add i32 %8, %37                           ; 3 uses
  store i32 %38, ptr %i.a, align 4, !tbaa !188
  %39 = getelementptr i8, ptr %7, i64 1           ; 4 uses
  store ptr %39, ptr %2, align 8, !tbaa !183
  %40 = icmp ult ptr %39, %.val2.i
  br i1 %40, label %.lr.ph74, label %_PyLineTable_NextAddressRange.exit

41:                                               ; preds = %.lr.ph74
  %42 = getelementptr i8, ptr %44, i64 1          ; 4 uses
  store ptr %42, ptr %2, align 8, !tbaa !183
  %43 = icmp ult ptr %42, %.val2.i
  br i1 %43, label %.lr.ph74, label %_PyLineTable_NextAddressRange.exit, !llvm.loop !191

.lr.ph74:                                         ; preds = %get_line_delta.exit.i.i, %41
  %44 = phi ptr [ %42, %41 ], [ %39, %get_line_delta.exit.i.i ] ; 3 uses
  %45 = load i8, ptr %44, align 1, !tbaa !106
  %46 = icmp sgt i8 %45, -1
  br i1 %46, label %41, label %._PyLineTable_NextAddressRange.exit_crit_edge75, !llvm.loop !191

._PyLineTable_NextAddressRange.exit_crit_edge75:  ; preds = %.lr.ph74
  br label %_PyLineTable_NextAddressRange.exit, !llvm.loop !191

_PyLineTable_NextAddressRange.exit:               ; preds = %41, %._PyLineTable_NextAddressRange.exit_crit_edge75, %get_line_delta.exit.i.i
  %.lcssa71 = phi ptr [ %39, %get_line_delta.exit.i.i ], [ %44, %._PyLineTable_NextAddressRange.exit_crit_edge75 ], [ %42, %41 ]
  %.not = icmp sgt i32 %38, %0
  br i1 %.not, label %.preheader, label %6, !llvm.loop !192

bb.b:                                             ; preds = %.lr.ph39, %_PyLineTable_PreviousAddressRange.exit
  %i.f = phi i32 [ %.promoted38, %.lr.ph39 ], [ %i.ah, %_PyLineTable_PreviousAddressRange.exit ] ; 3 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %_PyLineTable_NextAddressRange.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !tbaa !183
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.i, %bb.d ], [ %.promoted.i.i, %bb.c ] ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 4 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !183
  %i.j = load i8, ptr %i.i, align 1, !tbaa !106   ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e, !llvm.loop !193

bb.e:                                             ; preds = %bb.d
  %47 = lshr i8 %i.j, 3
  %48 = and i8 %47, 15
  switch i8 %48, label %bb.h [
    i8 12, label %bb.g
    i8 13, label %bb.f
    i8 14, label %bb.f
    i8 11, label %get_line_delta.exit.i.i9
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.l = load i8, ptr %i.h, align 1, !tbaa !106
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = and i32 %i.m, 63                         ; 2 uses
  %i.o = and i32 %i.m, 64
  %.not11.i.i.i.i.i13 = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i.i.i.i13, label %scan_signed_varint.exit.i.i.i20, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i14
  %.014.i.i.i.i.i15 = phi i32 [ %i.r, %.lr.ph.i.i.i.i.i14 ], [ 0, %bb.f ]
  %.0813.i.i.i.i.i16 = phi i32 [ %i.u, %.lr.ph.i.i.i.i.i14 ], [ %i.n, %bb.f ]
  %.pn12.i.i.i.i.i17 = phi ptr [ %.010.i.i.i.i.i18, %.lr.ph.i.i.i.i.i14 ], [ %i.h, %bb.f ]
  %.010.i.i.i.i.i18 = getelementptr i8, ptr %.pn12.i.i.i.i.i17, i64 1 ; 2 uses
  %i.p = load i8, ptr %.010.i.i.i.i.i18, align 1, !tbaa !106
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = add i32 %.014.i.i.i.i.i15, 6             ; 2 uses
  %i.s = and i32 %i.q, 63
  %i.t = shl i32 %i.s, %i.r
  %i.u = or i32 %i.t, %.0813.i.i.i.i.i16          ; 2 uses
  %i.v = and i32 %i.q, 64
  %.not.i.i.i.i.i19 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i19, label %scan_signed_varint.exit.i.i.i20, label %.lr.ph.i.i.i.i.i14, !llvm.loop !138

scan_signed_varint.exit.i.i.i20:                  ; preds = %.lr.ph.i.i.i.i.i14, %bb.f
  %.08.lcssa.i.i.i.i.i21 = phi i32 [ %i.n, %bb.f ], [ %i.u, %.lr.ph.i.i.i.i.i14 ] ; 2 uses
  %i.w = and i32 %.08.lcssa.i.i.i.i.i21, 1
  %.not.i.i.i.i22 = icmp eq i32 %i.w, 0
  %i.x = lshr i32 %.08.lcssa.i.i.i.i.i21, 1       ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = select i1 %.not.i.i.i.i22, i32 %i.y, i32 %i.x
  br label %get_line_delta.exit.i.i9

bb.g:                                             ; preds = %bb.e
  br label %get_line_delta.exit.i.i9

bb.h:                                             ; preds = %bb.e
  br label %get_line_delta.exit.i.i9

get_line_delta.exit.i.i9:                         ; preds = %bb.h, %bb.g, %scan_signed_varint.exit.i.i.i20, %bb.e
  %.0.i.neg.i.i = phi i32 [ 0, %bb.h ], [ -2, %bb.g ], [ %i.z, %scan_signed_varint.exit.i.i.i20 ], [ -1, %bb.e ]
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !189
  %i.ab = add i32 %i.aa, %.0.i.neg.i.i            ; 2 uses
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !189
  store i32 %i.f, ptr %i.a, align 4, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %get_line_delta.exit.i.i9
  %.pn.i.i.i = phi ptr [ %.0.i12.i.i, %.preheader.i.i ], [ %i.i, %get_line_delta.exit.i.i9 ]
  %.0.i12.i.i = getelementptr i8, ptr %.pn.i.i.i, i64 -1 ; 2 uses
  %i.ac = load i8, ptr %.0.i12.i.i, align 1, !tbaa !106 ; 2 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %.preheader.i.i, label %_PyLineTable_PreviousAddressRange.exit, !llvm.loop !194

_PyLineTable_PreviousAddressRange.exit:           ; preds = %.preheader.i.i
  %i.ae = shl i8 %i.ac, 1
  %narrow.i.i.i10 = and i8 %i.ae, 14
  %i.af = add nuw nsw i8 %narrow.i.i.i10, 2
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = sub nsw i32 %i.f, %i.ag                 ; 3 uses
  store i32 %i.ah, ptr %1, align 8, !tbaa !187
  %i.ai = getelementptr i8, ptr %i.h, i64 -2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !106
  %i.ak = icmp ult i8 %i.aj, -8
  %spec.select.i.i11 = select i1 %i.ak, i32 %i.ab, i32 -1 ; 2 uses
  store i32 %spec.select.i.i11, ptr %i.e, align 8, !tbaa !190
  %i.al = icmp sgt i32 %i.ah, %0
  br i1 %i.al, label %bb.b, label %_PyLineTable_NextAddressRange.exit.thread, !llvm.loop !195

_PyLineTable_NextAddressRange.exit.thread:        ; preds = %6, %bb.b, %_PyLineTable_PreviousAddressRange.exit, %.preheader.._crit_edge_crit_edge
  %.0 = phi i32 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ -1, %bb.b ], [ %spec.select.i.i11, %_PyLineTable_PreviousAddressRange.exit ], [ -1, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyCode_Addr2Line(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._line_offsets, align 8      ; 9 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151
  br label %_PyCode_Addr2Line.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !180
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i32 %1, 1
  %i.i = tail call i32 @_Py_Instrumentation_GetLine(ptr noundef nonnull %0, i32 noundef %i.h) #14
  br label %_PyCode_Addr2Line.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.j = getelementptr i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152  ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 32       ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %.val.i.i = load i64, ptr %i.m, align 8, !tbaa !125
  %i.n = getelementptr i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.l, ptr %i.q, align 8, !tbaa !183
  %i.r = getelementptr i8, ptr %i.l, i64 %.val.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !186
  store i32 -1, ptr %2, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !188
  store i32 %i.o, ptr %i.p, align 8, !tbaa !189
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.u, align 8, !tbaa !190
  %i.v = call i32 @_PyCode_CheckLineNumber(i32 noundef %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_PyCode_Addr2Line.exit

_PyCode_Addr2Line.exit:                           ; preds = %bb.b, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.i, %bb.e ], [ %i.v, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_PyLineTable_InitAddressRange(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 12), (16, 20), (24, 40)) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 16
  %i.b = getelementptr i8, ptr %3, i64 24
  store ptr %0, ptr %i.b, align 8, !tbaa !183
  %i.c = getelementptr i8, ptr %0, i64 %1
  %i.d = getelementptr i8, ptr %3, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !186
  store i32 -1, ptr %3, align 8, !tbaa !187
  %i.e = getelementptr i8, ptr %3, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !188
  store i32 %2, ptr %i.a, align 8, !tbaa !189
  %i.f = getelementptr i8, ptr %3, i64 8
  store i32 -1, ptr %i.f, align 8, !tbaa !190
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_PyLineTable_NextAddressRange(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !183 ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !186 ; 3 uses
  %.not3 = icmp ult ptr %.val, %.val2
  br i1 %.not3, label %bb.b, label %advance.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load i8, ptr %.val, align 1, !tbaa !106
  %1 = lshr i8 %i.d, 3
  %2 = and i8 %1, 15
  switch i8 %2, label %bb.e [
    i8 12, label %bb.d
    i8 13, label %bb.c
    i8 14, label %bb.c
    i8 11, label %get_line_delta.exit.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = getelementptr i8, ptr %.val, i64 1       ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !106
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 63                         ; 2 uses
  %i.i = and i32 %i.g, 64
  %.not11.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not11.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.0813.i.i.i.i = phi i32 [ %i.o, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ]
  %.pn12.i.i.i.i = phi ptr [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.c ]
  %.010.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !106
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = add i32 %.014.i.i.i.i, 6                 ; 2 uses
  %i.m = and i32 %i.k, 63
  %i.n = shl i32 %i.m, %i.l
  %i.o = or i32 %i.n, %.0813.i.i.i.i              ; 2 uses
  %i.p = and i32 %i.k, 64
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i:                      ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.08.lcssa.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.o, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.q = and i32 %.08.lcssa.i.i.i.i, 1
  %.not.i.i.i = icmp eq i32 %i.q, 0
  %i.r = lshr i32 %.08.lcssa.i.i.i.i, 1           ; 2 uses
  %i.s = sub nsw i32 0, %i.r
  %.0.i.i.i = select i1 %.not.i.i.i, i32 %i.r, i32 %i.s
  br label %get_line_delta.exit.i

bb.d:                                             ; preds = %bb.b
  br label %get_line_delta.exit.i

bb.e:                                             ; preds = %bb.b
  br label %get_line_delta.exit.i

get_line_delta.exit.i:                            ; preds = %bb.e, %bb.d, %scan_signed_varint.exit.i.i, %bb.b
  %.0.i.i = phi i32 [ 0, %bb.e ], [ 2, %bb.d ], [ %.0.i.i.i, %scan_signed_varint.exit.i.i ], [ 1, %bb.b ]
  %i.t = load i32, ptr %i.c, align 8, !tbaa !189
  %i.u = add i32 %i.t, %.0.i.i                    ; 2 uses
  store i32 %i.u, ptr %i.c, align 8, !tbaa !189
  %i.v = load i8, ptr %.val, align 1, !tbaa !106
  %i.w = icmp ult i8 %i.v, -8
  %spec.select.i = select i1 %i.w, i32 %i.u, i32 -1
  %i.x = getelementptr i8, ptr %0, i64 8
  store i32 %spec.select.i, ptr %i.x, align 8, !tbaa !190
  %i.y = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !188  ; 2 uses
  store i32 %i.z, ptr %0, align 8, !tbaa !187
  %.val.val.i = load i8, ptr %.val, align 1, !tbaa !106
  %i.aa = shl i8 %.val.val.i, 1
  %narrow.i.i = and i8 %i.aa, 14
  %i.ab = add nuw nsw i8 %narrow.i.i, 2
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = add i32 %i.z, %i.ac
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !188
  %i.ae = getelementptr i8, ptr %.val, i64 1      ; 3 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !183
  %i.af = icmp ult ptr %i.ae, %.val2
  br i1 %i.af, label %.lr.ph, label %advance.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr i8, ptr %i.ai, i64 1      ; 3 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !183
  %i.ah = icmp ult ptr %i.ag, %.val2
  br i1 %i.ah, label %.lr.ph, label %advance.exit, !llvm.loop !191

.lr.ph:                                           ; preds = %get_line_delta.exit.i, %bb.f
  %i.ai = phi ptr [ %i.ag, %bb.f ], [ %i.ae, %get_line_delta.exit.i ] ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !106
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %.advance.exit.loopexit_crit_edge5, !llvm.loop !191

.advance.exit.loopexit_crit_edge5:                ; preds = %.lr.ph
  br label %advance.exit, !llvm.loop !191

advance.exit:                                     ; preds = %bb.f, %get_line_delta.exit.i, %.advance.exit.loopexit_crit_edge5, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %get_line_delta.exit.i ], [ 1, %.advance.exit.loopexit_crit_edge5 ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_PyLineTable_PreviousAddressRange(ptr noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !187    ; 3 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = phi ptr [ %i.e, %bb.c ], [ %.promoted.i, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !183
  %i.f = load i8, ptr %i.e, align 1, !tbaa !106   ; 2 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d, !llvm.loop !193

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %1 = lshr i8 %i.f, 3
  %2 = and i8 %1, 15
  switch i8 %2, label %bb.g [
    i8 12, label %bb.f
    i8 13, label %bb.e
    i8 14, label %bb.e
    i8 11, label %get_line_delta.exit.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = load i8, ptr %i.d, align 1, !tbaa !106
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 63                         ; 2 uses
  %i.l = and i32 %i.j, 64
  %.not11.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.o, %.lr.ph.i.i.i.i ], [ 0, %bb.e ]
  %.0813.i.i.i.i = phi i32 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.k, %bb.e ]
  %.pn12.i.i.i.i = phi ptr [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.e ]
  %.010.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !106
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add i32 %.014.i.i.i.i, 6                 ; 2 uses
  %i.p = and i32 %i.n, 63
  %i.q = shl i32 %i.p, %i.o
  %i.r = or i32 %i.q, %.0813.i.i.i.i              ; 2 uses
  %i.s = and i32 %i.n, 64
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i:                      ; preds = %.lr.ph.i.i.i.i, %bb.e
  %.08.lcssa.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.t = and i32 %.08.lcssa.i.i.i.i, 1
  %.not.i.i.i = icmp eq i32 %i.t, 0
  %i.u = lshr i32 %.08.lcssa.i.i.i.i, 1           ; 2 uses
  %i.v = sub nsw i32 0, %i.u
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 %i.u
  br label %get_line_delta.exit.i

bb.f:                                             ; preds = %bb.d
  br label %get_line_delta.exit.i

bb.g:                                             ; preds = %bb.d
  br label %get_line_delta.exit.i

get_line_delta.exit.i:                            ; preds = %bb.g, %bb.f, %scan_signed_varint.exit.i.i, %bb.d
  %.0.i.neg.i = phi i32 [ 0, %bb.g ], [ -2, %bb.f ], [ %i.w, %scan_signed_varint.exit.i.i ], [ -1, %bb.d ]
  %i.x = load i32, ptr %i.h, align 8, !tbaa !189
  %i.y = add i32 %i.x, %.0.i.neg.i                ; 2 uses
  store i32 %i.y, ptr %i.h, align 8, !tbaa !189
  %i.z = getelementptr i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.z, align 4, !tbaa !188
  br label %.preheader.i

.preheader.i:                                     ; preds = %get_line_delta.exit.i, %.preheader.i
  %.pn.i.i = phi ptr [ %.0.i12.i, %.preheader.i ], [ %i.e, %get_line_delta.exit.i ]
  %.0.i12.i = getelementptr i8, ptr %.pn.i.i, i64 -1 ; 2 uses
  %i.aa = load i8, ptr %.0.i12.i, align 1, !tbaa !106 ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %.preheader.i, label %retreat.exit, !llvm.loop !194

retreat.exit:                                     ; preds = %.preheader.i
  %i.ac = shl i8 %i.aa, 1
  %narrow.i.i = and i8 %i.ac, 14
  %i.ad = add nuw nsw i8 %narrow.i.i, 2
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = sub nsw i32 %i.a, %i.ae
  store i32 %i.af, ptr %0, align 8, !tbaa !187
  %i.ag = getelementptr i8, ptr %i.d, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !106
  %i.ai = icmp ult i8 %i.ah, -8
  %spec.select.i = select i1 %i.ai, i32 %i.y, i32 -1
  %i.aj = getelementptr i8, ptr %0, i64 8
  store i32 %spec.select.i, ptr %i.aj, align 8, !tbaa !190
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %retreat.exit
  %.0 = phi i32 [ 1, %retreat.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @PyCode_Addr2Location(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct._line_offsets, align 8      ; 11 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !151  ; 2 uses
  store i32 %i.c, ptr %4, align 4, !tbaa !7
  store i32 %i.c, ptr %2, align 4, !tbaa !7
  store i32 0, ptr %5, align 4, !tbaa !7
  store i32 0, ptr %3, align 4, !tbaa !7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.d = getelementptr i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !125
  %i.h = getelementptr i8, ptr %0, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !151
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.k, align 8, !tbaa !183
  %i.l = getelementptr i8, ptr %i.f, i64 %.val.i
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.l, ptr %i.m, align 8, !tbaa !186
  store i32 -1, ptr %6, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !188
  store i32 %i.i, ptr %i.j, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 -1, ptr %i.o, align 8, !tbaa !190
  %i.p = call i32 @_PyCode_CheckLineNumber(i32 noundef %1, ptr noundef nonnull %6) ; 0 uses
  %.promoted.i = load ptr, ptr %i.k, align 8, !tbaa !183
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.r, %bb.d ], [ %.promoted.i, %bb.c ] ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -1       ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !106   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.e, !llvm.loop !193

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.k, align 8, !tbaa !183
  %7 = lshr i8 %i.s, 3
  %8 = and i8 %7, 15
  switch i8 %8, label %bb.h [
    i8 12, label %bb.g
    i8 13, label %bb.f
    i8 14, label %bb.f
    i8 11, label %get_line_delta.exit.i
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.u = load i8, ptr %i.q, align 1, !tbaa !106
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = and i32 %i.v, 63                         ; 2 uses
  %i.x = and i32 %i.v, 64
  %.not11.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.aa, %.lr.ph.i.i.i.i ], [ 0, %bb.f ]
  %.0813.i.i.i.i = phi i32 [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.w, %bb.f ]
  %.pn12.i.i.i.i = phi ptr [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.q, %bb.f ]
  %.010.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i, i64 1 ; 2 uses
  %i.y = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !106
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = add i32 %.014.i.i.i.i, 6                ; 2 uses
  %i.ab = and i32 %i.z, 63
  %i.ac = shl i32 %i.ab, %i.aa
  %i.ad = or i32 %i.ac, %.0813.i.i.i.i            ; 2 uses
  %i.ae = and i32 %i.z, 64
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i:                      ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.08.lcssa.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %i.ad, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.af = and i32 %.08.lcssa.i.i.i.i, 1
  %.not.i.i.i = icmp eq i32 %i.af, 0
  %i.ag = lshr i32 %.08.lcssa.i.i.i.i, 1          ; 2 uses
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = select i1 %.not.i.i.i, i32 %i.ah, i32 %i.ag
  br label %get_line_delta.exit.i

bb.g:                                             ; preds = %bb.e
  br label %get_line_delta.exit.i

bb.h:                                             ; preds = %bb.e
  br label %get_line_delta.exit.i

get_line_delta.exit.i:                            ; preds = %bb.h, %bb.g, %scan_signed_varint.exit.i.i, %bb.e
  %.0.i.neg.i = phi i32 [ 0, %bb.h ], [ -2, %bb.g ], [ %i.ai, %scan_signed_varint.exit.i.i ], [ -1, %bb.e ]
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !189
  %i.ak = add i32 %i.aj, %.0.i.neg.i              ; 2 uses
  store i32 %i.ak, ptr %i.j, align 8, !tbaa !189
  %i.al = load i32, ptr %6, align 8, !tbaa !187
  store i32 %i.al, ptr %i.n, align 4, !tbaa !188
  %i.am = getelementptr i8, ptr %i.q, i64 -2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !106
  %i.ao = icmp ult i8 %i.an, -8
  %spec.select.i = select i1 %i.ao, i32 %i.ak, i32 -1
  store i32 %spec.select.i, ptr %i.o, align 8, !tbaa !190
  call fastcc void @advance_with_locations(ptr noundef nonnull %6, ptr noundef %4, ptr noundef %3, ptr noundef %5)
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !190
  store i32 %i.ap, ptr %2, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.i

bb.i:                                             ; preds = %get_line_delta.exit.i, %bb.b
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @advance_with_locations(ptr noundef captures(none) initializes((0, 4)) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1        ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !183
  %i.d = load i8, ptr %i.b, align 1, !tbaa !106
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 15                         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !188  ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !187
  %i.j = shl nuw nsw i32 %i.e, 1
  %i.k = and i32 %i.j, 14
  %i.l = add i32 %i.i, 2
  %i.m = add i32 %i.l, %i.k
  store i32 %i.m, ptr %i.h, align 4, !tbaa !188
  switch i32 %i.g, label %bb.f [
    i32 15, label %bb.b
    i32 14, label %bb.c
    i32 13, label %bb.d
    i32 10, label %bb.e
    i32 11, label %bb.e
    i32 12, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %1, align 4, !tbaa !7
  %i.n = getelementptr i8, ptr %0, i64 8
  store i32 -1, ptr %i.n, align 8, !tbaa !190
  store i32 -1, ptr %3, align 4, !tbaa !7
  store i32 -1, ptr %2, align 4, !tbaa !7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !183
  %i.p = load i8, ptr %i.c, align 1, !tbaa !106
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 63                         ; 2 uses
  %i.s = and i32 %i.q, 64
  %.not10.i.i = icmp eq i32 %i.s, 0
  br i1 %.not10.i.i, label %read_signed_varint.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.t = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.012.i.i = phi i32 [ %i.x, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.0811.i.i = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %i.r, %bb.c ]
  %i.u = getelementptr i8, ptr %i.t, i64 1        ; 3 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !183
  %i.v = load i8, ptr %i.t, align 1, !tbaa !106
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = add i32 %.012.i.i, 6                     ; 2 uses
  %i.y = and i32 %i.w, 63
  %i.z = shl i32 %i.y, %i.x
  %i.aa = or i32 %i.z, %.0811.i.i                 ; 2 uses
  %i.ab = and i32 %i.w, 64
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %read_signed_varint.exit, label %.lr.ph.i.i, !llvm.loop !196

read_signed_varint.exit:                          ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.o, %bb.c ], [ %i.u, %.lr.ph.i.i ] ; 2 uses
  %.08.lcssa.i.i = phi i32 [ %i.r, %bb.c ], [ %i.aa, %.lr.ph.i.i ] ; 2 uses
  %i.ad = and i32 %.08.lcssa.i.i, 1
  %.not.i = icmp eq i32 %i.ad, 0
  %i.ae = lshr i32 %.08.lcssa.i.i, 1              ; 2 uses
  %i.af = sub nsw i32 0, %i.ae
  %.0.i = select i1 %.not.i, i32 %i.ae, i32 %i.af
  %i.ag = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !189
  %i.ai = add i32 %.0.i, %i.ah                    ; 3 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !189
  %i.aj = getelementptr i8, ptr %0, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !190
  %i.ak = getelementptr i8, ptr %i.ac, i64 1      ; 3 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !183
  %i.al = load i8, ptr %i.ac, align 1, !tbaa !106
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = and i32 %i.am, 63                       ; 2 uses
  %i.ao = and i32 %i.am, 64
  %.not10.i = icmp eq i32 %i.ao, 0
  br i1 %.not10.i, label %read_varint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %read_signed_varint.exit, %.lr.ph.i
  %i.ap = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.ak, %read_signed_varint.exit ] ; 2 uses
  %.012.i = phi i32 [ %i.at, %.lr.ph.i ], [ 0, %read_signed_varint.exit ]
  %.0811.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %read_signed_varint.exit ]
  %i.aq = getelementptr i8, ptr %i.ap, i64 1      ; 3 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !183
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !106
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = add i32 %.012.i, 6                      ; 2 uses
  %i.au = and i32 %i.as, 63
  %i.av = shl i32 %i.au, %i.at
  %i.aw = or i32 %i.av, %.0811.i                  ; 2 uses
  %i.ax = and i32 %i.as, 64
  %.not.i49 = icmp eq i32 %i.ax, 0
  br i1 %.not.i49, label %read_varint.exit, label %.lr.ph.i, !llvm.loop !196

read_varint.exit:                                 ; preds = %.lr.ph.i, %read_signed_varint.exit
  %i.ay = phi ptr [ %i.ak, %read_signed_varint.exit ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %.08.lcssa.i = phi i32 [ %i.an, %read_signed_varint.exit ], [ %i.aw, %.lr.ph.i ]
  %i.az = add i32 %.08.lcssa.i, %i.ai
  store i32 %i.az, ptr %1, align 4, !tbaa !7
  %i.ba = getelementptr i8, ptr %i.ay, i64 1      ; 3 uses
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !183
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !106
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 63                       ; 2 uses
  %i.be = and i32 %i.bc, 64
  %.not10.i50 = icmp eq i32 %i.be, 0
  br i1 %.not10.i50, label %read_varint.exit56, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %read_varint.exit, %.lr.ph.i51
  %i.bf = phi ptr [ %i.bg, %.lr.ph.i51 ], [ %i.ba, %read_varint.exit ] ; 2 uses
  %.012.i52 = phi i32 [ %i.bj, %.lr.ph.i51 ], [ 0, %read_varint.exit ]
  %.0811.i53 = phi i32 [ %i.bm, %.lr.ph.i51 ], [ %i.bd, %read_varint.exit ]
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 3 uses
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !183
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !106
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = add i32 %.012.i52, 6                    ; 2 uses
  %i.bk = and i32 %i.bi, 63
  %i.bl = shl i32 %i.bk, %i.bj
  %i.bm = or i32 %i.bl, %.0811.i53                ; 2 uses
  %i.bn = and i32 %i.bi, 64
  %.not.i54 = icmp eq i32 %i.bn, 0
  br i1 %.not.i54, label %read_varint.exit56, label %.lr.ph.i51, !llvm.loop !196

read_varint.exit56:                               ; preds = %.lr.ph.i51, %read_varint.exit
  %i.bo = phi ptr [ %i.ba, %read_varint.exit ], [ %i.bg, %.lr.ph.i51 ] ; 2 uses
  %.08.lcssa.i55 = phi i32 [ %i.bd, %read_varint.exit ], [ %i.bm, %.lr.ph.i51 ]
  %i.bp = add i32 %.08.lcssa.i55, -1
  store i32 %i.bp, ptr %2, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %i.bo, i64 1      ; 2 uses
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !183
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !106
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = and i32 %i.bs, 63                       ; 2 uses
  %i.bu = and i32 %i.bs, 64
  %.not10.i57 = icmp eq i32 %i.bu, 0
  br i1 %.not10.i57, label %read_varint.exit63, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %read_varint.exit56, %.lr.ph.i58
  %i.bv = phi ptr [ %i.bw, %.lr.ph.i58 ], [ %i.bq, %read_varint.exit56 ] ; 2 uses
  %.012.i59 = phi i32 [ %i.bz, %.lr.ph.i58 ], [ 0, %read_varint.exit56 ]
  %.0811.i60 = phi i32 [ %i.cc, %.lr.ph.i58 ], [ %i.bt, %read_varint.exit56 ]
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 2 uses
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !183
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !106
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add i32 %.012.i59, 6                    ; 2 uses
  %i.ca = and i32 %i.by, 63
  %i.cb = shl i32 %i.ca, %i.bz
  %i.cc = or i32 %i.cb, %.0811.i60                ; 2 uses
  %i.cd = and i32 %i.by, 64
  %.not.i61 = icmp eq i32 %i.cd, 0
  br i1 %.not.i61, label %read_varint.exit63, label %.lr.ph.i58, !llvm.loop !196

read_varint.exit63:                               ; preds = %.lr.ph.i58, %read_varint.exit56
  %.08.lcssa.i62 = phi i32 [ %i.bt, %read_varint.exit56 ], [ %i.cc, %.lr.ph.i58 ]
  %i.ce = add i32 %.08.lcssa.i62, -1
  store i32 %i.ce, ptr %3, align 4, !tbaa !7
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.cf = getelementptr i8, ptr %i.b, i64 2       ; 2 uses
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !183
  %i.cg = load i8, ptr %i.c, align 1, !tbaa !106
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = and i32 %i.ch, 63                       ; 2 uses
  %i.cj = and i32 %i.ch, 64
  %.not10.i.i64 = icmp eq i32 %i.cj, 0
  br i1 %.not10.i.i64, label %read_signed_varint.exit72, label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.d, %.lr.ph.i.i65
  %i.ck = phi ptr [ %i.cl, %.lr.ph.i.i65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.012.i.i66 = phi i32 [ %i.co, %.lr.ph.i.i65 ], [ 0, %bb.d ]
  %.0811.i.i67 = phi i32 [ %i.cr, %.lr.ph.i.i65 ], [ %i.ci, %bb.d ]
  %i.cl = getelementptr i8, ptr %i.ck, i64 1      ; 2 uses
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !183
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !106
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = add i32 %.012.i.i66, 6                  ; 2 uses
  %i.cp = and i32 %i.cn, 63
  %i.cq = shl i32 %i.cp, %i.co
  %i.cr = or i32 %i.cq, %.0811.i.i67              ; 2 uses
  %i.cs = and i32 %i.cn, 64
  %.not.i.i68 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i68, label %read_signed_varint.exit72, label %.lr.ph.i.i65, !llvm.loop !196

read_signed_varint.exit72:                        ; preds = %.lr.ph.i.i65, %bb.d
  %.08.lcssa.i.i69 = phi i32 [ %i.ci, %bb.d ], [ %i.cr, %.lr.ph.i.i65 ] ; 2 uses
  %i.ct = and i32 %.08.lcssa.i.i69, 1
  %.not.i70 = icmp eq i32 %i.ct, 0
  %i.cu = lshr i32 %.08.lcssa.i.i69, 1            ; 2 uses
  %i.cv = sub nsw i32 0, %i.cu
  %.0.i71 = select i1 %.not.i70, i32 %i.cu, i32 %i.cv
  %i.cw = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !189
  %i.cy = add i32 %.0.i71, %i.cx                  ; 3 uses
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !189
  %i.cz = getelementptr i8, ptr %0, i64 8
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !190
  store i32 %i.cy, ptr %1, align 4, !tbaa !7
  store i32 -1, ptr %3, align 4, !tbaa !7
  store i32 -1, ptr %2, align 4, !tbaa !7
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.da = add nsw i32 %i.g, -10
  %i.db = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !189
  %i.dd = add i32 %i.da, %i.dc                    ; 3 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !189
  %i.de = getelementptr i8, ptr %0, i64 8
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !190
  store i32 %i.dd, ptr %1, align 4, !tbaa !7
  %i.df = getelementptr i8, ptr %i.b, i64 2       ; 2 uses
  store ptr %i.df, ptr %i.a, align 8, !tbaa !183
  %i.dg = load i8, ptr %i.c, align 1, !tbaa !106
  %i.dh = zext i8 %i.dg to i32
  store i32 %i.dh, ptr %2, align 4, !tbaa !7
  %i.di = getelementptr i8, ptr %i.b, i64 3
  store ptr %i.di, ptr %i.a, align 8, !tbaa !183
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !106
  %i.dk = zext i8 %i.dj to i32
  store i32 %i.dk, ptr %3, align 4, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.dl = getelementptr i8, ptr %i.b, i64 2
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !183
  %i.dm = load i8, ptr %i.c, align 1, !tbaa !106
  %i.dn = zext i8 %i.dm to i32                    ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !189 ; 2 uses
  %i.dq = getelementptr i8, ptr %0, i64 8
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !190
  store i32 %i.dp, ptr %1, align 4, !tbaa !7
  %i.dr = shl nuw nsw i32 %i.g, 3
  %i.ds = lshr i32 %i.dn, 4
  %i.dt = or i32 %i.ds, %i.dr                     ; 2 uses
  store i32 %i.dt, ptr %2, align 4, !tbaa !7
  %i.du = and i32 %i.dn, 15
  %i.dv = add nuw nsw i32 %i.dt, %i.du
  store i32 %i.dv, ptr %3, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %read_signed_varint.exit72, %read_varint.exit63, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lineiter_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !106
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200
  tail call void %i.h(ptr noundef nonnull %0) #14
  ret void
}

declare ptr @PyObject_SelfIter(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @lineiter_next(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %1 = getelementptr i8, ptr %0, i64 48           ; 6 uses
  %.val.i = load ptr, ptr %1, align 8, !tbaa !183 ; 6 uses
  %2 = getelementptr i8, ptr %0, i64 56
  %.val2.i = load ptr, ptr %2, align 8, !tbaa !186 ; 6 uses
  %.not3.i = icmp ult ptr %.val.i, %.val2.i
  br i1 %.not3.i, label %3, label %_PyLineTable_NextAddressRange.exit

3:                                                ; preds = %bb.a
  %4 = getelementptr i8, ptr %0, i64 40           ; 4 uses
  %5 = load i8, ptr %.val.i, align 1, !tbaa !106
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 15
  switch i8 %7, label %25 [
    i8 12, label %24
    i8 13, label %8
    i8 14, label %8
    i8 11, label %get_line_delta.exit.i.i.a
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr i8, ptr %.val.i, i64 1       ; 2 uses
  %10 = load i8, ptr %9, align 1, !tbaa !106
  %11 = zext i8 %10 to i32                        ; 2 uses
  %12 = and i32 %11, 63                           ; 2 uses
  %13 = and i32 %11, 64
  %.not11.i.i.i.i.i = icmp eq i32 %13, 0
  br i1 %.not11.i.i.i.i.i, label %scan_signed_varint.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %8, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi i32 [ %16, %.lr.ph.i.i.i.i.i ], [ 0, %8 ]
  %.0813.i.i.i.i.i = phi i32 [ %19, %.lr.ph.i.i.i.i.i ], [ %12, %8 ]
  %.pn12.i.i.i.i.i = phi ptr [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %9, %8 ]
  %.010.i.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i.i, i64 1 ; 2 uses
  %14 = load i8, ptr %.010.i.i.i.i.i, align 1, !tbaa !106
  %15 = zext i8 %14 to i32                        ; 2 uses
  %16 = add i32 %.014.i.i.i.i.i, 6                ; 2 uses
  %17 = and i32 %15, 63
  %18 = shl i32 %17, %16
  %19 = or i32 %18, %.0813.i.i.i.i.i              ; 2 uses
  %20 = and i32 %15, 64
  %.not.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %.not.i.i.i.i.i, label %scan_signed_varint.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i, %8
  %.08.lcssa.i.i.i.i.i = phi i32 [ %12, %8 ], [ %19, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %21 = and i32 %.08.lcssa.i.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i32 %21, 0
  %22 = lshr i32 %.08.lcssa.i.i.i.i.i, 1          ; 2 uses
  %23 = sub nsw i32 0, %22
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i32 %22, i32 %23
  br label %get_line_delta.exit.i.i.a

24:                                               ; preds = %3
  br label %get_line_delta.exit.i.i.a

25:                                               ; preds = %3
  br label %get_line_delta.exit.i.i.a

get_line_delta.exit.i.i.a:                        ; preds = %25, %24, %scan_signed_varint.exit.i.i.i, %3
  %.0.i.i.i = phi i32 [ 0, %25 ], [ 2, %24 ], [ %.0.i.i.i.i, %scan_signed_varint.exit.i.i.i ], [ 1, %3 ]
  %i.c = load i32, ptr %4, align 8, !tbaa !189
  %26 = add i32 %i.c, %.0.i.i.i                   ; 3 uses
  store i32 %26, ptr %4, align 8, !tbaa !189
  %27 = load i8, ptr %.val.i, align 1, !tbaa !106
  %28 = icmp ult i8 %27, -8
  %spec.select.i.i = select i1 %28, i32 %26, i32 -1 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  store i32 %spec.select.i.i, ptr %i.d, align 8, !tbaa !190
  %29 = getelementptr i8, ptr %0, i64 28          ; 4 uses
  %i.e = load i32, ptr %29, align 4, !tbaa !188   ; 3 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !187
  %.val.val.i.i = load i8, ptr %.val.i, align 1, !tbaa !106
  %30 = shl i8 %.val.val.i.i, 1
  %narrow.i.i.i = and i8 %30, 14
  %31 = add nuw nsw i8 %narrow.i.i.i, 2
  %32 = zext nneg i8 %31 to i32
  %33 = add i32 %i.e, %32                         ; 2 uses
  store i32 %33, ptr %29, align 4, !tbaa !188
  %34 = getelementptr i8, ptr %.val.i, i64 1      ; 4 uses
  store ptr %34, ptr %1, align 8, !tbaa !183
  %35 = icmp ult ptr %34, %.val2.i
  br i1 %35, label %.lr.ph, label %._crit_edge

36:                                               ; preds = %.lr.ph
  %37 = getelementptr i8, ptr %39, i64 1          ; 4 uses
  store ptr %37, ptr %1, align 8, !tbaa !183
  %38 = icmp ult ptr %37, %.val2.i
  br i1 %38, label %.lr.ph, label %._crit_edge, !llvm.loop !191

.lr.ph:                                           ; preds = %get_line_delta.exit.i.i.a, %36
  %39 = phi ptr [ %37, %36 ], [ %34, %get_line_delta.exit.i.i.a ] ; 3 uses
  %40 = load i8, ptr %39, align 1, !tbaa !106
  %41 = icmp sgt i8 %40, -1
  br i1 %41, label %36, label %._crit_edge95, !llvm.loop !191

._crit_edge95:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !191

._crit_edge:                                      ; preds = %36, %._crit_edge95, %get_line_delta.exit.i.i.a
  %.lcssa93 = phi ptr [ %34, %get_line_delta.exit.i.i.a ], [ %39, %._crit_edge95 ], [ %37, %36 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 %spec.select.i.i, ptr %i.a, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %._crit_edge98, %._crit_edge
  %43 = phi i32 [ %73, %._crit_edge98 ], [ %33, %._crit_edge ] ; 7 uses
  %44 = phi i32 [ %67, %._crit_edge98 ], [ %26, %._crit_edge ]
  %45 = phi ptr [ %.lcssa88, %._crit_edge98 ], [ %.lcssa93, %._crit_edge ] ; 6 uses
  %.not3.i14 = icmp ult ptr %45, %.val2.i
  br i1 %.not3.i14, label %46, label %_PyLineTable_NextAddressRange.exit32

46:                                               ; preds = %42
  %47 = load i8, ptr %45, align 1, !tbaa !106
  %48 = lshr i8 %47, 3
  %49 = and i8 %48, 15
  switch i8 %49, label %66 [
    i8 12, label %65
    i8 13, label %bb.b
    i8 14, label %bb.b
    i8 11, label %get_line_delta.exit.i.i16
  ]

bb.b:                                             ; preds = %46, %46
  %50 = getelementptr i8, ptr %45, i64 1          ; 2 uses
  %51 = load i8, ptr %50, align 1, !tbaa !106
  %52 = zext i8 %51 to i32                        ; 2 uses
  %53 = and i32 %52, 63                           ; 2 uses
  %54 = and i32 %52, 64
  %.not11.i.i.i.i.i21 = icmp eq i32 %54, 0
  br i1 %.not11.i.i.i.i.i21, label %scan_signed_varint.exit.i.i.i28, label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i22
  %.014.i.i.i.i.i23 = phi i32 [ %57, %.lr.ph.i.i.i.i.i22 ], [ 0, %bb.b ]
  %.0813.i.i.i.i.i24 = phi i32 [ %60, %.lr.ph.i.i.i.i.i22 ], [ %53, %bb.b ]
  %.pn12.i.i.i.i.i25 = phi ptr [ %.010.i.i.i.i.i26, %.lr.ph.i.i.i.i.i22 ], [ %50, %bb.b ]
  %.010.i.i.i.i.i26 = getelementptr i8, ptr %.pn12.i.i.i.i.i25, i64 1 ; 2 uses
  %55 = load i8, ptr %.010.i.i.i.i.i26, align 1, !tbaa !106
  %56 = zext i8 %55 to i32                        ; 2 uses
  %57 = add i32 %.014.i.i.i.i.i23, 6              ; 2 uses
  %58 = and i32 %56, 63
  %59 = shl i32 %58, %57
  %60 = or i32 %59, %.0813.i.i.i.i.i24            ; 2 uses
  %61 = and i32 %56, 64
  %.not.i.i.i.i.i27 = icmp eq i32 %61, 0
  br i1 %.not.i.i.i.i.i27, label %scan_signed_varint.exit.i.i.i28, label %.lr.ph.i.i.i.i.i22, !llvm.loop !138

scan_signed_varint.exit.i.i.i28:                  ; preds = %.lr.ph.i.i.i.i.i22, %bb.b
  %.08.lcssa.i.i.i.i.i29 = phi i32 [ %53, %bb.b ], [ %60, %.lr.ph.i.i.i.i.i22 ] ; 2 uses
  %62 = and i32 %.08.lcssa.i.i.i.i.i29, 1
  %.not.i.i.i.i30 = icmp eq i32 %62, 0
  %63 = lshr i32 %.08.lcssa.i.i.i.i.i29, 1        ; 2 uses
  %64 = sub nsw i32 0, %63
  %.0.i.i.i.i31 = select i1 %.not.i.i.i.i30, i32 %63, i32 %64
  br label %get_line_delta.exit.i.i16

65:                                               ; preds = %46
  br label %get_line_delta.exit.i.i16

66:                                               ; preds = %46
  br label %get_line_delta.exit.i.i16

get_line_delta.exit.i.i16:                        ; preds = %66, %65, %scan_signed_varint.exit.i.i.i28, %46
  %.0.i.i.i17 = phi i32 [ 0, %66 ], [ 2, %65 ], [ %.0.i.i.i.i31, %scan_signed_varint.exit.i.i.i28 ], [ 1, %46 ]
  %67 = add i32 %44, %.0.i.i.i17                  ; 4 uses
  store i32 %67, ptr %4, align 8, !tbaa !189
  %68 = load i8, ptr %45, align 1, !tbaa !106
  %69 = icmp ult i8 %68, -8
  %spec.select.i.i18 = select i1 %69, i32 %67, i32 -1 ; 2 uses
  store i32 %spec.select.i.i18, ptr %i.d, align 8, !tbaa !190
  store i32 %43, ptr %i.b, align 8, !tbaa !187
  %.val.val.i.i19 = load i8, ptr %45, align 1, !tbaa !106
  %70 = shl i8 %.val.val.i.i19, 1
  %narrow.i.i.i20 = and i8 %70, 14
  %71 = add nuw nsw i8 %narrow.i.i.i20, 2
  %72 = zext nneg i8 %71 to i32
  %73 = add i32 %43, %72                          ; 3 uses
  store i32 %73, ptr %29, align 4, !tbaa !188
  %74 = getelementptr i8, ptr %45, i64 1          ; 4 uses
  store ptr %74, ptr %1, align 8, !tbaa !183
  %75 = icmp ult ptr %74, %.val2.i
  br i1 %75, label %.lr.ph97, label %._crit_edge98

bb.c:                                             ; preds = %.lr.ph97
  %i.f = getelementptr i8, ptr %77, i64 1         ; 4 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !183
  %76 = icmp ult ptr %i.f, %.val2.i
  br i1 %76, label %.lr.ph97, label %._crit_edge98, !llvm.loop !191

.lr.ph97:                                         ; preds = %get_line_delta.exit.i.i16, %bb.c
  %77 = phi ptr [ %i.f, %bb.c ], [ %74, %get_line_delta.exit.i.i16 ] ; 3 uses
  %78 = load i8, ptr %77, align 1, !tbaa !106
  %79 = icmp sgt i8 %78, -1
  br i1 %79, label %bb.c, label %._crit_edge100, !llvm.loop !191

._crit_edge100:                                   ; preds = %.lr.ph97
  br label %._crit_edge98, !llvm.loop !191

._crit_edge98:                                    ; preds = %bb.c, %._crit_edge100, %get_line_delta.exit.i.i16
  %.lcssa88 = phi ptr [ %74, %get_line_delta.exit.i.i16 ], [ %77, %._crit_edge100 ], [ %i.f, %bb.c ] ; 2 uses
  %.not11 = icmp eq i32 %spec.select.i.i18, %spec.select.i.i
  br i1 %.not11, label %42, label %80, !llvm.loop !201

80:                                               ; preds = %._crit_edge98
  %81 = icmp slt i32 %43, 1
  br i1 %81, label %_PyLineTable_NextAddressRange.exit32, label %.preheader

.preheader:                                       ; preds = %80, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %.lcssa88, %80 ] ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1       ; 4 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !183
  %i.i = load i8, ptr %i.h, align 1, !tbaa !106   ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %.preheader, label %bb.d, !llvm.loop !193

bb.d:                                             ; preds = %.preheader
  %82 = lshr i8 %i.i, 3
  %i.k = and i8 %82, 15
  switch i8 %i.k, label %bb.g [
    i8 12, label %bb.f
    i8 13, label %bb.e
    i8 14, label %bb.e
    i8 11, label %get_line_delta.exit.i.i33
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = load i8, ptr %i.g, align 1, !tbaa !106
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = and i32 %i.m, 63                         ; 2 uses
  %i.o = and i32 %i.m, 64
  %.not11.i.i.i.i.i37 = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i.i.i.i37, label %scan_signed_varint.exit.i.i.i44, label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i38
  %.014.i.i.i.i.i39 = phi i32 [ %i.r, %.lr.ph.i.i.i.i.i38 ], [ 0, %bb.e ]
  %.0813.i.i.i.i.i40 = phi i32 [ %i.u, %.lr.ph.i.i.i.i.i38 ], [ %i.n, %bb.e ]
  %.pn12.i.i.i.i.i41 = phi ptr [ %.010.i.i.i.i.i42, %.lr.ph.i.i.i.i.i38 ], [ %i.g, %bb.e ]
  %.010.i.i.i.i.i42 = getelementptr i8, ptr %.pn12.i.i.i.i.i41, i64 1 ; 2 uses
  %i.p = load i8, ptr %.010.i.i.i.i.i42, align 1, !tbaa !106
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = add i32 %.014.i.i.i.i.i39, 6             ; 2 uses
  %i.s = and i32 %i.q, 63
  %i.t = shl i32 %i.s, %i.r
  %i.u = or i32 %i.t, %.0813.i.i.i.i.i40          ; 2 uses
  %i.v = and i32 %i.q, 64
  %.not.i.i.i.i.i43 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i43, label %scan_signed_varint.exit.i.i.i44, label %.lr.ph.i.i.i.i.i38, !llvm.loop !138

scan_signed_varint.exit.i.i.i44:                  ; preds = %.lr.ph.i.i.i.i.i38, %bb.e
  %.08.lcssa.i.i.i.i.i45 = phi i32 [ %i.n, %bb.e ], [ %i.u, %.lr.ph.i.i.i.i.i38 ] ; 2 uses
  %i.w = and i32 %.08.lcssa.i.i.i.i.i45, 1
  %.not.i.i.i.i46 = icmp eq i32 %i.w, 0
  %i.x = lshr i32 %.08.lcssa.i.i.i.i.i45, 1       ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = select i1 %.not.i.i.i.i46, i32 %i.y, i32 %i.x
  br label %get_line_delta.exit.i.i33

bb.f:                                             ; preds = %bb.d
  br label %get_line_delta.exit.i.i33

bb.g:                                             ; preds = %bb.d
  br label %get_line_delta.exit.i.i33

get_line_delta.exit.i.i33:                        ; preds = %bb.g, %bb.f, %scan_signed_varint.exit.i.i.i44, %bb.d
  %.0.i.neg.i.i = phi i32 [ 0, %bb.g ], [ -2, %bb.f ], [ %i.z, %scan_signed_varint.exit.i.i.i44 ], [ -1, %bb.d ]
  %i.aa = add i32 %67, %.0.i.neg.i.i              ; 2 uses
  store i32 %i.aa, ptr %4, align 8, !tbaa !189
  store i32 %43, ptr %29, align 4, !tbaa !188
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %get_line_delta.exit.i.i33
  %.pn.i.i.i = phi ptr [ %.0.i12.i.i, %.preheader.i.i ], [ %i.h, %get_line_delta.exit.i.i33 ]
  %.0.i12.i.i = getelementptr i8, ptr %.pn.i.i.i, i64 -1 ; 2 uses
  %i.ab = load i8, ptr %.0.i12.i.i, align 1, !tbaa !106 ; 2 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %.preheader.i.i, label %retreat.exit.i, !llvm.loop !194

retreat.exit.i:                                   ; preds = %.preheader.i.i
  %i.ad = shl i8 %i.ab, 1
  %narrow.i.i.i34 = and i8 %i.ad, 14
  %i.ae = add nuw nsw i8 %narrow.i.i.i34, 2
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = sub nsw i32 %43, %i.af
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !187
  %i.ah = getelementptr i8, ptr %i.g, i64 -2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !106
  %i.aj = icmp ult i8 %i.ai, -8
  %spec.select.i.i35 = select i1 %i.aj, i32 %i.aa, i32 -1
  store i32 %spec.select.i.i35, ptr %i.d, align 8, !tbaa !190
  br label %_PyLineTable_NextAddressRange.exit32

_PyLineTable_NextAddressRange.exit32:             ; preds = %42, %retreat.exit.i, %80
  %83 = phi i32 [ %73, %80 ], [ %43, %retreat.exit.i ], [ %43, %42 ]
  %i.ak = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.24, i32 noundef %i.e, i32 noundef %83, ptr noundef nonnull @_source_offset_converter, ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_PyLineTable_NextAddressRange.exit

_PyLineTable_NextAddressRange.exit:               ; preds = %bb.a, %_PyLineTable_NextAddressRange.exit32
  %.0 = phi ptr [ %i.ak, %_PyLineTable_NextAddressRange.exit32 ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @PyObject_Free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @positionsiter_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !106
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200
  tail call void %i.h(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @positionsiter_next(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !205
  %.not = icmp slt i32 %i.b, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.f, align 8, !tbaa !183
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val15 = load ptr, ptr %i.g, align 8, !tbaa !186
  %.not16 = icmp ult ptr %.val, %.val15
  br i1 %.not16, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 68
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = getelementptr i8, ptr %0, i64 76
  tail call fastcc void @advance_with_locations(ptr noundef %i.c, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !204
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.a ]
  %i.l = add i32 %i.k, 2
  store i32 %i.l, ptr %i.a, align 8, !tbaa !204
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = getelementptr i8, ptr %0, i64 68
  %i.o = getelementptr i8, ptr %0, i64 72
  %i.p = getelementptr i8, ptr %0, i64 76
  %i.q = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.25, ptr noundef nonnull @_source_offset_converter, ptr noundef %i.m, ptr noundef nonnull @_source_offset_converter, ptr noundef %i.n, ptr noundef nonnull @_source_offset_converter, ptr noundef %i.o, ptr noundef nonnull @_source_offset_converter, ptr noundef %i.p) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnstable_Code_GetExtra(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !114
  %.not = icmp eq ptr %.val, @PyCode_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 1643) #14
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !14
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i64, ptr %i.d, align 8, !tbaa !206
  %i.f = icmp slt i64 %1, %i.e
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %1
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  store ptr %i.i, ptr %2, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnstable_Code_SetExtra(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8648
  %i.d = load i64, ptr %i.c, align 8, !tbaa !207  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.f = icmp eq ptr %.val, @PyCode_Type
  %i.g = icmp sgt i64 %1, -1
  %or.cond.not46 = and i1 %i.g, %i.f
  %.not = icmp slt i64 %1, %i.d
  %or.cond40 = select i1 %or.cond.not46, i1 %.not, i1 false
  br i1 %or.cond40, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 1676) #14
  br label %code_extra_grow_gil.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165  ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !206  ; 2 uses
  %i.l = icmp slt i64 %1, %i.k
  br i1 %i.l, label %code_extra_grow_gil.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.n = shl i64 %i.d, 3                          ; 2 uses
  %i.o = add i64 %i.n, 8
  %i.p = tail call ptr @PyMem_Realloc(ptr noundef %i.i, i64 noundef %i.o) #14 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %.thread
  %i.r = icmp slt i64 %i.m, %i.d
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.s = shl i64 %i.m, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.s
  %scevgep.i = getelementptr i8, ptr %i.t, i64 8
  %i.u = sub i64 %i.n, %i.s
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.u, i1 false), !tbaa !14
  br label %._crit_edge.i

bb.e:                                             ; preds = %.thread
  %i.v = tail call ptr @PyErr_NoMemory() #14      ; 0 uses
  br label %code_extra_grow_gil.exit.thread

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  store i64 %i.d, ptr %i.p, align 8, !tbaa !206
  %i.w = getelementptr i8, ptr %i.p, i64 8
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %1
  store ptr %2, ptr %i.x, align 8, !tbaa !14
  store ptr %i.p, ptr %i.h, align 8, !tbaa !165
  br label %code_extra_grow_gil.exit.thread

code_extra_grow_gil.exit:                         ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.i, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %1 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 2 uses
  store ptr %2, ptr %i.z, align 8, !tbaa !14
  %.not38 = icmp eq ptr %i.aa, null
  br i1 %.not38, label %code_extra_grow_gil.exit.thread, label %bb.f

bb.f:                                             ; preds = %code_extra_grow_gil.exit
  %i.ab = getelementptr i8, ptr %i.b, i64 8656
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %1
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %.not39 = icmp eq ptr %i.ad, null
  br i1 %.not39, label %code_extra_grow_gil.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@code_replace:bb.a
  br i1 %.not.i.i.i, label %bb.cx, label %Py_XDECREF.exit.i

bb.cx:                                            ; preds = %bb.cw
  %i.fw = add nsw i32 %i.fv, -1                   ; 2 uses
  store i32 %i.fw, ptr %.064.i, align 8, !tbaa !106
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.cy, label %Py_XDECREF.exit.i

bb.cy:                                            ; preds = %bb.cx
  call void @_Py_Dealloc(ptr noundef nonnull %.064.i) #14, !inline_history !275
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.not.i89.i = icmp eq ptr %.162.i, null
  br i1 %.not.i89.i, label %Py_XDECREF.exit91.i, label %bb.cz

bb.cz:                                            ; preds = %Py_XDECREF.exit.i
  %i.fy = load i32, ptr %.162.i, align 8, !tbaa !106 ; 2 uses
  %.not.i.i90.i = icmp sgt i32 %i.fy, -1
  br i1 %.not.i.i90.i, label %bb.da, label %Py_XDECREF.exit91.i

bb.da:                                            ; preds = %bb.cz
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %.162.i, align 8, !tbaa !106
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.db, label %Py_XDECREF.exit91.i

bb.db:                                            ; preds = %bb.da
  call void @_Py_Dealloc(ptr noundef nonnull %.162.i) #14, !inline_history !275
  br label %Py_XDECREF.exit91.i

Py_XDECREF.exit91.i:                              ; preds = %bb.db, %bb.da, %bb.cz, %Py_XDECREF.exit.i
  %.not.i92.i = icmp eq ptr %.160.i, null
  br i1 %.not.i92.i, label %Py_XDECREF.exit94.i, label %bb.dc

bb.dc:                                            ; preds = %Py_XDECREF.exit91.i
  %i.gb = load i32, ptr %.160.i, align 8, !tbaa !106 ; 2 uses
  %.not.i.i93.i = icmp sgt i32 %i.gb, -1
  br i1 %.not.i.i93.i, label %bb.dd, label %Py_XDECREF.exit94.i

bb.dd:                                            ; preds = %bb.dc
  %i.gc = add nsw i32 %i.gb, -1                   ; 2 uses
  store i32 %i.gc, ptr %.160.i, align 8, !tbaa !106
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.de, label %Py_XDECREF.exit94.i

bb.de:                                            ; preds = %bb.dd
  call void @_Py_Dealloc(ptr noundef nonnull %.160.i) #14, !inline_history !275
  br label %Py_XDECREF.exit94.i

Py_XDECREF.exit94.i:                              ; preds = %bb.de, %bb.dd, %bb.dc, %Py_XDECREF.exit91.i
  %.not.i95.i = icmp eq ptr %.1.i, null
  br i1 %.not.i95.i, label %code_replace_impl.exit, label %bb.df

bb.df:                                            ; preds = %Py_XDECREF.exit94.i
  %i.ge = load i32, ptr %.1.i, align 8, !tbaa !106 ; 2 uses
  %.not.i.i96.i = icmp sgt i32 %i.ge, -1
  br i1 %.not.i.i96.i, label %bb.dg, label %code_replace_impl.exit

bb.dg:                                            ; preds = %bb.df
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gf, ptr %.1.i, align 8, !tbaa !106
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.dh, label %code_replace_impl.exit

bb.dh:                                            ; preds = %bb.dg
  call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #14, !inline_history !275
  br label %code_replace_impl.exit

code_replace_impl.exit:                           ; preds = %bb.dh, %bb.dg, %bb.df, %Py_XDECREF.exit94.i, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %bb.g, %bb.d, %bb.bv, %bb.bs, %bb.bo, %bb.bk, %bb.bg, %bb.bc, %bb.ay, %bb.au, %bb.aq, %bb.am, %bb.ai
  %.0167 = phi ptr [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.o ], [ null, %bb.s ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.ae ], [ null, %bb.d ], [ null, %bb.bv ], [ null, %bb.bs ], [ null, %bb.bo ], [ null, %bb.bk ], [ null, %bb.bg ], [ null, %bb.bc ], [ null, %bb.ay ], [ null, %bb.au ], [ null, %bb.aq ], [ null, %bb.am ], [ null, %bb.ai ], [ null, %bb.bx ], [ null, %bb.bz ], [ null, %bb.cb ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.ch ], [ null, %bb.cj ], [ null, %bb.cl ], [ null, %bb.cn ], [ %.063.i, %Py_XDECREF.exit94.i ], [ %.063.i, %bb.df ], [ %.063.i, %bb.dg ], [ %.063.i, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0167
}

; Function Attrs: nounwind uwtable
define internal ptr @code__varname_from_oparg(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @code__varname_from_oparg._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %code__varname_from_oparg_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #14 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %.split

.split:                                           ; preds = %.thread
  %i.j = getelementptr i8, ptr %0, i64 96
  %.val23 = load ptr, ptr %i.j, align 8, !tbaa !155
  %i.k = sext i32 %i.h to i64
  %i.l = call ptr @PyTuple_GetItem(ptr noundef %.val23, i64 noundef %i.k) #14 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %code__varname_from_oparg_impl.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.n = load i32, ptr %i.l, align 8, !tbaa !106  ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %code__varname_from_oparg_impl.exit, label %code__varname_from_oparg_impl.exit.sink.split

bb.d:                                             ; preds = %.thread
  %i.p = call ptr @PyErr_Occurred() #14
  %.not22 = icmp eq ptr %i.p, null
  br i1 %.not22, label %.split18, label %code__varname_from_oparg_impl.exit

.split18:                                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.q, align 8, !tbaa !155
  %i.r = call ptr @PyTuple_GetItem(ptr noundef %.val, i64 noundef -1) #14 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %code__varname_from_oparg_impl.exit, label %bb.e

bb.e:                                             ; preds = %.split18
  %i.t = load i32, ptr %i.r, align 8, !tbaa !106  ; 2 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %code__varname_from_oparg_impl.exit, label %code__varname_from_oparg_impl.exit.sink.split

code__varname_from_oparg_impl.exit.sink.split:    ; preds = %bb.e, %bb.c
  %.sink34 = phi i32 [ %i.n, %bb.c ], [ %i.t, %bb.e ]
  %.sink33 = phi ptr [ %i.l, %bb.c ], [ %i.r, %bb.e ] ; 2 uses
  %i.v = add nuw i32 %.sink34, 1
  store i32 %i.v, ptr %.sink33, align 8, !tbaa !106
  br label %code__varname_from_oparg_impl.exit

code__varname_from_oparg_impl.exit:               ; preds = %code__varname_from_oparg_impl.exit.sink.split, %bb.e, %.split18, %bb.c, %.split, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ %i.r, %bb.e ], [ null, %.split ], [ %i.l, %bb.c ], [ null, %.split18 ], [ %.sink33, %code__varname_from_oparg_impl.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #2

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyInstrumentation_BranchesIterator(ptr noundef) local_unnamed_addr #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyTuple_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @code_getlnotab(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !105
  %i.c = tail call i32 @PyErr_WarnEx(ptr noundef %i.b, ptr noundef nonnull @.str.82, i64 noundef 1) #14
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %i.g = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 64) #14 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !105
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %decode_linetable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32       ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %.val.i.i = load i64, ptr %i.l, align 8, !tbaa !125
  %i.m = getelementptr i8, ptr %i.k, i64 %.val.i.i ; 3 uses
  %.not3.i75.i = icmp ult ptr %i.k, %i.m
  br i1 %.not3.i75.i, label %.lr.ph.preheader.i, label %_PyLineTable_NextAddressRange.exit.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.n = load i32, ptr %i.e, align 4, !tbaa !151
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %.0881.i = phi i32 [ %.210.i, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.01280.i = phi i32 [ %.214.i, %bb.v ], [ %i.f, %.lr.ph.preheader.i ] ; 3 uses
  %.079.i = phi i32 [ %.1.i, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.6.078.i = phi i32 [ %i.ai, %bb.v ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.1637.077.i = phi ptr [ %.lcssa61, %bb.v ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.1134.076.i = phi i32 [ %i.ae, %bb.v ], [ %i.n, %.lr.ph.preheader.i ]
  %i.o = load i8, ptr %.sroa.1637.077.i, align 1, !tbaa !106 ; 2 uses
  %2 = lshr i8 %i.o, 3
  %3 = and i8 %2, 15
  switch i8 %3, label %bb.f [
    i8 12, label %bb.e
    i8 13, label %bb.d
    i8 14, label %bb.d
    i8 11, label %get_line_delta.exit.i.i.i
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.p = getelementptr i8, ptr %.sroa.1637.077.i, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !106
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 63                         ; 2 uses
  %i.t = and i32 %i.r, 64
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not11.i.i.i.i.i.i, label %scan_signed_varint.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ]
  %.0813.i.i.i.i.i.i = phi i32 [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.d ]
  %.pn12.i.i.i.i.i.i = phi ptr [ %.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %.010.i.i.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.u = load i8, ptr %.010.i.i.i.i.i.i, align 1, !tbaa !106
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = add i32 %.014.i.i.i.i.i.i, 6             ; 2 uses
  %i.x = and i32 %i.v, 63
  %i.y = shl i32 %i.x, %i.w
  %i.z = or i32 %i.y, %.0813.i.i.i.i.i.i          ; 2 uses
  %i.aa = and i32 %i.v, 64
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %scan_signed_varint.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.08.lcssa.i.i.i.i.i.i = phi i32 [ %i.s, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ab = and i32 %.08.lcssa.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, 0
  %i.ac = lshr i32 %.08.lcssa.i.i.i.i.i.i, 1      ; 2 uses
  %i.ad = sub nsw i32 0, %i.ac
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.ac, i32 %i.ad
  br label %get_line_delta.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  br label %get_line_delta.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i
  br label %get_line_delta.exit.i.i.i

get_line_delta.exit.i.i.i:                        ; preds = %bb.f, %bb.e, %scan_signed_varint.exit.i.i.i.i, %.lr.ph.i
  %.0.i.i.i.i = phi i32 [ 0, %bb.f ], [ 2, %bb.e ], [ %.0.i.i.i.i.i, %scan_signed_varint.exit.i.i.i.i ], [ 1, %.lr.ph.i ]
  %i.ae = add i32 %.0.i.i.i.i, %.sroa.1134.076.i  ; 4 uses
  %i.af = shl i8 %i.o, 1
  %narrow.i.i.i.i = and i8 %i.af, 14
  %i.ag = add nuw nsw i8 %narrow.i.i.i.i, 2
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = add i32 %.sroa.6.078.i, %i.ah
  %i.aj = getelementptr i8, ptr %.sroa.1637.077.i, i64 1 ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.m
  br i1 %i.ak, label %.lr.ph, label %._crit_edge72

bb.g:                                             ; preds = %.lr.ph
  %i.al = getelementptr i8, ptr %i.an, i64 1      ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.m
  br i1 %i.am, label %.lr.ph, label %._crit_edge72, !llvm.loop !191

.lr.ph:                                           ; preds = %get_line_delta.exit.i.i.i, %bb.g
  %i.an = phi ptr [ %i.al, %bb.g ], [ %i.aj, %get_line_delta.exit.i.i.i ] ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !106
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %._crit_edge, !llvm.loop !191

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge72, !llvm.loop !191

._crit_edge72:                                    ; preds = %bb.g, %._crit_edge, %get_line_delta.exit.i.i.i
  %.lcssa61 = phi ptr [ %i.an, %._crit_edge ], [ %i.aj, %get_line_delta.exit.i.i.i ], [ %i.al, %bb.g ]
  %.lcssa60 = phi i1 [ true, %._crit_edge ], [ false, %get_line_delta.exit.i.i.i ], [ false, %bb.g ]
  %.not16.i = icmp eq i32 %i.ae, %.01280.i
  br i1 %.not16.i, label %bb.v, label %bb.h

bb.h:                                             ; preds = %._crit_edge72
  %i.aq = sub i32 %.sroa.6.078.i, %.0881.i        ; 3 uses
  %i.ar = sub i32 %i.ae, %.01280.i                ; 7 uses
  %i.as = icmp sgt i32 %i.aq, 255
  br i1 %i.as, label %.lr.ph.i.i, label %.preheader50.i.i

.preheader50.i.i:                                 ; preds = %bb.l, %bb.h
  %.2.i = phi i32 [ %.079.i, %bb.h ], [ %i.bl, %bb.l ] ; 5 uses
  %.019.lcssa.i.i = phi i32 [ %i.aq, %bb.h ], [ %i.bv, %bb.l ] ; 3 uses
  %i.at = icmp sgt i32 %i.ar, 127
  br i1 %i.at, label %.lr.ph61.preheader.i.i, label %.preheader.i.i

.lr.ph61.preheader.i.i:                           ; preds = %.preheader50.i.i
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %.val.i23.peel.i.i = load i64, ptr %i.av, align 8, !tbaa !125 ; 2 uses
  %i.aw = add i32 %.2.i, 2                        ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %.not.i24.peel.i.i = icmp sgt i64 %.val.i23.peel.i.i, %i.ax
  br i1 %.not.i24.peel.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph61.preheader.i.i
  %i.ay = shl i64 %.val.i23.peel.i.i, 1
  %i.az = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.ay) #14
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.loopexit.i, label %._crit_edge.i25.peel.i.i

._crit_edge.i25.peel.i.i:                         ; preds = %bb.i
  %.pre.i26.peel.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i25.peel.i.i, %.lr.ph61.preheader.i.i
  %i.bb = phi ptr [ %.pre.i26.peel.i.i, %._crit_edge.i25.peel.i.i ], [ %i.au, %.lr.ph61.preheader.i.i ]
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %i.bd = sext i32 %.2.i to i64
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd  ; 2 uses
  %i.bf = trunc i32 %.019.lcssa.i.i to i8
  %i.bg = getelementptr i8, ptr %i.be, i64 1
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !106
  store i8 127, ptr %i.bg, align 1, !tbaa !106
  %i.bh = add nsw i32 %i.ar, -127                 ; 2 uses
  %i.bi = icmp samesign ugt i32 %i.ar, 254
  br i1 %i.bi, label %.lr.ph61.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.l
  %.6.i = phi i32 [ %i.bl, %bb.l ], [ %.079.i, %bb.h ] ; 2 uses
  %.01958.i.i = phi i32 [ %i.bv, %bb.l ], [ %i.aq, %bb.h ] ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %.val.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !125 ; 2 uses
  %i.bl = add i32 %.6.i, 2                        ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %.not.i.i.i = icmp sgt i64 %.val.i.i.i, %i.bm
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bn = shl i64 %.val.i.i.i, 1
  %i.bo = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.bn) #14
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.k
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i
  %i.bq = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.bj, %.lr.ph.i.i ]
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = sext i32 %.6.i to i64
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  store i8 -1, ptr %i.bt, align 1, !tbaa !106
  store i8 0, ptr %i.bu, align 1, !tbaa !106
  %i.bv = add nsw i32 %.01958.i.i, -255           ; 2 uses
  %i.bw = icmp sgt i32 %.01958.i.i, 510
  br i1 %i.bw, label %.lr.ph.i.i, label %.preheader50.i.i, !llvm.loop !277

.preheader.i.i:                                   ; preds = %.preheader50.i.i
  %i.bx = icmp slt i32 %i.ar, -128
  br i1 %i.bx, label %.lr.ph66.preheader.i.i, label %._crit_edge.i.i

.lr.ph66.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %.val.i30.peel.i.i = load i64, ptr %i.bz, align 8, !tbaa !125 ; 2 uses
  %i.ca = add i32 %.2.i, 2                        ; 3 uses
  %i.cb = sext i32 %i.ca to i64
  %.not.i31.peel.i.i = icmp sgt i64 %.val.i30.peel.i.i, %i.cb
  br i1 %.not.i31.peel.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph66.preheader.i.i
  %i.cc = shl i64 %.val.i30.peel.i.i, 1
  %i.cd = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.cc) #14
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.loopexit.i, label %._crit_edge.i32.peel.i.i

._crit_edge.i32.peel.i.i:                         ; preds = %bb.m
  %.pre.i33.peel.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i32.peel.i.i, %.lr.ph66.preheader.i.i
  %i.cf = phi ptr [ %.pre.i33.peel.i.i, %._crit_edge.i32.peel.i.i ], [ %i.by, %.lr.ph66.preheader.i.i ]
  %i.cg = getelementptr i8, ptr %i.cf, i64 32
  %i.ch = sext i32 %.2.i to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch  ; 2 uses
  %i.cj = trunc i32 %.019.lcssa.i.i to i8
  %i.ck = getelementptr i8, ptr %i.ci, i64 1
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !106
  store i8 -128, ptr %i.ck, align 1, !tbaa !106
  %i.cl = add nuw nsw i32 %i.ar, 128              ; 2 uses
  %i.cm = icmp samesign ult i32 %i.ar, -256
  br i1 %i.cm, label %.lr.ph66.i.i, label %._crit_edge.i.i

.lr.ph61.i.i:                                     ; preds = %bb.j, %bb.p
  %.5.i = phi i32 [ %i.cp, %bb.p ], [ %i.aw, %bb.j ] ; 2 uses
  %.01860.i.i = phi i32 [ %i.cz, %bb.p ], [ %i.bh, %bb.j ] ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %.val.i23.i.i = load i64, ptr %i.co, align 8, !tbaa !125 ; 2 uses
  %i.cp = add i32 %.5.i, 2                        ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %.not.i24.i.i = icmp sgt i64 %.val.i23.i.i, %i.cq
  br i1 %.not.i24.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph61.i.i
  %i.cr = shl i64 %.val.i23.i.i, 1
  %i.cs = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.cr) #14
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.loopexit.i, label %._crit_edge.i25.i.i

._crit_edge.i25.i.i:                              ; preds = %bb.o
  %.pre.i26.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i25.i.i, %.lr.ph61.i.i
  %i.cu = phi ptr [ %.pre.i26.i.i, %._crit_edge.i25.i.i ], [ %i.cn, %.lr.ph61.i.i ]
  %i.cv = getelementptr i8, ptr %i.cu, i64 32
  %i.cw = sext i32 %.5.i to i64
  %i.cx = getelementptr i8, ptr %i.cv, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 1
  store i8 0, ptr %i.cx, align 1, !tbaa !106
  store i8 127, ptr %i.cy, align 1, !tbaa !106
  %i.cz = add nsw i32 %.01860.i.i, -127           ; 2 uses
  %i.da = icmp samesign ugt i32 %.01860.i.i, 254
  br i1 %i.da, label %.lr.ph61.i.i, label %._crit_edge.i.i, !llvm.loop !278

.lr.ph66.i.i:                                     ; preds = %bb.n, %bb.r
  %.4.i = phi i32 [ %i.dd, %bb.r ], [ %i.ca, %bb.n ] ; 2 uses
  %.165.i.i = phi i32 [ %i.dn, %bb.r ], [ %i.cl, %bb.n ] ; 2 uses
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %.val.i30.i.i = load i64, ptr %i.dc, align 8, !tbaa !125 ; 2 uses
  %i.dd = add i32 %.4.i, 2                        ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %.not.i31.i.i = icmp sgt i64 %.val.i30.i.i, %i.de
  br i1 %.not.i31.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph66.i.i
  %i.df = shl i64 %.val.i30.i.i, 1
  %i.dg = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.df) #14
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit.i, label %._crit_edge.i32.i.i

._crit_edge.i32.i.i:                              ; preds = %bb.q
  %.pre.i33.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i32.i.i, %.lr.ph66.i.i
  %i.di = phi ptr [ %.pre.i33.i.i, %._crit_edge.i32.i.i ], [ %i.db, %.lr.ph66.i.i ]
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = sext i32 %.4.i to i64
  %i.dl = getelementptr i8, ptr %i.dj, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  store i8 0, ptr %i.dl, align 1, !tbaa !106
  store i8 -128, ptr %i.dm, align 1, !tbaa !106
  %i.dn = add nuw nsw i32 %.165.i.i, 128          ; 2 uses
  %i.do = icmp ult i32 %.165.i.i, -256
  br i1 %i.do, label %.lr.ph66.i.i, label %._crit_edge.i.i, !llvm.loop !280

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.p, %bb.n, %.preheader.i.i, %bb.j
  %.338.i = phi i32 [ %.2.i, %.preheader.i.i ], [ %i.aw, %bb.j ], [ %i.cp, %bb.p ], [ %i.ca, %bb.n ], [ %i.dd, %bb.r ] ; 2 uses
  %.2.lcssa.i.i = phi i32 [ %.019.lcssa.i.i, %.preheader.i.i ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.r ]
  %.1.lcssa.i.i = phi i32 [ %i.ar, %.preheader.i.i ], [ %i.bh, %bb.j ], [ %i.cz, %bb.p ], [ %i.cl, %bb.n ], [ %i.dn, %bb.r ]
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %.val.i37.i.i = load i64, ptr %i.dq, align 8, !tbaa !125 ; 2 uses
  %i.dr = add i32 %.338.i, 2                      ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %.not.i38.i.i = icmp sgt i64 %.val.i37.i.i, %i.ds
  br i1 %.not.i38.i.i, label %Py_DECREF.exit.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.dt = shl i64 %.val.i37.i.i, 1
end_hunk_2
