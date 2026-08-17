inline.NumInlined: 868
inline.NumDeleted: 429
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl24resolve_duplicated_facesIN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE:bb.a
  %.083262 = phi i64 [ %i.bp, %bb.x ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.083262
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !23
  %.idx.i.i.i = mul i64 %.083262, 12
  %i.af = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i ; 7 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22 ; 3 uses
  %.idx.i.i.i119 = mul nsw i64 %i.ad, 12
  %i.ah = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i119 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22 ; 3 uses
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr i8, ptr %i.ah, i64 4
  %.pre296 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.ak = getelementptr i8, ptr %i.af, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ah, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22 ; 2 uses
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %i.af, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  %i.ar = getelementptr i8, ptr %i.ah, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.lr.ph._crit_edge, %bb.k, %bb.j
  %i.au = phi i32 [ %.pre296, %.lr.ph._crit_edge ], [ %i.al, %bb.k ], [ %i.an, %bb.j ] ; 2 uses
  %i.av = icmp eq i32 %i.ag, %i.au
  br i1 %i.av, label %bb.m, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.l
  %.phi.trans.insert298 = getelementptr i8, ptr %i.ah, i64 8
  %.pre299 = load i32, ptr %.phi.trans.insert298, align 4, !tbaa !22
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr i8, ptr %i.af, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ah, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22 ; 2 uses
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.af, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22
  %i.bd = icmp eq i32 %i.bc, %i.ai
  br i1 %i.bd, label %bb.r, label %bb.o

bb.o:                                             ; preds = %._crit_edge297, %bb.n, %bb.m
  %i.be = phi i32 [ %.pre299, %._crit_edge297 ], [ %i.ax, %bb.n ], [ %i.az, %bb.m ]
  %i.bf = icmp eq i32 %i.ag, %i.be
  br i1 %i.bf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr i8, ptr %i.af, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = icmp eq i32 %i.bh, %i.ai
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %i.af, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %i.bl = icmp eq i32 %i.bk, %i.au
  %i.bm = select i1 %i.bl, i32 1, i32 -1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.n, %bb.k
  %i.bn = phi i32 [ 1, %bb.n ], [ 1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.o ], [ %i.bm, %bb.q ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ad ; 4 uses
  %i.bp = add nuw i64 %.083262, 1                 ; 3 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = mul nsw i32 %i.bn, %i.bq                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !24 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !24
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 4 uses
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775804
  br i1 %i.cb, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc137 unwind label %.loopexit.split-lp230

.noexc137:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.cc = ashr exact i64 %i.ca, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 2305843009213693951)
  %i.cg = select i1 %i.ce, i64 2305843009213693951, i64 %i.cf ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #18
          to label %.noexc138 unwind label %.loopexit229 ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store i32 %i.br, ptr %i.cj, align 4, !tbaa !22
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.v:                                             ; preds = %.noexc138
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ci, ptr align 4 %i.bx, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.v, %.noexc138
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !21
  %.pre294 = load ptr, ptr %5, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cm = phi ptr [ %.pre294, %bb.w ], [ %i.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  %i.cn = phi ptr [ %.pre, %bb.w ], [ %i.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.ci, ptr %i.bo, align 8, !tbaa !27
  store ptr %i.cl, ptr %i.bs, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.s
  %i.cp = phi ptr [ %i.cm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.s ]
  %i.cq = phi ptr [ %i.cn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.s ]
  %i.cr = load ptr, ptr %7, align 8, !tbaa !21
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ad ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !22
  %i.cu = add nsw i32 %i.ct, %i.bn
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !22
  %i.cv = load ptr, ptr %8, align 8, !tbaa !21
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ad ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !22
  %exitcond.not = icmp eq i64 %i.bp, %i.b
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !28

.loopexit229:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit231 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.loopexit.split-lp230:                            ; preds = %bb.u
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.cz = ptrtoint ptr %.sroa.14.7 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.25.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.25.7, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.cz, %._crit_edge.loopexit ]
  %.sroa.0184.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0184.7, %._crit_edge.loopexit ] ; 8 uses
  %i.da = ptrtoint ptr %.sroa.0184.0.lcssa to i64 ; 2 uses
  %i.db = sub i64 %.sroa.14.0.lcssa, %i.da
  %i.dc = ashr exact i64 %i.db, 3                 ; 7 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dc, i64 noundef 1)
          to label %bb.av unwind label %bb.bc

