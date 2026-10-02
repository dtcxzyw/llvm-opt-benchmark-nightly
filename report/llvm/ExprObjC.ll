Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprObjC?download=true
inline.NumInlined: 478
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5clang15ObjCMessageExpr20getReceiverInterfaceEv:bb.a
_ZNK5clang15ObjCMessageExpr15getReceiverTypeEv.exit: ; preds = %_ZNK5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i, %bb.b, %_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_ZNK5clang15ObjCMessageExpr19getInstanceReceiverEv.exit.i ], [ 0, %bb.b ], [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ 0, %_ZNK5clang15ObjCMessageExpr24getClassReceiverTypeInfoEv.exit.i.i ], [ %i.p, %bb.e ], [ 0, %bb.d ]
  %i.q = and i64 %.sroa.0.0.i, -16
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !89  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i8, ptr %i.t, align 16              ; 2 uses
  %.not.i = icmp eq i8 %i.u, 31
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread22, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang15ObjCMessageExpr15getReceiverTypeEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.v, align 8, !tbaa !12
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.z, align 16
  %i.ab = icmp eq i8 %i.aa, 31
  br i1 %i.ab, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit: ; preds = %bb.g
  %i.ac = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.s) #13 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit._ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread_crit_edge, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread22

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit._ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.pre = load ptr, ptr %i.r, align 16, !tbaa !89 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre44 = load i8, ptr %.phi.trans.insert, align 16
  br label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread22: ; preds = %_ZNK5clang15ObjCMessageExpr15getReceiverTypeEv.exit, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.1.i25 = phi ptr [ %i.ac, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit ], [ %i.s, %_ZNK5clang15ObjCMessageExpr15getReceiverTypeEv.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i25, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !89 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i8, ptr %i.ah, align 16
  %i.aj = and i8 %i.ai, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.aj, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread22
  %i.ak = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ag) #13
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader: ; preds = %bb.h, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread22
  %.pn.i.i.ph = phi ptr [ %i.ag, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread22 ], [ %i.ak, %bb.h ]
  br label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i

_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i: ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i
  %.pn.i.i = phi ptr [ %.1.i19.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i ], [ %.pn.i.i.ph, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i.preheader ]
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !12
  %i.al = and i64 %.sroa.0.0.i.i, -16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !89 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 16            ; 2 uses
  %i.aq = and i8 %i.ap, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i1.i = icmp eq i8 %i.aq, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i1.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i8, ptr %i.av, align 16
  %i.ax = and i8 %i.aw, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i = icmp eq i8 %i.ax, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i: ; preds = %bb.i
  %i.ay = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.an) #13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 16
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i
  %i.az = phi i8 [ %.pre.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i ], [ %i.ap, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i ]
  %.1.i19.i.i = phi ptr [ %i.ay, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i.i ], [ %i.an, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i ] ; 2 uses
  %.not31.i.i = icmp eq i8 %i.az, 33
  br i1 %.not31.i.i, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.sink.split, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit.i

_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit._ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread_crit_edge, %bb.g
  %i.ba = phi i8 [ %.pre44, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit._ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread_crit_edge ], [ %i.u, %bb.g ]
  %i.bb = phi ptr [ %.pre, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit._ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread_crit_edge ], [ %i.s, %bb.g ] ; 3 uses
  %i.bc = and i8 %i.ba, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.bc, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.0.0.copyload.i.i.i.i14 = load i64, ptr %i.bd, align 8, !tbaa !12
  %i.be = and i64 %.sroa.0.0.copyload.i.i.i.i14, -16
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i8, ptr %i.bh, align 16
  %i.bj = and i8 %i.bi, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.bj, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit: ; preds = %bb.j
  %i.bk = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bb) #13 ; 2 uses
  %.not12 = icmp eq ptr %i.bk, null
  br i1 %.not12, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33.preheader

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33.preheader: ; preds = %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit
  %.pn.i.ph = phi ptr [ %i.bb, %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.thread ], [ %i.bk, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit ]
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33.preheader, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i
  %.pn.i = phi ptr [ %.1.i19.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i ], [ %.pn.i.ph, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33.preheader ]
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %.sroa.0.0.i16 = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !12
  %i.bl = and i64 %.sroa.0.0.i16, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !89 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i8, ptr %i.bo, align 16            ; 2 uses
  %i.bq = and i8 %i.bp, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.bq, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.br, align 8, !tbaa !12
  %i.bs = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !89
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i8, ptr %i.bv, align 16
  %i.bx = and i8 %i.bw, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.bx, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i: ; preds = %bb.k
  %i.by = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bn) #13 ; 3 uses
  %.not.i17 = icmp eq ptr %i.by, null
  br i1 %.not.i17, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 16
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33
  %i.bz = phi i8 [ %.pre.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i ], [ %i.bp, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33 ]
  %.1.i19.i = phi ptr [ %i.by, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i ], [ %i.bn, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33 ] ; 2 uses
  %.not31.i = icmp eq i8 %i.bz, 33
  br i1 %.not31.i, label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.sink.split, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread33

