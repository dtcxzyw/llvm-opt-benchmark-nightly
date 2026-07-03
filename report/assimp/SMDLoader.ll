inline.NumInlined: 1538
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.eq, ptr %i.dy, align 8
  store ptr %i.et, ptr %i.dz, align 8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.eu, ptr %i.eb, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.r, %bb.l, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.ev = add i32 %.0280371, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0256.0370, i64 200 ; 2 uses
  %.not281 = icmp eq ptr %i.ew, %i.bc
  br i1 %.not281, label %.preheader317.loopexit, label %.lr.ph373

._crit_edge415:                                   ; preds = %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit, %.preheader317
  %i.ex = load i64, ptr %i.ai, align 16           ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %._crit_edge415
  %.idx.i.i = mul i64 %i.ex, 24
  %.add282 = add i64 %.idx.i.i, 8                 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %.idx = phi i64 [ %.add, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %.add282, %.preheader.preheader.i.i ] ; 2 uses
  %.add = add nsw i64 %.idx, -24                  ; 3 uses
  %.ptr283 = getelementptr inbounds i8, ptr %i.ai, i64 %.add
  %i.ez = load ptr, ptr %.ptr283, align 8         ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.preheader.i.i
  %.ptr = getelementptr inbounds i8, ptr %i.ai, i64 %.idx
  %i.fa = getelementptr inbounds i8, ptr %.ptr, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.w, %.preheader.i.i
  %i.ff = icmp eq i64 %.add, 8
  br i1 %i.ff, label %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit, label %.preheader.i.i

_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %._crit_edge415
  %.pre-phi = phi i64 [ 8, %._crit_edge415 ], [ %.add282, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ]
  tail call void @_ZdaPvm(ptr noundef nonnull %i.ai, i64 noundef %.pre-phi) #30
  ret void

bb.x:                                             ; preds = %.lr.ph414, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit
  %indvars.iv450 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next451, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  %i.fg = phi ptr [ %i.cc, %.lr.ph414 ], [ %i.aat, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit ]
  %i.fh = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #29
          to label %bb.y unwind label %bb.ac      ; 9 uses

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 0, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i32 0, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 1272
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 1312
  store ptr null, ptr %i.fn, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.fk, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.fl, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, i8 0, i64 36, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv450 ; 22 uses
  store ptr %i.fh, ptr %i.fq, align 8
  store i32 4, ptr %i.fh, align 8
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.ptr284.ptr, i64 %indvars.iv450 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = load ptr, ptr %i.fr, align 8
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 2
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = mul i32 %i.fz, 3
  %i.gb = load ptr, ptr %i.fq, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i32 %i.ga, ptr %i.gc, align 4
  %i.gd = load ptr, ptr %i.fs, align 8
  %i.ge = load ptr, ptr %i.fr, align 8
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = lshr exact i64 %i.gh, 2
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = load ptr, ptr %i.fq, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 %i.gj, ptr %i.gl, align 8
  %i.gm = load ptr, ptr %i.fq, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 232
  %i.go = trunc nuw i64 %indvars.iv450 to i32
  store i32 %i.go, ptr %i.gn, align 8
  %i.gp = load ptr, ptr %i.cg, align 8            ; 4 uses
  %i.gq = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = sdiv exact i64 %i.gt, 144               ; 4 uses
  %i.gv = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gu, i64 24) ; 2 uses
  %i.gw = extractvalue { i64, i1 } %i.gv, 1
  %i.gx = extractvalue { i64, i1 } %i.gv, 0
  %i.gy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gx, i64 8) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  %i.ha = or i1 %i.gw, %i.gz
  %i.hb = extractvalue { i64, i1 } %i.gy, 0
  %i.hc = select i1 %i.ha, i64 -1, i64 %i.hb
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #29
          to label %bb.z unwind label %bb.ad      ; 10 uses

bb.z:                                             ; preds = %bb.y
  store i64 %i.gu, ptr %i.hd, align 16
  %.ptr291.ptr = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 12 uses
  %i.he = icmp eq ptr %i.gp, %i.gq
  br i1 %i.he, label %._crit_edge377, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hf = getelementptr inbounds [24 x i8], ptr %.ptr291.ptr, i64 %i.gu
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %i.hg = phi ptr [ %.ptr291.ptr, %bb.aa ], [ %i.hh, %bb.ab ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.hf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i8 0, i64 24, i1 false)
  br i1 %i.hi, label %.lr.ph376, label %bb.ab

._crit_edge377:                                   ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit, %bb.z
  %i.hj = load ptr, ptr %i.fq, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i32, ptr %i.hk, align 8            ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 5 uses
  %i.hn = shl nuw nsw i64 %i.hm, 4
  %i.ho = or disjoint i64 %i.hn, 8
  %i.hp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ho) #29
          to label %bb.ag unwind label %bb.am     ; 2 uses

bb.ac:                                            ; preds = %bb.x
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ad:                                            ; preds = %bb.y
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.lr.ph376:                                        ; preds = %bb.ab, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit
  %.pre460470 = phi ptr [ %.pre460471, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gq, %bb.ab ] ; 2 uses
  %.pre459467 = phi ptr [ %.pre459468, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gp, %bb.ab ] ; 2 uses
  %i.hs = phi ptr [ %i.ji, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gq, %bb.ab ]
  %i.ht = phi ptr [ %i.jj, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gp, %bb.ab ]
  %i.hu = phi i64 [ %i.jp, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gu, %bb.ab ]
  %i.hv = phi i64 [ %i.jl, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ 0, %bb.ab ]
  %.0148374 = phi i32 [ %i.jk, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ 0, %bb.ab ]
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.hv ; 4 uses
  %i.hx = load ptr, ptr %i.fq, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = zext i32 %i.hz to i64
  %i.ib = udiv i64 %i.ia, %i.hu                   ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = load ptr, ptr %i.hw, align 8            ; 7 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64               ; 4 uses
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = ashr exact i64 %i.ih, 3
  %i.ij = icmp ult i64 %i.ii, %i.ib
  br i1 %i.ij, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.lr.ph376
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8            ; 3 uses
  %i.im = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.in = sub i64 %i.im, %i.ig
  %i.io = shl nuw nsw i64 %i.ib, 3
  %i.ip = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #29
          to label %.noexc197 unwind label %bb.af ; 7 uses

.noexc197:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.ie, %i.il
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc197
  %i.iq = ptrtoaddr ptr %i.ip to i64
  %i.ir = add i64 %i.im, -8
  %i.is = sub i64 %i.ir, %i.ig                    ; 2 uses
  %i.it = lshr i64 %i.is, 3
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check608 = icmp ult i64 %i.is, 24
  %i.iv = sub i64 %i.ig, %i.iq
  %diff.check606 = icmp ugt i64 %i.iv, -32
  %or.cond = or i1 %min.iters.check608, %diff.check606
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader627, label %vector.ph609