.lr.ph271:                                        ; preds = %.preheader, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.084270 = phi i64 [ %i.gh, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ 0, %.preheader ] ; 6 uses
  %.sroa.0184.0269 = phi ptr [ %.sroa.0184.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 26 uses
  %.sroa.14.0268 = phi ptr [ %.sroa.14.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 23 uses
  %.sroa.25.0267 = phi ptr [ %.sroa.25.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 11 uses
  %i.dd = load ptr, ptr %8, align 8, !tbaa !21
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %.084270
  %i.df = load i32, ptr %i.de, align 4, !tbaa !22
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %.lr.ph271
  %i.dh = load ptr, ptr %6, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.084270
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !27
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !22
  %i.dl = call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %.not.i.i139 = icmp eq ptr %.sroa.14.0268, %.sroa.25.0267
  br i1 %.not.i.i139, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dn, ptr %.sroa.14.0268, align 8, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.14.0268, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aa:                                            ; preds = %bb.y
  %i.dp = ptrtoint ptr %.sroa.14.0268 to i64
  %i.dq = ptrtoint ptr %.sroa.0184.0269 to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 6 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775800
  br i1 %i.ds, label %bb.ab, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc143 unwind label %.loopexit.split-lp225

.noexc143:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.dt = ashr exact i64 %i.dr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i140 = call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i.i140, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 1152921504606846975)
  %i.dx = select i1 %i.dv, i64 1152921504606846975, i64 %i.dw ; 3 uses
  %.not.i.i.i.i141 = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i141)
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #18
          to label %.noexc144 unwind label %.loopexit224 ; 4 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dr ; 2 uses
  store i64 %i.dn, ptr %i.ea, align 8, !tbaa !30
  %i.eb = icmp sgt i64 %i.dr, 0
  br i1 %i.eb, label %bb.ac, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %.noexc144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr align 8 %.sroa.0184.0269, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %.noexc144
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.not.i17.i.i.i142 = icmp eq ptr %.sroa.0184.0269, null
  br i1 %.not.i17.i.i.i142, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0269, i64 noundef %i.dr) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dx
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit224:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp225:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ae:                                            ; preds = %.lr.ph271
  %i.ee = load ptr, ptr %7, align 8, !tbaa !21
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.084270
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22
  switch i32 %i.eg, label %_ZNSt6vectorImSaImEE9push_backEOm.exit [
    i32 1, label %bb.af
    i32 -1, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae
  %i.eh = load ptr, ptr %6, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %.084270 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !31 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %.not217265 = icmp eq ptr %i.ej, %i.el
  br i1 %.not217265, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge

bb.ag:                                            ; preds = %.critedge
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0179.0266, i64 4 ; 2 uses
  %.not217 = icmp eq ptr %i.em, %i.el
  br i1 %.not217, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ag
  %.sroa.0179.0266 = phi ptr [ %i.em, %bb.ag ], [ %i.ej, %bb.af ] ; 2 uses
  %i.en = load i32, ptr %.sroa.0179.0266, align 4, !tbaa !22 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 1
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.ep = add nsw i32 %i.en, -1
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %.not.i.i145 = icmp eq ptr %.sroa.14.0268, %.sroa.25.0267
  br i1 %.not.i.i145, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.eq, ptr %.sroa.14.0268, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.14.0268, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.es = ptrtoint ptr %.sroa.14.0268 to i64
  %i.et = ptrtoint ptr %.sroa.0184.0269 to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 6 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775800
  br i1 %i.ev, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i146

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc152 unwind label %.loopexit.split-lp220

.noexc152:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i146: ; preds = %bb.aj
  %i.ew = ashr exact i64 %i.eu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i.i147, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 1152921504606846975)
  %i.fa = select i1 %i.ey, i64 1152921504606846975, i64 %i.ez ; 3 uses
  %.not.i.i.i.i148 = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i148)
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #18
          to label %.noexc153 unwind label %.loopexit219 ; 4 uses

.noexc153:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i146
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %i.eu ; 2 uses
  store i64 %i.eq, ptr %i.fd, align 8, !tbaa !30
  %i.fe = icmp sgt i64 %i.eu, 0
  br i1 %i.fe, label %bb.al, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i149

bb.al:                                            ; preds = %.noexc153
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr align 8 %.sroa.0184.0269, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i149

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i149: ; preds = %bb.al, %.noexc153
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.not.i17.i.i.i150 = icmp eq ptr %.sroa.0184.0269, null
  br i1 %.not.i17.i.i.i150, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0269, i64 noundef %i.eu) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151: ; preds = %bb.am, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i149
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fa
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit219:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i146
  %lpad.loopexit221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp220:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.an:                                            ; preds = %bb.ae
  %i.fh = load ptr, ptr %6, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.084270 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !31 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !31 ; 2 uses
  %.not263 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not263, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge105

bb.ao:                                            ; preds = %.critedge105
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0173.0264, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fm, %i.fl
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge105

.critedge105:                                     ; preds = %bb.an, %bb.ao
  %.sroa.0173.0264 = phi ptr [ %i.fm, %bb.ao ], [ %i.fj, %bb.an ] ; 2 uses
  %i.fn = load i32, ptr %.sroa.0173.0264, align 4, !tbaa !22 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, -1
  br i1 %i.fo, label %bb.ao, label %bb.ap

