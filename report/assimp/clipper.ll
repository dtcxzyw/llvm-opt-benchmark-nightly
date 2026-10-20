Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib7Clipper12BuildResult2ERNS_8PolyTreeE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 13 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i4.i, label %_ZN10ClipperLib8PolyTree5ClearEv.exit, label %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i

_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i
  store ptr %i.j, ptr %i.h, align 8
  br label %_ZN10ClipperLib8PolyTree5ClearEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.k = phi ptr [ %i.s, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.t, %bb.c ], [ %i.c, %bb.a ]
  %.010.i = phi i64 [ %i.u, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.n) #31, !inline_history !50
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre14.i = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.s = phi ptr [ %i.k, %.lr.ph.i ], [ %.pre14.i, %bb.b ] ; 6 uses
  %i.t = phi ptr [ %i.l, %.lr.ph.i ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.u = add nuw i64 %.010.i, 1                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.u, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

_ZN10ClipperLib8PolyTree5ClearEv.exit:            ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE6resizeEm.exit.i, %_ZSt8_DestroyIPPN10ClipperLib8PolyNodeES2_EvT_S4_RSaIT0_E.exit.i.i5.i
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp ugt i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN10ClipperLib8PolyTree5ClearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
  unreachable

bb.e:                                             ; preds = %_ZN10ClipperLib8PolyTree5ClearEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.f to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ak
  br i1 %i.ar, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #33 ; 4 uses
  %i.at = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.at, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.at, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.az = load ptr, ptr %i.am, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bb) #34
  br label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.as, ptr %i.a, align 8
  store ptr %i.as, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store ptr %i.bc, ptr %i.am, align 8
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre110 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert111 = getelementptr inbounds i8, ptr %0, i64 %.pre110 ; 2 uses
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert111, i64 88
  %.pre113 = load ptr, ptr %.phi.trans.insert112, align 8
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert111, i64 80
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8 ; 2 uses
  %.pre121 = ptrtoint ptr %.pre113 to i64
  %.pre122 = ptrtoint ptr %.pre115 to i64
  %.pre124 = sub i64 %.pre121, %.pre122
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre-phi125 = phi i64 [ %i.ak, %bb.e ], [ %.pre124, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.bd = phi ptr [ %i.ah, %bb.e ], [ %.pre115, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.be = phi ptr [ %i.aa, %bb.e ], [ %.pre, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.not = icmp eq i64 %.pre-phi125, 0
  br i1 %.not, label %.thread, label %.lr.ph99

.thread:                                          ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55

._crit_edge:                                      ; preds = %.loopexit
  %i.bg = icmp ugt i64 %i.hc, 1152921504606846975
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.g, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.hb
  br i1 %i.bn, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51: ; preds = %bb.i
  %i.bo = load ptr, ptr %i.h, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #33 ; 4 uses
  %i.bs = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bs, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52: ; preds = %bb.j, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE11_M_allocateEm.exit.i51
  %.not.i8.i53 = icmp eq ptr %i.bs, null
  br i1 %.not.i8.i53, label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52
  %i.by = load ptr, ptr %i.bh, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ca) #34
  br label %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54

_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54: ; preds = %bb.k, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i52
  store ptr %i.br, ptr %i.g, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store ptr %i.cb, ptr %i.h, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.hb
  store ptr %i.cc, ptr %i.bh, align 8
  %.pre119 = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit55: ; preds = %.thread, %bb.i, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54
  %i.cd = phi ptr [ %i.bh, %bb.i ], [ %i.bh, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54 ], [ %i.bf, %.thread ] ; 6 uses
  %i.ce = phi ptr [ %i.gr, %bb.i ], [ %.pre119, %_ZNSt12_Vector_baseIPN10ClipperLib8PolyNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i54 ], [ %i.be, %.thread ]
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not104 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not104, label %._crit_edge103, label %.lr.ph102

.lr.ph99:                                         ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit, %.loopexit
  %i.cm = phi ptr [ %i.gy, %.loopexit ], [ %i.bd, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit ]
  %.04298 = phi i64 [ %i.gq, %.loopexit ], [ 0, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.04298
  %i.co = load ptr, ptr %i.cn, align 8            ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %.not.i56 = icmp eq ptr %i.cq, null
  br i1 %.not.i56, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph99, %.preheader.i
  %.07.i = phi i32 [ %i.cr, %.preheader.i ], [ 0, %.lr.ph99 ] ; 2 uses
  %.0.i = phi ptr [ %i.ct, %.preheader.i ], [ %i.cq, %.lr.ph99 ]
  %i.cr = add nuw nsw i32 %.07.i, 1               ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.ct, %i.cq
  br i1 %.not10.i, label %_ZN10ClipperLib10PointCountEPNS_5OutPtE.exit, label %.preheader.i, !llvm.loop !21

_ZN10ClipperLib10PointCountEPNS_5OutPtE.exit:     ; preds = %.preheader.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !range !47, !noundef !48
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond50.v = select i1 %i.cw, i32 1, i32 2
  %or.cond50 = icmp samesign ugt i32 %i.cr, %or.cond50.v
  br i1 %or.cond50, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN10ClipperLib10PointCountEPNS_5OutPtE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 4 uses
  %.not.i57 = icmp eq ptr %i.cy, null
  br i1 %.not.i57, label %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.da = load i8, ptr %i.cz, align 4, !range !47, !noundef !48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dc = load i8, ptr %i.db, align 4, !range !47, !noundef !48
  %.not15.i = icmp eq i8 %i.da, %i.dc
  br i1 %.not15.i, label %.lr.ph.i58.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %.not16.i = icmp eq ptr %i.de, null
  br i1 %.not16.i, label %.lr.ph.i58.preheader, label %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit

.lr.ph.i58.preheader:                             ; preds = %bb.n, %bb.m
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.critedge2.i
  %.021.i = phi ptr [ %.0.i59, %.critedge2.i ], [ %i.cy, %.lr.ph.i58.preheader ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  %i.dg = load i8, ptr %i.df, align 4, !range !47, !noundef !48
  %i.dh = icmp eq i8 %i.dg, %i.da
  br i1 %i.dh, label %.critedge2.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i58
  %i.di = getelementptr inbounds nuw i8, ptr %.021.i, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %.not18.i = icmp eq ptr %i.dj, null
  br i1 %.not18.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.o, %.lr.ph.i58
  %i.dk = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i59 = load ptr, ptr %i.dk, align 8          ; 2 uses
  %.not17.i = icmp eq ptr %.0.i59, null
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i58, !llvm.loop !24

.critedge.i:                                      ; preds = %.critedge2.i, %bb.o
  %.0.lcssa.ph.i = phi ptr [ %.021.i, %bb.o ], [ null, %.critedge2.i ]
  store ptr %.0.lcssa.ph.i, ptr %i.cx, align 8
  br label %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit

_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit: ; preds = %bb.l, %bb.n, %.critedge.i
  %i.dl = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN10ClipperLib8PolyNodeE, i64 16), ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.dm, i8 0, i64 61, i1 false)
  %i.dn = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.do = load ptr, ptr %i.am, align 8
  %.not.i60 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit
  store ptr %i.dl, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %i.b, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dq, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit

bb.q:                                             ; preds = %_ZN10ClipperLib7Clipper14FixHoleLinkageERNS_6OutRecE.exit
  %i.dr = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 5 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.r, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #33 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store ptr %i.dl, ptr %i.ed, align 8
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.s, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.eg = load ptr, ptr %i.am, align 8
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.ei) #34
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ec, ptr %i.a, align 8
  store ptr %i.ef, ptr %i.b, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ej, ptr %i.am, align 8
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.p, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.dl, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store ptr null, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store i32 0, ptr %i.em, align 8
  %i.en = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 6 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = load ptr, ptr %i.dm, align 8
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 4
  %i.ev = icmp ult i64 %i.eu, %i.en
  br i1 %i.ev, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, label %.lr.ph

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.es
  %i.fa = shl nuw nsw i64 %i.en, 4
  %i.fb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #33 ; 4 uses
  %i.fc = load ptr, ptr %i.dm, align 8            ; 5 uses
  %i.fd = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fc, %i.fd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i ], [ %i.fb, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i ], [ %i.fc, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !106
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.fe, %i.fd
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i61 = icmp eq ptr %i.fc, null
  br i1 %.not.i8.i61, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.fg = load ptr, ptr %i.eo, align 8
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fc to i64
  %i.fj = sub i64 %i.fh, %i.fi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fj) #34
  br label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.fb, ptr %i.dm, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store ptr %i.fk, ptr %i.ew, align 8
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.en ; 2 uses
  store ptr %i.fl, ptr %i.eo, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit
  %.pre118 = phi ptr [ %i.ep, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE9push_backERKS2_.exit ], [ %i.fl, %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.fm = load ptr, ptr %i.cp, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 4 uses
  %.pre116 = load ptr, ptr %i.fn, align 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %i.fo = phi ptr [ %.pre118, %.lr.ph ], [ %i.gn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %i.fp = phi ptr [ %.pre116, %.lr.ph ], [ %i.go, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.04097 = phi i32 [ 0, %.lr.ph ], [ %i.gp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.pn96 = phi ptr [ %i.fm, %.lr.ph ], [ %.041, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ]
  %.041.in = getelementptr inbounds nuw i8, ptr %.pn96, i64 32
  %.041 = load ptr, ptr %.041.in, align 8         ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not.i62 = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i62, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false)
  %i.fr = load ptr, ptr %i.fn, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  store ptr %i.fs, ptr %i.fn, align 8
  %.pre117 = load ptr, ptr %i.eo, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib13ClipperOffsetD2Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i ], [ %i.bm, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4 ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #34
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bv, %i.bo
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.bl, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4
  %i.bw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.bm, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit4 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #34
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
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.q) #31
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
  %i.aa = shl i64 %i.z, 29
  %i.ab = ashr i64 %i.aa, 32
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !38
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #34
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7AddPathERKSt6vectorINS_8IntPointESaIS2_EENS_8JoinTypeENS_7EndTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 12 uses
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
  %i.q = load ptr, ptr %1, align 8                ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.u, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.r, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.t, %i.z
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit123

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.old4 = icmp sgt i64 %indvars.iv, 1
  br i1 %.old4, label %bb.c, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit123: ; preds = %bb.c
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit123, %bb.b
  %.167 = phi i32 [ %i.j, %bb.b ], [ %i.ac, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit.loopexit.split.loop.exit123 ], [ 0, %bb.d ] ; 3 uses
  %i.ad = add nuw nsw i32 %.167, 1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.ag = shl nuw nsw i64 %i.ae, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #33 ; 5 uses
  store ptr %i.ah, ptr %i.l, align 8
  %.idx = shl nuw nsw i64 %i.ae, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  store ptr %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.ak = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8
  %.not99 = icmp slt i32 %.167, 1
  br i1 %.not99, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %.pre = load ptr, ptr %1, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.am = icmp slt i32 %.165, 2
  %i.an = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %.064.lcssa = phi i1 [ true, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ], [ %i.am, %._crit_edge.loopexit ]
  %.063.lcssa = phi i64 [ 0, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit ], [ %i.an, %._crit_edge.loopexit ] ; 3 uses
  %or.cond3 = select i1 %i.o, i1 %.064.lcssa, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.ao = phi ptr [ %i.al, %.lr.ph.preheader ], [ %i.cl, %bb.l ] ; 6 uses
  %i.ap = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.cm, %bb.l ] ; 2 uses
  %i.aq = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.cn, %bb.l ] ; 6 uses
  %indvars.iv106 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next107, %bb.l ] ; 3 uses
  %.063101 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.l ] ; 4 uses
  %.064100 = phi i32 [ 0, %.lr.ph.preheader ], [ %.165, %bb.l ] ; 3 uses
  %i.ar = sext i32 %.064100 to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv106 ; 4 uses
  %i.au = load i64, ptr %i.as, align 8
  %i.av = load i64, ptr %i.at, align 8
  %.not.i73 = icmp ne i64 %i.au, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp ne i64 %i.ax, %i.az
  %i.bb = select i1 %.not.i73, i1 true, i1 %i.ba
  br i1 %i.bb, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.lr.ph
  %i.bc = add nsw i32 %.064100, 1                 ; 4 uses
  %i.bd = load ptr, ptr %i.af, align 8
  %.not.i74 = icmp eq ptr %i.ao, %i.bd
  br i1 %.not.i74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.be = load ptr, ptr %i.aj, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  store ptr %i.bf, ptr %i.aj, align 8
  %.pre109 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit87

