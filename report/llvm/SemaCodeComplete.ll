Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaCodeComplete?download=true
inline.NumInlined: 13082
inline.NumDeleted: 5708
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang18SemaCodeCompletion31CodeCompleteObjCInstanceMessageEPNS_5ScopeEPNS_4ExprEN4llvm8ArrayRefIPKNS_14IdentifierInfoEEEbPNS_17ObjCInterfaceDeclE:bb.a
  %i.cv = inttoptr i64 %i.cu to ptr
  %.not47391.i = icmp eq i64 %i.cu, 0
  %.not47.i = select i1 %.not.i.i156, i1 true, i1 %.not47391.i
  br i1 %.not47.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = lshr i32 %i.cr, 16
  %trunc.i = trunc i32 %i.cw to i8
  switch i8 %trunc.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345 [
    i8 0, label %_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i
    i8 1, label %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i
  ]

_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i: ; preds = %bb.s
  %i.cx = and i32 %i.cr, 16711680
  %i.cy = icmp eq i32 %i.cx, 0
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %.1338, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !59, !nonnull !56, !noundef !56
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.da, align 8, !tbaa !60
  %i.db = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load ptr, ptr %i.dc, align 16, !tbaa !63 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i8, ptr %i.de, align 16
  %i.dg = and i8 %i.df, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.dg, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i.preheader, label %bb.t

bb.t:                                             ; preds = %_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i162 = load i64, ptr %i.dh, align 8, !tbaa !60
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i.i.i162, -16
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load ptr, ptr %i.dj, align 16, !tbaa !63
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i8, ptr %i.dl, align 16
  %i.dn = and i8 %i.dm, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.dn, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i: ; preds = %bb.t
  %i.do = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dd) #28 ; 2 uses
  %.not49.i = icmp eq ptr %i.do, null
  br i1 %.not49.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i.preheader

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i.preheader: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, %_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i
  %.pn.i.i.ph = phi ptr [ %i.dd, %_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i ], [ %i.do, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i ]
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i.preheader, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i
  %.pn.i.i = phi ptr [ %.1.i19.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i ], [ %.pn.i.i.ph, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i.preheader ]
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !60
  %i.dp = and i64 %.sroa.0.0.i.i, -16
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !63 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i8, ptr %i.ds, align 16            ; 2 uses
  %i.du = and i8 %i.dt, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.du, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dv, align 8, !tbaa !60
  %i.dw = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load ptr, ptr %i.dx, align 16, !tbaa !63
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i8, ptr %i.dz, align 16
  %i.eb = and i8 %i.ea, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i = icmp eq i8 %i.eb, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i: ; preds = %bb.u
  %i.ec = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dr) #28 ; 3 uses
  %.not.i51.i = icmp eq ptr %i.ec, null
  br i1 %.not.i51.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 16
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i
  %i.ed = phi i8 [ %.pre.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i ], [ %i.dt, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i ]
  %.1.i19.i.i = phi ptr [ %i.ec, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i ], [ %i.dr, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i ] ; 2 uses
  %.not31.i.i = icmp eq i8 %i.ed, 33
  br i1 %.not31.i.i, label %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread263.i

_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i: ; preds = %bb.s
  %i.ee = and i32 %i.cr, 16711680
  %i.ef = icmp eq i32 %i.ee, 65536
  call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %.1338, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !59
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ei, align 8, !tbaa !60
  %i.ej = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !63 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i8, ptr %i.em, align 16
  %.not.i54.i = icmp eq i8 %i.en, 31
  br i1 %.not.i54.i, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread269.i, label %bb.v