bb.ap:                                            ; preds = %.critedge105
  %i.fp = xor i32 %i.fn, -1
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %.not.i.i155 = icmp eq ptr %.sroa.14.0268, %.sroa.25.0267
  br i1 %.not.i.i155, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.fq, ptr %.sroa.14.0268, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.14.0268, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fs = ptrtoint ptr %.sroa.14.0268 to i64
  %i.ft = ptrtoint ptr %.sroa.0184.0269 to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 6 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.as, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i156

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc162 unwind label %.loopexit.split-lp

.noexc162:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i156: ; preds = %bb.ar
  %i.fw = ashr exact i64 %i.fu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i157 = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i157, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 1152921504606846975)
  %i.ga = select i1 %i.fy, i64 1152921504606846975, i64 %i.fz ; 3 uses
  %.not.i.i.i.i158 = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i158)
  %i.gb = shl nuw nsw i64 %i.ga, 3
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #18
          to label %.noexc163 unwind label %.loopexit ; 4 uses

.noexc163:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i156
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.fu ; 2 uses
  store i64 %i.fq, ptr %i.gd, align 8, !tbaa !30
  %i.ge = icmp sgt i64 %i.fu, 0
  br i1 %i.ge, label %bb.at, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i159

bb.at:                                            ; preds = %.noexc163
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr align 8 %.sroa.0184.0269, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i159

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i159: ; preds = %bb.at, %.noexc163
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.not.i17.i.i.i160 = icmp eq ptr %.sroa.0184.0269, null
  br i1 %.not.i17.i.i.i160, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0184.0269, i64 noundef %i.fu) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161: ; preds = %bb.au, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i159
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.ga
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i156
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ao, %bb.ag, %bb.an, %bb.af, %bb.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161, %bb.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151, %bb.ai, %bb.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.25.7 = phi ptr [ %.sroa.25.0267, %bb.ae ], [ %.sroa.25.0267, %bb.z ], [ %.sroa.25.0267, %bb.ai ], [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.25.0267, %bb.aq ], [ %i.fg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151 ], [ %.sroa.25.0267, %bb.af ], [ %i.gg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161 ], [ %.sroa.25.0267, %bb.an ], [ %.sroa.25.0267, %bb.ag ], [ %.sroa.25.0267, %bb.ao ] ; 2 uses
  %.sroa.14.7 = phi ptr [ %.sroa.14.0268, %bb.ae ], [ %i.do, %bb.z ], [ %i.er, %bb.ai ], [ %i.ec, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.fr, %bb.aq ], [ %i.ff, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151 ], [ %.sroa.14.0268, %bb.af ], [ %i.gf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161 ], [ %.sroa.14.0268, %bb.an ], [ %.sroa.14.0268, %bb.ag ], [ %.sroa.14.0268, %bb.ao ] ; 2 uses
  %.sroa.0184.7 = phi ptr [ %.sroa.0184.0269, %bb.ae ], [ %.sroa.0184.0269, %bb.z ], [ %.sroa.0184.0269, %bb.ai ], [ %i.dz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0184.0269, %bb.aq ], [ %i.fc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i151 ], [ %.sroa.0184.0269, %bb.af ], [ %i.gc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i161 ], [ %.sroa.0184.0269, %bb.an ], [ %.sroa.0184.0269, %bb.ag ], [ %.sroa.0184.0269, %bb.ao ] ; 2 uses
  %i.gh = add nuw i64 %.084270, 1                 ; 2 uses
  %exitcond292.not = icmp eq i64 %i.gh, %i.d
  br i1 %exitcond292.not, label %._crit_edge.loopexit, label %.lr.ph271, !llvm.loop !32

bb.av:                                            ; preds = %._crit_edge
  %i.gi = icmp sgt i64 %i.dc, 0
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