vector.ph609:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec611 = and i64 %i.iu, 4611686018427387900  ; 3 uses
  %i.iw = shl i64 %n.vec611, 3                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ip, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ie, i64 %i.iw
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph609
  %index613 = phi i64 [ 0, %vector.ph609 ], [ %index.next618, %vector.body612 ] ; 2 uses
  %i.iz = shl i64 %index613, 3                    ; 2 uses
  %next.gep614 = getelementptr i8, ptr %i.ip, i64 %i.iz ; 2 uses
  %next.gep615 = getelementptr i8, ptr %i.ie, i64 %i.iz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.ja = getelementptr i8, ptr %next.gep615, i64 16
  %wide.load616 = load <2 x i64>, ptr %next.gep615, align 4, !alias.scope !23, !noalias !20
  %wide.load617 = load <2 x i64>, ptr %i.ja, align 4, !alias.scope !23, !noalias !20
  %i.jb = getelementptr i8, ptr %next.gep614, i64 16
  store <2 x i64> %wide.load616, ptr %next.gep614, align 4, !alias.scope !20, !noalias !23
  store <2 x i64> %wide.load617, ptr %i.jb, align 4, !alias.scope !20, !noalias !23
  %index.next618 = add nuw i64 %index613, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next618, %n.vec611
  br i1 %i.jc, label %middle.block619, label %vector.body612, !llvm.loop !25

middle.block619:                                  ; preds = %vector.body612
  %cmp.n620 = icmp eq i64 %i.iu, %n.vec611
  br i1 %cmp.n620, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader627

.lr.ph.i.i.i.i.preheader627:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block619
  %.012.i.i.i.i.ph = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.preheader ], [ %i.ix, %middle.block619 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.preheader ], [ %i.iy, %middle.block619 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader627, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader627 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader627 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jd = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !23, !noalias !20
  store i64 %i.jd, ptr %.012.i.i.i.i, align 4, !alias.scope !20, !noalias !23
  %i.je = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i194 = icmp eq ptr %i.je, %i.il
  br i1 %.not.i.i.i.i194, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block619, %.noexc197
  %.not.i8.i195 = icmp eq ptr %i.ie, null
  br i1 %.not.i8.i195, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ih) #30
  %.pre459.pre = load ptr, ptr %i.cg, align 8
  %.pre460.pre = load ptr, ptr %i.cf, align 8
  br label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.ae, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.pre460 = phi ptr [ %.pre460.pre, %bb.ae ], [ %.pre460470, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ] ; 2 uses
  %.pre459 = phi ptr [ %.pre459.pre, %bb.ae ], [ %.pre459467, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ] ; 2 uses
  store ptr %i.ip, ptr %i.hw, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.in
  store ptr %i.jg, ptr %i.ik, align 8
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ib
  store ptr %i.jh, ptr %i.ic, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.lr.ph376
  %.pre460471 = phi ptr [ %.pre460, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.pre460470, %.lr.ph376 ]
  %.pre459468 = phi ptr [ %.pre459, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.pre459467, %.lr.ph376 ]
  %i.ji = phi ptr [ %.pre460, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.hs, %.lr.ph376 ] ; 2 uses
  %i.jj = phi ptr [ %.pre459, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ht, %.lr.ph376 ] ; 2 uses
  %i.jk = add i32 %.0148374, 1                    ; 2 uses
  %i.jl = zext i32 %i.jk to i64                   ; 2 uses
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = ptrtoint ptr %i.ji to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = sdiv exact i64 %i.jo, 144               ; 2 uses
  %i.jq = icmp ugt i64 %i.jp, %i.jl
  br i1 %i.jq, label %.lr.ph376, label %._crit_edge377, !llvm.loop !29

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %._crit_edge377
  store i64 %i.hm, ptr %i.hp, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.jt = icmp eq i32 %i.hl, 0
  br i1 %i.jt, label %.loopexit315, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.hm
  %i.jv = add nuw nsw i64 %i.hm, 1152921504606846975
  %i.jw = and i64 %i.jv, 1152921504606846975
  %xtraiter = and i64 %i.hm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ah, %.prol.preheader
  %i.jx = phi ptr [ %i.jz, %.prol.preheader ], [ %i.js, %bb.ah ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ah ]
  store i32 0, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr null, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ah
  %.unr = phi ptr [ %i.js, %bb.ah ], [ %i.jz, %.prol.preheader ]
  %i.ka = icmp samesign ult i64 %i.jw, 7
  br i1 %i.ka, label %.loopexit315, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.kb = phi ptr [ %i.kr, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr null, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i32 0, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr null, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  store i32 0, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  store ptr null, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  store i32 0, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  store i32 0, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  store ptr null, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  store i32 0, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 88
  store ptr null, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  store i32 0, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 104
  store ptr null, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  store i32 0, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 120
  store ptr null, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 128 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.ju
  br i1 %i.ks, label %.loopexit315, label %.new

.loopexit315:                                     ; preds = %.prol.loopexit, %.new, %bb.ag
  %i.kt = load ptr, ptr %i.fq, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 208
  store ptr %i.js, ptr %i.ku, align 8
  %i.kv = load ptr, ptr %i.fq, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw nsw i64 %i.ky, 12               ; 2 uses
  %i.la = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kz) #29
          to label %bb.ai unwind label %bb.an     ; 3 uses

bb.ai:                                            ; preds = %.loopexit315
  %i.lb = icmp eq i32 %i.kx, 0
  br i1 %i.lb, label %.loopexit314, label %.loopexit314.loopexit

.loopexit314.loopexit:                            ; preds = %bb.ai
  %i.lc = add nsw i64 %i.kz, -12                  ; 2 uses
  %i.ld = urem i64 %i.lc, 12
  %i.le = sub nuw nsw i64 %i.lc, %i.ld
  %i.lf = add nsw i64 %i.le, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.la, i8 0, i64 %i.lf, i1 false)
  br label %.loopexit314

.loopexit314:                                     ; preds = %.loopexit314.loopexit, %bb.ai
  %i.lg = load ptr, ptr %i.fq, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store ptr %i.la, ptr %i.lh, align 8
  %i.li = load ptr, ptr %i.fq, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load i32, ptr %i.lj, align 4            ; 2 uses
  %i.ll = zext i32 %i.lk to i64
  %i.lm = mul nuw nsw i64 %i.ll, 12               ; 2 uses
  %i.ln = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lm) #29
          to label %bb.aj unwind label %bb.ao     ; 3 uses

bb.aj:                                            ; preds = %.loopexit314
  %i.lo = icmp eq i32 %i.lk, 0
  br i1 %i.lo, label %.loopexit313, label %.loopexit313.loopexit