_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.sink.split: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i
  %.1.i19.i.lcssa.sink = phi ptr [ %.1.i19.i.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i.i ], [ %.1.i19.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i ]
  %i.ca = tail call noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i19.i.lcssa.sink) #13
  br label %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit

_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit: ; preds = %bb.k, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, %bb.i, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i, %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.sink.split, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit, %bb.j
  %.2 = phi ptr [ null, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit ], [ null, %bb.i ], [ %i.ca, %_ZNK5clang21ObjCObjectPointerType16getInterfaceDeclEv.exit.sink.split ], [ null, %bb.j ], [ null, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i.i ], [ null, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i ], [ null, %bb.k ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang15ObjCMessageExpr8childrenEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::iterator_range") align 8 captures(none) initializes((0, 16), (24, 40)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 16711680
  %i.d = icmp eq i32 %i.c, 65536
  %.0.v = select i1 %i.d, i64 40, i64 48
  %.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = and i32 %i.b, 65535
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr %.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK5clang15ObjCMessageExpr8childrenEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::iterator_range.387") align 8 captures(none) initializes((0, 16), (24, 40)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noalias !95 ; 2 uses
  %i.c = and i32 %i.b, 16711680
  %i.d = icmp eq i32 %i.c, 65536
  %.0.v.i = select i1 %i.d, i64 40, i64 48
  %.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = and i32 %i.b, 65535
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  store ptr %.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.7.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.7.24..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK5clang19ObjCBridgedCastExpr17getBridgeKindNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #8 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 3                           ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang19ObjCBridgedCastExpr17getBridgeKindNameEv, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5clang19ObjCBridgedCastExpr17getBridgeKindNameEv.1, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #13 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !61
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !61
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !61
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #13 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !61  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !62
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !61
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !61
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !47
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !63
  %i.g = load i32, ptr %i.a, align 8, !tbaa !61
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !61
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !61
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !63
  %i.g = load i32, ptr %i.a, align 8, !tbaa !61
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !61
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !61
  ret void
}

declare void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK5clang8Selector10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @_ZN5clang22getStandardSelectorLocEjNS_8SelectorEbN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationE(i32 noundef, i64, i1 noundef zeroext, ptr, i64, i32) local_unnamed_addr #2

declare i64 @_ZNK5clang10ASTContext14getTypedefTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_15TypedefNameDeclENS_8QualTypeESt8optionalIbE(ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef, i64, ptr noundef, i64, i16) local_unnamed_addr #2

declare noundef ptr @_ZN5clang10ASTContext23getObjCInstanceTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #2

