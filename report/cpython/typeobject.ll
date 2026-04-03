begin_hunk_0
  tail call void @PyErr_SetString(ptr noundef %i.bm, ptr noundef nonnull @.str.56) #25
  br label %.critedge

PyType_IsSubtype.exit.thread56:                   ; preds = %.lr.ph.i.i, %.preheader.i.i, %.lr.ph.i.i45, %.preheader.i.i48, %PyType_IsSubtype.exit51, %bb.k, %PyType_IsSubtype.exit
  %.334 = phi ptr [ %i.am, %.lr.ph.i.i45 ], [ %i.am, %bb.k ], [ %i.am, %PyType_IsSubtype.exit51 ], [ %.03175, %PyType_IsSubtype.exit ], [ %.03175, %.preheader.i.i ], [ %i.am, %.preheader.i.i48 ], [ %.03175, %.lr.ph.i.i ]
  %.330 = phi ptr [ %i.f, %.lr.ph.i.i45 ], [ %i.f, %bb.k ], [ %i.f, %PyType_IsSubtype.exit51 ], [ %.02776, %PyType_IsSubtype.exit ], [ %.02776, %.preheader.i.i ], [ %i.f, %.preheader.i.i48 ], [ %.02776, %.lr.ph.i.i ] ; 2 uses
  %i.bn = add nuw nsw i64 %.02677, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %.val40
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !211
end_hunk_0
begin_hunk_1
  br i1 %.not66, label %.critedge, label %bb.k

bb.k:                                             ; preds = %Py_XDECREF.exit
  %i.q = tail call ptr @PyStaticMethod_New(ptr noundef nonnull %i.p) #25 ; 5 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %.not.i59 = icmp sgt i32 %i.r, -1
  br i1 %.not.i59, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !112
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.u = tail call ptr @PyDescr_NewMethod(ptr noundef %0, ptr noundef nonnull %1) #25
  br label %Py_DECREF.exit60

Py_DECREF.exit60:                                 ; preds = %bb.n, %bb.d
  %.239 = phi ptr [ %i.f, %bb.d ], [ %i.u, %bb.n ] ; 3 uses
  %i.v = icmp eq ptr %.239, null
  br i1 %i.v, label %.critedge, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %2 = icmp eq ptr %i.q, null
  br i1 %2, label %.critedge, label %bb.q

bb.p:                                             ; preds = %Py_DECREF.exit60
  %i.w = getelementptr i8, ptr %.239, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !256
  br label %bb.u
end_hunk_1
begin_hunk_2
  br i1 %i.aa, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !112 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i57, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !112
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #25
  br label %.critedge

bb.u:                                             ; preds = %bb.q, %bb.p
  %.2426976 = phi i1 [ false, %bb.p ], [ true, %bb.q ]
  %.2397074 = phi ptr [ %.239, %bb.p ], [ %i.q, %bb.q ] ; 5 uses
  %.036 = phi ptr [ %i.x, %bb.p ], [ %i.z, %bb.q ] ; 5 uses
  %i.ae = getelementptr i8, ptr %0, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !118
end_hunk_2
begin_hunk_3
  br i1 %.not50, label %bb.x, label %bb.y

bb.x:                                             ; preds = %lookup_tp_dict.exit
  %i.ax = tail call i32 @PyDict_SetDefaultRef(ptr noundef %.0.i, ptr noundef %.036, ptr noundef nonnull %.2397074, ptr noundef null) #25
  br label %bb.z

bb.y:                                             ; preds = %lookup_tp_dict.exit
  %i.ay = tail call i32 @PyDict_SetItem(ptr noundef %.0.i, ptr noundef %.036, ptr noundef nonnull %.2397074) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.035.in = phi i32 [ %i.ay, %bb.y ], [ %i.ax, %bb.x ]
  br i1 %.2426976, label %bb.aa, label %Py_DECREF.exit56

bb.aa:                                            ; preds = %bb.z
  %i.az = load i32, ptr %.036, align 8, !tbaa !112 ; 2 uses