.loopexit313.loopexit:                            ; preds = %bb.aj
  %i.lp = add nsw i64 %i.lm, -12                  ; 2 uses
  %i.lq = urem i64 %i.lp, 12
  %i.lr = sub nuw nsw i64 %i.lp, %i.lq
  %i.ls = add nsw i64 %i.lr, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ln, i8 0, i64 %i.ls, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %bb.av ], [ 0, %bb.aq ] ; 5 uses
  %.1151397 = phi ptr [ %.2152, %bb.av ], [ %.0150, %bb.aq ] ; 5 uses
  %.0153396 = phi ptr [ %i.pl, %bb.av ], [ %i.ln, %bb.aq ] ; 4 uses
  %.0154395 = phi ptr [ %i.pr, %bb.av ], [ %i.la, %bb.aq ] ; 4 uses
  %.1394 = phi i32 [ %i.vu, %bb.av ], [ 0, %bb.aq ]
  %i.oq = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #29
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.lr.ph400
  %i.or = load ptr, ptr %i.fq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 208
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv444
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %i.oq, ptr %i.ov, align 8
  %i.ow = load ptr, ptr %i.fq, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 208
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %indvars.iv444
  store i32 3, ptr %i.oz, align 8
  %i.pa = load ptr, ptr %i.fr, align 8
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv444
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = zext i32 %i.pc to i64
  %i.pe = load ptr, ptr %i.ao, align 8
  %i.pf = getelementptr inbounds nuw [200 x i8], ptr %i.pe, i64 %i.pd ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.0153396, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0153396, ptr noundef nonnull align 8 dereferenceable(12) %i.pg, i64 12, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 72
  %i.pj = getelementptr inbounds nuw i8, ptr %.0153396, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ph, ptr noundef nonnull align 8 dereferenceable(12) %i.pi, i64 12, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 136
  %i.pl = getelementptr inbounds nuw i8, ptr %.0153396, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pj, ptr noundef nonnull align 8 dereferenceable(12) %i.pk, i64 12, i1 false)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 20
  %i.pn = getelementptr inbounds nuw i8, ptr %.0154395, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0154395, ptr noundef nonnull align 4 dereferenceable(12) %i.pm, i64 12, i1 false)
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 84
  %i.pp = getelementptr inbounds nuw i8, ptr %.0154395, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pn, ptr noundef nonnull align 4 dereferenceable(12) %i.po, i64 12, i1 false)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pf, i64 148
  %i.pr = getelementptr inbounds nuw i8, ptr %.0154395, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pp, ptr noundef nonnull align 4 dereferenceable(12) %i.pq, i64 12, i1 false)
  %.not169 = icmp eq ptr %.1151397, null
  br i1 %.not169, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %.1151397, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1151397, ptr noundef nonnull align 8 dereferenceable(12) %i.ps, i64 12, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 96
  %i.pv = getelementptr inbounds nuw i8, ptr %.1151397, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pt, ptr noundef nonnull align 8 dereferenceable(12) %i.pu, i64 12, i1 false)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pf, i64 160
  %i.px = getelementptr inbounds nuw i8, ptr %.1151397, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pv, ptr noundef nonnull align 8 dereferenceable(12) %i.pw, i64 12, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph400
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.2152 = phi ptr [ %i.px, %bb.as ], [ null, %bb.ar ]
  br label %.preheader

.preheader:                                       ; preds = %bb.au, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv441 = phi i64 [ 0, %bb.au ], [ %indvars.iv.next442, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 3 uses
  %.2392 = phi i32 [ %.1394, %bb.au ], [ %i.vu, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit ] ; 6 uses
  %i.pz = getelementptr inbounds nuw [64 x i8], ptr %i.pg, i64 %indvars.iv441 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 48 ; 3 uses
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = load ptr, ptr %i.qa, align 8            ; 2 uses
  %.not420 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not420, label %._crit_edge383.thread, label %.lr.ph382

.lr.ph382:                                        ; preds = %.preheader
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 36
  br label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %i.qf = load ptr, ptr %i.fq, align 8            ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load i32, ptr %i.qg, align 8
  %i.qi = zext i32 %i.qh to i64
  %i.qj = icmp samesign ult i64 %indvars.iv.next445, %i.qi
  br i1 %i.qj, label %.lr.ph400, label %.preheader311, !llvm.loop !33

._crit_edge383:                                   ; preds = %bb.bf
  %i.qk = fcmp olt float %.1146, 9.750000e-01
  br i1 %i.qk, label %._crit_edge383.thread, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %.lr.ph382, %bb.bf
  %i.ql = phi ptr [ %i.qd, %.lr.ph382 ], [ %i.sv, %bb.bf ]
  %i.qm = phi i64 [ 0, %.lr.ph382 ], [ %i.st, %bb.bf ]
  %.0144381 = phi i32 [ 0, %.lr.ph382 ], [ %i.ss, %bb.bf ]
  %.0145380 = phi float [ 0.000000e+00, %.lr.ph382 ], [ %.1146, %bb.bf ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qm ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4            ; 2 uses
  %i.qp = zext i32 %i.qo to i64                   ; 2 uses
  %i.qq = load ptr, ptr %i.cg, align 8
  %i.qr = load ptr, ptr %i.cf, align 8
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = sdiv exact i64 %i.qu, 144
  %.not173 = icmp ugt i64 %i.qv, %i.qp
  br i1 %.not173, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.qw = load i32, ptr %i.qe, align 4
  %i.qx = icmp eq i32 %i.qo, %i.qw
  br i1 %i.qx, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.qy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qy, ptr noundef nonnull @.str.10)
          to label %bb.bf unwind label %.loopexit

.loopexit:                                        ; preds = %bb.ay, %bb.az, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ba:                                            ; preds = %bb.ax
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.qp ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 4 uses
  %i.rc = load ptr, ptr %i.rb, align 8            ; 6 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8
  %.not.i198 = icmp eq ptr %i.rc, %i.re
  br i1 %.not.i198, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %.2392, ptr %i.rc, align 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.rg = load float, ptr %i.ra, align 4
  store float %i.rg, ptr %i.rf, align 4
  %i.rh = load ptr, ptr %i.rb, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %i.ri, ptr %i.rb, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.rj = load ptr, ptr %i.qz, align 8            ; 7 uses
  %i.rk = ptrtoint ptr %i.rc to i64               ; 2 uses
  %i.rl = ptrtoint ptr %i.rj to i64               ; 3 uses
  %i.rm = sub i64 %i.rk, %i.rl                    ; 4 uses
  %i.rn = icmp eq i64 %i.rm, 9223372036854775800
  br i1 %i.rn, label %bb.bd, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc202 unwind label %.loopexit.split-lp

.noexc202:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.ro = ashr exact i64 %i.rm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i199 = tail call i64 @llvm.umax.i64(i64 %i.ro, i64 1)
  %i.rp = add nsw i64 %.sroa.speculated.i.i.i199, %i.ro ; 2 uses
  %i.rq = icmp ult i64 %i.rp, %i.ro
  %i.rr = tail call i64 @llvm.umin.i64(i64 %i.rp, i64 1152921504606846975)
  %i.rs = select i1 %i.rq, i64 1152921504606846975, i64 %i.rr ; 3 uses
  %.not.i.i.i200 = icmp ne i64 %i.rs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i200)
  %i.rt = shl nuw nsw i64 %i.rs, 3
  %i.ru = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rt) #29
          to label %.noexc203 unwind label %.loopexit ; 8 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rm ; 2 uses
  store i32 %.2392, ptr %i.rv, align 4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.rx = load float, ptr %i.ra, align 4
  store float %i.rx, ptr %i.rw, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.rj, %i.rc
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc203
  %i.ry = ptrtoaddr ptr %i.ru to i64
  %i.rz = sub i64 %i.rk, %i.rl
  %i.sa = add i64 %i.rz, -8                       ; 2 uses
  %i.sb = lshr i64 %i.sa, 3
  %i.sc = add nuw nsw i64 %i.sb, 1                ; 2 uses
  %min.iters.check590 = icmp ult i64 %i.sa, 24
  %i.sd = sub i64 %i.rl, %i.ry
  %diff.check588 = icmp ugt i64 %i.sd, -32
  %or.cond623 = or i1 %min.iters.check590, %diff.check588
  br i1 %or.cond623, label %.lr.ph.i.i.i.i.i.preheader625, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec593 = and i64 %i.sc, 4611686018427387900  ; 3 uses
  %i.se = shl i64 %n.vec593, 3                    ; 2 uses
  %i.sf = getelementptr i8, ptr %i.ru, i64 %i.se  ; 2 uses
  %i.sg = getelementptr i8, ptr %i.rj, i64 %i.se
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph591
  %index595 = phi i64 [ 0, %vector.ph591 ], [ %index.next600, %vector.body594 ] ; 2 uses
  %i.sh = shl i64 %index595, 3                    ; 2 uses
  %next.gep596 = getelementptr i8, ptr %i.ru, i64 %i.sh ; 2 uses
  %next.gep597 = getelementptr i8, ptr %i.rj, i64 %i.sh ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.si = getelementptr i8, ptr %next.gep597, i64 16
  %wide.load598 = load <2 x i64>, ptr %next.gep597, align 4, !alias.scope !37, !noalias !34
  %wide.load599 = load <2 x i64>, ptr %i.si, align 4, !alias.scope !37, !noalias !34
  %i.sj = getelementptr i8, ptr %next.gep596, i64 16
  store <2 x i64> %wide.load598, ptr %next.gep596, align 4, !alias.scope !34, !noalias !37
  store <2 x i64> %wide.load599, ptr %i.sj, align 4, !alias.scope !34, !noalias !37
  %index.next600 = add nuw i64 %index595, 4       ; 2 uses
  %i.sk = icmp eq i64 %index.next600, %n.vec593
  br i1 %i.sk, label %middle.block601, label %vector.body594, !llvm.loop !39