bb.g:                                             ; preds = %bb.e
  %i.bg = ptrtoint ptr %i.ao to i64
  %i.bh = ptrtoint ptr %i.aq to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775792
  br i1 %i.bj, label %bb.h, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75: ; preds = %bb.g
  %i.bk = ashr exact i64 %i.bi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i76 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i76, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 576460752303423487)
  %i.bo = select i1 %i.bm, i64 576460752303423487, i64 %i.bn ; 3 uses
  %.not.i.i.i77 = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i77)
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #33 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %.not10.i.i.i.i.i78 = icmp eq ptr %i.aq, %i.ao
  br i1 %.not10.i.i.i.i.i78, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i86, label %.lr.ph.i.i.i.i.i79

.lr.ph.i.i.i.i.i79:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75, %.lr.ph.i.i.i.i.i79
  %.012.i.i.i.i.i80 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i79 ], [ %i.bq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75 ] ; 2 uses
  %.0911.i.i.i.i.i81 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i79 ], [ %i.aq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i80, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i81, i64 16, i1 false), !alias.scope !178
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i81, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i80, i64 16 ; 2 uses
  %.not.i.i.i.i.i82 = icmp eq ptr %i.bs, %i.ao
  br i1 %.not.i.i.i.i.i82, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i86, label %.lr.ph.i.i.i.i.i79, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i86: ; preds = %.lr.ph.i.i.i.i.i79, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75
  %.0.lcssa.i.i.i.i.i84 = phi ptr [ %i.bq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i75 ], [ %i.bt, %.lr.ph.i.i.i.i.i79 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i84, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bi) #34
  store ptr %i.bq, ptr %i.l, align 8
  store ptr %i.bu, ptr %i.aj, align 8
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bv, ptr %i.af, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit87

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit87: ; preds = %bb.f, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i86
  %i.bw = phi ptr [ %.pre109, %bb.f ], [ %i.bq, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i86 ] ; 4 uses
  %i.bx = phi ptr [ %i.bf, %bb.f ], [ %i.bu, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i86 ] ; 3 uses
  %i.by = load ptr, ptr %1, align 8               ; 4 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv106 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = sext i32 %.063101 to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp sgt i64 %i.cb, %i.cf
  br i1 %i.cg, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit87
  %i.ch = icmp eq i64 %i.cb, %i.cf
  br i1 %i.ch, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = load i64, ptr %i.bz, align 8
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = icmp slt i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit87
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j, %bb.i
  %i.cl = phi ptr [ %i.bx, %bb.k ], [ %i.bx, %bb.j ], [ %i.bx, %bb.i ], [ %i.ao, %.lr.ph ]
  %i.cm = phi ptr [ %i.by, %bb.k ], [ %i.by, %bb.j ], [ %i.by, %bb.i ], [ %i.ap, %.lr.ph ]
  %i.cn = phi ptr [ %i.bw, %bb.k ], [ %i.bw, %bb.j ], [ %i.bw, %bb.i ], [ %i.aq, %.lr.ph ]
  %.165 = phi i32 [ %i.bc, %bb.k ], [ %i.bc, %bb.j ], [ %i.bc, %bb.i ], [ %.064100, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.bc, %bb.k ], [ %.063101, %bb.j ], [ %.063101, %bb.i ], [ %.063101, %.lr.ph ] ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next107 to i32
  %.not = icmp slt i32 %.167, %4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !177

