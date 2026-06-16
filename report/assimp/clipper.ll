inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZN10ClipperLib7Clipper12BuildResult2ERNS_8PolyTreeE:bb.a

._crit_edge.i:                                    ; preds = %bb.c
  %i.e = icmp eq ptr %i.u, %i.t
  br i1 %i.e, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %i.t, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i, %._crit_edge.i, %bb.a
  %i.f = phi ptr [ %i.t, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.t, %._crit_edge.i ], [ %i.c, %bb.a ]
  %i.g = phi ptr [ %i.t, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.t, %._crit_edge.i ], [ %i.d, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i4.i, label %_ZN10ClipperLib8PolyTree5ClearEv.exit, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i
  store ptr %i.k, ptr %i.i, align 8
  br label %_ZN10ClipperLib8PolyTree5ClearEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.l = phi ptr [ %i.t, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.c ], [ %i.c, %bb.a ]
  %.010.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.010.i
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.o) #30, !inline_history !69
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre14.i = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.t = phi ptr [ %i.l, %.lr.ph.i ], [ %.pre14.i, %bb.b ] ; 8 uses
  %i.u = phi ptr [ %i.m, %.lr.ph.i ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.v = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ult i64 %i.v, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

_ZN10ClipperLib8PolyTree5ClearEv.exit:            ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp ugt i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN10ClipperLib8PolyTree5ClearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

bb.e:                                             ; preds = %_ZN10ClipperLib8PolyTree5ClearEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.al
  br i1 %i.as, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.at = ptrtoint ptr %i.f to i64
  %i.au = sub i64 %i.at, %i.aq                    ; 3 uses
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #32 ; 4 uses
  %i.aw = icmp sgt i64 %i.au, 0
  br i1 %i.aw, label %bb.f, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.g, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.ar) #33
  br label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.av, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store ptr %i.ax, ptr %i.b, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.al
  store ptr %i.ay, ptr %i.an, align 8
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre110 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert111 = getelementptr inbounds i8, ptr %0, i64 %.pre110 ; 2 uses
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert111, i64 88
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert111, i64 80
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8 ; 2 uses
  %.pre118 = ptrtoint ptr %.pre113 to i64
  %.pre119 = ptrtoint ptr %.pre115 to i64
  %.pre121 = sub i64 %.pre118, %.pre119
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre-phi122 = phi i64 [ %i.al, %bb.e ], [ %.pre121, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.az = phi ptr [ %i.ai, %bb.e ], [ %.pre115, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.ba = phi ptr [ %i.ab, %bb.e ], [ %.pre, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.not = icmp eq i64 %.pre-phi122, 0
  br i1 %.not, label %.thread, label %.lr.ph99

.thread:                                          ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55

._crit_edge:                                      ; preds = %.loopexit
  %i.bc = icmp ugt i64 %i.gd, 1152921504606846975
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.gc
  br i1 %i.bj, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51: ; preds = %bb.i
  %i.bk = load ptr, ptr %i.i, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bh                    ; 3 uses
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #32 ; 4 uses
  %i.bo = icmp sgt i64 %i.bm, 0
  br i1 %i.bo, label %bb.j, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %i.bf, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52: ; preds = %bb.j, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51
  %.not.i8.i53 = icmp eq ptr %i.bf, null
  br i1 %.not.i8.i53, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #33
  br label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54: ; preds = %bb.k, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52
  store ptr %i.bn, ptr %i.h, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store ptr %i.bp, ptr %i.i, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.gc
  store ptr %i.bq, ptr %i.bd, align 8
  %.pre117 = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55: ; preds = %.thread, %bb.i, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54
  %i.br = phi ptr [ %i.bd, %bb.i ], [ %i.bd, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54 ], [ %i.bb, %.thread ] ; 4 uses
  %i.bs = phi ptr [ %i.fs, %bb.i ], [ %.pre117, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54 ], [ %i.ba, %.thread ]
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not104 = icmp eq ptr %i.by, %i.bz
  br i1 %.not104, label %._crit_edge103, label %.lr.ph102

.lr.ph99:                                         ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit, %.loopexit
  %i.ca = phi ptr [ %i.fz, %.loopexit ], [ %i.az, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit ]
  %.098 = phi i64 [ %i.fr, %.loopexit ], [ 0, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.098
  %i.cc = load ptr, ptr %i.cb, align 8            ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i56 = icmp eq ptr %i.ce, null
  br i1 %.not.i56, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph99, %.preheader.i
  %.07.i = phi i32 [ %i.cf, %.preheader.i ], [ 0, %.lr.ph99 ] ; 3 uses
  %.0.i = phi ptr [ %i.ch, %.preheader.i ], [ %i.ce, %.lr.ph99 ]
  %i.cf = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.ch, %i.ce
  br i1 %.not10.i, label %_ZN10ClipperLib10PointCountEPNS_5OutPtE.exit, label %.preheader.i, !llvm.loop !59

_ZN10ClipperLib10PointCountEPNS_5OutPtE.exit:     ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !range !6, !noundef !7
  %i.ck = trunc nuw i8 %i.cj to i1
  %or.cond50.v = select i1 %i.ck, i32 1, i32 2
  %or.cond50.not = icmp samesign ult i32 %.07.i, %or.cond50.v
  br i1 %or.cond50.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN10ClipperLib10PointCountEPNS_5OutPtE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 4 uses
  %.not.i57 = icmp eq ptr %i.cm, null
  br i1 %.not.i57, label %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.co = load i8, ptr %i.cn, align 4, !range !6, !noundef !7 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cq = load i8, ptr %i.cp, align 4, !range !6, !noundef !7
  %.not15.i = icmp eq i8 %i.co, %i.cq
  br i1 %.not15.i, label %.lr.ph.i58.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not16.i = icmp eq ptr %i.cs, null
  br i1 %.not16.i, label %.lr.ph.i58.preheader, label %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit

.lr.ph.i58.preheader:                             ; preds = %bb.n, %bb.m
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.critedge2.i
  %.021.i = phi ptr [ %.0.i59, %.critedge2.i ], [ %i.cm, %.lr.ph.i58.preheader ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  %i.cu = load i8, ptr %i.ct, align 4, !range !6, !noundef !7
  %i.cv = icmp eq i8 %i.cu, %i.co
  br i1 %i.cv, label %.critedge2.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i58
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.i, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not18.i = icmp eq ptr %i.cx, null
  br i1 %.not18.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.o, %.lr.ph.i58
  %i.cy = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i59 = load ptr, ptr %i.cy, align 8          ; 2 uses
  %.not17.i = icmp eq ptr %.0.i59, null
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i58, !llvm.loop !70

.critedge.i:                                      ; preds = %.critedge2.i, %bb.o
  %.0.lcssa.ph.i = phi ptr [ %.021.i, %bb.o ], [ null, %.critedge2.i ]
  store ptr %.0.lcssa.ph.i, ptr %i.cl, align 8
  br label %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit

_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit: ; preds = %bb.l, %bb.n, %.critedge.i
  %i.cz = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN10ClipperLib8PolyNodeE, i64 16), ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.da, i8 0, i64 61, i1 false)
  %i.db = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dc = load ptr, ptr %i.an, align 8
  %.not.i60 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit
  store ptr %i.cz, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.b, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit

bb.q:                                             ; preds = %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit
  %i.df = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.r, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #32 ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store ptr %i.cz, ptr %i.dr, align 8
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.s, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #33
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.dq, ptr %i.a, align 8
  store ptr %i.dt, ptr %i.b, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.an, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.p, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cz, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  store ptr null, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  store i32 0, ptr %i.dx, align 8
  %i.dy = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.da, align 8            ; 5 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = ashr exact i64 %i.ee, 4
  %i.eg = icmp ult i64 %i.ef, %i.dy
  br i1 %i.eg, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, label %.lr.ph

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 3 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.ed
  %i.el = shl nuw nsw i64 %i.dy, 4
  %i.em = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #32 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.eb, %i.ei
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i ], [ %i.em, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i ], [ %i.eb, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !71
  %i.en = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.ei
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i61 = icmp eq ptr %i.eb, null
  br i1 %.not.i8.i61, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #33
  br label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.em, ptr %i.da, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store ptr %i.ep, ptr %i.eh, align 8
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.dy
  store ptr %i.eq, ptr %i.dz, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit
  %i.er = load ptr, ptr %i.cd, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 4 uses
  %.pre116 = load ptr, ptr %i.es, align 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %i.et = phi ptr [ %.pre116, %.lr.ph ], [ %i.fp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.04197 = phi i32 [ 0, %.lr.ph ], [ %i.fq, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.pn96 = phi ptr [ %i.er, %.lr.ph ], [ %.042, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ]
  %.042.in = getelementptr inbounds nuw i8, ptr %.pn96, i64 32
  %.042 = load ptr, ptr %.042.in, align 8         ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.042, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.dz, align 8
  %.not.i62 = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false)
  %i.ew = load ptr, ptr %i.es, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  store ptr %i.ex, ptr %i.es, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.ey = load ptr, ptr %i.da, align 8            ; 5 uses
  %i.ez = ptrtoint ptr %i.et to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 4 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.y, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib13ClipperOffsetD2Ev:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bu, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i ], [ %i.bl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4 ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #33
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bu, %i.bn
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.bk, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4
  %i.bv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.bl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #33
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.c, %bb.a ], [ %i.w, %bb.c ]
  %i.l = phi ptr [ %i.d, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -1, ptr %i.m, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.n = phi ptr [ %i.v, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.w, %bb.c ], [ %i.c, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.q) #30
  %.pre = load ptr, ptr %i.b, align 8
  %.pre6 = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.v = phi ptr [ %i.n, %.lr.ph ], [ %.pre6, %bb.b ] ; 3 uses
  %i.w = phi ptr [ %i.o, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  %sext = shl i64 %i.z, 29
  %i.aa = ashr i64 %sext, 32
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !162
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10ClipperLib8PolyNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN10ClipperLib8PolyNodeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN10ClipperLib8PolyNodeE, i64 16), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.l, i8 0, i64 61, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 %3, ptr %i.n, align 4
  %i.o = icmp eq i32 %3, 0                        ; 2 uses
  %or.cond = icmp ult i32 %3, 2
  %i.p = icmp ne i32 %i.h, 1
  %or.cond5 = and i1 %or.cond, %i.p
  br i1 %or.cond5, label %.preheader, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

.preheader:                                       ; preds = %bb.b
  %i.q = load i64, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.t, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.q, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.s, %i.y
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.d, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.old4 = icmp sgt i64 %indvars.iv, 1
  br i1 %.old4, label %bb.c, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit, %bb.b
  %.1 = phi i32 [ %i.j, %bb.b ], [ %i.ab, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit ], [ 0, %bb.d ] ; 2 uses
  %i.ac = add nuw nsw i32 %.1, 1
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.af = shl nuw nsw i64 %i.ad, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 5 uses
  store ptr %i.ag, ptr %i.l, align 8
  %.idx = shl nuw nsw i64 %i.ad, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  store ptr %i.ah, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %.not101 = icmp slt i32 %.1, 1
  br i1 %.not101, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %.pre = load ptr, ptr %1, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ak = icmp slt i32 %.167, 2
  %i.al = sext i32 %.165 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %.066.lcssa = phi i1 [ true, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ], [ %i.ak, %._crit_edge.loopexit ]
  %.064.lcssa = phi i64 [ 0, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ], [ %i.al, %._crit_edge.loopexit ] ; 3 uses
  %or.cond3 = select i1 %i.o, i1 %.066.lcssa, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.am = phi ptr [ %i.aj, %.lr.ph.preheader ], [ %i.cj, %bb.l ] ; 6 uses
  %i.an = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.ck, %bb.l ] ; 2 uses
  %i.ao = phi ptr [ %i.ag, %.lr.ph.preheader ], [ %i.cl, %bb.l ] ; 6 uses
  %indvars.iv108 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next109, %bb.l ] ; 3 uses
  %.064103 = phi i32 [ 0, %.lr.ph.preheader ], [ %.165, %bb.l ] ; 4 uses
  %.066102 = phi i32 [ 0, %.lr.ph.preheader ], [ %.167, %bb.l ] ; 3 uses
  %i.ap = sext i32 %.066102 to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv108 ; 4 uses
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = load i64, ptr %i.ar, align 8
  %.not.i74 = icmp ne i64 %i.as, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp ne i64 %i.av, %i.ax
  %i.az = select i1 %.not.i74, i1 true, i1 %i.ay
  br i1 %i.az, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.lr.ph
  %i.ba = add nsw i32 %.066102, 1                 ; 4 uses
  %i.bb = load ptr, ptr %i.ae, align 8
  %.not.i75 = icmp eq ptr %i.am, %i.bb
  br i1 %.not.i75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.bc = load ptr, ptr %i.ai, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.bd, ptr %i.ai, align 8
  %.pre111 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit88

bb.g:                                             ; preds = %bb.e
  %i.be = ptrtoint ptr %i.am to i64
  %i.bf = ptrtoint ptr %i.ao to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775792
  br i1 %i.bh, label %bb.h, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76: ; preds = %bb.g
  %i.bi = ashr exact i64 %i.bg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i77 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i77, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 576460752303423487)
  %i.bm = select i1 %i.bk, i64 576460752303423487, i64 %i.bl ; 3 uses
  %.not.i.i.i78 = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i78)
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #32 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %.not10.i.i.i.i.i79 = icmp eq ptr %i.ao, %i.am
  br i1 %.not10.i.i.i.i.i79, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i87, label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76, %.lr.ph.i.i.i.i.i80
  %.012.i.i.i.i.i81 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i80 ], [ %i.bo, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76 ] ; 2 uses
  %.0911.i.i.i.i.i82 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i80 ], [ %i.ao, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i81, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i82, i64 16, i1 false), !alias.scope !164
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i82, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i81, i64 16 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.bq, %i.am
  br i1 %.not.i.i.i.i.i83, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i87, label %.lr.ph.i.i.i.i.i80, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i87: ; preds = %.lr.ph.i.i.i.i.i80, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76
  %.0.lcssa.i.i.i.i.i85 = phi ptr [ %i.bo, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i76 ], [ %i.br, %.lr.ph.i.i.i.i.i80 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i85, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bg) #33
  store ptr %i.bo, ptr %i.l, align 8
  store ptr %i.bs, ptr %i.ai, align 8
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bt, ptr %i.ae, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit88

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit88: ; preds = %bb.f, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i87
  %i.bu = phi ptr [ %.pre111, %bb.f ], [ %i.bo, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i87 ] ; 4 uses
  %i.bv = phi ptr [ %i.bd, %bb.f ], [ %i.bs, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i87 ] ; 3 uses
  %i.bw = load ptr, ptr %1, align 8               ; 4 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv108 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = sext i32 %.064103 to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp sgt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit88
  %i.cf = icmp eq i64 %i.bz, %i.cd
  br i1 %i.cf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.bx, align 8
  %i.ch = load i64, ptr %i.cb, align 8
  %i.ci = icmp slt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit88
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j, %bb.i
  %i.cj = phi ptr [ %i.bv, %bb.k ], [ %i.bv, %bb.j ], [ %i.bv, %bb.i ], [ %i.am, %.lr.ph ]
  %i.ck = phi ptr [ %i.bw, %bb.k ], [ %i.bw, %bb.j ], [ %i.bw, %bb.i ], [ %i.an, %.lr.ph ]
  %i.cl = phi ptr [ %i.bu, %bb.k ], [ %i.bu, %bb.j ], [ %i.bu, %bb.i ], [ %i.ao, %.lr.ph ]
  %.167 = phi i32 [ %i.ba, %bb.k ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ], [ %.066102, %.lr.ph ] ; 2 uses
  %.165 = phi i32 [ %i.ba, %bb.k ], [ %.064103, %bb.j ], [ %.064103, %bb.i ], [ %.064103, %.lr.ph ] ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %i.ad
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !168