bb.v:                                             ; preds = %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.0.0.copyload.i.i.i.i55.i = load i64, ptr %i.eo, align 8, !tbaa !60
  %i.ep = and i64 %.sroa.0.0.copyload.i.i.i.i55.i, -16
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load ptr, ptr %i.eq, align 16, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load i8, ptr %i.es, align 16
  %i.eu = icmp eq i8 %i.et, 31
  br i1 %i.eu, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i157, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i157: ; preds = %bb.v
  %i.ev = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.el) #28 ; 2 uses
  %.not48.i = icmp eq ptr %i.ev, null
  br i1 %.not48.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread269.i

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread269.i: ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i157, %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i
  %.1.i56272.i = phi ptr [ %i.ev, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i157 ], [ %i.el, %_ZN5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.i56272.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i158 = load i64, ptr %i.ew, align 8
  %i.ex = and i64 %.0.copyload.i.i.i.i.i.i.i.i158, -16
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load ptr, ptr %i.ey, align 16, !tbaa !63 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i8, ptr %i.fa, align 16
  %i.fc = and i8 %i.fb, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i159 = icmp eq i8 %i.fc, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i159, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160.preheader, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread269.i
  %i.fd = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ez) #28
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160.preheader

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160.preheader: ; preds = %bb.w, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread269.i
  %.pn.i.i.i.ph = phi ptr [ %i.ez, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread269.i ], [ %i.fd, %bb.w ]
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160: ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160.preheader, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i
  %.pn.i.i.i = phi ptr [ %.1.i19.i.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i ], [ %.pn.i.i.i.ph, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160.preheader ]
  %.sroa.0.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %.sroa.0.0.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !60
  %i.fe = and i64 %.sroa.0.0.i.i.i, -16
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !63 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load i8, ptr %i.fh, align 16            ; 2 uses
  %i.fj = and i8 %i.fi, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i1.i.i = icmp eq i8 %i.fj, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i1.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.fk, align 8, !tbaa !60
  %i.fl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load ptr, ptr %i.fm, align 16, !tbaa !63
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i8, ptr %i.fo, align 16
  %i.fq = and i8 %i.fp, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i = icmp eq i8 %i.fq, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.x
  %i.fr = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fg) #28 ; 3 uses
  %.not.i.i57.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i57.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 16
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i.i, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160
  %i.fs = phi i8 [ %.pre.i.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i.i ], [ %i.fi, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160 ]
  %.1.i19.i.i.i = phi ptr [ %i.fr, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i.i ], [ %i.fg, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160 ] ; 2 uses
  %.not31.i.i.i = icmp eq i8 %i.fs, 33
  br i1 %.not31.i.i.i, label %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit.i, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i160

_ZNK5clang14ObjCObjectType12getInterfaceEv.exit.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i
  %.1.i19.i.i.lcssa.sink.i = phi ptr [ %.1.i19.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i ], [ %.1.i19.i.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i.i ]
  %i.ft = call noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i19.i.i.lcssa.sink.i) #28 ; 3 uses
  %.not50.i = icmp eq ptr %i.ft, null
  br i1 %.not50.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, label %bb.y

bb.y:                                             ; preds = %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit.i
  %i.fu = call noundef ptr @_ZNK5clang17ObjCInterfaceDecl13getSuperClassEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #28 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.fw = load i24, ptr %i.fv, align 8
  %i.fx = and i24 %i.fw, 131072
  %.not.i = icmp eq i24 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !831 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16 ; 33 uses
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !833 ; 3 uses
  %trunc418.i = trunc i64 %i.gb to i32            ; 2 uses
  br i1 %.not.i, label %bb.am, label %bb.z