bb.m:                                             ; preds = %._crit_edge
  %i.co = load ptr, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.k) #31
  br label %bb.z

bb.n:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8
  %.not.i.i.i88 = icmp eq ptr %i.cu, %i.db
  br i1 %.not.i.i.i88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.k, ptr %i.cu, align 8
  %i.dc = load ptr, ptr %i.ct, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.ct, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

bb.p:                                             ; preds = %bb.n
  %i.de = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.de, label %bb.q, label %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #32
  unreachable

_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cz ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.cz
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i.i.i89 = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i89)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #33 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.cy ; 2 uses
  store ptr %i.k, ptr %i.dl, align 8
  %i.dm = icmp sgt i64 %i.cy, 0
  br i1 %i.dm, label %bb.r, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.do = load ptr, ptr %i.da, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dq) #34
  br label %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.dk, ptr %i.cs, align 8
  store ptr %i.dn, ptr %i.ct, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dr, ptr %i.da, align 8
  br label %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit

_ZN10ClipperLib8PolyNode8AddChildERS0_.exit:      ; preds = %bb.o, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i
  %i.ds = phi ptr [ %i.dd, %bb.o ], [ %i.dn, %_ZNSt6vectorIPN10ClipperLib8PolyNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.dt = trunc i64 %i.cz to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.cr, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.dt, ptr %i.dv, align 8
  br i1 %i.o, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_ZN10ClipperLib8PolyNode8AddChildERS0_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.cs, align 8
  %i.ea = ptrtoint ptr %i.ds to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = shl i64 %i.ec, 29
  %sext95 = add i64 %i.ed, -4294967296
  %i.ee = ashr i64 %sext95, 32
  store i64 %i.ee, ptr %i.dw, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.063.lcssa, ptr %.sroa.494.0..sroa_idx, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ef = shl i64 %i.dx, 32
  %i.eg = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.eh = ashr exact i64 %i.ef, 29
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = shl i64 %i.em, 32
  %i.eo = load ptr, ptr %i.ek, align 8
  %i.ep = ashr exact i64 %i.en, 28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.eq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.er = load ptr, ptr %i.l, align 8
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %.063.lcssa ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, %.sroa.4.0.copyload
  br i1 %i.ev, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = icmp eq i64 %i.eu, %.sroa.4.0.copyload
  br i1 %i.ew, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ex = load i64, ptr %i.es, align 8
  %i.ey = icmp slt i64 %i.ex, %.sroa.0.0.copyload
  br i1 %i.ey, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.ez = ptrtoint ptr %i.ds to i64
  %i.fa = ptrtoint ptr %i.eg to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = shl i64 %i.fb, 29
  %sext = add i64 %i.fc, -4294967296
  %i.fd = ashr i64 %sext, 32
  store i64 %i.fd, ptr %i.dw, align 8
  store i64 %.063.lcssa, ptr %i.el, align 8
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
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !179
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
  %.pre68 = load ptr, ptr %i.d, align 8
  br label %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %i.b, 32
  %i.f = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.g = ashr exact i64 %i.e, 29
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
end_hunk_1