end_hunk_3
begin_hunk_4
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.bc = load i32, ptr %.2397074, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %Py_DECREF.exit56
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %.2397074, align 8, !tbaa !112
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2397074) #25
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit56, %bb.ad, %bb.ae
  %.035.in.lobit = ashr i32 %.035.in, 31
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.s, %bb.r, %bb.o, %bb.g, %Py_XDECREF.exit, %Py_DECREF.exit, %Py_DECREF.exit60, %bb.c
  %.4 = phi i32 [ -1, %bb.c ], [ -1, %bb.o ], [ -1, %Py_DECREF.exit60 ], [ %.035.in.lobit, %Py_DECREF.exit ], [ -1, %Py_XDECREF.exit ], [ -1, %bb.g ], [ -1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.t ]
  ret i32 %.4
}

end_hunk_4
begin_hunk_5
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #25
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.t, %._crit_edge, %bb.w, %bb.q, %bb.l, %set_tp_mro.exit, %_PyType_HasSubclasses.exit, %bb.a
  %.2 = phi i32 [ %i.b, %bb.a ], [ %i.h, %_PyType_HasSubclasses.exit ], [ %i.h, %bb.q ], [ -1, %set_tp_mro.exit ], [ -1, %bb.l ], [ %.235, %bb.w ], [ -1, %bb.t ], [ %.235, %._crit_edge ], [ %.2.ph, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.2
}
end_hunk_5
begin_hunk_6
  call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #25
  br label %Py_DECREF.exit98

Py_DECREF.exit98:                                 ; preds = %Py_DECREF.exit100, %bb.bu, %bb.bv, %bb.ai, %.critedge
  %.470 = phi ptr [ %.066, %.critedge ], [ %.066, %bb.ai ], [ %.268, %bb.bu ], [ %.268, %bb.bv ], [ %.268, %Py_DECREF.exit100 ] ; 3 uses
  %i.fg = load i32, ptr %.0.i164, align 8, !tbaa !112 ; 2 uses
  %.not.i = icmp sgt i32 %i.fg, -1
  br i1 %.not.i, label %bb.bw, label %.critedge96
end_hunk_6
begin_hunk_7
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i164) #25
  br label %.critedge96

.critedge96:                                      ; preds = %Py_DECREF.exit102, %bb.bs, %bb.bt, %bb.an, %Py_DECREF.exit122, %bb.ao, %Py_DECREF.exit106.thread, %bb.bx, %bb.bw, %Py_DECREF.exit98, %bb.x, %bb.w, %_PyType_GetSlotNames.exit.thread, %Py_DECREF.exit124, %bb.g, %bb.c
  %.7 = phi ptr [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.x ], [ %.470, %bb.bx ], [ null, %Py_DECREF.exit124 ], [ null, %_PyType_GetSlotNames.exit.thread ], [ null, %bb.w ], [ %.470, %Py_DECREF.exit98 ], [ %.470, %bb.bw ], [ null, %Py_DECREF.exit106.thread ], [ null, %bb.ao ], [ null, %Py_DECREF.exit122 ], [ null, %bb.an ], [ null, %bb.bt ], [ null, %bb.bs ], [ null, %Py_DECREF.exit102 ]
  ret ptr %.7
}

end_hunk_7
begin_hunk_8
  br label %Py_XDECREF.exit147.thread.i

Py_XDECREF.exit147.thread.i:                      ; preds = %bb.dd, %Py_XDECREF.exit147.i, %Py_DECREF.exit87.i, %bb.cg, %bb.cf, %._crit_edge.thread.i
  %.046200.i = phi ptr [ %i.fb, %Py_XDECREF.exit147.i ], [ %i.fb, %bb.dd ], [ %i.fb, %._crit_edge.thread.i ], [ %i.fb, %bb.cf ], [ %i.fb, %bb.cg ], [ %i.hc, %Py_DECREF.exit87.i ] ; 10 uses
  %.149199.i = phi ptr [ %i.fv, %Py_XDECREF.exit147.i ], [ %i.fv, %bb.dd ], [ %i.fv, %._crit_edge.thread.i ], [ %i.fv, %bb.cf ], [ %i.fv, %bb.cg ], [ %i.hn, %Py_DECREF.exit87.i ] ; 10 uses
  %i.ik = phi i32 [ 0, %Py_XDECREF.exit147.i ], [ %i.ij, %bb.dd ], [ 0, %._crit_edge.thread.i ], [ 0, %bb.cf ], [ 0, %bb.cg ], [ 0, %Py_DECREF.exit87.i ]
  %i.il = tail call fastcc ptr @object_getstate(ptr noundef %0, i32 noundef %i.ik) ; 8 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.de, label %bb.dj