bb.m:                                             ; preds = %._crit_edge
  %i.cm = load ptr, ptr %i.k, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.k) #30
  br label %bb.z

bb.n:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = load ptr, ptr %i.cq, align 8            ; 4 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = ashr exact i64 %i.cw, 3                 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not.i.i.i89 = icmp eq ptr %i.cs, %i.cz
  br i1 %.not.i.i.i89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.k, ptr %i.cs, align 8
  %i.da = load ptr, ptr %i.cr, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.cr, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

bb.p:                                             ; preds = %bb.n
  %i.dc = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.dc, label %bb.q, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cx ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.cx
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i90 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i90)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #32 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.cw ; 2 uses
  store ptr %i.k, ptr %i.dj, align 8
  %i.dk = icmp sgt i64 %i.cw, 0
  br i1 %i.dk, label %bb.r, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.di, ptr %i.cq, align 8
  store ptr %i.dl, ptr %i.cr, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dm, ptr %i.cy, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

_ZN10ClipperLib8PolyNode8AddChildERS0_.exit:      ; preds = %bb.o, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  %i.dn = phi ptr [ %i.db, %bb.o ], [ %i.dl, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.do = trunc i64 %i.cx to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.cp, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.do, ptr %i.dq, align 8
  br i1 %i.o, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.cq, align 8
  %i.dv = ptrtoint ptr %i.dn to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = shl i64 %i.dx, 29
  %sext97 = add i64 %i.dy, -4294967296
  %i.dz = ashr i64 %sext97, 32
  store i64 %i.dz, ptr %i.dr, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.064.lcssa, ptr %.sroa.495.0..sroa_idx, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %sext = shl i64 %i.ds, 32
  %i.ea = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.eb = ashr exact i64 %sext, 29
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8
  %sext73 = shl i64 %i.eg, 32
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = ashr exact i64 %sext73, 28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ej, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.ek = load ptr, ptr %i.l, align 8
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.064.lcssa ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp sgt i64 %i.en, %.sroa.4.0.copyload
  br i1 %i.eo, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = icmp eq i64 %i.en, %.sroa.4.0.copyload
  br i1 %i.ep, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eq = load i64, ptr %i.el, align 8
  %i.er = icmp slt i64 %i.eq, %.sroa.0.0.copyload
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.es = ptrtoint ptr %i.dn to i64
  %i.et = ptrtoint ptr %i.ea to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = shl i64 %i.eu, 29
  %sext96 = add i64 %i.ev, -4294967296
  %i.ew = ashr i64 %sext96, 32
  store i64 %i.ew, ptr %i.dr, align 8
  store i64 %.064.lcssa, ptr %i.ef, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit, %bb.w, %bb.x, %bb.y, %bb.u, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset8AddPathsERKSt6vectorIS1_INS_8IntPointESaIS2_EESaIS4_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ]
  %.07 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.07
  tail call void @_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %2, i32 noundef %3)
  %i.f = add nuw i64 %.07, 1                      ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset15FixOrientationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  br i1 %i.c, label %bb.b, label %._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge

._ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread_crit_edge: ; preds = %bb.a
  %.pre62 = load ptr, ptr %i.d, align 8
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = ashr exact i64 %sext, 29
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
end_hunk_1