end_hunk_0
begin_hunk_1_@_ZN3igl24resolve_duplicated_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE:bb.a
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22 ; 3 uses
  %i.aj = icmp eq i32 %i.ag, %i.ai
  %.pre281 = load i64, ptr %i.c, align 8, !tbaa !53 ; 5 uses
  br i1 %i.aj, label %bb.j, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.ah, i64 %.pre281
  %.pre282 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22 ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %.pre281
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22 ; 2 uses
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.idx = shl i64 %i.ak, 3
  %i.aq = getelementptr i8, ptr %i.af, i64 %.idx
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %.idx198 = shl i64 %.pre281, 3
  %i.as = getelementptr i8, ptr %i.ah, i64 %.idx198
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.lr.ph._crit_edge, %bb.k, %bb.j
  %i.av = phi i32 [ %.pre282, %.lr.ph._crit_edge ], [ %i.am, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %i.aw = icmp eq i32 %i.ag, %i.av
  br i1 %i.aw, label %bb.m, label %._crit_edge283

._crit_edge283:                                   ; preds = %bb.l
  %.pre284 = shl i64 %.pre281, 3
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.af, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22
  %.idx199 = shl i64 %.pre281, 3                  ; 3 uses
  %i.ba = getelementptr i8, ptr %i.ah, i64 %.idx199
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.idx200 = shl i64 %i.ax, 3
  %i.bd = getelementptr i8, ptr %i.af, i64 %.idx200
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.bf = icmp eq i32 %i.be, %i.ai
  br i1 %i.bf, label %bb.r, label %bb.o

bb.o:                                             ; preds = %._crit_edge283, %bb.n, %bb.m
  %.idx201.pre-phi = phi i64 [ %.pre284, %._crit_edge283 ], [ %.idx199, %bb.n ], [ %.idx199, %bb.m ]
  %i.bg = getelementptr i8, ptr %i.ah, i64 %.idx201.pre-phi
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = icmp eq i32 %i.ag, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.af, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = icmp eq i32 %i.bl, %i.ai
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.idx202 = shl i64 %i.bj, 3
  %i.bn = getelementptr i8, ptr %i.af, i64 %.idx202
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = icmp eq i32 %i.bo, %i.av
  %i.bq = select i1 %i.bp, i32 1, i32 -1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.n, %bb.k
  %i.br = phi i32 [ 1, %bb.n ], [ 1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.o ], [ %i.bq, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ad ; 4 uses
  %i.bt = add nuw i64 %.083247, 1                 ; 3 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = mul nsw i32 %i.br, %i.bu                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !24
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !27 ; 4 uses
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.cf, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc120 unwind label %.loopexit.split-lp215

.noexc120:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.cg = ashr exact i64 %i.ce, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 2305843009213693951)
  %i.ck = select i1 %i.ci, i64 2305843009213693951, i64 %i.cj ; 3 uses
  %.not.i.i.i.i119 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i119)
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #18
          to label %.noexc121 unwind label %.loopexit214 ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i32 %i.bv, ptr %i.cn, align 4, !tbaa !22
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.v:                                             ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.cb, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.v, %.noexc121
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !21
  %.pre279 = load ptr, ptr %5, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cq = phi ptr [ %.pre279, %bb.w ], [ %i.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  %i.cr = phi ptr [ %.pre, %bb.w ], [ %i.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.cm, ptr %i.bs, align 8, !tbaa !27
  store ptr %i.cp, ptr %i.bw, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cs, ptr %i.by, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.s
  %i.ct = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.s ]
  %i.cu = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.s ]
  %i.cv = load ptr, ptr %7, align 8, !tbaa !21
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ad ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.cy = add nsw i32 %i.cx, %i.br
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !22
  %i.cz = load ptr, ptr %8, align 8, !tbaa !21
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ad ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !22
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !22
  %exitcond.not = icmp eq i64 %i.bt, %i.b
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !56

.loopexit214:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.loopexit.split-lp215:                            ; preds = %bb.u
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dd = ptrtoint ptr %.sroa.14.7 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.25.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.25.7, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.dd, %._crit_edge.loopexit ]
  %.sroa.0164.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0164.7, %._crit_edge.loopexit ] ; 8 uses
  %i.de = ptrtoint ptr %.sroa.0164.0.lcssa to i64 ; 2 uses
  %i.df = sub i64 %.sroa.14.0.lcssa, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 7 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dg, i64 noundef 1)
          to label %bb.av unwind label %bb.bb