end_hunk_8
begin_hunk_9
  br label %reduce_newobj.exit

reduce_newobj.exit:                               ; preds = %bb.ep, %bb.er, %bb.eq, %import_copyreg.exit.thread15, %bb.en, %bb.em, %Py_DECREF.exit63.i, %bb.ed, %bb.ec, %Py_DECREF.exit73.i, %bb.di, %bb.dh, %Py_DECREF.exit79.i, %Py_DECREF.exit81.i, %bb.cx, %bb.cw, %bb.cv, %bb.cp, %bb.co, %Py_DECREF.exit93.i, %bb.by, %bb.bx, %Py_XDECREF.exit143.i, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bh, %bb.bg, %bb.bf, %Py_XDECREF.exit.i, %_PyObject_LookupSpecial.exit137.thread.i.i, %bb.ba, %bb.az, %bb.ay, %Py_DECREF.exit84.i.i, %_PyObject_LookupSpecial.exit.thread.i.i, %bb.al, %bb.ak, %Py_DECREF.exit88.i.i, %bb.af, %bb.ae, %Py_DECREF.exit92.i.i, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %Py_DECREF.exit100.i.i, %bb.c, %import_copyreg.exit
  %.0 = phi ptr [ null, %import_copyreg.exit ], [ %i.ku, %bb.er ], [ null, %bb.c ], [ null, %Py_DECREF.exit81.i ], [ %i.kb, %bb.en ], [ null, %bb.cx ], [ null, %bb.di ], [ null, %bb.ed ], [ null, %Py_DECREF.exit88.i.i ], [ null, %bb.bh ], [ null, %bb.cp ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %Py_DECREF.exit93.i ], [ null, %bb.co ], [ null, %bb.cv ], [ null, %bb.cw ], [ null, %Py_DECREF.exit79.i ], [ null, %bb.dh ], [ null, %Py_DECREF.exit73.i ], [ null, %bb.ec ], [ %i.kb, %Py_DECREF.exit63.i ], [ %i.kb, %bb.em ], [ null, %bb.ay ], [ null, %_PyObject_LookupSpecial.exit.thread.i.i ], [ null, %bb.ak ], [ null, %Py_DECREF.exit84.i.i ], [ null, %_PyObject_LookupSpecial.exit137.thread.i.i ], [ null, %bb.r ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %Py_DECREF.exit100.i.i ], [ null, %bb.v ], [ null, %bb.af ], [ null, %bb.al ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.u ], [ null, %Py_DECREF.exit92.i.i ], [ null, %bb.ae ], [ null, %bb.by ], [ null, %bb.br ], [ null, %bb.bo ], [ null, %bb.bp ], [ null, %bb.bq ], [ null, %Py_XDECREF.exit143.i ], [ null, %bb.bx ], [ %i.ku, %import_copyreg.exit.thread15 ], [ %i.ku, %bb.eq ], [ null, %bb.ep ]
  ret ptr %.0
}

end_hunk_9
begin_hunk_10
  br i1 %.not25.i, label %getindex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 %i.m(ptr noundef nonnull %0) #25
  %.fr.i = freeze i64 %i.n                        ; 2 uses
  %i.o = icmp sgt i64 %.fr.i, -1
  %.015.i = add nsw i64 %.fr.i, %i.f
  br i1 %i.o, label %getindex.exit, label %getindex.exit.thread

getindex.exit:                                    ; preds = %bb.f, %.thread.i, %bb.e
end_hunk_10
begin_hunk_11
  br i1 %.not25.i, label %getindex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 %i.m(ptr noundef nonnull %0) #25
  %.fr.i = freeze i64 %i.n                        ; 2 uses
  %i.o = icmp sgt i64 %.fr.i, -1
  %.015.i = add nsw i64 %.fr.i, %i.f
  br i1 %i.o, label %getindex.exit, label %getindex.exit.thread

getindex.exit:                                    ; preds = %bb.f, %.thread.i, %bb.e
end_hunk_11
begin_hunk_12
  br i1 %.not25.i, label %getindex.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i64 %i.q(ptr noundef nonnull %0) #25
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = icmp sgt i64 %.fr.i, -1
  %.015.i = add nsw i64 %.fr.i, %i.j
  br i1 %i.s, label %getindex.exit, label %getindex.exit.thread

getindex.exit:                                    ; preds = %bb.h, %.thread.i, %bb.g
end_hunk_12