bb.z:                                             ; preds = %bb.y
  switch i32 %trunc418.i, label %17 [
    i32 6, label %bb.aa
    i32 11, label %bb.ac
    i32 4, label %bb.ad
    i32 12, label %bb.ae
    i32 19, label %bb.ag
    i32 14, label %bb.ah
    i32 26, label %bb.ai
    i32 5, label %bb.aj
    i32 13, label %bb.ak
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gc = load i32, ptr %i.ga, align 1
  %i.gd = xor i32 %i.gc, 1635018098
  %i.ge = getelementptr i8, ptr %i.ga, i64 4
  %i.gf = load i16, ptr %i.ge, align 1
  %i.gg = zext i16 %i.gf to i32
  %i.gh = xor i32 %i.gg, 28265
  %i.gi = or i32 %i.gd, %i.gh
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i32
  %.not.i.i58.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i58.i, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gl = load i32, ptr %i.ga, align 1
  %i.gm = xor i32 %i.gl, 1869771891
  %i.gn = getelementptr i8, ptr %i.ga, i64 4
  %i.go = load i16, ptr %i.gn, align 1
  %i.gp = zext i16 %i.go to i32
  %i.gq = xor i32 %i.gp, 26478
  %i.gr = or i32 %i.gm, %i.gq
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %.not.i.i64.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i64.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ac:                                            ; preds = %bb.z
  %i.gu = load i64, ptr %i.ga, align 1
  %i.gv = xor i64 %i.gu, 7308327837486052705
  %i.gw = getelementptr i8, ptr %i.ga, i64 3
  %i.gx = load i64, ptr %i.gw, align 1
  %i.gy = xor i64 %i.gx, 7310293708390625903
  %i.gz = or i64 %i.gv, %i.gy
  %i.ha = icmp ne i64 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %.not.i.i72.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i72.i, label %.sink.split, label %bb.af

bb.ad:                                            ; preds = %bb.z
  %i.hc = load i32, ptr %i.ga, align 1
  %i.hd = icmp ne i32 %i.hc, 2037411683
  %i.he = zext i1 %i.hd to i32
  %.not.i.i80.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i80.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ae:                                            ; preds = %bb.z
  %i.hf = load i64, ptr %i.ga, align 1
  %i.hg = xor i64 %i.hf, 7526756701663424355
  %i.hh = getelementptr i8, ptr %i.ga, i64 8
  %i.hi = load i32, ptr %i.hh, align 1
  %i.hj = zext i32 %i.hi to i64
  %i.hk = xor i64 %i.hj, 1701736282
  %i.hl = or i64 %i.hg, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %.not.i.i88.i = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i88.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.af:                                            ; preds = %bb.ac
  %i.ho = load i64, ptr %i.ga, align 1
  %i.hp = xor i64 %i.ho, 4856406942986564973
  %i.hq = getelementptr i8, ptr %i.ga, i64 3
  %i.hr = load i64, ptr %i.hq, align 1
  %i.hs = xor i64 %i.hr, 8750616411235967585
  %i.ht = or i64 %i.hp, %i.hs
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %.not.i.i96.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i96.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ag:                                            ; preds = %bb.z
  %i.hw = load i128, ptr %i.ga, align 1
  %i.hx = xor i128 %i.hw, 120172879599473145062355903880939992429
  %i.hy = getelementptr i8, ptr %i.ga, i64 3
  %i.hz = load i128, ptr %i.hy, align 1
  %i.ia = xor i128 %i.hz, 134825438739043139700223545516734833249
  %i.ib = or i128 %i.hx, %i.ia
  %i.ic = icmp ne i128 %i.ib, 0
  %i.id = zext i1 %i.ic to i32
  %.not.i.i104.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i104.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ah:                                            ; preds = %bb.z
  %i.ie = load i64, ptr %i.ga, align 1
  %i.if = xor i64 %i.ie, 8030558486962206561
  %i.ig = getelementptr i8, ptr %i.ga, i64 6
  %i.ih = load i64, ptr %i.ig, align 1
  %i.ii = xor i64 %i.ih, 8243105122006953842
  %i.ij = or i64 %i.if, %i.ii
  %i.ik = icmp ne i64 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %.not.i.i112.i = icmp eq i32 %i.il, 0
  br i1 %.not.i.i112.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ai:                                            ; preds = %bb.z
  %i.im = load i128, ptr %i.ga, align 1
  %i.in = xor i128 %i.im, 132120151289786674985207142184974837106
  %i.io = getelementptr i8, ptr %i.ga, i64 10
  %i.ip = load i128, ptr %i.io, align 1
  %i.iq = xor i128 %i.ip, 152058450558346626214952781695009574772
  %i.ir = or i128 %i.in, %i.iq
  %i.is = icmp ne i128 %i.ir, 0
  %i.it = zext i1 %i.is to i32
  %.not.i.i120.i = icmp eq i32 %i.it, 0
  br i1 %.not.i.i120.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.aj:                                            ; preds = %bb.z
  %i.iu = load i32, ptr %i.ga, align 1
  %i.iv = xor i32 %i.iu, 1935764579
  %i.iw = getelementptr i8, ptr %i.ga, i64 4
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = zext i8 %i.ix to i32
  %i.iz = xor i32 %i.iy, 115
  %i.ja = or i32 %i.iv, %i.iz
  %i.jb = icmp ne i32 %i.ja, 0
  %i.jc = zext i1 %i.jb to i32
  %.not.i.i128.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i128.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ak:                                            ; preds = %bb.z
  %i.jd = load i64, ptr %i.ga, align 1
  %i.je = xor i64 %i.jd, 8245886904409615459
  %i.jf = getelementptr i8, ptr %i.ga, i64 5
  %i.jg = load i64, ptr %i.jf, align 1
  %i.jh = xor i64 %i.jg, 8243105122007281478
  %i.ji = or i64 %i.je, %i.jh
  %i.jj = icmp ne i64 %i.ji, 0
  %i.jk = zext i1 %i.jj to i32
  %.not.i.i136.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i.i136.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

17:                                               ; preds = %bb.z
  %18 = and i64 %i.gb, 4294967295
  %.not.i.i.i.i142.i = icmp eq i64 %18, 10
  br i1 %.not.i.i.i.i142.i, label %bb.al, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.al:                                            ; preds = %17
  %i.jl = load i64, ptr %i.ga, align 1
  %i.jm = xor i64 %i.jl, 7020095262143051123
  %i.jn = getelementptr i8, ptr %i.ga, i64 8
  %i.jo = load i16, ptr %i.jn, align 1
  %i.jp = zext i16 %i.jo to i64
  %i.jq = xor i64 %i.jp, 29555
  %i.jr = or i64 %i.jm, %i.jq
  %i.js = icmp ne i64 %i.jr, 0
  %i.jt = zext i1 %i.js to i32
  %.not.i.i144.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i144.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.am:                                            ; preds = %bb.y
  switch i32 %trunc418.i, label %bb.aq [
    i32 3, label %_ZN4llvm12StringSwitchIPN5clang17ObjCInterfaceDeclES3_E4CaseENS_13StringLiteralES3_.exit189.i
    i32 5, label %bb.an
    i32 13, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.ju = load i32, ptr %i.ga, align 1
  %i.jv = xor i32 %i.ju, 1869376609
  %i.jw = getelementptr i8, ptr %i.ga, i64 4
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i32
  %i.jz = xor i32 %i.jy, 99
  %i.ka = or i32 %i.jv, %i.jz
  %i.kb = icmp ne i32 %i.ka, 0
  %i.kc = zext i1 %i.kb to i32
  %.not.i.i163.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i163.i, label %.sink.split, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.kd = load i64, ptr %i.ga, align 1
  %i.ke = xor i64 %i.kd, 8388331865537014881
  %i.kf = getelementptr i8, ptr %i.ga, i64 5
  %i.kg = load i64, ptr %i.kf, align 1
  %i.kh = xor i64 %i.kg, 7308901679359093079
  %i.ki = or i64 %i.ke, %i.kh
  %i.kj = icmp ne i64 %i.ki, 0
  %i.kk = zext i1 %i.kj to i32
  %.not.i.i171.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i171.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.ap:                                            ; preds = %bb.an
  %i.kl = load i32, ptr %i.ga, align 1
  %i.km = xor i32 %i.kl, 1935764579
  %i.kn = getelementptr i8, ptr %i.ga, i64 4
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = zext i8 %i.ko to i32
  %i.kq = xor i32 %i.kp, 115
  %i.kr = or i32 %i.km, %i.kq
  %i.ks = icmp ne i32 %i.kr, 0
  %i.kt = zext i1 %i.ks to i32
  %.not.i.i179.i = icmp eq i32 %i.kt, 0
  br i1 %.not.i.i179.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

bb.aq:                                            ; preds = %bb.am
  %i.ku = and i64 %i.gb, 4294967295
  %.not.i.i.i.i185.i = icmp eq i64 %i.ku, 10
  br i1 %.not.i.i.i.i185.i, label %.split.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

.split.i:                                         ; preds = %bb.aq
  %i.kv = load i64, ptr %i.ga, align 1
  %i.kw = xor i64 %i.kv, 7020095262143051123
  %i.kx = getelementptr i8, ptr %i.ga, i64 8
  %i.ky = load i16, ptr %i.kx, align 1
  %i.kz = zext i16 %i.ky to i64
  %i.la = xor i64 %i.kz, 29555
  %i.lb = or i64 %i.kw, %i.la
  %i.lc = icmp ne i64 %i.lb, 0
  %i.ld = zext i1 %i.lc to i32
  %bcmp.i.i.i.i186.fr.i = freeze i32 %i.ld
  %.not.i.i187.i = icmp eq i32 %bcmp.i.i.i.i186.fr.i, 0
  br i1 %.not.i.i187.i, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

_ZN4llvm12StringSwitchIPN5clang17ObjCInterfaceDeclES3_E4CaseENS_13StringLiteralES3_.exit189.i: ; preds = %bb.am
  %i.le = load i16, ptr %i.ga, align 1
  %i.lf = xor i16 %i.le, 25966
  %i.lg = getelementptr i8, ptr %i.ga, i64 2
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = zext i8 %i.lh to i16
  %i.lj = xor i16 %i.li, 119
  %i.lk = or i16 %i.lf, %i.lj
  %i.ll = icmp ne i16 %i.lk, 0
  %i.lm = zext i1 %i.ll to i32
  %bcmp.i.i.i.i154.fr.i = freeze i32 %i.lm
  %.not.i.i155.i = icmp eq i32 %bcmp.i.i.i.i154.fr.i, 0
  br i1 %.not.i.i155.i, label %.sink.split, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345

_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i.i, %bb.x, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i, %bb.u, %_ZN4llvm16dyn_cast_or_nullIN5clang15ObjCMessageExprENS1_4ExprEEEDaPT0_.exit.i, %bb.q, %bb.r, %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit.i, %bb.v, %bb.ap, %bb.s, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i157, %.split.i, %bb.t, %17, %bb.al, %_ZN4llvm12StringSwitchIPN5clang17ObjCInterfaceDeclES3_E4CaseENS_13StringLiteralES3_.exit189.i, %bb.aq, %bb.ao, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread

_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit: ; preds = %bb.al, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.not116 = icmp eq ptr %i.fu, null
  br i1 %.not116, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread, label %bb.ar

.sink.split:                                      ; preds = %bb.ao, %bb.ap, %_ZN4llvm12StringSwitchIPN5clang17ObjCInterfaceDeclES3_E4CaseENS_13StringLiteralES3_.exit189.i, %bb.an, %bb.ae, %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.ak, %bb.aa, %bb.aj, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit
  %.4.i352 = phi ptr [ %i.fu, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit ], [ %i.ft, %.sink.split ] ; 2 uses
  %i.ln = load ptr, ptr %i.p, align 16, !tbaa !63 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load i8, ptr %i.lo, align 16
  %.not.i.i164 = icmp eq i8 %i.lp, 31
  br i1 %.not.i.i164, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread.i168, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i165 = load i64, ptr %i.lq, align 8, !tbaa !60
  %i.lr = and i64 %.sroa.0.0.copyload.i.i.i.i.i165, -16
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = load ptr, ptr %i.ls, align 16, !tbaa !63
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load i8, ptr %i.lu, align 16
  %i.lw = icmp eq i8 %i.lv, 31
  br i1 %i.lw, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i166, label %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i166: ; preds = %bb.as
  %i.lx = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ln) #28 ; 2 uses
  %.not.not.i167 = icmp eq ptr %i.lx, null
  br i1 %.not.not.i167, label %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread.i168

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread.i168: ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i166, %bb.ar
  %.1.i9.i169 = phi ptr [ %i.lx, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i166 ], [ %i.ln, %bb.ar ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.1.i9.i169, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i170 = load i64, ptr %i.ly, align 8
  %i.lz = and i64 %.0.copyload.i.i.i.i.i.i.i.i170, -16
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load ptr, ptr %i.ma, align 16, !tbaa !63 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load i8, ptr %i.mc, align 16
  %i.me = and i8 %i.md, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i171 = icmp eq i8 %i.me, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i171, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i172, label %bb.at

bb.at:                                            ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread.i168
  %i.mf = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.mb) #28
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i172

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i172: ; preds = %bb.at, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread.i168
  %.1.i.i.i.i173 = phi ptr [ %i.mf, %bb.at ], [ %i.mb, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread.i168 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i173, i64 16
  %i.mh = load i32, ptr %i.mg, align 16
  %i.mi = icmp ult i32 %i.mh, 67108864
  br i1 %i.mi, label %bb.au, label %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread

bb.au:                                            ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i172
  %i.mj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i173, i64 24
  %.sroa.0.0.copyload.i.i.i.i6.i174 = load i64, ptr %i.mj, align 8, !tbaa !60
  %i.mk = and i64 %.sroa.0.0.copyload.i.i.i.i6.i174, -16
  %i.ml = inttoptr i64 %i.mk to ptr
  %i.mm = load ptr, ptr %i.ml, align 16, !tbaa !63
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i175 = load i64, ptr %i.mn, align 8, !tbaa !60
  %i.mo = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i175, -16
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load ptr, ptr %i.mp, align 16, !tbaa !63 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 16
  %i.mt = icmp eq i8 %i.ms, 13
  %.not7.i.i.i.i.i176 = icmp ne ptr %i.mq, null
  %.not.not.not.i.i.i.i.i177 = and i1 %.not7.i.i.i.i.i176, %i.mt
  br i1 %.not.not.not.i.i.i.i.i177, label %_ZNK5clang4Type15isObjCClassTypeEv.exit178, label %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread

_ZNK5clang4Type15isObjCClassTypeEv.exit178:       ; preds = %bb.au
  %i.mu = load i32, ptr %i.mr, align 16
  %i.mv = and i32 %i.mu, 536346624
  %i.mw = icmp eq i32 %i.mv, 265814016
  br i1 %i.mw, label %.critedge133, label %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread

.critedge133:                                     ; preds = %_ZNK5clang4Type15isObjCClassTypeEv.exit178
  %i.mx = call i64 @_ZNK5clang10ASTContext20getObjCInterfaceTypeEPKNS_17ObjCInterfaceDeclEPS1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.b, ptr noundef nonnull %.4.i352, ptr noundef null) #28
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = icmp ne ptr %6, null
  call void @_ZN5clang18SemaCodeCompletion28CodeCompleteObjCClassMessageEPNS_5ScopeENS_9OpaquePtrINS_8QualTypeEEEN4llvm8ArrayRefIPKNS_14IdentifierInfoEEEbb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %i.my, ptr %3, i64 %4, i1 noundef zeroext %5, i1 noundef zeroext %i.mz)
  br label %.critedge131