.lr.ph256:                                        ; preds = %.preheader, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.084255 = phi i64 [ %i.gl, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ 0, %.preheader ] ; 6 uses
  %.sroa.0164.0254 = phi ptr [ %.sroa.0164.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 26 uses
  %.sroa.14.0253 = phi ptr [ %.sroa.14.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 23 uses
  %.sroa.25.0252 = phi ptr [ %.sroa.25.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 11 uses
  %i.dh = load ptr, ptr %8, align 8, !tbaa !21
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %.084255
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %.lr.ph256
  %i.dl = load ptr, ptr %6, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.084255
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !27
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !22
  %i.dp = call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = add nsw i32 %i.dp, -1
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i122 = icmp eq ptr %.sroa.14.0253, %.sroa.25.0252
  br i1 %.not.i.i122, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dr, ptr %.sroa.14.0253, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.14.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aa:                                            ; preds = %bb.y
  %i.dt = ptrtoint ptr %.sroa.14.0253 to i64
  %i.du = ptrtoint ptr %.sroa.0164.0254 to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.ab, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc126 unwind label %.loopexit.split-lp210

.noexc126:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i123 = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i123, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i.i.i124 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i124)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #18
          to label %.noexc127 unwind label %.loopexit209 ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !30
  %i.ef = icmp sgt i64 %i.dv, 0
  br i1 %i.ef, label %bb.ac, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %.sroa.0164.0254, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %.noexc127
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.not.i17.i.i.i125 = icmp eq ptr %.sroa.0164.0254, null
  br i1 %.not.i17.i.i.i125, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0254, i64 noundef %i.dv) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit209:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp210:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ae:                                            ; preds = %.lr.ph256
  %i.ei = load ptr, ptr %7, align 8, !tbaa !21
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %.084255
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !22
  switch i32 %i.ek, label %_ZNSt6vectorImSaImEE9push_backEOm.exit [
    i32 1, label %bb.af
    i32 -1, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae
  %i.el = load ptr, ptr %6, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %.084255 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !31 ; 2 uses
  %.not197250 = icmp eq ptr %i.en, %i.ep
  br i1 %.not197250, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge

bb.ag:                                            ; preds = %.critedge
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0159.0251, i64 4 ; 2 uses
  %.not197 = icmp eq ptr %i.eq, %i.ep
  br i1 %.not197, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ag
  %.sroa.0159.0251 = phi ptr [ %i.eq, %bb.ag ], [ %i.en, %bb.af ] ; 2 uses
  %i.er = load i32, ptr %.sroa.0159.0251, align 4, !tbaa !22 ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.et = add nsw i32 %i.er, -1
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %.not.i.i128 = icmp eq ptr %.sroa.14.0253, %.sroa.25.0252
  br i1 %.not.i.i128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.eu, ptr %.sroa.14.0253, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.14.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ew = ptrtoint ptr %.sroa.14.0253 to i64
  %i.ex = ptrtoint ptr %.sroa.0164.0254 to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 6 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc135 unwind label %.loopexit.split-lp205

.noexc135:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129: ; preds = %bb.aj
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i130 = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i.i130, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i.i131 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i.i131)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #18
          to label %.noexc136 unwind label %.loopexit204 ; 4 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store i64 %i.eu, ptr %i.fh, align 8, !tbaa !30
  %i.fi = icmp sgt i64 %i.ey, 0
  br i1 %i.fi, label %bb.al, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132

bb.al:                                            ; preds = %.noexc136
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %.sroa.0164.0254, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132: ; preds = %bb.al, %.noexc136
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i17.i.i.i133 = icmp eq ptr %.sroa.0164.0254, null
  br i1 %.not.i17.i.i.i133, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0254, i64 noundef %i.ey) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134: ; preds = %bb.am, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit204:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp205:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.an:                                            ; preds = %bb.ae
  %i.fl = load ptr, ptr %6, align 8, !tbaa !14
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %.084255 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !31 ; 2 uses
  %.not248 = icmp eq ptr %i.fn, %i.fp
  br i1 %.not248, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge105

bb.ao:                                            ; preds = %.critedge105
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0153.0249, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fq, %i.fp
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge105

.critedge105:                                     ; preds = %bb.an, %bb.ao
  %.sroa.0153.0249 = phi ptr [ %i.fq, %bb.ao ], [ %i.fn, %bb.an ] ; 2 uses
  %i.fr = load i32, ptr %.sroa.0153.0249, align 4, !tbaa !22 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  br i1 %i.fs, label %bb.ao, label %bb.ap

bb.ap:                                            ; preds = %.critedge105
  %i.ft = xor i32 %i.fr, -1
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %.not.i.i138 = icmp eq ptr %.sroa.14.0253, %.sroa.25.0252
  br i1 %.not.i.i138, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.fu, ptr %.sroa.14.0253, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.14.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fw = ptrtoint ptr %.sroa.14.0253 to i64
  %i.fx = ptrtoint ptr %.sroa.0164.0254 to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.as, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc145 unwind label %.loopexit.split-lp

.noexc145:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139: ; preds = %bb.ar
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i140 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i140, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i.i141 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i141)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #18
          to label %.noexc146 unwind label %.loopexit ; 4 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  store i64 %i.fu, ptr %i.gh, align 8, !tbaa !30
  %i.gi = icmp sgt i64 %i.fy, 0
  br i1 %i.gi, label %bb.at, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142