middle.block601:                                  ; preds = %vector.body594
  %cmp.n602 = icmp eq i64 %i.sc, %n.vec593
  br i1 %cmp.n602, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader625

.lr.ph.i.i.i.i.i.preheader625:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block601
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ru, %.lr.ph.i.i.i.i.i.preheader ], [ %i.sf, %middle.block601 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.sg, %middle.block601 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader625, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.sn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader625 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.sm, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader625 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.sl = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !37, !noalias !34
  store i64 %i.sl, ptr %.012.i.i.i.i.i, align 4, !alias.scope !34, !noalias !37
  %i.sm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i201 = icmp eq ptr %i.sm, %i.rc
  br i1 %.not.i.i.i.i.i201, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !40

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block601, %.noexc203
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ru, %.noexc203 ], [ %i.sf, %middle.block601 ], [ %i.sn, %.lr.ph.i.i.i.i.i ]
  %i.so = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.rj, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rj, i64 noundef %i.rm) #30
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ru, ptr %i.qz, align 8
  store ptr %i.so, ptr %i.rb, align 8
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rs
  store ptr %i.sp, ptr %i.rd, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bb
  %i.sq = load float, ptr %i.ra, align 4
  %i.sr = fadd float %.0145380, %i.sq
  br label %bb.bf

bb.bf:                                            ; preds = %bb.az, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit
  %.1146 = phi float [ %i.sr, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRfEEERS1_DpOT_.exit ], [ %.0145380, %bb.az ] ; 3 uses
  %i.ss = add i32 %.0144381, 1                    ; 2 uses
  %i.st = zext i32 %i.ss to i64                   ; 2 uses
  %i.su = load ptr, ptr %i.qb, align 8
  %i.sv = load ptr, ptr %i.qa, align 8            ; 2 uses
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = ashr exact i64 %i.sy, 3
  %i.ta = icmp ugt i64 %i.sz, %i.st
  br i1 %i.ta, label %bb.aw, label %._crit_edge383, !llvm.loop !41

._crit_edge383.thread:                            ; preds = %.preheader, %._crit_edge383
  %.0145.lcssa534 = phi float [ %.1146, %._crit_edge383 ], [ 0.000000e+00, %.preheader ] ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pz, i64 36
  %i.tc = load i32, ptr %i.tb, align 4            ; 2 uses
  %.not170 = icmp eq i32 %i.tc, -1
  br i1 %.not170, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge383.thread
  %i.td = zext i32 %i.tc to i64                   ; 2 uses
  %i.te = load ptr, ptr %i.cg, align 8
  %i.tf = load ptr, ptr %i.cf, align 8
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = sdiv exact i64 %i.ti, 144
  %.not171 = icmp ugt i64 %i.tj, %i.td
  br i1 %.not171, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.tk, ptr noundef nonnull @.str.11)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.tl = fcmp une float %.0145.lcssa534, 0.000000e+00
  br i1 %i.tl, label %bb.bk, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.tm = fdiv nnan float 1.000000e+00, %.0145.lcssa534
  %i.tn = load ptr, ptr %i.qa, align 8            ; 2 uses
  %i.to = load ptr, ptr %i.qb, align 8            ; 2 uses
  %.not293388 = icmp eq ptr %i.tn, %i.to
  br i1 %.not293388, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %.lr.ph391

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.lr.ph391:                                        ; preds = %bb.bk, %bb.bn
  %.sroa.0240.0389 = phi ptr [ %i.ue, %bb.bn ], [ %i.tn, %bb.bk ] ; 2 uses
  %i.tq = load i32, ptr %.sroa.0240.0389, align 4
  %i.tr = zext i32 %i.tq to i64                   ; 2 uses
  %i.ts = load ptr, ptr %i.cg, align 8
  %i.tt = load ptr, ptr %i.cf, align 8
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = sdiv exact i64 %i.tw, 144
  %.not172 = icmp ugt i64 %i.tx, %i.tr
  br i1 %.not172, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph391
  %i.ty = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.tr
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -4 ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4
  %i.ud = fmul float %i.tm, %i.uc
  store float %i.ud, ptr %i.ub, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph391, %bb.bm
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0240.0389, i64 8 ; 2 uses
  %.not293 = icmp eq ptr %i.ue, %i.to
  br i1 %.not293, label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit, label %.lr.ph391

bb.bo:                                            ; preds = %bb.bg
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.td ; 4 uses
  %i.ug = fsub float 1.000000e+00, %.0145.lcssa534 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 8 ; 4 uses
  %i.ui = load ptr, ptr %i.uh, align 8            ; 6 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 16 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8
  %.not.i204 = icmp eq ptr %i.ui, %i.uk
  br i1 %.not.i204, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i32 %.2392, ptr %i.ui, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store float %i.ug, ptr %i.ul, align 4
  %i.um = load ptr, ptr %i.uh, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr %i.un, ptr %i.uh, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.uo = load ptr, ptr %i.uf, align 8            ; 7 uses
  %i.up = ptrtoint ptr %i.ui to i64               ; 2 uses
  %i.uq = ptrtoint ptr %i.uo to i64               ; 3 uses
  %i.ur = sub i64 %i.up, %i.uq                    ; 4 uses
  %i.us = icmp eq i64 %i.ur, 9223372036854775800
  br i1 %i.us, label %bb.br, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc216 unwind label %.loopexit.split-lp306