_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread: ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i172, %bb.au, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i166, %bb.as, %_ZNK5clang4Type15isObjCClassTypeEv.exit178
  %i.na = call i64 @_ZNK5clang10ASTContext20getObjCInterfaceTypeEPKNS_17ObjCInterfaceDeclEPS1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.b, ptr noundef nonnull %.4.i352, ptr noundef null) #28
  %i.nb = call i64 @_ZNK5clang10ASTContext24getObjCObjectPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.b, i64 %i.na) #28
  br label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread

_ZNK5clang4Type15isObjCClassTypeEv.exit.thread:   ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.i150, %bb.n, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.i144, %bb.l, %_ZNK5clang4Type15isObjCClassTypeEv.exit
  br i1 %.not113340, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZNK5clang4Type15isObjCClassTypeEv.exit.thread
  %i.nc = tail call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = and i64 %i.nd, 4096
  %.not115 = icmp eq i64 %i.ne, 0
  br i1 %.not115, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nf = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !56, !align !772
  %i.ng = tail call i64 @_ZN5clang4Sema39PerformContextuallyConvertToObjCPointerEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.nf, ptr noundef nonnull %.1338) #28 ; 2 uses
  %spec.select.i = icmp ugt i64 %i.ng, 1
  br i1 %spec.select.i, label %bb.ax, label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.nh = and i64 %i.ng, -2
  %i.ni = inttoptr i64 %i.nh to ptr
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.sroa.0.0.copyload.i179 = load i64, ptr %i.nj, align 8, !tbaa !60
  br label %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread

_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread: ; preds = %bb.o, %bb.p, %bb.aw, %bb.ax, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345, %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit, %_ZNK5clang4Type15isObjCClassTypeEv.exit.thread, %bb.av
  %.sroa.0314.2 = phi i64 [ %.sroa.0314.0, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit ], [ %i.nb, %_ZNK5clang4Type15isObjCClassTypeEv.exit178.thread ], [ %.sroa.0314.0, %_ZNK5clang4Type15isObjCClassTypeEv.exit.thread ], [ %.sroa.0314.0, %bb.av ], [ %.sroa.0314.0, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread345 ], [ %.sroa.0314.0, %bb.aw ], [ %.sroa.0.0.copyload.i179, %bb.ax ], [ %.sroa.0314.0, %bb.p ], [ %.sroa.0314.0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.nk = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !56, !align !772
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !1539 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !919
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = call noundef nonnull align 8 dereferenceable(80) ptr %i.np(ptr noundef nonnull align 8 dereferenceable(12) %i.nm) #28
  %i.nr = load ptr, ptr %i.nl, align 8, !tbaa !1539 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !919
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = call noundef nonnull align 8 dereferenceable(40) ptr %i.nu(ptr noundef nonnull align 8 dereferenceable(12) %i.nr) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i32 30, ptr %12, align 8, !tbaa !1550
  %i.nw = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i8 0, ptr %i.nw, align 4, !tbaa !1551
  %i.nx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %i.nx, align 8
  store ptr %3, ptr %i.ny, align 8, !tbaa !1676
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !94
  %i.nz = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  store i8 0, ptr %i.nz, align 8, !tbaa !1552
  %i.oa = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.ob, ptr %i.oa, align 8, !tbaa !1553
  %i.oc = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i32 8, ptr %i.oc, align 8, !tbaa !1554
  %i.od = getelementptr inbounds nuw i8, ptr %12, i64 108
  store i32 0, ptr %i.od, align 4, !tbaa !1555
  %i.oe = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  store i8 1, ptr %i.oe, align 8, !tbaa !1556
  %i.of = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %.sroa.0314.2, ptr %i.of, align 8, !tbaa !60
  call fastcc void @_ZN12_GLOBAL__N_113ResultBuilderC2ERN5clang4SemaERNS1_23CodeCompletionAllocatorERNS1_20CodeCompletionTUInfoERKNS1_21CodeCompletionContextEMS0_KFbPKNS1_9NamedDeclEE(ptr noundef nonnull align 8 dereferenceable(496) %11, ptr noundef nonnull align 8 dereferenceable(18640) %i.nk, ptr noundef nonnull align 8 dereferenceable(80) %i.nq, ptr noundef nonnull align 8 dereferenceable(40) %i.nv, ptr noundef nonnull align 8 dereferenceable(184) %12, i64 0, i64 0)
  %i.og = load i8, ptr %i.oe, align 8, !tbaa !1556, !range !55, !noundef !56
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread
  %i.oi = load ptr, ptr %i.oa, align 8, !tbaa !1553
  call void @free(ptr noundef %i.oi) #28
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.ay, %_ZL29GetAssumedMessageSendExprTypePN5clang4ExprE.exit.thread
  %i.oj = load i8, ptr %i.nz, align 8, !tbaa !1552, !range !55, !noundef !56
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %bb.az, label %_ZN5clang21CodeCompletionContextD2Ev.exit

bb.az:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  store i8 0, ptr %i.nz, align 8, !tbaa !1552
  %i.ol = getelementptr inbounds nuw i8, ptr %12, i64 68
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !1558
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.om, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5clang21CodeCompletionContextD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.on = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !1559
  call void @free(ptr noundef %i.oo) #28
  br label %_ZN5clang21CodeCompletionContextD2Ev.exit

_ZN5clang21CodeCompletionContextD2Ev.exit:        ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.op = getelementptr inbounds nuw i8, ptr %11, i64 232
  %i.oq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.or, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.oq, ptr noundef nonnull align 8 dereferenceable(24) %i.op) #28
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 248 ; 4 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !1565
  %i.ou = add i64 %i.ot, 1
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !1565
  %.not117 = icmp eq ptr %6, null
  br i1 %.not117, label %_ZN12_GLOBAL__N_113ResultBuilder6IgnoreEPKN5clang4DeclE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN5clang21CodeCompletionContextD2Ev.exit
end_hunk_0