bb.at:                                            ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %.sroa.0164.0254, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142: ; preds = %bb.at, %.noexc146
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.not.i17.i.i.i143 = icmp eq ptr %.sroa.0164.0254, null
  br i1 %.not.i17.i.i.i143, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0254, i64 noundef %i.fy) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144: ; preds = %bb.au, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ge
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ao, %bb.ag, %bb.an, %bb.af, %bb.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144, %bb.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134, %bb.ai, %bb.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.25.7 = phi ptr [ %.sroa.25.0252, %bb.ae ], [ %.sroa.25.0252, %bb.z ], [ %.sroa.25.0252, %bb.ai ], [ %i.eh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.25.0252, %bb.aq ], [ %i.fk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134 ], [ %.sroa.25.0252, %bb.af ], [ %i.gk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144 ], [ %.sroa.25.0252, %bb.an ], [ %.sroa.25.0252, %bb.ag ], [ %.sroa.25.0252, %bb.ao ] ; 2 uses
  %.sroa.14.7 = phi ptr [ %.sroa.14.0253, %bb.ae ], [ %i.ds, %bb.z ], [ %i.ev, %bb.ai ], [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.fv, %bb.aq ], [ %i.fj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134 ], [ %.sroa.14.0253, %bb.af ], [ %i.gj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144 ], [ %.sroa.14.0253, %bb.an ], [ %.sroa.14.0253, %bb.ag ], [ %.sroa.14.0253, %bb.ao ] ; 2 uses
  %.sroa.0164.7 = phi ptr [ %.sroa.0164.0254, %bb.ae ], [ %.sroa.0164.0254, %bb.z ], [ %.sroa.0164.0254, %bb.ai ], [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0164.0254, %bb.aq ], [ %i.fg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134 ], [ %.sroa.0164.0254, %bb.af ], [ %i.gg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144 ], [ %.sroa.0164.0254, %bb.an ], [ %.sroa.0164.0254, %bb.ag ], [ %.sroa.0164.0254, %bb.ao ] ; 2 uses
  %i.gl = add nuw i64 %.084255, 1                 ; 2 uses
  %exitcond277.not = icmp eq i64 %i.gl, %i.d
  br i1 %exitcond277.not, label %._crit_edge.loopexit, label %.lr.ph256, !llvm.loop !57

bb.av:                                            ; preds = %._crit_edge
  %i.gm = icmp sgt i64 %i.dg, 0
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPiET0_T_S9_S8_.exit

end_hunk_1
begin_hunk_2_@_ZN3igl24resolve_duplicated_facesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE:bb.a
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22 ; 3 uses
  %i.aj = icmp eq i32 %i.ag, %i.ai
  %.pre281 = load i64, ptr %i.c, align 8, !tbaa !53 ; 5 uses
  br i1 %i.aj, label %bb.j, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.ah, i64 %.pre281
  %.pre282 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22 ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %.pre281
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22 ; 2 uses
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.idx = shl i64 %i.ak, 3
  %i.aq = getelementptr i8, ptr %i.af, i64 %.idx
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %.idx198 = shl i64 %.pre281, 3
  %i.as = getelementptr i8, ptr %i.ah, i64 %.idx198
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.lr.ph._crit_edge, %bb.k, %bb.j
  %i.av = phi i32 [ %.pre282, %.lr.ph._crit_edge ], [ %i.am, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %i.aw = icmp eq i32 %i.ag, %i.av
  br i1 %i.aw, label %bb.m, label %._crit_edge283

._crit_edge283:                                   ; preds = %bb.l
  %.pre284 = shl i64 %.pre281, 3
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.af, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22
  %.idx199 = shl i64 %.pre281, 3                  ; 3 uses
  %i.ba = getelementptr i8, ptr %i.ah, i64 %.idx199
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.idx200 = shl i64 %i.ax, 3
  %i.bd = getelementptr i8, ptr %i.af, i64 %.idx200
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.bf = icmp eq i32 %i.be, %i.ai
  br i1 %i.bf, label %bb.r, label %bb.o

bb.o:                                             ; preds = %._crit_edge283, %bb.n, %bb.m
  %.idx201.pre-phi = phi i64 [ %.pre284, %._crit_edge283 ], [ %.idx199, %bb.n ], [ %.idx199, %bb.m ]
  %i.bg = getelementptr i8, ptr %i.ah, i64 %.idx201.pre-phi
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = icmp eq i32 %i.ag, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.af, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = icmp eq i32 %i.bl, %i.ai
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.idx202 = shl i64 %i.bj, 3
  %i.bn = getelementptr i8, ptr %i.af, i64 %.idx202
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = icmp eq i32 %i.bo, %i.av
  %i.bq = select i1 %i.bp, i32 1, i32 -1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.n, %bb.k
  %i.br = phi i32 [ 1, %bb.n ], [ 1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.o ], [ %i.bq, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ad ; 4 uses
  %i.bt = add nuw i64 %.083247, 1                 ; 3 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = mul nsw i32 %i.br, %i.bu                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !24
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !27 ; 4 uses
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 6 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.cf, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc120 unwind label %.loopexit.split-lp215

.noexc120:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.cg = ashr exact i64 %i.ce, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 2305843009213693951)
  %i.ck = select i1 %i.ci, i64 2305843009213693951, i64 %i.cj ; 3 uses
  %.not.i.i.i.i119 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i119)
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #18
          to label %.noexc121 unwind label %.loopexit214 ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store i32 %i.bv, ptr %i.cn, align 4, !tbaa !22
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.v:                                             ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.cb, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.v, %.noexc121
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !21
  %.pre279 = load ptr, ptr %5, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.cq = phi ptr [ %.pre279, %bb.w ], [ %i.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  %i.cr = phi ptr [ %.pre, %bb.w ], [ %i.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.cm, ptr %i.bs, align 8, !tbaa !27
  store ptr %i.cp, ptr %i.bw, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cs, ptr %i.by, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.s
  %i.ct = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.s ]
  %i.cu = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.s ]
  %i.cv = load ptr, ptr %7, align 8, !tbaa !21
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ad ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.cy = add nsw i32 %i.cx, %i.br
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !22
  %i.cz = load ptr, ptr %8, align 8, !tbaa !21
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ad ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !22
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !22
  %exitcond.not = icmp eq i64 %i.bt, %i.b
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !74