.noexc216:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205: ; preds = %bb.bq
  %i.ut = ashr exact i64 %i.ur, 3                 ; 3 uses
  %.sroa.speculated.i.i.i206 = tail call i64 @llvm.umax.i64(i64 %i.ut, i64 1)
  %i.uu = add nsw i64 %.sroa.speculated.i.i.i206, %i.ut ; 2 uses
  %i.uv = icmp ult i64 %i.uu, %i.ut
  %i.uw = tail call i64 @llvm.umin.i64(i64 %i.uu, i64 1152921504606846975)
  %i.ux = select i1 %i.uv, i64 1152921504606846975, i64 %i.uw ; 3 uses
  %.not.i.i.i207 = icmp ne i64 %i.ux, 0
  tail call void @llvm.assume(i1 %.not.i.i.i207)
  %i.uy = shl nuw nsw i64 %i.ux, 3
  %i.uz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uy) #29
          to label %.noexc217 unwind label %.loopexit305 ; 8 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.ur ; 2 uses
  store i32 %.2392, ptr %i.va, align 4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  store float %i.ug, ptr %i.vb, align 4
  %.not10.i.i.i.i.i208 = icmp eq ptr %i.uo, %i.ui
  br i1 %.not10.i.i.i.i.i208, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209.preheader

.lr.ph.i.i.i.i.i209.preheader:                    ; preds = %.noexc217
  %i.vc = ptrtoaddr ptr %i.uz to i64
  %i.vd = sub i64 %i.up, %i.uq
  %i.ve = add i64 %i.vd, -8                       ; 2 uses
  %i.vf = lshr i64 %i.ve, 3
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 2 uses
  %min.iters.check575 = icmp ult i64 %i.ve, 24
  %i.vh = sub i64 %i.uq, %i.vc
  %diff.check = icmp ugt i64 %i.vh, -32
  %or.cond624 = or i1 %min.iters.check575, %diff.check
  br i1 %or.cond624, label %.lr.ph.i.i.i.i.i209.preheader626, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph.i.i.i.i.i209.preheader
  %n.vec578 = and i64 %i.vg, 4611686018427387900  ; 3 uses
  %i.vi = shl i64 %n.vec578, 3                    ; 2 uses
  %i.vj = getelementptr i8, ptr %i.uz, i64 %i.vi  ; 2 uses
  %i.vk = getelementptr i8, ptr %i.uo, i64 %i.vi
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph576
  %index580 = phi i64 [ 0, %vector.ph576 ], [ %index.next583, %vector.body579 ] ; 2 uses
  %i.vl = shl i64 %index580, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.uz, i64 %i.vl ; 2 uses
  %next.gep581 = getelementptr i8, ptr %i.uo, i64 %i.vl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vm = getelementptr i8, ptr %next.gep581, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep581, align 4, !alias.scope !45, !noalias !42
  %wide.load582 = load <2 x i64>, ptr %i.vm, align 4, !alias.scope !45, !noalias !42
  %i.vn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !42, !noalias !45
  store <2 x i64> %wide.load582, ptr %i.vn, align 4, !alias.scope !42, !noalias !45
  %index.next583 = add nuw i64 %index580, 4       ; 2 uses
  %i.vo = icmp eq i64 %index.next583, %n.vec578
  br i1 %i.vo, label %middle.block584, label %vector.body579, !llvm.loop !47

middle.block584:                                  ; preds = %vector.body579
  %cmp.n = icmp eq i64 %i.vg, %n.vec578
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209.preheader626

.lr.ph.i.i.i.i.i209.preheader626:                 ; preds = %.lr.ph.i.i.i.i.i209.preheader, %middle.block584
  %.012.i.i.i.i.i210.ph = phi ptr [ %i.uz, %.lr.ph.i.i.i.i.i209.preheader ], [ %i.vj, %middle.block584 ]
  %.0911.i.i.i.i.i211.ph = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i209.preheader ], [ %i.vk, %middle.block584 ]
  br label %.lr.ph.i.i.i.i.i209

.lr.ph.i.i.i.i.i209:                              ; preds = %.lr.ph.i.i.i.i.i209.preheader626, %.lr.ph.i.i.i.i.i209
  %.012.i.i.i.i.i210 = phi ptr [ %i.vr, %.lr.ph.i.i.i.i.i209 ], [ %.012.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i209.preheader626 ] ; 2 uses
  %.0911.i.i.i.i.i211 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i209 ], [ %.0911.i.i.i.i.i211.ph, %.lr.ph.i.i.i.i.i209.preheader626 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.vp = load i64, ptr %.0911.i.i.i.i.i211, align 4, !alias.scope !45, !noalias !42
  store i64 %i.vp, ptr %.012.i.i.i.i.i210, align 4, !alias.scope !42, !noalias !45
  %i.vq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i211, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i210, i64 8 ; 2 uses
  %.not.i.i.i.i.i212 = icmp eq ptr %i.vq, %i.ui
  br i1 %.not.i.i.i.i.i212, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213, label %.lr.ph.i.i.i.i.i209, !llvm.loop !48

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213: ; preds = %.lr.ph.i.i.i.i.i209, %middle.block584, %.noexc217
  %.0.lcssa.i.i.i.i.i214 = phi ptr [ %i.uz, %.noexc217 ], [ %i.vj, %middle.block584 ], [ %i.vr, %.lr.ph.i.i.i.i.i209 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i214, i64 8
  %.not.i34.i.i215 = icmp eq ptr %i.uo, null
  br i1 %.not.i34.i.i215, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ur) #30
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bs, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i213
  store ptr %i.uz, ptr %i.uf, align 8
  store ptr %i.vs, ptr %i.uh, align 8
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.ux
  store ptr %i.vt, ptr %i.uj, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit

.loopexit305:                                     ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i205
  %lpad.loopexit307 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp306:                            ; preds = %bb.br
  %lpad.loopexit.split-lp308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjfEEERS1_DpOT_.exit: ; preds = %bb.bn, %bb.bk, %bb.bp, %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bj, %._crit_edge383.thread, %._crit_edge383
  %i.vu = add i32 %.2392, 1                       ; 2 uses
  %i.vv = load ptr, ptr %i.fq, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 208
  %i.vx = load ptr, ptr %i.vw, align 8
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %indvars.iv444
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %indvars.iv441
  store i32 %.2392, ptr %i.wb, align 4
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next442, 3
  br i1 %exitcond.not, label %bb.av, label %.preheader, !llvm.loop !49

._crit_edge404:                                   ; preds = %.lr.ph403
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %.loopexit310, label %bb.bt

.lr.ph403:                                        ; preds = %.lr.ph403.preheader628, %.lr.ph403
  %i.wc = phi i64 [ %i.wk, %.lr.ph403 ], [ %.ph, %.lr.ph403.preheader628 ]
  %.0131402 = phi i32 [ %i.wj, %.lr.ph403 ], [ %.0131402.ph, %.lr.ph403.preheader628 ]
  %.3401 = phi i32 [ %spec.select, %.lr.ph403 ], [ %.3401.ph, %.lr.ph403.preheader628 ]
  %i.wd = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.wc ; 2 uses
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = icmp ne ptr %i.we, %i.wg
  %i.wi = zext i1 %i.wh to i32
  %spec.select = add i32 %.3401, %i.wi            ; 3 uses
  %i.wj = add i32 %.0131402, 1                    ; 2 uses
  %i.wk = zext i32 %i.wj to i64                   ; 2 uses
  %i.wl = icmp ugt i64 %i.my, %i.wk
  br i1 %i.wl, label %.lr.ph403, label %._crit_edge404, !llvm.loop !50

bb.bt:                                            ; preds = %._crit_edge404
  %i.wm = getelementptr inbounds nuw i8, ptr %.lcssa349, i64 216
  store i32 %spec.select, ptr %i.wm, align 8
  %i.wn = load ptr, ptr %i.fq, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 216
  %i.wp = load i32, ptr %i.wo, align 8
  %i.wq = zext i32 %i.wp to i64
  %i.wr = shl nuw nsw i64 %i.wq, 3
  %i.ws = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wr) #29
          to label %bb.bu unwind label %bb.ap