declare i32 @_ZNK5clang7TypeLoc11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @_ZNK5clang7TypeLoc9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !63
  %i.g = load i32, ptr %i.a, align 8, !tbaa !61
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !61
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !61
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!4, !4, i64 0}
!13 = !{!"_ZTSN5clang4StmtE", !4, i64 0}
!14 = !{!"_ZTSN5clang9ValueStmtE", !13, i64 0}
!15 = !{!"_ZTSN4llvm6detail13PunnedPointerINS_12PointerUnionIJPKN5clang4TypeEPKNS3_8ExtQualsEEEEEE", !4, i64 0}
!16 = !{!"_ZTSN4llvm14PointerIntPairINS_12PointerUnionIJPKN5clang4TypeEPKNS2_8ExtQualsEEEELj3EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj3ESB_EEEE", !15, i64 0}
!17 = !{!"_ZTSN5clang8QualTypeE", !16, i64 0}
!18 = !{!"_ZTSN5clang4ExprE", !14, i64 0, !17, i64 8}
!19 = !{!"_ZTSN5clang17ObjCObjectLiteralE", !18, i64 0}
!20 = !{!"_ZTSN5clang14SourceLocationE", !5, i64 0}
!21 = !{!"_ZTSN5clang11SourceRangeE", !20, i64 0, !20, i64 4}
!22 = !{!"any pointer", !4, i64 0}
!23 = !{!"p1 _ZTSN5clang14ObjCMethodDeclE", !22, i64 0}
!24 = !{!"_ZTSN5clang16ObjCArrayLiteralE", !19, i64 0, !5, i64 16, !21, i64 20, !23, i64 32}
!25 = !{!24, !5, i64 16}
!26 = !{!5, !5, i64 0}
!27 = !{!"p1 _ZTSN5clang4ExprE", !22, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"p1 omnipotent char", !22, i64 0}
!34 = !{!"long", !4, i64 0}
!35 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !22, i64 0, !5, i64 8, !5, i64 12}
!36 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !35, i64 0}
!37 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !36, i64 0}
!38 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !4, i64 0}
!40 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !38, i64 0, !39, i64 16}
!41 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !35, i64 0}
!42 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !41, i64 0}
!43 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !33, i64 0, !34, i64 8, !40, i64 16, !44, i64 64}
!46 = !{!45, !33, i64 0}
!47 = !{!45, !34, i64 8}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!20, !5, i64 0}
!50 = !{!"_ZTSN5clang15ObjCMessageExprE", !18, i64 0, !34, i64 16, !5, i64 24, !5, i64 26, !5, i64 27, !5, i64 27, !5, i64 27, !5, i64 27, !20, i64 28, !20, i64 32, !20, i64 36}
!51 = !{!50, !34, i64 16}
!52 = !{!"any p2 pointer", !22, i64 0}
!53 = !{!"p2 _ZTSN5clang4ExprE", !52, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!34, !34, i64 0}
!56 = !{!"p1 _ZTSN5clang14SourceLocationE", !22, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!22, !22, i64 0}
!59 = !{!"_ZTSN4llvm8ArrayRefIPN5clang4ExprEEE", !53, i64 0, !34, i64 8}
!60 = !{!59, !34, i64 8}
!61 = !{!35, !5, i64 8}
!62 = !{!35, !5, i64 12}
!63 = !{!35, !22, i64 0}
!64 = distinct !{!64, !29, !30, !31}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !29, !30}
!67 = !{!24, !23, i64 32}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !32}
!70 = !{!"_ZTSN5clang21ObjCDictionaryLiteralE", !19, i64 0, !5, i64 16, !5, i64 19, !21, i64 20, !23, i64 32}
!71 = !{!70, !23, i64 32}
!72 = !{!"_ZTSN5clang16OptionalUnsignedIjEE", !5, i64 0}
!73 = !{!72, !5, i64 0}
!74 = !{!"_ZTSN5clang35ObjCDictionaryLiteral_ExpansionDataE", !20, i64 0, !5, i64 4}
!75 = !{!74, !5, i64 4}
!76 = distinct !{!76, !29, !30, !31}
!77 = distinct !{!77, !29, !30}
!78 = distinct !{!78, !29, !30, !31}
!79 = distinct !{!79, !29, !30}
!80 = distinct !{!80, !29, !30, !31}
!81 = distinct !{!81, !29, !30}
!82 = distinct !{!82, !29, !30, !31}
!83 = distinct !{!83, !29, !30}
!84 = !{!"_ZTSN5clang21SelectorLocationsKindE", !4, i64 0}
!85 = !{!84, !84, i64 0}
!86 = distinct !{!86, !29}
!87 = !{!"p1 _ZTSN5clang4TypeE", !22, i64 0}
!88 = !{!"_ZTSN5clang22ExtQualsTypeCommonBaseE", !87, i64 0, !17, i64 8}
!89 = !{!88, !87, i64 0}
!93 = distinct !{!93, i1 false, !"_ZN5clang15ObjCMessageExpr8childrenEv"}
!94 = distinct !{!94, !93, !"_ZN5clang15ObjCMessageExpr8childrenEv: argument 0"}
!95 = !{!94}
end_hunk_0