.loopexit214:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.loopexit.split-lp215:                            ; preds = %bb.u
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %.body116

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dd = ptrtoint ptr %.sroa.14.7 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.25.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.25.7, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.dd, %._crit_edge.loopexit ]
  %.sroa.0164.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0164.7, %._crit_edge.loopexit ] ; 8 uses
  %i.de = ptrtoint ptr %.sroa.0164.0.lcssa to i64 ; 3 uses
  %i.df = sub i64 %.sroa.14.0.lcssa, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 7 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.dg, i64 noundef 1)
          to label %bb.av unwind label %bb.bb

.lr.ph256:                                        ; preds = %.preheader, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.084255 = phi i64 [ %i.gl, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ 0, %.preheader ] ; 6 uses
  %.sroa.0164.0254 = phi ptr [ %.sroa.0164.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 26 uses
  %.sroa.14.0253 = phi ptr [ %.sroa.14.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 23 uses
  %.sroa.25.0252 = phi ptr [ %.sroa.25.7, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %.preheader ] ; 11 uses
  %i.dh = load ptr, ptr %8, align 8, !tbaa !21
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %.084255
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22
  %i.dk = icmp eq i32 %i.dj, 1
  br i1 %i.dk, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %.lr.ph256
  %i.dl = load ptr, ptr %6, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.084255
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !27
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !22
  %i.dp = call i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %i.dq = add nsw i32 %i.dp, -1
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %.not.i.i122 = icmp eq ptr %.sroa.14.0253, %.sroa.25.0252
  br i1 %.not.i.i122, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dr, ptr %.sroa.14.0253, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.14.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aa:                                            ; preds = %bb.y
  %i.dt = ptrtoint ptr %.sroa.14.0253 to i64
  %i.du = ptrtoint ptr %.sroa.0164.0254 to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.ab, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc126 unwind label %.loopexit.split-lp210

.noexc126:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i123 = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i123, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i.i.i124 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i124)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #18
          to label %.noexc127 unwind label %.loopexit209 ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i64 %i.dr, ptr %i.ee, align 8, !tbaa !30
  %i.ef = icmp sgt i64 %i.dv, 0
  br i1 %i.ef, label %bb.ac, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %.sroa.0164.0254, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %.noexc127
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.not.i17.i.i.i125 = icmp eq ptr %.sroa.0164.0254, null
  br i1 %.not.i17.i.i.i125, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0254, i64 noundef %i.dv) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit209:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp210:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ae:                                            ; preds = %.lr.ph256
  %i.ei = load ptr, ptr %7, align 8, !tbaa !21
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %.084255
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !22
  switch i32 %i.ek, label %_ZNSt6vectorImSaImEE9push_backEOm.exit [
    i32 1, label %bb.af
    i32 -1, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae
  %i.el = load ptr, ptr %6, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %.084255 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !31 ; 2 uses
  %.not197250 = icmp eq ptr %i.en, %i.ep
  br i1 %.not197250, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge

bb.ag:                                            ; preds = %.critedge
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0159.0251, i64 4 ; 2 uses
  %.not197 = icmp eq ptr %i.eq, %i.ep
  br i1 %.not197, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ag
  %.sroa.0159.0251 = phi ptr [ %i.eq, %bb.ag ], [ %i.en, %bb.af ] ; 2 uses
  %i.er = load i32, ptr %.sroa.0159.0251, align 4, !tbaa !22 ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.et = add nsw i32 %i.er, -1
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %.not.i.i128 = icmp eq ptr %.sroa.14.0253, %.sroa.25.0252
  br i1 %.not.i.i128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.eu, ptr %.sroa.14.0253, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.14.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ew = ptrtoint ptr %.sroa.14.0253 to i64
  %i.ex = ptrtoint ptr %.sroa.0164.0254 to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 6 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.ak, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc135 unwind label %.loopexit.split-lp205

.noexc135:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129: ; preds = %bb.aj
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i130 = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i.i130, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 1152921504606846975)
  %i.fe = select i1 %i.fc, i64 1152921504606846975, i64 %i.fd ; 3 uses
  %.not.i.i.i.i131 = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i.i131)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #18
          to label %.noexc136 unwind label %.loopexit204 ; 4 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store i64 %i.eu, ptr %i.fh, align 8, !tbaa !30
  %i.fi = icmp sgt i64 %i.ey, 0
  br i1 %i.fi, label %bb.al, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132