bb.bu:                                            ; preds = %bb.bt
  %i.wt = load ptr, ptr %i.fq, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 224
  store ptr %i.ws, ptr %i.wu, align 8
  %i.wv = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ww = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not422 = icmp eq ptr %i.wv, %i.ww
  br i1 %.not422, label %.loopexit310, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.bu, %bb.ca
  %i.wx = phi ptr [ %i.aab, %bb.ca ], [ %i.ww, %bb.bu ]
  %i.wy = phi ptr [ %i.aac, %bb.ca ], [ %i.wv, %bb.bu ]
  %i.wz = phi i64 [ %i.aae, %bb.ca ], [ 0, %bb.bu ] ; 4 uses
  %.0130410 = phi i32 [ %i.aad, %bb.ca ], [ 0, %bb.bu ]
  %.5409 = phi i32 [ %.6, %bb.ca ], [ 0, %bb.bu ] ; 3 uses
  %i.xa = getelementptr inbounds nuw [24 x i8], ptr %.ptr291.ptr, i64 %i.wz ; 5 uses
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = icmp eq ptr %i.xb, %i.xd
  br i1 %i.xe, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph412
  %i.xf = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #29
          to label %bb.bw unwind label %bb.bz     ; 10 uses

bb.bw:                                            ; preds = %bb.bv
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.xf, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.xg, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 1060
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xi, align 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 1080
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xk, align 4
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 1100
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xf, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.xl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xm, align 4
  %i.xn = load ptr, ptr %i.fq, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 224
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = zext i32 %.5409 to i64
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xq ; 8 uses
  store ptr %i.xf, ptr %i.xr, align 8
  %i.xs = load ptr, ptr %i.xc, align 8
  %i.xt = load ptr, ptr %i.xa, align 8
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = lshr exact i64 %i.xw, 3
  %i.xy = trunc i64 %i.xx to i32
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xf, i64 1028
  store i32 %i.xy, ptr %i.xz, align 4
  %i.ya = load ptr, ptr %i.xr, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 1028
  %i.yc = load i32, ptr %i.yb, align 4            ; 2 uses
  %i.yd = zext i32 %i.yc to i64
  %i.ye = shl nuw nsw i64 %i.yd, 3                ; 2 uses
  %i.yf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ye) #29
          to label %bb.bx unwind label %bb.bz     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.yg = icmp eq i32 %i.yc, 0
  br i1 %i.yg, label %.loopexit304, label %.loopexit304.loopexit

.loopexit304.loopexit:                            ; preds = %bb.bx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yf, i8 0, i64 %i.ye, i1 false)
  br label %.loopexit304

.loopexit304:                                     ; preds = %.loopexit304.loopexit, %bb.bx
  %i.yh = load ptr, ptr %i.xr, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 1048
  store ptr %i.yf, ptr %i.yi, align 8
  %i.yj = load ptr, ptr %i.cf, align 8
  %i.yk = getelementptr inbounds nuw [144 x i8], ptr %i.yj, i64 %i.wz
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 72
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  store i64 %i.z, ptr %.013.i.i.i.i.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !243

_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block190
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, %bb.d
  %i.ac = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %2
  store ptr %i.ad, ptr %i.c, align 8
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ae, %i.k
  %i.ag = ashr exact i64 %i.af, 3                 ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i69.preheader, label %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol

.lr.ph.i.i.i.i.i69.prol:                          ; preds = %.lr.ph.i.i.i.i.i69.preheader, %.lr.ph.i.i.i.i.i69.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i69.prol ], [ %i.ag, %.lr.ph.i.i.i.i.i69.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i69.prol ], [ %i.d, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i69.prol ], [ %i.o, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i69.prol ], [ 0, %.lr.ph.i.i.i.i.i69.preheader ]
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4
  store i32 %i.ak, ptr %i.aj, align 4
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.am = load float, ptr %i.al, align 4
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store float %i.am, ptr %i.an, align 4
  %i.ao = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol, !llvm.loop !244

.lr.ph.i.i.i.i.i69.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i69.prol, %.lr.ph.i.i.i.i.i69.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i69.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i69.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i69.prol ]
  %i.ap = icmp ult i64 %i.ag, 4
  br i1 %i.ap, label %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69
  %.010.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i69 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i69 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i69 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 8 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.as = load i32, ptr %i.aq, align 4
  store i32 %i.as, ptr %i.ar, align 4
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store float %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.ay = load i32, ptr %i.aw, align 4
  store i32 %i.ay, ptr %i.ax, align 4
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store float %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.be = load i32, ptr %i.bc, align 4
  store i32 %i.be, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store float %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4
  store i32 %i.bk, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = add nsw i64 %.010.i.i.i.i.i, -4
  %i.bp = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit, !llvm.loop !245

_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.br = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.br, 24
  br i1 %min.iters.check195, label %.lr.ph.i.i.i.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit
  %n.vec198 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec198, 3
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %broadcast.splatinsert199 = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splatinsert201 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %interleaved.vec207 = shufflevector <2 x i32> %broadcast.splatinsert199, <2 x i32> %broadcast.splatinsert201, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph196
  %index204 = phi i64 [ 0, %vector.ph196 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.bw = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %1, i64 %i.bw
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %next.gep206 = getelementptr i8, ptr %i.bx, i64 16
  store <4 x i32> %interleaved.vec207, ptr %next.gep205, align 4
  store <4 x i32> %interleaved.vec207, ptr %next.gep206, align 4
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next209, %n.vec198
  br i1 %i.by, label %middle.block210, label %vector.body203, !llvm.loop !246

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.bt, %n.vec198
  br i1 %cmp.n211, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit, %middle.block210
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPSt4pairIjfES2_ET0_T_S4_S3_.exit ], [ %i.bv, %middle.block210 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4
  store i32 %i.j, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.bq
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !247

bb.e:                                             ; preds = %bb.c
  %i.cb = sub nuw i64 %2, %i.m                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = shl i64 %n.vec, 3
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.cc   ; 2 uses
  %i.ce = and i64 %i.cb, 3
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splatinsert139 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert139, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.cf
  %next.gep141 = getelementptr i8, ptr %i.cg, i64 16
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4
  store <4 x i32> %interleaved.vec, ptr %next.gep141, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader272

.lr.ph.i.i.i.i.preheader272:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.068.i.i.i.i.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader272, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %.068.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ]
  store i32 %i.i, ptr %.09.i.i.i.i, align 4
  %.09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  store i32 %i.j, ptr %.09.i.i.i.i.sroa_idx, align 4
  %i.ci = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !249

_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ck = phi ptr [ %i.d, %bb.e ], [ %i.cd, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i ] ; 6 uses
  store ptr %i.ck, ptr %i.c, align 8
  %.not11.i.i.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i70, label %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i71.preheader

.lr.ph.i.i.i.i.i71.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %i.cm = sub i64 %i.f, %i.k
  %i.cn = add i64 %i.cm, -8                       ; 2 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.cn, 72
  %i.cq = sub i64 %i.k, %i.cl
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond = select i1 %min.iters.check145, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i71.preheader271, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph.i.i.i.i.i71.preheader
  %n.vec148 = and i64 %i.cp, 4611686018427387900  ; 3 uses
  %i.cr = shl i64 %n.vec148, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ck, i64 %i.cr
  %i.ct = getelementptr i8, ptr %1, i64 %i.cr
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body149 ] ; 2 uses
  %i.cu = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.ck, i64 %i.cu ; 2 uses
  %next.gep152 = getelementptr i8, ptr %1, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep152, align 4
  %wide.load153 = load <2 x i64>, ptr %i.cv, align 4
  %i.cw = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load, ptr %next.gep151, align 4
  store <2 x i64> %wide.load153, ptr %i.cw, align 4
  %index.next154 = add nuw i64 %index150, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.cx, label %middle.block155, label %vector.body149, !llvm.loop !250

middle.block155:                                  ; preds = %vector.body149
  %cmp.n156 = icmp eq i64 %i.cp, %n.vec148
  br i1 %cmp.n156, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i71.preheader271

.lr.ph.i.i.i.i.i71.preheader271:                  ; preds = %.lr.ph.i.i.i.i.i71.preheader, %middle.block155
  %.013.i.i.i.i.i72.ph = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.cs, %middle.block155 ]
  %.sroa.08.012.i.i.i.i.i73.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i71.preheader ], [ %i.ct, %middle.block155 ]
  br label %.lr.ph.i.i.i.i.i71

_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.l
  store ptr %i.cy, ptr %i.c, align 8
  br label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i71:                               ; preds = %.lr.ph.i.i.i.i.i71.preheader271, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i71 ], [ %.013.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i71.preheader271 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i71 ], [ %.sroa.08.012.i.i.i.i.i73.ph, %.lr.ph.i.i.i.i.i71.preheader271 ] ; 2 uses
  %i.cz = load i64, ptr %.sroa.08.012.i.i.i.i.i73, align 4
  store i64 %i.cz, ptr %.013.i.i.i.i.i72, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 8
  %.not.i.i.i.i.i74 = icmp eq ptr %i.da, %i.d
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i71, !llvm.loop !251

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i71, %middle.block155
  %i.dc = load ptr, ptr %i.c, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.l
  store ptr %i.dd, ptr %i.c, align 8
  %i.de = sub i64 %i.f, %i.k
  %i.df = add i64 %i.de, -8                       ; 2 uses
  %i.dg = lshr i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.df, 24
  br i1 %min.iters.check160, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.i78
  %n.vec163 = and i64 %i.dh, 4611686018427387900  ; 3 uses
  %i.di = shl i64 %n.vec163, 3
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %broadcast.splatinsert164 = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %broadcast.splatinsert166 = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %interleaved.vec172 = shufflevector <2 x i32> %broadcast.splatinsert164, <2 x i32> %broadcast.splatinsert166, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph161
  %index169 = phi i64 [ 0, %vector.ph161 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.dk = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.dk
  %i.dl = getelementptr i8, ptr %1, i64 %i.dk
  %next.gep171 = getelementptr i8, ptr %i.dl, i64 16
  store <4 x i32> %interleaved.vec172, ptr %next.gep170, align 4
  store <4 x i32> %interleaved.vec172, ptr %next.gep171, align 4
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next174, %n.vec163
  br i1 %i.dm, label %middle.block175, label %vector.body168, !llvm.loop !252

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.dh, %n.vec163
  br i1 %cmp.n176, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.lr.ph.i.i.i78, %middle.block175
  %.06.i.i.i79.ph = phi ptr [ %1, %.lr.ph.i.i.i78 ], [ %i.dj, %middle.block175 ]
  br label %scalar.ph159

scalar.ph159:                                     ; preds = %scalar.ph159.preheader, %scalar.ph159
  %.06.i.i.i79 = phi ptr [ %i.do, %scalar.ph159 ], [ %.06.i.i.i79.ph, %scalar.ph159.preheader ] ; 3 uses
  store i32 %i.i, ptr %.06.i.i.i79, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 4
  store i32 %i.j, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.do, %i.d
  br i1 %.not.i.i.i80, label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit, label %scalar.ph159, !llvm.loop !253

bb.f:                                             ; preds = %bb.b
  %i.dp = load ptr, ptr %0, align 8               ; 7 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 5 uses
  %i.dr = sub i64 %i.f, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 4 uses
  %i.dt = sub nsw i64 1152921504606846975, %i.ds
  %i.du = icmp ult i64 %i.dt, %2
  br i1 %i.du, label %bb.g, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #28
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.f
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 %2)
  %i.dv = add nsw i64 %.sroa.speculated.i, %i.ds  ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.ds
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %i.dz = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ea = sub i64 %i.dz, %i.dq
  %.not.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit
  %i.eb = shl nuw nsw i64 %i.dy, 3
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #29
  br label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit, %bb.h
  %i.ed = phi ptr [ %i.ec, %bb.h ], [ null, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.ee = ptrtoaddr ptr %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea ; 3 uses
  %i.eg = load i64, ptr %3, align 4               ; 2 uses
  %min.iters.check214 = icmp ult i64 %2, 4
  br i1 %min.iters.check214, label %.lr.ph.i.i.i.i83.preheader, label %vector.ph215

vector.ph215:                                     ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit
  %n.vec217 = and i64 %2, -4                      ; 3 uses
  %i.eh = shl i64 %n.vec217, 3
  %i.ei = getelementptr i8, ptr %i.ef, i64 %i.eh
  %i.ej = and i64 %2, 3
  %broadcast.splatinsert218 = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat219 = shufflevector <2 x i64> %broadcast.splatinsert218, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph215
  %index221 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body220 ] ; 2 uses
  %i.ek = shl i64 %index221, 3
  %next.gep222 = getelementptr i8, ptr %i.ef, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x i64> %broadcast.splat219, ptr %next.gep222, align 4
  store <2 x i64> %broadcast.splat219, ptr %i.el, align 4
  %index.next223 = add nuw i64 %index221, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.em, label %middle.block224, label %vector.body220, !llvm.loop !254

middle.block224:                                  ; preds = %vector.body220
  %cmp.n225 = icmp eq i64 %2, %n.vec217
  br i1 %cmp.n225, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83.preheader