bb.al:                                            ; preds = %.noexc136
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %.sroa.0164.0254, i64 %i.ey, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132: ; preds = %bb.al, %.noexc136
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i17.i.i.i133 = icmp eq ptr %.sroa.0164.0254, null
  br i1 %.not.i17.i.i.i133, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0254, i64 noundef %i.ey) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134: ; preds = %bb.am, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i132
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit204:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i129
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp205:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp207 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.an:                                            ; preds = %bb.ae
  %i.fl = load ptr, ptr %6, align 8, !tbaa !14
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %.084255 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !31 ; 2 uses
  %.not248 = icmp eq ptr %i.fn, %i.fp
  br i1 %.not248, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge105

bb.ao:                                            ; preds = %.critedge105
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0153.0249, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fq, %i.fp
  br i1 %.not, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.critedge105

.critedge105:                                     ; preds = %bb.an, %bb.ao
  %.sroa.0153.0249 = phi ptr [ %i.fq, %bb.ao ], [ %i.fn, %bb.an ] ; 2 uses
  %i.fr = load i32, ptr %.sroa.0153.0249, align 4, !tbaa !22 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  br i1 %i.fs, label %bb.ao, label %bb.ap

bb.ap:                                            ; preds = %.critedge105
  %i.ft = xor i32 %i.fr, -1
  %i.fu = zext nneg i32 %i.ft to i64              ; 2 uses
  %.not.i.i138 = icmp eq ptr %.sroa.14.0253, %.sroa.25.0252
  br i1 %.not.i.i138, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.fu, ptr %.sroa.14.0253, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.14.0253, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fw = ptrtoint ptr %.sroa.14.0253 to i64
  %i.fx = ptrtoint ptr %.sroa.0164.0254 to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 6 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %bb.as, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
          to label %.noexc145 unwind label %.loopexit.split-lp

.noexc145:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139: ; preds = %bb.ar
  %i.ga = ashr exact i64 %i.fy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i140 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i140, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 1152921504606846975)
  %i.ge = select i1 %i.gc, i64 1152921504606846975, i64 %i.gd ; 3 uses
  %.not.i.i.i.i141 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i141)
  %i.gf = shl nuw nsw i64 %i.ge, 3
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #18
          to label %.noexc146 unwind label %.loopexit ; 4 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  store i64 %i.fu, ptr %i.gh, align 8, !tbaa !30
  %i.gi = icmp sgt i64 %i.fy, 0
  br i1 %i.gi, label %bb.at, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142

bb.at:                                            ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %.sroa.0164.0254, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142: ; preds = %bb.at, %.noexc146
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.not.i17.i.i.i143 = icmp eq ptr %.sroa.0164.0254, null
  br i1 %.not.i17.i.i.i143, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0254, i64 noundef %i.fy) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144: ; preds = %bb.au, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i142
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ge
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i139
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ao, %bb.ag, %bb.an, %bb.af, %bb.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144, %bb.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134, %bb.ai, %bb.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.sroa.25.7 = phi ptr [ %.sroa.25.0252, %bb.ae ], [ %.sroa.25.0252, %bb.z ], [ %.sroa.25.0252, %bb.ai ], [ %i.eh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.25.0252, %bb.aq ], [ %i.fk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134 ], [ %.sroa.25.0252, %bb.af ], [ %i.gk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144 ], [ %.sroa.25.0252, %bb.an ], [ %.sroa.25.0252, %bb.ag ], [ %.sroa.25.0252, %bb.ao ] ; 2 uses
  %.sroa.14.7 = phi ptr [ %.sroa.14.0253, %bb.ae ], [ %i.ds, %bb.z ], [ %i.ev, %bb.ai ], [ %i.eg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.fv, %bb.aq ], [ %i.fj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134 ], [ %.sroa.14.0253, %bb.af ], [ %i.gj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144 ], [ %.sroa.14.0253, %bb.an ], [ %.sroa.14.0253, %bb.ag ], [ %.sroa.14.0253, %bb.ao ] ; 2 uses
  %.sroa.0164.7 = phi ptr [ %.sroa.0164.0254, %bb.ae ], [ %.sroa.0164.0254, %bb.z ], [ %.sroa.0164.0254, %bb.ai ], [ %i.ed, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0164.0254, %bb.aq ], [ %i.fg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i134 ], [ %.sroa.0164.0254, %bb.af ], [ %i.gg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i144 ], [ %.sroa.0164.0254, %bb.an ], [ %.sroa.0164.0254, %bb.ag ], [ %.sroa.0164.0254, %bb.ao ] ; 2 uses
  %i.gl = add nuw i64 %.084255, 1                 ; 2 uses
  %exitcond277.not = icmp eq i64 %i.gl, %i.d
  br i1 %exitcond277.not, label %._crit_edge.loopexit, label %.lr.ph256, !llvm.loop !75

bb.av:                                            ; preds = %._crit_edge
  %i.gm = icmp sgt i64 %i.dg, 0
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPlET0_T_S9_S8_.exit

end_hunk_2