.lr.ph.i.i.i.i83.preheader:                       ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit, %middle.block224
  %.09.i.i.i.i84.ph = phi ptr [ %i.ef, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit ], [ %i.ei, %middle.block224 ]
  %.068.i.i.i.i85.ph = phi i64 [ %2, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit ], [ %i.ej, %middle.block224 ]
  br label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph.i.i.i.i83.preheader, %.lr.ph.i.i.i.i83
  %.09.i.i.i.i84 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i83 ], [ %.09.i.i.i.i84.ph, %.lr.ph.i.i.i.i83.preheader ] ; 2 uses
  %.068.i.i.i.i85 = phi i64 [ %i.en, %.lr.ph.i.i.i.i83 ], [ %.068.i.i.i.i85.ph, %.lr.ph.i.i.i.i83.preheader ]
  store i64 %i.eg, ptr %.09.i.i.i.i84, align 4
  %i.en = add i64 %.068.i.i.i.i85, -1             ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 8
  %.not.i.i.i.i86 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i86, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83, !llvm.loop !255

_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88: ; preds = %.lr.ph.i.i.i.i83, %middle.block224
  %.not11.i.i.i.i.i89 = icmp eq ptr %i.dp, %1
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88
  %i.ep = sub i64 %i.dz, %i.dq
  %i.eq = add i64 %i.ep, -8                       ; 2 uses
  %i.er = lshr i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.eq, 72
  %i.et = sub i64 %i.dq, %i.ee
  %diff.check229 = icmp ugt i64 %i.et, -32
  %or.cond265 = or i1 %min.iters.check231, %diff.check229
  br i1 %or.cond265, label %.lr.ph.i.i.i.i.i90.preheader267, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %n.vec234 = and i64 %i.es, 4611686018427387900  ; 3 uses
  %i.eu = shl i64 %n.vec234, 3                    ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ed, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.dp, i64 %i.eu
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph232
  %index236 = phi i64 [ 0, %vector.ph232 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %i.ex = shl i64 %index236, 3                    ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.ed, i64 %i.ex ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.dp, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <2 x i64>, ptr %next.gep238, align 4
  %wide.load240 = load <2 x i64>, ptr %i.ey, align 4
  %i.ez = getelementptr i8, ptr %next.gep237, i64 16
  store <2 x i64> %wide.load239, ptr %next.gep237, align 4
  store <2 x i64> %wide.load240, ptr %i.ez, align 4
  %index.next241 = add nuw i64 %index236, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.fa, label %middle.block242, label %vector.body235, !llvm.loop !256

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.es, %n.vec234
  br i1 %cmp.n243, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90.preheader267

.lr.ph.i.i.i.i.i90.preheader267:                  ; preds = %.lr.ph.i.i.i.i.i90.preheader, %middle.block242
  %.013.i.i.i.i.i91.ph = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.ev, %middle.block242 ]
  %.sroa.08.012.i.i.i.i.i92.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.ew, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader267, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i90 ], [ %.013.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader267 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i90 ], [ %.sroa.08.012.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader267 ] ; 2 uses
  %i.fb = load i64, ptr %.sroa.08.012.i.i.i.i.i92, align 4
  store i64 %i.fb, ptr %.013.i.i.i.i.i91, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.fc, %1
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !257

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %middle.block242, %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.ed, %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88 ], [ %i.ev, %middle.block242 ], [ %i.fd, %.lr.ph.i.i.i.i.i90 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i94247 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i94 to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i94, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i95 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i95, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96.preheader

.lr.ph.i.i.i.i.i96.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ff = sub i64 %i.f, %i.dz
  %i.fg = add i64 %i.ff, -8                       ; 2 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check250 = icmp ult i64 %i.fg, 136
  br i1 %min.iters.check250, label %.lr.ph.i.i.i.i.i96.preheader266, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i.i.i.i96.preheader
  %i.fj = shl i64 %2, 3
  %i.fk = add i64 %i.fj, %.0.lcssa.i.i.i.i.i94247
  %i.fl = sub i64 %i.dz, %i.fk
  %diff.check248 = icmp ugt i64 %i.fl, -32
  br i1 %diff.check248, label %.lr.ph.i.i.i.i.i96.preheader266, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck246
  %n.vec253 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.fm = shl i64 %n.vec253, 3                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %1, i64 %i.fm
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph251
  %index255 = phi i64 [ 0, %vector.ph251 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %i.fp = shl i64 %index255, 3                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.fe, i64 %i.fp ; 2 uses
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.fp ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load258 = load <2 x i64>, ptr %next.gep257, align 4
  %wide.load259 = load <2 x i64>, ptr %i.fq, align 4
  %i.fr = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x i64> %wide.load258, ptr %next.gep256, align 4
  store <2 x i64> %wide.load259, ptr %i.fr, align 4
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.fs, label %middle.block261, label %vector.body254, !llvm.loop !258

middle.block261:                                  ; preds = %vector.body254
  %cmp.n262 = icmp eq i64 %i.fi, %n.vec253
  br i1 %cmp.n262, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96.preheader266

.lr.ph.i.i.i.i.i96.preheader266:                  ; preds = %vector.memcheck246, %.lr.ph.i.i.i.i.i96.preheader, %middle.block261
  %.013.i.i.i.i.i97.ph = phi ptr [ %i.fe, %vector.memcheck246 ], [ %i.fe, %.lr.ph.i.i.i.i.i96.preheader ], [ %i.fn, %middle.block261 ]
  %.sroa.08.012.i.i.i.i.i98.ph = phi ptr [ %1, %vector.memcheck246 ], [ %1, %.lr.ph.i.i.i.i.i96.preheader ], [ %i.fo, %middle.block261 ]
  br label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %.lr.ph.i.i.i.i.i96.preheader266, %.lr.ph.i.i.i.i.i96
  %.013.i.i.i.i.i97 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i96 ], [ %.013.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i96.preheader266 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i98 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i96 ], [ %.sroa.08.012.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i96.preheader266 ] ; 2 uses
  %i.ft = load i64, ptr %.sroa.08.012.i.i.i.i.i98, align 4
  store i64 %i.ft, ptr %.013.i.i.i.i.i97, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 8 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.fu, %i.d
  br i1 %.not.i.i.i.i.i99, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96, !llvm.loop !259

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101: ; preds = %.lr.ph.i.i.i.i.i96, %middle.block261, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.fe, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fn, %middle.block261 ], [ %i.fv, %.lr.ph.i.i.i.i.i96 ]
  %.not.i102 = icmp eq ptr %i.dp, null
  br i1 %.not.i102, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101
  %i.fw = load ptr, ptr %i.a, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.fy) #30
  br label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, %bb.i
  store ptr %i.ed, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i100, ptr %i.c, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dy
  store ptr %i.fz, ptr %i.a, align 8
  br label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit

_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit:       ; preds = %scalar.ph159, %.lr.ph.i.i.i, %middle.block175, %middle.block210, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{null}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!10 = distinct !{!10, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!13 = !{!9, !12}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{null, null}
!19 = distinct !{!19, !4}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!25 = distinct !{!25, !4, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !4, !26}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !4, !26, !27}
!33 = distinct !{!33, !4}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !4, !26, !27}
!40 = distinct !{!40, !4, !26}
!41 = distinct !{!41, !4}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !4, !26, !27}
!48 = distinct !{!48, !4, !26}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4, !26}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!58 = distinct !{!58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60, !57}
!69 = !{!70}
end_hunk_2
