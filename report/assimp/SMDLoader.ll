inline.NumInlined: 1538
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ei ; 2 uses
  store i32 %.0280371, ptr %i.er, align 4
  %i.es = icmp sgt i64 %i.ei, 0
  br i1 %i.es, label %bb.u, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %.noexc192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eq, ptr align 4 %i.ef, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %.noexc192
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ei) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

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
  %indvars.iv454 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next455, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit ] ; 4 uses
  %i.fg = phi ptr [ %i.cc, %.lr.ph414 ], [ %i.aaq, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit ]
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
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv454 ; 22 uses
  store ptr %i.fh, ptr %i.fq, align 8
  store i32 4, ptr %i.fh, align 8
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.ptr284.ptr, i64 %indvars.iv454 ; 4 uses
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
  %i.go = trunc nuw i64 %indvars.iv454 to i32
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
  %.pre465475 = phi ptr [ %.pre465476, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gq, %bb.ab ] ; 2 uses
  %.pre464472 = phi ptr [ %.pre464473, %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit ], [ %i.gp, %bb.ab ] ; 2 uses
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
  %i.ir = sub i64 %i.im, %i.ig
  %i.is = add i64 %i.ir, -8                       ; 2 uses
  %i.it = lshr i64 %i.is, 3
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check611 = icmp ult i64 %i.is, 24
  %i.iv = sub i64 %i.ig, %i.iq
  %diff.check609 = icmp ugt i64 %i.iv, -32
  %or.cond = or i1 %min.iters.check611, %diff.check609
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader630, label %vector.ph612

vector.ph612:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec614 = and i64 %i.iu, 4611686018427387900  ; 3 uses
  %i.iw = shl i64 %n.vec614, 3                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.ip, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ie, i64 %i.iw
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph612
  %index616 = phi i64 [ 0, %vector.ph612 ], [ %index.next621, %vector.body615 ] ; 2 uses
  %i.iz = shl i64 %index616, 3                    ; 2 uses
  %next.gep617 = getelementptr i8, ptr %i.ip, i64 %i.iz ; 2 uses
  %next.gep618 = getelementptr i8, ptr %i.ie, i64 %i.iz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.ja = getelementptr i8, ptr %next.gep618, i64 16
  %wide.load619 = load <2 x i64>, ptr %next.gep618, align 4, !alias.scope !23, !noalias !20
  %wide.load620 = load <2 x i64>, ptr %i.ja, align 4, !alias.scope !23, !noalias !20
  %i.jb = getelementptr i8, ptr %next.gep617, i64 16
  store <2 x i64> %wide.load619, ptr %next.gep617, align 4, !alias.scope !20, !noalias !23
  store <2 x i64> %wide.load620, ptr %i.jb, align 4, !alias.scope !20, !noalias !23
  %index.next621 = add nuw i64 %index616, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.jc, label %middle.block622, label %vector.body615, !llvm.loop !25

middle.block622:                                  ; preds = %vector.body615
  %cmp.n623 = icmp eq i64 %i.iu, %n.vec614
  br i1 %cmp.n623, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader630

.lr.ph.i.i.i.i.preheader630:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block622
  %.012.i.i.i.i.ph = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.preheader ], [ %i.ix, %middle.block622 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.preheader ], [ %i.iy, %middle.block622 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader630, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader630 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader630 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jd = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !23, !noalias !20
  store i64 %i.jd, ptr %.012.i.i.i.i, align 4, !alias.scope !20, !noalias !23
  %i.je = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i194 = icmp eq ptr %i.je, %i.il
  br i1 %.not.i.i.i.i194, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block622, %.noexc197
  %.not.i8.i195 = icmp eq ptr %i.ie, null
  br i1 %.not.i8.i195, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ih) #30
  %.pre464.pre = load ptr, ptr %i.cg, align 8
  %.pre465.pre = load ptr, ptr %i.cf, align 8
  br label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.ae, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.pre465 = phi ptr [ %.pre465.pre, %bb.ae ], [ %.pre465475, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ] ; 2 uses
  %.pre464 = phi ptr [ %.pre464.pre, %bb.ae ], [ %.pre464472, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ] ; 2 uses
  store ptr %i.ip, ptr %i.hw, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.in
  store ptr %i.jg, ptr %i.ik, align 8
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ib
  store ptr %i.jh, ptr %i.ic, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.lr.ph376
  %.pre465476 = phi ptr [ %.pre465, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.pre465475, %.lr.ph376 ]
  %.pre464473 = phi ptr [ %.pre464, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.pre464472, %.lr.ph376 ]
  %i.ji = phi ptr [ %.pre465, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.hs, %.lr.ph376 ] ; 2 uses
  %i.jj = phi ptr [ %.pre464, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ht, %.lr.ph376 ] ; 2 uses
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

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !55

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN6Assimp15DefaultIOSystem12absolutePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN6Assimp15DefaultIOSystem16completeBaseNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare void @_ZN6Assimp12BaseImporter16TextFileToBufferEPNS_8IOStreamERSt6vectorIcSaIcEENS0_12TextFileModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter9ParseFileEv(ptr noundef nonnull align 8 dereferenceable(226) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.in = phi ptr [ %i.d, %bb.a ], [ %i.c, %.backedge.backedge ]
  %i.h = load ptr, ptr %.in, align 8              ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8              ; 12 uses
  %i.j = load i32, ptr %i.f, align 4              ; 2 uses
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.f, align 4
  %1 = ptrtoaddr ptr %i.h to i64
  %2 = ptrtoaddr ptr %i.i to i64                  ; 7 uses
  %i.l = sub i64 %2, %1
  %scevgep.i.i = getelementptr i8, ptr %i.h, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.backedge
  %.0.i.i = phi ptr [ %i.h, %.backedge ], [ %i.n, %bb.d ] ; 4 uses
  %i.m = load i8, ptr %.0.i.i, align 1
  switch i8 %i.m, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %i.i
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 20 uses
  store ptr %i.o, ptr %i.c, align 8
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %.not45 = icmp eq i8 %i.p, 0
  br i1 %.not45, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit
  %i.q = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.26, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 7) #31
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 7 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  switch i8 %i.s, label %bb.l [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i = icmp eq i8 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %storemerge.i = select i1 %.not11.i, ptr %i.r, ptr %i.t ; 4 uses
  store ptr %storemerge.i, ptr %i.c, align 8
  %3 = ptrtoaddr ptr %storemerge.i to i64
  %i.u = sub i64 %2, %3
  %scevgep.i = getelementptr i8, ptr %storemerge.i, i64 %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.0.i1 = phi ptr [ %storemerge.i, %bb.g ], [ %i.w, %bb.j ] ; 4 uses
  %i.v = load i8, ptr %.0.i1, align 1
  switch i8 %i.v, label %.critedge.i [
    i8 32, label %bb.i
    i8 9, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %.not.i2 = icmp eq ptr %.0.i1, %i.i
  br i1 %.not.i2, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i1, i64 1
  br label %bb.h, !llvm.loop !107

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %.0.lcssa.i = phi ptr [ %.0.i1, %bb.h ], [ %scevgep.i, %bb.i ] ; 3 uses
  store ptr %.0.lcssa.i, ptr %i.c, align 8
  %i.x = load i8, ptr %.0.lcssa.i, align 1        ; 3 uses
  switch i8 %i.x, label %bb.k [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
  ]

bb.k:                                             ; preds = %.critedge.i
  %i.y = add i8 %i.x, -58
  %or.cond11.i = icmp ult i8 %i.y, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.z = phi i8 [ %i.ae, %.lr.ph.i ], [ %i.x, %bb.k ]
  %.013.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 0, %bb.k ]
  %.0812.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.0.lcssa.i, %bb.k ]
  %i.aa = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.z, -48
  %i.ab = zext nneg i8 %narrow.i to i32
  %i.ac = add i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = add i8 %i.ae, -58
  %or.cond.i = icmp ult i8 %i.af, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !108

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq i32 %i.ac, 1
  br i1 %.not, label %.backedge.backedge, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread

.backedge.backedge:                               ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit, %_ZN6Assimp9strtoul10EPKcPS1_.exit.thread, %_ZN6Assimp11SMDImporter17ParseNodesSectionEPKcPS2_S2_.exit, %_ZN6Assimp11SMDImporter21ParseTrianglesSectionEPKcPS2_S2_.exit, %bb.ai, %bb.al, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit
  br label %.backedge, !llvm.loop !109

_ZN6Assimp9strtoul10EPKcPS1_.exit.thread:         ; preds = %bb.k, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.ag = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull @.str.27)
  br label %.backedge.backedge

bb.l:                                             ; preds = %bb.e, %bb.f
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.28, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 5) #31
  %.not.i5 = icmp eq i32 %i.ah, 0
  br i1 %.not.i5, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 5 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  switch i8 %i.aj, label %bb.u [
    i8 32, label %bb.n
    i8 9, label %bb.n
    i8 13, label %bb.n
    i8 10, label %bb.n
    i8 0, label %bb.n
    i8 12, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %.not11.i7 = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %storemerge.i8 = select i1 %.not11.i7, ptr %i.ai, ptr %i.ak ; 3 uses
  store ptr %storemerge.i8, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %storemerge.i8, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %bb.n
  %i.al = phi ptr [ %.pre.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %storemerge.i8, %bb.n ] ; 4 uses
  %i.am = tail call i32 @strncasecmp(ptr noundef %i.al, ptr noundef nonnull @.str.34, i64 noundef 3) #31
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  switch i8 %i.ap, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 10, label %bb.q
    i8 0, label %bb.q
    i8 12, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.f, align 4
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.f, align 4
  %4 = ptrtoaddr ptr %i.aq to i64
  %i.at = sub i64 %2, %4
  %scevgep.i.i.i = getelementptr i8, ptr %i.aq, i64 %i.at
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.0.i.i.i = phi ptr [ %i.aq, %bb.q ], [ %i.av, %bb.t ] ; 4 uses
  %i.au = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.au, label %_ZN6Assimp11SMDImporter17ParseNodesSectionEPKcPS2_S2_.exit [
    i8 32, label %bb.s
    i8 9, label %bb.s
    i8 13, label %bb.s
    i8 10, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.i
  br i1 %.not.i.i.i, label %_ZN6Assimp11SMDImporter17ParseNodesSectionEPKcPS2_S2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.r, !llvm.loop !106

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.p, %bb.o
  call void @_ZN6Assimp11SMDImporter13ParseNodeInfoEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef readnone %i.i)
  %.pre.i = load ptr, ptr %i.b, align 8
  br label %bb.o, !llvm.loop !110

_ZN6Assimp11SMDImporter17ParseNodesSectionEPKcPS2_S2_.exit: ; preds = %bb.r, %bb.s
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.r ], [ %scevgep.i.i.i, %bb.s ]
  store ptr %.0.lcssa.i.i.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge.backedge

bb.u:                                             ; preds = %bb.l, %bb.m
  %i.aw = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.29, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 9) #31
  %.not.i10 = icmp eq i32 %i.aw, 0
  br i1 %.not.i10, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 9 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  switch i8 %i.ay, label %bb.ag [
    i8 32, label %bb.w
    i8 9, label %bb.w
    i8 13, label %bb.w
    i8 10, label %bb.w
    i8 0, label %bb.w
    i8 12, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %.not11.i13 = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %storemerge.i14 = select i1 %.not11.i13, ptr %i.ax, ptr %i.az ; 2 uses
  store ptr %storemerge.i14, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.w
  %i.ba = phi i32 [ %.pre60, %bb.ac ], [ %i.k, %bb.w ] ; 2 uses
  %i.bb = phi ptr [ %.pre.i21, %bb.ac ], [ %storemerge.i14, %bb.w ] ; 3 uses
  %i.bc = add i32 %i.ba, 1
  store i32 %i.bc, ptr %i.f, align 4
  %5 = ptrtoaddr ptr %i.bb to i64
  %i.bd = sub i64 %2, %5
  %scevgep.i.i.i16 = getelementptr i8, ptr %i.bb, i64 %i.bd
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.0.i.i.i17 = phi ptr [ %i.bb, %bb.x ], [ %i.bf, %bb.aa ] ; 4 uses
  %i.be = load i8, ptr %.0.i.i.i17, align 1
  switch i8 %i.be, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit.i [
    i8 32, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 10, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  %.not.i.i.i18 = icmp eq ptr %.0.i.i.i17, %i.i
  br i1 %.not.i.i.i18, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i17, i64 1
  br label %bb.y, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit.i: ; preds = %bb.z, %bb.y
  %i.bg = phi ptr [ %.0.i.i.i17, %bb.y ], [ %scevgep.i.i.i16, %bb.z ] ; 8 uses
  store ptr %i.bg, ptr %i.a, align 8
  %i.bh = load i8, ptr %i.bg, align 1             ; 3 uses
  %.not.i19 = icmp eq i8 %i.bh, 0
  br i1 %.not.i19, label %.loopexit.i, label %sub_0.i

sub_0.i:                                          ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit.i
  %i.bi = zext i8 %i.bh to i32
  %i.bj = sub nsw i32 101, %i.bi
  %.not19.i = icmp eq i8 %i.bh, 101
  br i1 %.not19.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = sub nsw i32 110, %i.bm
  %.not20.i = icmp eq i8 %i.bl, 110
  br i1 %.not20.i, label %sub_2.i, label %.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = sub nsw i32 100, %i.bq
  br label %.tail.i

.tail.i:                                          ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %i.bs = phi i32 [ %i.bj, %sub_0.i ], [ %i.bn, %sub_1.i ], [ %i.br, %sub_2.i ]
  %.not.i.i20 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i20, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.tail.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  switch i8 %i.bu, label %bb.ac [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i:     ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %.not11.i.i = icmp eq i8 %i.bu, 0
  %storemerge.i.v.i = select i1 %.not11.i.i, i64 3, i64 4
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %storemerge.i.v.i ; 2 uses
  store ptr %storemerge.i.i, ptr %i.a, align 8
  br label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab, %.tail.i
  call void @_ZN6Assimp11SMDImporter13ParseTriangleEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.i)
  %.pre.i21 = load ptr, ptr %i.a, align 8
  %.pre60 = load i32, ptr %i.f, align 4
  br label %bb.x, !llvm.loop !111

.loopexit.i:                                      ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit.i, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i
  %i.bv = phi ptr [ %storemerge.i.i, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.i ], [ %i.bg, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit.i ] ; 3 uses
  %i.bw = add i32 %i.ba, 2
  store i32 %i.bw, ptr %i.f, align 4
  %6 = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub i64 %2, %6
  %scevgep.i.i5.i = getelementptr i8, ptr %i.bv, i64 %i.bx
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %.loopexit.i
  %.0.i.i6.i = phi ptr [ %i.bv, %.loopexit.i ], [ %i.bz, %bb.af ] ; 4 uses
  %i.by = load i8, ptr %.0.i.i6.i, align 1
  switch i8 %i.by, label %_ZN6Assimp11SMDImporter21ParseTrianglesSectionEPKcPS2_S2_.exit [
    i8 32, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
    i8 10, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %.not.i.i7.i = icmp eq ptr %.0.i.i6.i, %i.i
  br i1 %.not.i.i7.i, label %_ZN6Assimp11SMDImporter21ParseTrianglesSectionEPKcPS2_S2_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 1
  br label %bb.ad, !llvm.loop !106

_ZN6Assimp11SMDImporter21ParseTrianglesSectionEPKcPS2_S2_.exit: ; preds = %bb.ad, %bb.ae
  %.0.lcssa.i.i8.i = phi ptr [ %.0.i.i6.i, %bb.ad ], [ %scevgep.i.i5.i, %bb.ae ]
  store ptr %.0.lcssa.i.i8.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.backedge

bb.ag:                                            ; preds = %bb.u, %bb.v
  %i.ca = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.30, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 15) #31
  %.not.i22 = icmp eq i32 %i.ca, 0
  br i1 %.not.i22, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  switch i8 %i.cc, label %bb.aj [
    i8 32, label %bb.ai
    i8 9, label %bb.ai
    i8 13, label %bb.ai
    i8 10, label %bb.ai
    i8 0, label %bb.ai
    i8 12, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %.not11.i25 = icmp eq i8 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %storemerge.i26 = select i1 %.not11.i25, ptr %i.cb, ptr %i.cd ; 2 uses
  store ptr %storemerge.i26, ptr %i.c, align 8
  store i8 0, ptr %i.g, align 8
  call void @_ZN6Assimp11SMDImporter14ParseVASectionEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull %storemerge.i26, ptr noundef nonnull %i.c, ptr noundef %i.i)
  br label %.backedge.backedge

bb.aj:                                            ; preds = %bb.ag, %bb.ah
  %i.ce = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.31, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 8) #31
  %.not.i28 = icmp eq i32 %i.ce, 0
  br i1 %.not.i28, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1             ; 2 uses
  switch i8 %i.cg, label %bb.am [
    i8 32, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 10, label %bb.al
    i8 0, label %bb.al
    i8 12, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %.not11.i31 = icmp eq i8 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %storemerge.i32 = select i1 %.not11.i31, ptr %i.cf, ptr %i.ch ; 2 uses
  store ptr %storemerge.i32, ptr %i.c, align 8
  call void @_ZN6Assimp11SMDImporter20ParseSkeletonSectionEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull %storemerge.i32, ptr noundef nonnull %i.c, ptr noundef %i.i)
  br label %.backedge.backedge

bb.am:                                            ; preds = %bb.aj, %bb.ak
  %7 = ptrtoaddr ptr %i.o to i64
  %i.ci = sub i64 %2, %7
  %scevgep.i.i34 = getelementptr i8, ptr %i.o, i64 %i.ci
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.cj = phi i8 [ %i.p, %bb.am ], [ %.pre61, %bb.ap ]
  %.0.i.i35 = phi ptr [ %i.o, %bb.am ], [ %i.ck, %bb.ap ] ; 6 uses
  switch i8 %i.cj, label %bb.ao [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.ao:                                            ; preds = %bb.an
  %.not22.i.i = icmp eq ptr %.0.i.i35, %i.i
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i35, i64 1 ; 2 uses
  %.pre61 = load i8, ptr %i.ck, align 1
  br label %bb.an, !llvm.loop !112

.critedge.i.i:                                    ; preds = %bb.ao, %bb.an, %bb.an, %bb.an, %bb.an
  %.0.lcssa.i.i36 = phi ptr [ %.0.i.i35, %bb.an ], [ %.0.i.i35, %bb.an ], [ %.0.i.i35, %bb.an ], [ %.0.i.i35, %bb.an ], [ %scevgep.i.i34, %bb.ao ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i36 to i64
  %i.cl = sub i64 %2, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i36, i64 %i.cl
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i36, %.critedge.i.i ], [ %i.cn, %bb.as ] ; 4 uses
  %i.cm = load i8, ptr %.1.i.i, align 1
  switch i8 %i.cm, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.ar
    i8 10, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %.not23.i.i = icmp eq ptr %.1.i.i, %i.i
  br i1 %.not23.i.i, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.aq, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit: ; preds = %bb.aq, %bb.ar
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.aq ], [ %scevgep25.i.i, %bb.ar ]
  store ptr %.1.lcssa.i.i, ptr %i.c, align 8
  %i.co = add i32 %i.j, 2
  store i32 %i.co, ptr %i.f, align 4
  br label %.backedge.backedge

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit:      ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter17ParseNodesSectionEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.a
  %i.b = phi ptr [ %.pre, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %1, %bb.a ] ; 4 uses
  %i.c = tail call i32 @strncasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.34, i64 noundef 3) #31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %4 = ptrtoaddr ptr %i.g to i64
  %5 = ptrtoaddr ptr %3 to i64
  %i.k = sub i64 %5, %4
  %scevgep.i.i = getelementptr i8, ptr %i.g, i64 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.d ], [ %i.m, %bb.g ] ; 4 uses
  %i.l = load i8, ptr %.0.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.e, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.e, %bb.f
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %scevgep.i.i, %bb.f ]
  store ptr %.0.lcssa.i.i, ptr %2, align 8
  ret void

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.c, %bb.b
  call void @_ZN6Assimp11SMDImporter13ParseNodeInfoEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef %3)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter21ParseTrianglesSectionEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %4 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.c = phi ptr [ %.pre, %bb.g ], [ %1, %bb.a ]  ; 3 uses
  %i.d = load i32, ptr %i.b, align 4              ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.b, align 4
  %5 = ptrtoaddr ptr %i.c to i64
  %i.f = sub i64 %4, %5
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.e ] ; 4 uses
  %i.g = load i8, ptr %.0.i.i, align 1
  switch i8 %i.g, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.c, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %.0.i.i, %bb.c ], [ %scevgep.i.i, %bb.d ] ; 8 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.loopexit, label %sub_0

sub_0:                                            ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit
  %i.k = zext i8 %i.j to i32
  %i.l = sub nsw i32 101, %i.k
  %.not19 = icmp eq i8 %i.j, 101
  br i1 %.not19, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = sub nsw i32 110, %i.o
  %.not20 = icmp eq i8 %i.n, 110
  br i1 %.not20, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = sub nsw i32 100, %i.s
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.u = phi i32 [ %i.l, %sub_0 ], [ %i.p, %sub_1 ], [ %i.t, %sub_2 ]
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.tail
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  switch i8 %i.w, label %bb.g [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit:       ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i = icmp eq i8 %i.w, 0
  %storemerge.i.v = select i1 %.not11.i, i64 3, i64 4
  %storemerge.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %storemerge.i.v ; 2 uses
  store ptr %storemerge.i, ptr %i.a, align 8
  br label %.loopexit

bb.g:                                             ; preds = %.tail, %bb.f
  call void @_ZN6Assimp11SMDImporter13ParseTriangleEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef %3)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !111

.loopexit:                                        ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
  %i.x = phi ptr [ %storemerge.i, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit ], [ %i.i, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit ] ; 3 uses
  %i.y = add i32 %i.d, 2
  store i32 %i.y, ptr %i.b, align 4
  %6 = ptrtoaddr ptr %i.x to i64
  %i.z = sub i64 %4, %6
  %scevgep.i.i5 = getelementptr i8, ptr %i.x, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.loopexit
  %.0.i.i6 = phi ptr [ %i.x, %.loopexit ], [ %i.ab, %bb.j ] ; 4 uses
  %i.aa = load i8, ptr %.0.i.i6, align 1
  switch i8 %i.aa, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit9 [
    i8 32, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %.not.i.i7 = icmp eq ptr %.0.i.i6, %3
  br i1 %.not.i.i7, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit9, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 1
  br label %bb.h, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit9: ; preds = %bb.h, %bb.i
  %.0.lcssa.i.i8 = phi ptr [ %.0.i.i6, %bb.h ], [ %scevgep.i.i5, %bb.i ]
  store ptr %.0.lcssa.i.i8, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter14ParseVASectionEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 6 uses
  %4 = ptrtoaddr ptr %3 to i64                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, %bb.a
  %.ph84 = phi ptr [ %.pre, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ], [ %1, %bb.a ]
  %.011.ph = phi i32 [ %spec.store.select, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ], [ 0, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
  %i.h = phi ptr [ %.1.lcssa.i.i, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit ], [ %.ph84, %.outer ] ; 3 uses
  %i.i = load i32, ptr %i.c, align 4
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.c, align 4
  %5 = ptrtoaddr ptr %i.h to i64
  %i.k = sub i64 %4, %5
  %scevgep.i.i = getelementptr i8, ptr %i.h, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.e ] ; 4 uses
  %i.l = load i8, ptr %.0.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.c, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %.0.i.i, %bb.c ], [ %scevgep.i.i, %bb.d ] ; 11 uses
  store ptr %i.n, ptr %i.b, align 8
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  %.not35 = icmp eq i8 %i.o, 0
  br i1 %.not35, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33, label %sub_0

sub_0:                                            ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 101, %i.p
  %.not49 = icmp eq i8 %i.o, 101
  br i1 %.not49, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = sub nsw i32 110, %i.t
  %.not50 = icmp eq i8 %i.s, 110
  br i1 %.not50, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 100, %i.x
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.z = phi i32 [ %i.q, %sub_0 ], [ %i.u, %sub_1 ], [ %i.y, %sub_2 ]
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.tail
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  switch i8 %i.ab, label %bb.g [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit:       ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i = icmp eq i8 %i.ab, 0
  %storemerge.i.v = select i1 %.not11.i, i64 3, i64 4
  %storemerge.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %storemerge.i.v ; 2 uses
  store ptr %storemerge.i, ptr %i.b, align 8
  br label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33

bb.g:                                             ; preds = %.tail, %bb.f
  %i.ac = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.35, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 4) #31
  %.not.i13 = icmp eq i32 %i.ac, 0
  br i1 %.not.i13, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  switch i8 %i.ae, label %bb.aa [
    i8 32, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.i
    i8 0, label %bb.i
    i8 12, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.not11.i15 = icmp eq i8 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %storemerge.i16 = select i1 %.not11.i15, ptr %i.ad, ptr %i.af ; 8 uses
  store ptr %storemerge.i16, ptr %i.b, align 8
  %6 = ptrtoaddr ptr %storemerge.i16 to i64
  %i.ag = sub i64 %4, %6
  %scevgep.i.i.i = getelementptr i8, ptr %storemerge.i16, i64 %i.ag ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0.i.i.i = phi ptr [ %storemerge.i16, %bb.i ], [ %i.ai, %bb.l ] ; 4 uses
  %i.ah = load i8, ptr %.0.i.i.i, align 1         ; 2 uses
  switch i8 %i.ah, label %.critedge.i.i.i [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %3
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.j, !llvm.loop !107

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.k
  %.pr.i = load i8, ptr %scevgep.i.i.i, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.j, %.critedge.i.ithread-pre-split.i
  %i.aj = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.ah, %bb.j ]
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.j ] ; 4 uses
  switch i8 %i.aj, label %bb.m [
    i8 13, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33
    i8 10, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33
    i8 0, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33
    i8 12, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33
  ]

bb.m:                                             ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0.lcssa.i.i.i, ptr %i.a, align 8
  %i.ak = load i8, ptr %.0.lcssa.i.i.i, align 1   ; 3 uses
  %i.al = icmp eq i8 %i.ak, 45
  switch i8 %i.ak, label %bb.o [
    i8 45, label %bb.n
    i8 43, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1 ; 3 uses
  store ptr %i.am, ptr %i.a, align 8
  %.pre.i.i = load i8, ptr %i.am, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = phi i8 [ %i.ak, %bb.m ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.ao = phi ptr [ %.0.lcssa.i.i.i, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.ap = add i8 %i.an, -58
  %or.cond11.i.i.i = icmp ult i8 %i.ap, -10
  br i1 %or.cond11.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %i.aq = phi i8 [ %i.av, %.lr.ph.i.i.i ], [ %i.an, %bb.o ]
  %.013.i.i.i = phi i32 [ %i.at, %.lr.ph.i.i.i ], [ 0, %bb.o ]
  %.0812.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.ao, %bb.o ]
  %i.ar = mul i32 %.013.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.aq, -48
  %i.as = zext nneg i8 %narrow.i.i.i to i32
  %i.at = add i32 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0812.i.i.i, i64 1 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = add i8 %i.av, -58
  %or.cond.i.i.i = icmp ult i8 %i.aw, -10
  br i1 %or.cond.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !108

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.o
  %i.ax = phi ptr [ %i.ao, %bb.o ], [ %i.au, %.lr.ph.i.i.i ] ; 5 uses
  %.0.lcssa.i.i4.i = phi i32 [ 0, %bb.o ], [ %i.at, %.lr.ph.i.i.i ] ; 4 uses
  store ptr %i.ax, ptr %i.b, align 8
  br i1 %i.al, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = add i32 %.0.lcssa.i.i4.i, 2147483647
  %or.cond.i.i = icmp ult i32 %i.ay, -2
  br i1 %or.cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = sub nsw i32 0, %.0.lcssa.i.i4.i
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ba = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 1 dereferenceable(24) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.63)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i, %bb.q, %bb.r
  %.0.i.i18 = phi i32 [ %i.az, %bb.q ], [ %.0.lcssa.i.i4.i, %bb.r ], [ %.0.lcssa.i.i4.i, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.bb, %.0.i.i18
  br i1 %.not, label %bb.t, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33

bb.t:                                             ; preds = %bb.s
  %7 = ptrtoaddr ptr %i.ax to i64
  %i.bc = sub i64 %4, %7
  %scevgep.i.i19 = getelementptr i8, ptr %i.ax, i64 %i.bc
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.0.i.i20 = phi ptr [ %i.ax, %bb.t ], [ %i.be, %bb.w ] ; 7 uses
  %i.bd = load i8, ptr %.0.i.i20, align 1
  switch i8 %i.bd, label %bb.v [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.v:                                             ; preds = %bb.u
  %.not22.i.i = icmp eq ptr %.0.i.i20, %3
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 1
  br label %bb.u, !llvm.loop !112

.critedge.i.i:                                    ; preds = %bb.v, %bb.u, %bb.u, %bb.u, %bb.u
  %.0.lcssa.i.i21 = phi ptr [ %.0.i.i20, %bb.u ], [ %.0.i.i20, %bb.u ], [ %.0.i.i20, %bb.u ], [ %.0.i.i20, %bb.u ], [ %scevgep.i.i19, %bb.v ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i21 to i64
  %i.bf = sub i64 %4, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i21, i64 %i.bf
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i21, %.critedge.i.i ], [ %i.bh, %bb.z ] ; 4 uses
  %i.bg = load i8, ptr %.1.i.i, align 1
  switch i8 %i.bg, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit [
    i8 13, label %bb.y
    i8 10, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %.not23.i.i = icmp eq ptr %.1.i.i, %3
  br i1 %.not23.i.i, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.x, !llvm.loop !113

_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit: ; preds = %bb.y, %bb.x
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.x ], [ %scevgep25.i.i, %bb.y ] ; 2 uses
  store ptr %.1.lcssa.i.i, ptr %i.b, align 8
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !114

bb.aa:                                            ; preds = %bb.g, %bb.h
  %i.bk = icmp eq i32 %.011.ph, 0
  %.pre61 = load ptr, ptr %i.e, align 8           ; 11 uses
  br i1 %i.bk, label %bb.ab, label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.f, align 8
  %.not.i22 = icmp eq ptr %.pre61, %i.bl
  br i1 %.not.i22, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %.pre61, align 8
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %.pre61, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre61, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.ptr.i.i, i8 0, i64 36, i1 false)
  store i32 -1, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre61, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre61, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.bn, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre61, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre61, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.bp, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.pre61, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bs = load ptr, ptr %i.e, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 200 ; 2 uses
  store ptr %i.bt, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.ad:                                            ; preds = %bb.ab
  call void @_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %.pre61)
  %.pre60 = load ptr, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.ad, %bb.ac, %bb.aa
  %i.bu = phi ptr [ %.pre60, %bb.ad ], [ %i.bt, %bb.ac ], [ %.pre61, %bb.aa ]
  %i.bv = add i32 %.011.ph, 1                     ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 3
  %spec.store.select = select i1 %i.bw, i32 0, i32 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 -192
  %i.by = zext i32 %spec.store.select to i64
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %i.bx, i64 %i.by
  call void @_ZN6Assimp11SMDImporter11ParseVertexEPKcPS2_S2_RNS_3SMD6VertexEb(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.b, align 8
  br label %.outer, !llvm.loop !114

_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33: ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %bb.s, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
  %i.ca = phi ptr [ %storemerge.i, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit ], [ %storemerge.i16, %.critedge.i.i.i ], [ %storemerge.i16, %.critedge.i.i.i ], [ %storemerge.i16, %.critedge.i.i.i ], [ %storemerge.i16, %.critedge.i.i.i ], [ %i.ax, %bb.s ], [ %i.n, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit ] ; 3 uses
  %.not12 = icmp eq i32 %.011.ph, 2
  br i1 %.not12, label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33
  %i.cb = load ptr, ptr %i.g, align 8
  %i.cc = load ptr, ptr %i.e, align 8             ; 8 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -200
  store ptr %i.ce, ptr %i.e, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6Assimp3SMD6VertexD2Ev.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #30
  br label %_ZN6Assimp3SMD6VertexD2Ev.exit.i.i

_ZN6Assimp3SMD6VertexD2Ev.exit.i.i:               ; preds = %bb.ag, %bb.af
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 -88
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %.not.i.i.i.i.1.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.1.i.i, label %_ZN6Assimp3SMD6VertexD2Ev.exit.1.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp3SMD6VertexD2Ev.exit.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cc, i64 -72
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #30
  br label %_ZN6Assimp3SMD6VertexD2Ev.exit.1.i.i

_ZN6Assimp3SMD6VertexD2Ev.exit.1.i.i:             ; preds = %bb.ah, %_ZN6Assimp3SMD6VertexD2Ev.exit.i.i
  %i.ct = getelementptr inbounds i8, ptr %i.cc, i64 -152
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %.not.i.i.i.i.2.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.2.i.i, label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6Assimp3SMD6VertexD2Ev.exit.1.i.i
  %i.cv = getelementptr inbounds i8, ptr %i.cc, i64 -136
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #30
  br label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit

_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit: ; preds = %bb.ai, %_ZN6Assimp3SMD6VertexD2Ev.exit.1.i.i, %bb.ae, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit.thread33
  %i.da = load i32, ptr %i.c, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.c, align 4
  %8 = ptrtoaddr ptr %i.ca to i64
  %i.dc = sub i64 %4, %8
  %scevgep.i.i23 = getelementptr i8, ptr %i.ca, i64 %i.dc
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit
  %.0.i.i24 = phi ptr [ %i.ca, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE8pop_backEv.exit ], [ %i.de, %bb.al ] ; 4 uses
  %i.dd = load i8, ptr %.0.i.i24, align 1
  switch i8 %i.dd, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit27 [
    i8 32, label %bb.ak
    i8 9, label %bb.ak
    i8 13, label %bb.ak
    i8 10, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %.not.i.i25 = icmp eq ptr %.0.i.i24, %3
  br i1 %.not.i.i25, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit27, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 1
  br label %bb.aj, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit27: ; preds = %bb.aj, %bb.ak
  %.0.lcssa.i.i26 = phi ptr [ %.0.i.i24, %bb.aj ], [ %scevgep.i.i23, %bb.ak ]
  store ptr %.0.lcssa.i.i26, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter20ParseSkeletonSectionEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 4 uses
  %4 = ptrtoaddr ptr %3 to i64                    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, %bb.a
  %.ph53 = phi ptr [ %.1.lcssa.i.i, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit ], [ %1, %bb.a ]
  %.0.ph = phi i32 [ %.0.i.i11, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.z
  %i.e = phi ptr [ %.pre, %bb.z ], [ %.ph53, %.outer ] ; 3 uses
  %i.f = load i32, ptr %i.c, align 4
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.c, align 4
  %5 = ptrtoaddr ptr %i.e to i64
  %i.h = sub i64 %4, %5
  %scevgep.i.i = getelementptr i8, ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.e ] ; 4 uses
  %i.i = load i8, ptr %.0.i.i, align 1
  switch i8 %i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.c, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.0.i.i, %bb.c ], [ %scevgep.i.i, %bb.d ] ; 12 uses
  store ptr %i.k, ptr %i.b, align 8
  %i.l = load i8, ptr %i.k, align 1               ; 3 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit, label %sub_0

sub_0:                                            ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit
  %i.m = zext i8 %i.l to i32
  %i.n = sub nsw i32 101, %i.m
  %.not29 = icmp eq i8 %i.l, 101
  br i1 %.not29, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 110, %i.q
  %.not30 = icmp eq i8 %i.p, 110
  br i1 %.not30, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = sub nsw i32 100, %i.u
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.w = phi i32 [ %i.n, %sub_0 ], [ %i.r, %sub_1 ], [ %i.v, %sub_2 ]
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.tail
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  switch i8 %i.y, label %bb.g [
    i8 32, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 9, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 13, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 10, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 0, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
    i8 12, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
  ]

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit:       ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i = icmp eq i8 %i.y, 0
  %storemerge.i.v = select i1 %.not11.i, i64 3, i64 4
  %storemerge.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %storemerge.i.v
  br label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit

bb.g:                                             ; preds = %.tail, %bb.f
  %i.z = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.35, ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 4) #31
  %.not.i6 = icmp eq i32 %i.z, 0
  br i1 %.not.i6, label %bb.h, label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  switch i8 %i.ab, label %bb.z [
    i8 32, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.i
    i8 0, label %bb.i
    i8 12, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.not11.i8 = icmp eq i8 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %storemerge.i9 = select i1 %.not11.i8, ptr %i.ac, ptr %i.ad ; 8 uses
  store ptr %storemerge.i9, ptr %i.b, align 8
  %6 = ptrtoaddr ptr %storemerge.i9 to i64
  %i.ae = sub i64 %4, %6
  %scevgep.i.i.i = getelementptr i8, ptr %storemerge.i9, i64 %i.ae ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0.i.i.i = phi ptr [ %storemerge.i9, %bb.i ], [ %i.ag, %bb.l ] ; 4 uses
  %i.af = load i8, ptr %.0.i.i.i, align 1         ; 2 uses
  switch i8 %i.af, label %.critedge.i.i.i [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %3
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.j, !llvm.loop !107

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.k
  %.pr.i = load i8, ptr %scevgep.i.i.i, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.j, %.critedge.i.ithread-pre-split.i
  %i.ah = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.af, %bb.j ]
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.j ] ; 4 uses
  switch i8 %i.ah, label %bb.m [
    i8 13, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 10, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 0, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 12, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
  ]

bb.m:                                             ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0.lcssa.i.i.i, ptr %i.a, align 8
  %i.ai = load i8, ptr %.0.lcssa.i.i.i, align 1   ; 3 uses
  %i.aj = icmp eq i8 %i.ai, 45
  switch i8 %i.ai, label %bb.o [
    i8 45, label %bb.n
    i8 43, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1 ; 3 uses
  store ptr %i.ak, ptr %i.a, align 8
  %.pre.i.i = load i8, ptr %i.ak, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = phi i8 [ %i.ai, %bb.m ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.am = phi ptr [ %.0.lcssa.i.i.i, %bb.m ], [ %i.ak, %bb.n ] ; 2 uses
  %i.an = add i8 %i.al, -58
  %or.cond11.i.i.i = icmp ult i8 %i.an, -10
  br i1 %or.cond11.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %i.ao = phi i8 [ %i.at, %.lr.ph.i.i.i ], [ %i.al, %bb.o ]
  %.013.i.i.i = phi i32 [ %i.ar, %.lr.ph.i.i.i ], [ 0, %bb.o ]
  %.0812.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.am, %bb.o ]
  %i.ap = mul i32 %.013.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.ao, -48
  %i.aq = zext nneg i8 %narrow.i.i.i to i32
  %i.ar = add i32 %i.ap, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0812.i.i.i, i64 1 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %i.au = add i8 %i.at, -58
  %or.cond.i.i.i = icmp ult i8 %i.au, -10
  br i1 %or.cond.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !108

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.o
  %i.av = phi ptr [ %i.am, %bb.o ], [ %i.as, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i4.i = phi i32 [ 0, %bb.o ], [ %i.ar, %.lr.ph.i.i.i ] ; 4 uses
  store ptr %i.av, ptr %i.b, align 8
  br i1 %i.aj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = add i32 %.0.lcssa.i.i4.i, 2147483647
  %or.cond.i.i = icmp ult i32 %i.aw, -2
  br i1 %or.cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = sub nsw i32 0, %.0.lcssa.i.i4.i
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ay = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 1 dereferenceable(24) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.63)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i, %bb.q, %bb.r
  %.0.i.i11 = phi i32 [ %i.ax, %bb.q ], [ %.0.lcssa.i.i4.i, %bb.r ], [ %.0.lcssa.i.i4.i, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load i32, ptr %i.d, align 8
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.0.i.i11, i32 %i.az)
  store i32 %.sroa.speculated, ptr %i.d, align 8
  %7 = ptrtoaddr ptr %i.av to i64
  %i.ba = sub i64 %4, %7
  %scevgep.i.i12 = getelementptr i8, ptr %i.av, i64 %i.ba
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.0.i.i13 = phi ptr [ %i.av, %bb.s ], [ %i.bc, %bb.v ] ; 7 uses
  %i.bb = load i8, ptr %.0.i.i13, align 1
  switch i8 %i.bb, label %bb.u [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.u:                                             ; preds = %bb.t
  %.not22.i.i = icmp eq ptr %.0.i.i13, %3
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 1
  br label %bb.t, !llvm.loop !112

.critedge.i.i:                                    ; preds = %bb.u, %bb.t, %bb.t, %bb.t, %bb.t
  %.0.lcssa.i.i14 = phi ptr [ %.0.i.i13, %bb.t ], [ %.0.i.i13, %bb.t ], [ %.0.i.i13, %bb.t ], [ %.0.i.i13, %bb.t ], [ %scevgep.i.i12, %bb.u ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i14 to i64
  %i.bd = sub i64 %4, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i14, i64 %i.bd
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i14, %.critedge.i.i ], [ %i.bf, %bb.y ] ; 4 uses
  %i.be = load i8, ptr %.1.i.i, align 1
  switch i8 %i.be, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.x
    i8 10, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not23.i.i = icmp eq ptr %.1.i.i, %3
  br i1 %.not23.i.i, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.w, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit: ; preds = %bb.w, %bb.x
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.w ], [ %scevgep25.i.i, %bb.x ] ; 2 uses
  store ptr %.1.lcssa.i.i, ptr %i.b, align 8
  %i.bg = load i32, ptr %i.c, align 4
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.c, align 4
  br label %.outer, !llvm.loop !115

bb.z:                                             ; preds = %bb.g, %bb.h
  call void @_ZN6Assimp11SMDImporter20ParseSkeletonElementEPKcPS2_S2_i(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef %.0.ph)
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b, !llvm.loop !115

_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit: ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit
  %i.bi = phi ptr [ %storemerge.i, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit ], [ %i.k, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit ], [ %storemerge.i9, %.critedge.i.i.i ], [ %storemerge.i9, %.critedge.i.i.i ], [ %storemerge.i9, %.critedge.i.i.i ], [ %storemerge.i9, %.critedge.i.i.i ]
  store ptr %i.bi, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64
  %5 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = sub i64 %5, %4
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.c, %bb.d ]  ; 7 uses
  %i.b = load i8, ptr %.0.i, align 1
  switch i8 %i.b, label %bb.c [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 35, label %.critedge.i
  ]

bb.c:                                             ; preds = %bb.b
  %.not22.i = icmp eq ptr %.0.i, %3
  br i1 %.not22.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b
  %.0.lcssa.i = phi ptr [ %.0.i, %bb.b ], [ %.0.i, %bb.b ], [ %.0.i, %bb.b ], [ %.0.i, %bb.b ], [ %scevgep.i, %bb.c ] ; 3 uses
  %.0.lcssa24.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.d = sub i64 %5, %.0.lcssa24.i
  %scevgep25.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.d
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.critedge.i
  %.1.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %i.f, %bb.g ] ; 4 uses
  %i.e = load i8, ptr %.1.i, align 1
  switch i8 %i.e, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit [
    i8 13, label %bb.f
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %.not23.i = icmp eq ptr %.1.i, %3
  br i1 %.not23.i, label %_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.e, !llvm.loop !113

_ZN6Assimp8SkipLineIcEEbPKT_PS3_S3_.exit:         ; preds = %bb.e, %bb.f
  %.1.lcssa.i = phi ptr [ %.1.i, %bb.e ], [ %scevgep25.i, %bb.f ]
  store ptr %.1.lcssa.i, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA29_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA29_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 46116860184273879
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 200
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 200
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit ] ; 11 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.p = load i32, ptr %.0911.i.i.i, align 8, !alias.scope !119, !noalias !116
  store i32 %i.p, ptr %.012.i.i.i, align 8, !alias.scope !116, !noalias !119
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 40, i1 false), !alias.scope !121
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !alias.scope !119, !noalias !116
  store <2 x ptr> %i.u, ptr %i.s, align 8, !alias.scope !116, !noalias !119
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !119, !noalias !116
  store ptr %i.x, ptr %i.v, align 8, !alias.scope !116, !noalias !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !alias.scope !119, !noalias !116
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 40, i1 false), !alias.scope !121
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !119, !noalias !116
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !alias.scope !116, !noalias !119
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !119, !noalias !116
  store ptr %i.af, ptr %i.ad, align 8, !alias.scope !116, !noalias !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !119, !noalias !116
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 40, i1 false), !alias.scope !121
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !119, !noalias !116
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !alias.scope !116, !noalias !119
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !119, !noalias !116
  store ptr %i.an, ptr %i.al, align 8, !alias.scope !116, !noalias !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false), !alias.scope !119, !noalias !116
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 200 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 200
  %.not.i.i.i = icmp eq ptr %i.ao, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit
  %i.aq = phi ptr [ %.pre, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.aq, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.av, ptr %i.j, align 8
  %i.aw = getelementptr inbounds nuw [200 x i8], ptr %i.o, i64 %1
  store ptr %i.aw, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3SMD4FaceESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 64051194700380387
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE7reserveEm:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !126, !noalias !123 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !128
  br label %_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !alias.scope !123, !noalias !126
  %i.x = load i64, ptr %i.r, align 8, !alias.scope !126, !noalias !123
  store i64 %i.x, ptr %i.p, align 8, !alias.scope !123, !noalias !126
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !126, !noalias !123
  br label %_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !123, !noalias !126
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !alias.scope !126, !noalias !123
  store i64 0, ptr %i.z, align 8, !alias.scope !126, !noalias !123
  store i8 0, ptr %i.r, align 8, !alias.scope !126, !noalias !123
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !126, !noalias !123
  store i32 %i.ad, ptr %i.ab, align 8, !alias.scope !123, !noalias !126
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !126, !noalias !123
  store i32 %i.ag, ptr %i.ae, align 8, !alias.scope !123, !noalias !126
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !126, !noalias !123
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !alias.scope !123, !noalias !126
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !126, !noalias !123
  store ptr %i.am, ptr %i.ak, align 8, !alias.scope !123, !noalias !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !126, !noalias !123
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.an, ptr noundef nonnull align 8 dereferenceable(65) %i.ao, i64 65, i1 false), !alias.scope !128
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %.not.i.i.i = icmp eq ptr %i.ap, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !129

_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, %_ZNSt12_Vector_baseIN6Assimp3SMD4BoneESaIS2_EE11_M_allocateEm.exit
  %i.ar = phi ptr [ %.pre, %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp3SMD4BoneESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN6Assimp3SMD4BoneESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.as = load ptr, ptr %i.b, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #30
  br label %_ZNSt12_Vector_baseIN6Assimp3SMD4BoneESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3SMD4BoneESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aw, ptr %i.j, align 8
  %i.ax = getelementptr inbounds nuw [144 x i8], ptr %i.o, i64 %1
  store ptr %i.ax, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3SMD4BoneESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6Assimp11SMDImporter15GetTextureIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 11 uses
  %.not20 = icmp eq ptr %i.c, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0722 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.010.021 = phi ptr [ %i.c, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.010.021, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.i = load i8, ptr %.0.i, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @tolower(i32 noundef %i.j) #31 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.m = load i8, ptr %.06.i, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = tail call i32 @tolower(i32 noundef %i.n) #31
  %i.p = and i32 %i.k, 255
  %i.q = icmp ne i32 %i.p, 0
  %.unshifted = xor i32 %i.k, %i.o
  %.mask = and i32 %.unshifted, 255
  %i.r = icmp eq i32 %.mask, 0                    ; 2 uses
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.c, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !130

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.c
  br i1 %i.r, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 32 ; 2 uses
  %i.u = add i32 %.0722, 1
  %.not = icmp eq ptr %i.t, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.v = ptrtoint ptr %i.e to i64
  %i.w = ptrtoint ptr %i.c to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 5
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %i.e, %i.ab
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.ac, ptr %i.e, align 8
  %i.ad = load ptr, ptr %1, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.af, ptr %i.a, align 8
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = load i64, ptr %i.a, align 8
  store i64 %i.ai, ptr %i.ac, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.e
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.al = load i64, ptr %i.a, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ap = load ptr, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.aq, ptr %i.d, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.1 = phi i32 [ %i.z, %bb.h ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.0722, %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter13ParseNodeInfoEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 4 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 7 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.g, align 4
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %3 to i64                    ; 11 uses
  %i.j = sub i64 %6, %5
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.l, %bb.d ] ; 4 uses
  %i.k = load i8, ptr %.0.i.i, align 1
  switch i8 %i.k, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.b, %bb.c
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 3 uses
  %7 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.m = sub i64 %6, %7
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.m ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit
  %.in = phi ptr [ %i.o, %bb.g ], [ %.0.lcssa.i.i, %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit ] ; 4 uses
  %i.n = load i8, ptr %.in, align 1               ; 2 uses
  switch i8 %i.n, label %.critedge.i.i.i [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %.not.i.i.i = icmp eq ptr %.in, %3
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.in, i64 1
  br label %bb.e, !llvm.loop !107

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.f
  %.pr.i = load i8, ptr %scevgep.i.i.i, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.e, %.critedge.i.ithread-pre-split.i
  %i.p = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.n, %bb.e ] ; 4 uses
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.critedge.i.ithread-pre-split.i ], [ %.in, %bb.e ] ; 2 uses
  switch i8 %i.p, label %bb.h [
    i8 13, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 10, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 0, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 12, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
  ]

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.q = add i8 %i.p, -58
  %or.cond11.i.i = icmp ult i8 %i.q, -10
  br i1 %or.cond11.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.r = phi i8 [ %i.w, %.lr.ph.i.i ], [ %i.p, %bb.h ]
  %.013.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ 0, %bb.h ]
  %.0812.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.0.lcssa.i.i.i, %bb.h ]
  %i.s = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.r, -48
  %i.t = zext nneg i8 %narrow.i.i to i32
  %i.u = add i32 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1               ; 3 uses
  %i.x = add i8 %i.w, -58
  %or.cond.i.i = icmp ult i8 %i.x, -10
  br i1 %or.cond.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !108

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.h
  %i.y = phi i8 [ %i.p, %bb.h ], [ %i.w, %.lr.ph.i.i ]
  %.1104.ph = phi i32 [ 0, %bb.h ], [ %i.u, %.lr.ph.i.i ] ; 3 uses
  %.1102.ph = phi ptr [ %.0.lcssa.i.i.i, %bb.h ], [ %i.v, %.lr.ph.i.i ] ; 3 uses
  %8 = ptrtoaddr ptr %.1102.ph to i64
  %i.z = sub i64 %6, %8
  %scevgep.i = getelementptr i8, ptr %.1102.ph, i64 %i.z ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.loopexit
  %i.aa = phi i8 [ %i.y, %.loopexit ], [ %.pre, %bb.k ] ; 2 uses
  %.0.i = phi ptr [ %.1102.ph, %.loopexit ], [ %i.ab, %bb.k ] ; 3 uses
  switch i8 %i.aa, label %.critedge.i [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not.i = icmp eq ptr %.0.i, %3
  br i1 %.not.i, label %.critedge.ithread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.ab, align 1
  br label %bb.i, !llvm.loop !107

.critedge.ithread-pre-split:                      ; preds = %bb.j
  %.pr109 = load i8, ptr %scevgep.i, align 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %.critedge.ithread-pre-split
  %i.ac = phi i8 [ %.pr109, %.critedge.ithread-pre-split ], [ %i.aa, %bb.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %scevgep.i, %.critedge.ithread-pre-split ], [ %.0.i, %bb.i ] ; 8 uses
  switch i8 %i.ac, label %bb.n [
    i8 13, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 10, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 0, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 12, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
  ]

_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit: ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.36)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.m:                                             ; preds = %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #27
  resume { ptr, i32 } %i.ae

bb.n:                                             ; preds = %.critedge.i
  %i.af = icmp eq i32 %.1104.ph, -1
  br i1 %i.af, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.i, ptr noundef nonnull @.str.37) #27 ; 0 uses
  %i.ah = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 1 dereferenceable(1024) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %9 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ai = sub i64 %6, %9
  %scevgep.i.i35 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ai
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.0.i.i36 = phi ptr [ %.0.lcssa.i, %bb.o ], [ %i.ak, %bb.r ] ; 7 uses
  %i.aj = load i8, ptr %.0.i.i36, align 1
  switch i8 %i.aj, label %bb.q [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.q:                                             ; preds = %bb.p
  %.not22.i.i = icmp eq ptr %.0.i.i36, %3
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 1
  br label %bb.p, !llvm.loop !112

.critedge.i.i:                                    ; preds = %bb.q, %bb.p, %bb.p, %bb.p, %bb.p
  %.0.lcssa.i.i37 = phi ptr [ %.0.i.i36, %bb.p ], [ %.0.i.i36, %bb.p ], [ %.0.i.i36, %bb.p ], [ %.0.i.i36, %bb.p ], [ %scevgep.i.i35, %bb.q ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i37 to i64
  %i.al = sub i64 %6, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i37, i64 %i.al
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i37, %.critedge.i.i ], [ %i.an, %bb.u ] ; 4 uses
  %i.am = load i8, ptr %.1.i.i, align 1
  switch i8 %i.am, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.t
    i8 10, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %.not23.i.i = icmp eq ptr %.1.i.i, %3
  br i1 %.not23.i.i, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.s, !llvm.loop !113

bb.v:                                             ; preds = %bb.n
  %i.ao = zext i32 %.1104.ph to i64               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 144               ; 2 uses
  %.not = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not, label %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = add nuw i32 %.1104.ph, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = sub nuw nsw i64 %i.ay, %i.aw
  tail call void @_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %i.az)
  %.pre144 = load ptr, ptr %i.ap, align 8
  %.pre145 = load i8, ptr %.0.lcssa.i, align 1
  br label %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit: ; preds = %bb.w, %bb.v
  %i.ba = phi i8 [ %.pre145, %bb.w ], [ %i.ac, %bb.v ]
  %i.bb = phi ptr [ %.pre144, %bb.w ], [ %i.as, %bb.v ]
  %i.bc = getelementptr inbounds nuw [144 x i8], ptr %i.bb, i64 %i.ao ; 10 uses
  %.not30 = icmp eq i8 %i.ba, 34
  br i1 %.not30, label %.split.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.bd = load i32, ptr %i.g, align 4
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.bd, ptr noundef nonnull @.str.38) #27 ; 0 uses
  %i.bf = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 1 dereferenceable(1024) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.critedge

.split.us:                                        ; preds = %_ZNSt6vectorIN6Assimp3SMD4BoneESaIS2_EE6resizeEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 8 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 34
  br i1 %i.bi, label %.split127.us, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us:      ; preds = %.split.us, %bb.x
  %i.bj = phi i8 [ %i.bl, %bb.x ], [ %i.bh, %.split.us ]
  %.0.us130 = phi ptr [ %i.bk, %bb.x ], [ %i.bg, %.split.us ]
  %.not31.us = icmp eq i8 %i.bj, 0
  br i1 %.not31.us, label %.split129.us, label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.us130, i64 1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 34
  br i1 %i.bm, label %.split127.us, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us, !llvm.loop !132

.critedge:                                        ; preds = %.critedge.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.0 = phi ptr [ %i.ce, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.0.lcssa.i, %.critedge.preheader ] ; 4 uses
  %i.bn = load i8, ptr %.0, align 1
  switch i8 %i.bn, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
    i8 0, label %bb.y
    i8 12, label %bb.y
  ]

.split127.us:                                     ; preds = %bb.x, %.split.us
  %.0.lcssa116.us = phi ptr [ %i.bg, %.split.us ], [ %i.bk, %bb.x ] ; 2 uses
  %i.bo = ptrtoint ptr %.0.lcssa116.us to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa116.us, i64 1
  br label %bb.af

bb.y:                                             ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  %i.bs = ptrtoint ptr %.0 to i64
  %i.bt = ptrtoint ptr %.0.lcssa.i to i64
  %i.bu = sub i64 %i.bs, %i.bt
  br label %bb.af

.split129.us:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.bv = load i32, ptr %i.g, align 4
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.bv, ptr noundef nonnull @.str.39) #27 ; 0 uses
  %i.bx = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull align 1 dereferenceable(1024) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %10 = ptrtoaddr ptr %i.bg to i64
  %i.by = sub i64 %6, %10
  %scevgep.i.i39 = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.split129.us
  %.0.i.i40 = phi ptr [ %i.bg, %.split129.us ], [ %i.ca, %bb.ab ] ; 7 uses
  %i.bz = load i8, ptr %.0.i.i40, align 1
  switch i8 %i.bz, label %bb.aa [
    i8 13, label %.critedge.i.i41
    i8 10, label %.critedge.i.i41
    i8 0, label %.critedge.i.i41
    i8 35, label %.critedge.i.i41
  ]

bb.aa:                                            ; preds = %bb.z
  %.not22.i.i48 = icmp eq ptr %.0.i.i40, %3
  br i1 %.not22.i.i48, label %.critedge.i.i41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 1
  br label %bb.z, !llvm.loop !112

.critedge.i.i41:                                  ; preds = %bb.aa, %bb.z, %bb.z, %bb.z, %bb.z
  %.0.lcssa.i.i42 = phi ptr [ %.0.i.i40, %bb.z ], [ %.0.i.i40, %bb.z ], [ %.0.i.i40, %bb.z ], [ %.0.i.i40, %bb.z ], [ %scevgep.i.i39, %bb.aa ] ; 3 uses
  %.0.lcssa24.i.i43 = ptrtoaddr ptr %.0.lcssa.i.i42 to i64
  %i.cb = sub i64 %6, %.0.lcssa24.i.i43
  %scevgep25.i.i44 = getelementptr i8, ptr %.0.lcssa.i.i42, i64 %i.cb
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.critedge.i.i41
  %.1.i.i45 = phi ptr [ %.0.lcssa.i.i42, %.critedge.i.i41 ], [ %i.cd, %bb.ae ] ; 4 uses
  %i.cc = load i8, ptr %.1.i.i45, align 1
  switch i8 %i.cc, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.ad
    i8 10, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %.not23.i.i46 = icmp eq ptr %.1.i.i45, %3
  br i1 %.not23.i.i46, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.i45, i64 1
  br label %bb.ac, !llvm.loop !113

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %.critedge, !llvm.loop !132

bb.af:                                            ; preds = %.split127.us, %bb.y
  %.0101163 = phi ptr [ %i.bg, %.split127.us ], [ %.0.lcssa.i, %bb.y ] ; 2 uses
  %.0103.in = phi i64 [ %i.bq, %.split127.us ], [ %i.bu, %bb.y ] ; 2 uses
  %.1 = phi ptr [ %i.br, %.split127.us ], [ %.0, %bb.y ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cf = and i64 %.0103.in, 4294967295           ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.cg, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.cf, ptr %i.c, align 8
  %i.ch = icmp samesign ugt i64 %i.cf, 15
  br i1 %i.ch, label %.noexc.i, label %._crit_edge.i.i50

.noexc.i:                                         ; preds = %bb.af
  %i.ci = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ci, ptr %4, align 8
  %i.cj = load i64, ptr %i.c, align 8
  store i64 %i.cj, ptr %i.cg, align 8
  br label %._crit_edge.i.i50

._crit_edge.i.i50:                                ; preds = %.noexc.i, %bb.af
  %i.ck = phi ptr [ %i.ci, %.noexc.i ], [ %i.cg, %bb.af ] ; 2 uses
  %trunc = trunc i64 %.0103.in to i32
  switch i32 %trunc, label %bb.ah [
    i32 1, label %bb.ag
    i32 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i50
  %i.cl = load i8, ptr %.0101163, align 1
  store i8 %i.cl, ptr %i.ck, align 1
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 1 %.0101163, i64 %i.cf, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i50
  %i.cm = load i64, ptr %i.c, align 8             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = load ptr, ptr %4, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.cq = load ptr, ptr %i.bc, align 8            ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load ptr, ptr %4, align 8               ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.cg                ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ai
  br i1 %i.cu, label %bb.aj, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ai
  br i1 %i.cu, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i = icmp eq ptr %4, %i.bc
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ak, !prof !133

bb.ak:                                            ; preds = %bb.aj
  switch i64 %i.cv, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cx = load i8, ptr %i.ct, align 1
  store i8 %i.cx, ptr %i.cq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.cy = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = load ptr, ptr %i.bc, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ct, ptr %i.bc, align 8
  %i.dd = load i64, ptr %i.cn, align 8
  store i64 %i.dd, ptr %i.dc, align 8
  %i.de = load i64, ptr %i.cg, align 8
  store i64 %i.de, ptr %i.cr, align 8
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.df = load i64, ptr %i.cr, align 8
  store ptr %i.ct, ptr %i.bc, align 8
  %i.dg = load i64, ptr %i.cn, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.dg, ptr %i.dh, align 8
  %i.di = load i64, ptr %i.cg, align 8
  store i64 %i.di, ptr %i.cr, align 8
  %.not.i52 = icmp eq ptr %i.cq, null
  br i1 %.not.i52, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cq, ptr %4, align 8
  store i64 %i.df, ptr %i.cg, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cg, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.an, %bb.ao
  %i.dj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cq, %bb.an ], [ %i.cg, %bb.ao ], [ %i.ct, %bb.aj ]
  store i64 0, ptr %i.cn, align 8
  store i8 0, ptr %i.dj, align 1
  %i.dk = load ptr, ptr %4, align 8               ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cg
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dm = load i64, ptr %i.cg, align 8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %11 = ptrtoaddr ptr %.1 to i64
  %i.dp = sub i64 %6, %11
  %scevgep.i.i.i53 = getelementptr i8, ptr %.1, i64 %i.dp ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i.i.i54 = phi ptr [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dr, %bb.ar ] ; 4 uses
  %i.dq = load i8, ptr %.0.i.i.i54, align 1       ; 2 uses
  switch i8 %i.dq, label %.critedge.i.i.i58 [
    i8 32, label %bb.aq
    i8 9, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %.not.i.i.i55 = icmp eq ptr %.0.i.i.i54, %3
  br i1 %.not.i.i.i55, label %.critedge.i.ithread-pre-split.i56, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i54, i64 1
  br label %bb.ap, !llvm.loop !107

.critedge.i.ithread-pre-split.i56:                ; preds = %bb.aq
  %.pr.i57 = load i8, ptr %scevgep.i.i.i53, align 1
  br label %.critedge.i.i.i58

.critedge.i.i.i58:                                ; preds = %bb.ap, %.critedge.i.ithread-pre-split.i56
  %i.ds = phi i8 [ %.pr.i57, %.critedge.i.ithread-pre-split.i56 ], [ %i.dq, %bb.ap ]
  %.0.lcssa.i.i.i59 = phi ptr [ %scevgep.i.i.i53, %.critedge.i.ithread-pre-split.i56 ], [ %.0.i.i.i54, %bb.ap ] ; 4 uses
  switch i8 %i.ds, label %bb.as [
    i8 13, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 10, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 0, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 12, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
  ]

bb.as:                                            ; preds = %.critedge.i.i.i58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0.lcssa.i.i.i59, ptr %i.b, align 8
  %i.dt = load i8, ptr %.0.lcssa.i.i.i59, align 1 ; 3 uses
  %i.du = icmp eq i8 %i.dt, 45
  switch i8 %i.dt, label %bb.au [
    i8 45, label %bb.at
    i8 43, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i59, i64 1 ; 3 uses
  store ptr %i.dv, ptr %i.b, align 8
  %.pre.i.i = load i8, ptr %i.dv, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dw = phi i8 [ %i.dt, %bb.as ], [ %.pre.i.i, %bb.at ] ; 2 uses
  %i.dx = phi ptr [ %.0.lcssa.i.i.i59, %bb.as ], [ %i.dv, %bb.at ] ; 2 uses
  %i.dy = add i8 %i.dw, -58
  %or.cond11.i.i.i = icmp ult i8 %i.dy, -10
  br i1 %or.cond11.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.au, %.lr.ph.i.i.i
  %i.dz = phi i8 [ %i.ee, %.lr.ph.i.i.i ], [ %i.dw, %bb.au ]
  %.013.i.i.i = phi i32 [ %i.ec, %.lr.ph.i.i.i ], [ 0, %bb.au ]
  %.0812.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i ], [ %i.dx, %bb.au ]
  %i.ea = mul i32 %.013.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.dz, -48
  %i.eb = zext nneg i8 %narrow.i.i.i to i32
  %i.ec = add i32 %i.ea, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0812.i.i.i, i64 1 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 1             ; 2 uses
  %i.ef = add i8 %i.ee, -58
  %or.cond.i.i.i = icmp ult i8 %i.ef, -10
  br i1 %or.cond.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !108

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.au
  %.08.lcssa.i.i.i = phi ptr [ %i.dx, %bb.au ], [ %i.ed, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i4.i = phi i32 [ 0, %bb.au ], [ %i.ec, %.lr.ph.i.i.i ] ; 4 uses
  br i1 %i.du, label %bb.av, label %bb.be

bb.av:                                            ; preds = %._crit_edge.i.i.i
  %i.eg = add i32 %.0.lcssa.i.i4.i, 2147483647
  %or.cond.i.i61 = icmp ult i32 %i.eg, -2
  br i1 %or.cond.i.i61, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eh = sub nsw i32 0, %.0.lcssa.i.i4.i
  br label %bb.be

bb.ax:                                            ; preds = %bb.av
  %i.ei = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ei, ptr noundef nonnull align 1 dereferenceable(24) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(47) @.str.63)
  br label %bb.be

_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit: ; preds = %.critedge.i.i.i58, %.critedge.i.i.i58, %.critedge.i.i.i58, %.critedge.i.i.i58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ej = load i32, ptr %i.g, align 4
  %i.ek = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.ej, ptr noundef nonnull @.str.40) #27 ; 0 uses
  %i.el = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.el, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
  %.0.i.i63 = phi ptr [ %.1, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit ], [ %i.en, %bb.ba ] ; 7 uses
  %i.em = load i8, ptr %.0.i.i63, align 1
  switch i8 %i.em, label %bb.az [
    i8 13, label %.critedge.i.i64
    i8 10, label %.critedge.i.i64
    i8 0, label %.critedge.i.i64
    i8 35, label %.critedge.i.i64
  ]

bb.az:                                            ; preds = %bb.ay
  %.not22.i.i71 = icmp eq ptr %.0.i.i63, %3
  br i1 %.not22.i.i71, label %.critedge.i.i64, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 1
  br label %bb.ay, !llvm.loop !112

.critedge.i.i64:                                  ; preds = %bb.az, %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %.0.lcssa.i.i65 = phi ptr [ %.0.i.i63, %bb.ay ], [ %.0.i.i63, %bb.ay ], [ %.0.i.i63, %bb.ay ], [ %.0.i.i63, %bb.ay ], [ %scevgep.i.i.i53, %bb.az ] ; 3 uses
  %.0.lcssa24.i.i66 = ptrtoaddr ptr %.0.lcssa.i.i65 to i64
  %i.eo = sub i64 %6, %.0.lcssa24.i.i66
  %scevgep25.i.i67 = getelementptr i8, ptr %.0.lcssa.i.i65, i64 %i.eo
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %.critedge.i.i64
  %.1.i.i68 = phi ptr [ %.0.lcssa.i.i65, %.critedge.i.i64 ], [ %i.eq, %bb.bd ] ; 4 uses
  %i.ep = load i8, ptr %.1.i.i68, align 1
  switch i8 %i.ep, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.bc
    i8 10, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %.not23.i.i69 = icmp eq ptr %.1.i.i68, %3
  br i1 %.not23.i.i69, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.i.i68, i64 1
  br label %bb.bb, !llvm.loop !113

bb.be:                                            ; preds = %._crit_edge.i.i.i, %bb.aw, %bb.ax
  %.0.i.i60 = phi i32 [ %i.eh, %bb.aw ], [ %.0.lcssa.i.i4.i, %bb.ax ], [ %.0.lcssa.i.i4.i, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %.0.i.i60, ptr %i.do, align 8
  %12 = ptrtoaddr ptr %.08.lcssa.i.i.i to i64
  %i.er = sub i64 %6, %12
  %scevgep.i.i73 = getelementptr i8, ptr %.08.lcssa.i.i.i, i64 %i.er
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.0.i.i74 = phi ptr [ %.08.lcssa.i.i.i, %bb.be ], [ %i.et, %bb.bh ] ; 7 uses
  %i.es = load i8, ptr %.0.i.i74, align 1
  switch i8 %i.es, label %bb.bg [
    i8 13, label %.critedge.i.i75
    i8 10, label %.critedge.i.i75
    i8 0, label %.critedge.i.i75
    i8 35, label %.critedge.i.i75
  ]

bb.bg:                                            ; preds = %bb.bf
  %.not22.i.i82 = icmp eq ptr %.0.i.i74, %3
  br i1 %.not22.i.i82, label %.critedge.i.i75, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 1
  br label %bb.bf, !llvm.loop !112

.critedge.i.i75:                                  ; preds = %bb.bg, %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %.0.lcssa.i.i76 = phi ptr [ %.0.i.i74, %bb.bf ], [ %.0.i.i74, %bb.bf ], [ %.0.i.i74, %bb.bf ], [ %.0.i.i74, %bb.bf ], [ %scevgep.i.i73, %bb.bg ] ; 3 uses
  %.0.lcssa24.i.i77 = ptrtoaddr ptr %.0.lcssa.i.i76 to i64
  %i.eu = sub i64 %6, %.0.lcssa24.i.i77
  %scevgep25.i.i78 = getelementptr i8, ptr %.0.lcssa.i.i76, i64 %i.eu
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %.critedge.i.i75
  %.1.i.i79 = phi ptr [ %.0.lcssa.i.i76, %.critedge.i.i75 ], [ %i.ew, %bb.bk ] ; 4 uses
  %i.ev = load i8, ptr %.1.i.i79, align 1
  switch i8 %i.ev, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.bj
    i8 10, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %.not23.i.i80 = icmp eq ptr %.1.i.i79, %3
  br i1 %.not23.i.i80, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.i.i79, i64 1
  br label %bb.bi, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit: ; preds = %bb.ad, %bb.ac, %bb.bc, %bb.bb, %bb.bj, %bb.bi, %bb.t, %bb.s
  %.1.lcssa.i.i47.sink = phi ptr [ %.1.i.i68, %bb.bb ], [ %scevgep25.i.i, %bb.t ], [ %.1.i.i79, %bb.bi ], [ %.1.i.i, %bb.s ], [ %scevgep25.i.i78, %bb.bj ], [ %scevgep25.i.i67, %bb.bc ], [ %.1.i.i45, %bb.ac ], [ %scevgep25.i.i44, %bb.ad ]
  %i.ex = load i32, ptr %i.g, align 4
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.g, align 4
  store ptr %.1.lcssa.i.i47.sink, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter13ParseTriangleEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 8
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.ptr.i.i, i8 0, i64 36, i1 false)
  store i32 -1, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.i, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.k, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %i.e)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.o, %bb.b ], [ %.pre, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -200
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.s = sub i64 %6, %5
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %.0.i = phi ptr [ %1, %_ZNSt6vectorIN6Assimp3SMD4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ], [ %i.u, %bb.f ] ; 4 uses
  %i.t = load i8, ptr %.0.i, align 1
  switch i8 %i.t, label %.critedge.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i21 = icmp eq ptr %.0.i, %3
  br i1 %.not.i21, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.d, !llvm.loop !107

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.promoted = phi ptr [ %.0.i, %bb.d ], [ %scevgep.i, %bb.e ] ; 6 uses
  store ptr %.promoted, ptr %i.c, align 8
  %i.v = load i8, ptr %.promoted, align 1
  switch i8 %i.v, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit:      ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.x = load i32, ptr %i.w, align 4
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.x, ptr noundef nonnull @.str.48) #27 ; 0 uses
  %i.z = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 1 dereferenceable(1024) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.p

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.critedge.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %i.aa = phi ptr [ %i.ab, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.promoted, %.critedge.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 1
  switch i8 %i.ac, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ], !llvm.loop !134

bb.g:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  store ptr %i.ab, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = ptrtoint ptr %.promoted to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ag, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.af, ptr %i.a, align 8
  %i.ah = icmp ugt i64 %i.af, 15
  br i1 %i.ah, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %4, align 8
  %i.aj = load i64, ptr %i.a, align 8
  store i64 %i.aj, ptr %i.ag, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.ak = phi ptr [ %i.ai, %.noexc.i ], [ %i.ag, %bb.g ] ; 2 uses
  switch i64 %i.af, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %.promoted, align 1
  store i8 %i.al, ptr %i.ak, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %.promoted, i64 %i.af, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.am = load i64, ptr %i.a, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.aq = invoke noundef i32 @_ZN6Assimp11SMDImporter15GetTextureIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  store i32 %i.aq, ptr %i.r, align 8
  %i.ar = load ptr, ptr %4, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.at = load i64, ptr %i.ag, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = sub i64 %6, %i.ad
  %scevgep.i.i = getelementptr i8, ptr %i.ab, i64 %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i.i = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ba, %bb.n ] ; 4 uses
  %i.az = load i8, ptr %.0.i.i, align 1
  switch i8 %i.az, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit [
    i8 32, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 10, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.l, !llvm.loop !106

_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit: ; preds = %bb.l, %bb.m
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.l ], [ %scevgep.i.i, %bb.m ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %i.c, align 8
  %.017.ptr = getelementptr inbounds i8, ptr %i.q, i64 -192
  call void @_ZN6Assimp11SMDImporter11ParseVertexEPKcPS2_S2_RNS_3SMD6VertexEb(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %.0.lcssa.i.i, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %.017.ptr, i1 noundef zeroext false)
  %.017.ptr.1 = getelementptr inbounds i8, ptr %i.q, i64 -128
  %i.bb = load ptr, ptr %i.c, align 8
  call void @_ZN6Assimp11SMDImporter11ParseVertexEPKcPS2_S2_RNS_3SMD6VertexEb(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.bb, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %.017.ptr.1, i1 noundef zeroext false)
  %.017.ptr.2 = getelementptr inbounds i8, ptr %i.q, i64 -64
  %i.bc = load ptr, ptr %i.c, align 8
  call void @_ZN6Assimp11SMDImporter11ParseVertexEPKcPS2_S2_RNS_3SMD6VertexEb(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.bc, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %.017.ptr.2, i1 noundef zeroext false)
  %i.bd = load ptr, ptr %i.c, align 8
  store ptr %i.bd, ptr %2, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %4, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ag
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.o
  %i.bh = load i64, ptr %i.ag, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.be

bb.p:                                             ; preds = %_ZN6Assimp11SMDImporter20SkipSpacesAndLineEndEPKcPS2_S2_.exit, %_ZN6Assimp10SkipSpacesIcEEbPKT_PS3_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %3 to i64
  %i.b = sub i64 %6, %5
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.b ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.d ] ; 4 uses
  %i.c = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.c, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.ithread-pre-split:                    ; preds = %bb.c
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.critedge.i.ithread-pre-split
  %i.e = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.c, %bb.b ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.b ] ; 4 uses
  %i.f = icmp ult i8 %i.e, 14
  br i1 %i.f, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0.lcssa.i.i, ptr %i.a, align 8
  %i.g = load i8, ptr %.0.lcssa.i.i, align 1      ; 3 uses
  %i.h = icmp eq i8 %i.g, 45
  switch i8 %i.g, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8
  %.pre.i = load i8, ptr %i.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi i8 [ %i.g, %bb.e ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.k = phi ptr [ %.0.lcssa.i.i, %bb.e ], [ %i.i, %bb.f ] ; 2 uses
  %i.l = add i8 %i.j, -58
  %or.cond11.i.i = icmp ult i8 %i.l, -10
  br i1 %or.cond11.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.m = phi i8 [ %i.r, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ 0, %bb.g ]
  %.0812.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.k, %bb.g ]
  %i.n = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.m, -48
  %i.o = zext nneg i8 %narrow.i.i to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = add i8 %i.r, -58
  %or.cond.i.i = icmp ult i8 %i.s, -10
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !108

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.g
  %.08.lcssa.i.i = phi ptr [ %i.k, %bb.g ], [ %i.q, %.lr.ph.i.i ]
  %.0.lcssa.i.i4 = phi i32 [ 0, %bb.g ], [ %i.p, %.lr.ph.i.i ] ; 4 uses
  %.not.i.i5 = icmp eq ptr %2, null
  br i1 %.not.i.i5, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  store ptr %.08.lcssa.i.i, ptr %2, align 8
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit.i

_ZN6Assimp9strtoul10EPKcPS1_.exit.i:              ; preds = %bb.h, %._crit_edge.i.i
  br i1 %i.h, label %bb.i, label %_ZN6Assimp8strtol10EPKcPS1_.exit

bb.i:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.i
  %i.t = add i32 %.0.lcssa.i.i4, 2147483647
  %or.cond.i = icmp ult i32 %i.t, -2
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = sub nsw i32 0, %.0.lcssa.i.i4
  br label %_ZN6Assimp8strtol10EPKcPS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.v = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(24) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(47) @.str.63)
  br label %_ZN6Assimp8strtol10EPKcPS1_.exit

_ZN6Assimp8strtol10EPKcPS1_.exit:                 ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.u, %bb.j ], [ %.0.lcssa.i.i4, %bb.k ], [ %.0.lcssa.i.i4, %_ZN6Assimp9strtoul10EPKcPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %.0.i, ptr %4, align 4
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

switch.hole_check:                                ; preds = %.critedge.i.i
  %switch.maskindex = zext nneg i8 %i.e to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %switch.hole_check, %_ZN6Assimp8strtol10EPKcPS1_.exit
  %i.w = phi i1 [ true, %_ZN6Assimp8strtol10EPKcPS1_.exit ], [ false, %switch.hole_check ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter11ParseVertexEPKcPS2_S2_RNS_3SMD6VertexEb(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 37 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.std::pair", align 4        ; 5 uses
  %7 = ptrtoaddr ptr %1 to i64
  %8 = ptrtoaddr ptr %3 to i64                    ; 12 uses
  %i.i = sub i64 %8, %7
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.k, %bb.d ] ; 4 uses
  %i.j = load i8, ptr %.0.i.i, align 1
  switch i8 %i.j, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 5 uses
  store ptr %i.l, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 36
  %9 = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %8, %9
  %scevgep.i.i.i = getelementptr i8, ptr %i.l, i64 %i.n ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.critedge.i.i
  %.0.i.i.i = phi ptr [ %i.l, %.critedge.i.i ], [ %i.p, %bb.g ] ; 4 uses
  %i.o = load i8, ptr %.0.i.i.i, align 1          ; 2 uses
  switch i8 %i.o, label %.critedge.i.i.i [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %3
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.e, !llvm.loop !107

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.f
  %.pr.i = load i8, ptr %scevgep.i.i.i, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.e, %.critedge.i.ithread-pre-split.i
  %i.q = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.o, %bb.e ]
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.e ] ; 4 uses
  switch i8 %i.q, label %bb.h [
    i8 13, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 10, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 0, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
    i8 12, label %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
  ]

bb.h:                                             ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.0.lcssa.i.i.i, ptr %i.f, align 8
  %i.r = load i8, ptr %.0.lcssa.i.i.i, align 1    ; 3 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.j [
    i8 45, label %bb.i
    i8 43, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1 ; 3 uses
  store ptr %i.t, ptr %i.f, align 8
  %.pre.i.i = load i8, ptr %i.t, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = phi i8 [ %i.r, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.v = phi ptr [ %.0.lcssa.i.i.i, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %i.w = add i8 %i.u, -58
  %or.cond11.i.i.i = icmp ult i8 %i.w, -10
  br i1 %or.cond11.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.x = phi i8 [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %bb.j ]
  %.013.i.i.i = phi i32 [ %i.aa, %.lr.ph.i.i.i ], [ 0, %bb.j ]
  %.0812.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.v, %bb.j ]
  %i.y = mul i32 %.013.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.x, -48
  %i.z = zext nneg i8 %narrow.i.i.i to i32
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0812.i.i.i, i64 1 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = add i8 %i.ac, -58
  %or.cond.i.i.i = icmp ult i8 %i.ad, -10
  br i1 %or.cond.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !108

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.j
  %i.ae = phi ptr [ %i.v, %bb.j ], [ %i.ab, %.lr.ph.i.i.i ] ; 5 uses
  %.0.lcssa.i.i4.i = phi i32 [ 0, %bb.j ], [ %i.aa, %.lr.ph.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.g, align 8
  br i1 %i.s, label %bb.k, label %bb.t

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.af = add i32 %.0.lcssa.i.i4.i, 2147483647
  %or.cond.i.i = icmp ult i32 %i.af, -2
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = sub nsw i32 0, %.0.lcssa.i.i4.i
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ah = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 1 dereferenceable(24) @.str.62, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(47) @.str.63)
  br label %bb.t

_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit: ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.aj, ptr noundef nonnull @.str.49) #27 ; 0 uses
  %i.al = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.al, ptr noundef nonnull align 1 dereferenceable(1024) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit
  %.0.i.i72 = phi ptr [ %i.l, %_ZN6Assimp11SMDImporter14ParseSignedIntEPKcPS2_S2_Ri.exit ], [ %i.an, %bb.p ] ; 7 uses
  %i.am = load i8, ptr %.0.i.i72, align 1
  switch i8 %i.am, label %bb.o [
    i8 13, label %.critedge.i.i73
    i8 10, label %.critedge.i.i73
    i8 0, label %.critedge.i.i73
    i8 35, label %.critedge.i.i73
  ]

bb.o:                                             ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %.0.i.i72, %3
  br i1 %.not22.i.i, label %.critedge.i.i73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 1
  br label %bb.n, !llvm.loop !112

.critedge.i.i73:                                  ; preds = %bb.o, %bb.n, %bb.n, %bb.n, %bb.n
  %.0.lcssa.i.i74 = phi ptr [ %.0.i.i72, %bb.n ], [ %.0.i.i72, %bb.n ], [ %.0.i.i72, %bb.n ], [ %.0.i.i72, %bb.n ], [ %scevgep.i.i.i, %bb.o ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i74 to i64
  %i.ao = sub i64 %8, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i74, i64 %i.ao
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.critedge.i.i73
  %.1.i.i = phi ptr [ %.0.lcssa.i.i74, %.critedge.i.i73 ], [ %i.aq, %bb.s ] ; 4 uses
  %i.ap = load i8, ptr %.1.i.i, align 1
  switch i8 %i.ap, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.r
    i8 10, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %.not23.i.i = icmp eq ptr %.1.i.i, %3
  br i1 %.not23.i.i, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.q, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit: ; preds = %bb.q, %bb.r
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.q ], [ %scevgep25.i.i, %bb.r ]
  %i.ar = load i32, ptr %i.ai, align 4
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ai, align 4
  store ptr %.1.lcssa.i.i, ptr %2, align 8
  br label %bb.bz

bb.t:                                             ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %.0.i.i70 = phi i32 [ %i.ag, %bb.l ], [ %.0.lcssa.i.i4.i, %bb.m ], [ %.0.lcssa.i.i4.i, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %.0.i.i70, ptr %i.m, align 4
  %10 = ptrtoaddr ptr %i.ae to i64
  %i.at = sub i64 %8, %10
  %scevgep.i.i.i75 = getelementptr i8, ptr %i.ae, i64 %i.at ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.0.i.i.i76 = phi ptr [ %i.ae, %bb.t ], [ %i.av, %bb.w ] ; 4 uses
  %i.au = load i8, ptr %.0.i.i.i76, align 1       ; 2 uses
  switch i8 %i.au, label %.critedge.i.i.i80 [
    i8 32, label %bb.v
    i8 9, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %.not.i.i.i77 = icmp eq ptr %.0.i.i.i76, %3
  br i1 %.not.i.i.i77, label %.critedge.i.ithread-pre-split.i78, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 1
  br label %bb.u, !llvm.loop !107

.critedge.i.ithread-pre-split.i78:                ; preds = %bb.v
  %.pr.i79 = load i8, ptr %scevgep.i.i.i75, align 1
  br label %.critedge.i.i.i80

.critedge.i.i.i80:                                ; preds = %bb.u, %.critedge.i.ithread-pre-split.i78
  %i.aw = phi i8 [ %.pr.i79, %.critedge.i.ithread-pre-split.i78 ], [ %i.au, %bb.u ]
  %.0.lcssa.i.i.i81 = phi ptr [ %scevgep.i.i.i75, %.critedge.i.ithread-pre-split.i78 ], [ %.0.i.i.i76, %bb.u ]
  switch i8 %i.aw, label %bb.ad [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit: ; preds = %.critedge.i.i.i80, %.critedge.i.i.i80, %.critedge.i.i.i80, %.critedge.i.i.i80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.ay, ptr noundef nonnull @.str.50) #27 ; 0 uses
  %i.ba = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 1 dereferenceable(1024) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
  %.0.i.i83 = phi ptr [ %i.ae, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit ], [ %i.bc, %bb.z ] ; 7 uses
  %i.bb = load i8, ptr %.0.i.i83, align 1
  switch i8 %i.bb, label %bb.y [
    i8 13, label %.critedge.i.i84
    i8 10, label %.critedge.i.i84
    i8 0, label %.critedge.i.i84
    i8 35, label %.critedge.i.i84
  ]

bb.y:                                             ; preds = %bb.x
  %.not22.i.i91 = icmp eq ptr %.0.i.i83, %3
  br i1 %.not22.i.i91, label %.critedge.i.i84, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i83, i64 1
  br label %bb.x, !llvm.loop !112

.critedge.i.i84:                                  ; preds = %bb.y, %bb.x, %bb.x, %bb.x, %bb.x
  %.0.lcssa.i.i85 = phi ptr [ %.0.i.i83, %bb.x ], [ %.0.i.i83, %bb.x ], [ %.0.i.i83, %bb.x ], [ %.0.i.i83, %bb.x ], [ %scevgep.i.i.i75, %bb.y ] ; 3 uses
  %.0.lcssa24.i.i86 = ptrtoaddr ptr %.0.lcssa.i.i85 to i64
  %i.bd = sub i64 %8, %.0.lcssa24.i.i86
  %scevgep25.i.i87 = getelementptr i8, ptr %.0.lcssa.i.i85, i64 %i.bd
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.critedge.i.i84
  %.1.i.i88 = phi ptr [ %.0.lcssa.i.i85, %.critedge.i.i84 ], [ %i.bf, %bb.ac ] ; 4 uses
  %i.be = load i8, ptr %.1.i.i88, align 1
  switch i8 %i.be, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit92 [
    i8 13, label %bb.ab
    i8 10, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %.not23.i.i89 = icmp eq ptr %.1.i.i88, %3
  br i1 %.not23.i.i89, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit92, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i.i88, i64 1
  br label %bb.aa, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit92: ; preds = %bb.aa, %bb.ab
  %.1.lcssa.i.i90 = phi ptr [ %.1.i.i88, %bb.aa ], [ %scevgep25.i.i87, %bb.ab ]
  %i.bg = load i32, ptr %i.ax, align 4
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ax, align 4
  store ptr %.1.lcssa.i.i90, ptr %2, align 8
  br label %bb.bz

bb.ad:                                            ; preds = %.critedge.i.i.i80
  %i.bi = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i81, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext true) ; 5 uses
  store ptr %i.bi, ptr %i.g, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %11 = ptrtoaddr ptr %i.bi to i64
  %i.bk = sub i64 %8, %11
  %scevgep.i.i.i93 = getelementptr i8, ptr %i.bi, i64 %i.bk ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  %.0.i.i.i94 = phi ptr [ %i.bi, %bb.ad ], [ %i.bm, %bb.ag ] ; 4 uses
  %i.bl = load i8, ptr %.0.i.i.i94, align 1       ; 2 uses
  switch i8 %i.bl, label %.critedge.i.i.i98 [
    i8 32, label %bb.af
    i8 9, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %.not.i.i.i95 = icmp eq ptr %.0.i.i.i94, %3
  br i1 %.not.i.i.i95, label %.critedge.i.ithread-pre-split.i96, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i94, i64 1
  br label %bb.ae, !llvm.loop !107

.critedge.i.ithread-pre-split.i96:                ; preds = %bb.af
  %.pr.i97 = load i8, ptr %scevgep.i.i.i93, align 1
  br label %.critedge.i.i.i98

.critedge.i.i.i98:                                ; preds = %bb.ae, %.critedge.i.ithread-pre-split.i96
  %i.bn = phi i8 [ %.pr.i97, %.critedge.i.ithread-pre-split.i96 ], [ %i.bl, %bb.ae ]
  %.0.lcssa.i.i.i99 = phi ptr [ %scevgep.i.i.i93, %.critedge.i.ithread-pre-split.i96 ], [ %.0.i.i.i94, %bb.ae ]
  switch i8 %i.bn, label %bb.an [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100: ; preds = %.critedge.i.i.i98, %.critedge.i.i.i98, %.critedge.i.i.i98, %.critedge.i.i.i98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.bp, ptr noundef nonnull @.str.51) #27 ; 0 uses
  %i.br = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.br, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100
  %.0.i.i102 = phi ptr [ %i.bi, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit100 ], [ %i.bt, %bb.aj ] ; 7 uses
  %i.bs = load i8, ptr %.0.i.i102, align 1
  switch i8 %i.bs, label %bb.ai [
    i8 13, label %.critedge.i.i103
    i8 10, label %.critedge.i.i103
    i8 0, label %.critedge.i.i103
    i8 35, label %.critedge.i.i103
  ]

bb.ai:                                            ; preds = %bb.ah
  %.not22.i.i110 = icmp eq ptr %.0.i.i102, %3
  br i1 %.not22.i.i110, label %.critedge.i.i103, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 1
  br label %bb.ah, !llvm.loop !112

.critedge.i.i103:                                 ; preds = %bb.ai, %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %.0.lcssa.i.i104 = phi ptr [ %.0.i.i102, %bb.ah ], [ %.0.i.i102, %bb.ah ], [ %.0.i.i102, %bb.ah ], [ %.0.i.i102, %bb.ah ], [ %scevgep.i.i.i93, %bb.ai ] ; 3 uses
  %.0.lcssa24.i.i105 = ptrtoaddr ptr %.0.lcssa.i.i104 to i64
  %i.bu = sub i64 %8, %.0.lcssa24.i.i105
  %scevgep25.i.i106 = getelementptr i8, ptr %.0.lcssa.i.i104, i64 %i.bu
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.critedge.i.i103
  %.1.i.i107 = phi ptr [ %.0.lcssa.i.i104, %.critedge.i.i103 ], [ %i.bw, %bb.am ] ; 4 uses
  %i.bv = load i8, ptr %.1.i.i107, align 1
  switch i8 %i.bv, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit111 [
    i8 13, label %bb.al
    i8 10, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %.not23.i.i108 = icmp eq ptr %.1.i.i107, %3
  br i1 %.not23.i.i108, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit111, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i.i107, i64 1
  br label %bb.ak, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit111: ; preds = %bb.ak, %bb.al
  %.1.lcssa.i.i109 = phi ptr [ %.1.i.i107, %bb.ak ], [ %scevgep25.i.i106, %bb.al ]
  %i.bx = load i32, ptr %i.bo, align 4
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bo, align 4
  store ptr %.1.lcssa.i.i109, ptr %2, align 8
  br label %bb.bz

bb.an:                                            ; preds = %.critedge.i.i.i98
  %i.bz = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i99, ptr noundef nonnull align 4 dereferenceable(4) %i.bj, i1 noundef zeroext true) ; 5 uses
  store ptr %i.bz, ptr %i.g, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %12 = ptrtoaddr ptr %i.bz to i64
  %i.cb = sub i64 %8, %12
  %scevgep.i.i.i112 = getelementptr i8, ptr %i.bz, i64 %i.cb ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.0.i.i.i113 = phi ptr [ %i.bz, %bb.an ], [ %i.cd, %bb.aq ] ; 4 uses
  %i.cc = load i8, ptr %.0.i.i.i113, align 1      ; 2 uses
  switch i8 %i.cc, label %.critedge.i.i.i117 [
    i8 32, label %bb.ap
    i8 9, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %.not.i.i.i114 = icmp eq ptr %.0.i.i.i113, %3
  br i1 %.not.i.i.i114, label %.critedge.i.ithread-pre-split.i115, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i113, i64 1
  br label %bb.ao, !llvm.loop !107

.critedge.i.ithread-pre-split.i115:               ; preds = %bb.ap
  %.pr.i116 = load i8, ptr %scevgep.i.i.i112, align 1
  br label %.critedge.i.i.i117

.critedge.i.i.i117:                               ; preds = %bb.ao, %.critedge.i.ithread-pre-split.i115
  %i.ce = phi i8 [ %.pr.i116, %.critedge.i.ithread-pre-split.i115 ], [ %i.cc, %bb.ao ]
  %.0.lcssa.i.i.i118 = phi ptr [ %scevgep.i.i.i112, %.critedge.i.ithread-pre-split.i115 ], [ %.0.i.i.i113, %bb.ao ]
  switch i8 %i.ce, label %bb.ax [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119: ; preds = %.critedge.i.i.i117, %.critedge.i.i.i117, %.critedge.i.i.i117, %.critedge.i.i.i117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.cg, ptr noundef nonnull @.str.52) #27 ; 0 uses
  %i.ci = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 1 dereferenceable(1024) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119
  %.0.i.i121 = phi ptr [ %i.bz, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit119 ], [ %i.ck, %bb.at ] ; 7 uses
  %i.cj = load i8, ptr %.0.i.i121, align 1
  switch i8 %i.cj, label %bb.as [
    i8 13, label %.critedge.i.i122
    i8 10, label %.critedge.i.i122
    i8 0, label %.critedge.i.i122
    i8 35, label %.critedge.i.i122
  ]

bb.as:                                            ; preds = %bb.ar
  %.not22.i.i129 = icmp eq ptr %.0.i.i121, %3
  br i1 %.not22.i.i129, label %.critedge.i.i122, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i121, i64 1
  br label %bb.ar, !llvm.loop !112

.critedge.i.i122:                                 ; preds = %bb.as, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %.0.lcssa.i.i123 = phi ptr [ %.0.i.i121, %bb.ar ], [ %.0.i.i121, %bb.ar ], [ %.0.i.i121, %bb.ar ], [ %.0.i.i121, %bb.ar ], [ %scevgep.i.i.i112, %bb.as ] ; 3 uses
  %.0.lcssa24.i.i124 = ptrtoaddr ptr %.0.lcssa.i.i123 to i64
  %i.cl = sub i64 %8, %.0.lcssa24.i.i124
  %scevgep25.i.i125 = getelementptr i8, ptr %.0.lcssa.i.i123, i64 %i.cl
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %.critedge.i.i122
  %.1.i.i126 = phi ptr [ %.0.lcssa.i.i123, %.critedge.i.i122 ], [ %i.cn, %bb.aw ] ; 4 uses
  %i.cm = load i8, ptr %.1.i.i126, align 1
  switch i8 %i.cm, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit130 [
    i8 13, label %bb.av
    i8 10, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %.not23.i.i127 = icmp eq ptr %.1.i.i126, %3
  br i1 %.not23.i.i127, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit130, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i.i126, i64 1
  br label %bb.au, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit130: ; preds = %bb.au, %bb.av
  %.1.lcssa.i.i128 = phi ptr [ %.1.i.i126, %bb.au ], [ %scevgep25.i.i125, %bb.av ]
  %i.co = load i32, ptr %i.cf, align 4
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cf, align 4
  store ptr %.1.lcssa.i.i128, ptr %2, align 8
  br label %bb.bz

bb.ax:                                            ; preds = %.critedge.i.i.i117
  %i.cq = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i118, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, i1 noundef zeroext true) ; 5 uses
  store ptr %i.cq, ptr %i.g, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %13 = ptrtoaddr ptr %i.cq to i64
  %i.cs = sub i64 %8, %13
  %scevgep.i.i.i131 = getelementptr i8, ptr %i.cq, i64 %i.cs ; 3 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.0.i.i.i132 = phi ptr [ %i.cq, %bb.ax ], [ %i.cu, %bb.ba ] ; 4 uses
  %i.ct = load i8, ptr %.0.i.i.i132, align 1      ; 2 uses
  switch i8 %i.ct, label %.critedge.i.i.i136 [
    i8 32, label %bb.az
    i8 9, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %.not.i.i.i133 = icmp eq ptr %.0.i.i.i132, %3
  br i1 %.not.i.i.i133, label %.critedge.i.ithread-pre-split.i134, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i132, i64 1
  br label %bb.ay, !llvm.loop !107

.critedge.i.ithread-pre-split.i134:               ; preds = %bb.az
  %.pr.i135 = load i8, ptr %scevgep.i.i.i131, align 1
  br label %.critedge.i.i.i136

.critedge.i.i.i136:                               ; preds = %bb.ay, %.critedge.i.ithread-pre-split.i134
  %i.cv = phi i8 [ %.pr.i135, %.critedge.i.ithread-pre-split.i134 ], [ %i.ct, %bb.ay ]
  %.0.lcssa.i.i.i137 = phi ptr [ %scevgep.i.i.i131, %.critedge.i.ithread-pre-split.i134 ], [ %.0.i.i.i132, %bb.ay ]
  switch i8 %i.cv, label %bb.bh [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138: ; preds = %.critedge.i.i.i136, %.critedge.i.i.i136, %.critedge.i.i.i136, %.critedge.i.i.i136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.cx, ptr noundef nonnull @.str.53) #27 ; 0 uses
  %i.cz = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cz, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138
  %.0.i.i140 = phi ptr [ %i.cq, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit138 ], [ %i.db, %bb.bd ] ; 7 uses
  %i.da = load i8, ptr %.0.i.i140, align 1
  switch i8 %i.da, label %bb.bc [
    i8 13, label %.critedge.i.i141
    i8 10, label %.critedge.i.i141
    i8 0, label %.critedge.i.i141
    i8 35, label %.critedge.i.i141
  ]

bb.bc:                                            ; preds = %bb.bb
  %.not22.i.i148 = icmp eq ptr %.0.i.i140, %3
  br i1 %.not22.i.i148, label %.critedge.i.i141, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i140, i64 1
  br label %bb.bb, !llvm.loop !112

.critedge.i.i141:                                 ; preds = %bb.bc, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %.0.lcssa.i.i142 = phi ptr [ %.0.i.i140, %bb.bb ], [ %.0.i.i140, %bb.bb ], [ %.0.i.i140, %bb.bb ], [ %.0.i.i140, %bb.bb ], [ %scevgep.i.i.i131, %bb.bc ] ; 3 uses
  %.0.lcssa24.i.i143 = ptrtoaddr ptr %.0.lcssa.i.i142 to i64
  %i.dc = sub i64 %8, %.0.lcssa24.i.i143
  %scevgep25.i.i144 = getelementptr i8, ptr %.0.lcssa.i.i142, i64 %i.dc
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %.critedge.i.i141
  %.1.i.i145 = phi ptr [ %.0.lcssa.i.i142, %.critedge.i.i141 ], [ %i.de, %bb.bg ] ; 4 uses
  %i.dd = load i8, ptr %.1.i.i145, align 1
  switch i8 %i.dd, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit149 [
    i8 13, label %bb.bf
    i8 10, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %.not23.i.i146 = icmp eq ptr %.1.i.i145, %3
  br i1 %.not23.i.i146, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit149, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.de = getelementptr inbounds nuw i8, ptr %.1.i.i145, i64 1
  br label %bb.be, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit149: ; preds = %bb.be, %bb.bf
  %.1.lcssa.i.i147 = phi ptr [ %.1.i.i145, %bb.be ], [ %scevgep25.i.i144, %bb.bf ]
  %i.df = load i32, ptr %i.cw, align 4
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.cw, align 4
  store ptr %.1.lcssa.i.i147, ptr %2, align 8
  br label %bb.bz

bb.bh:                                            ; preds = %.critedge.i.i.i136
  %i.dh = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i137, ptr noundef nonnull align 4 dereferenceable(4) %i.cr, i1 noundef zeroext true) ; 4 uses
  store ptr %i.dh, ptr %i.g, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %14 = ptrtoaddr ptr %i.dh to i64
  %i.dj = sub i64 %8, %14
  %scevgep.i.i.i150 = getelementptr i8, ptr %i.dh, i64 %i.dj ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %bb.bh
  %.0.i.i.i151 = phi ptr [ %i.dh, %bb.bh ], [ %i.dl, %bb.bk ] ; 4 uses
  %i.dk = load i8, ptr %.0.i.i.i151, align 1      ; 2 uses
  switch i8 %i.dk, label %.critedge.i.i.i155 [
    i8 32, label %bb.bj
    i8 9, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %.not.i.i.i152 = icmp eq ptr %.0.i.i.i151, %3
  br i1 %.not.i.i.i152, label %.critedge.i.ithread-pre-split.i153, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i151, i64 1
  br label %bb.bi, !llvm.loop !107

.critedge.i.ithread-pre-split.i153:               ; preds = %bb.bj
  %.pr.i154 = load i8, ptr %scevgep.i.i.i150, align 1
  br label %.critedge.i.i.i155

.critedge.i.i.i155:                               ; preds = %bb.bi, %.critedge.i.ithread-pre-split.i153
  %i.dm = phi i8 [ %.pr.i154, %.critedge.i.ithread-pre-split.i153 ], [ %i.dk, %bb.bi ]
  %.0.lcssa.i.i.i156 = phi ptr [ %scevgep.i.i.i150, %.critedge.i.ithread-pre-split.i153 ], [ %.0.i.i.i151, %bb.bi ]
  switch i8 %i.dm, label %bb.bl [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit157
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit157
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit157
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit157
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit157: ; preds = %.critedge.i.i.i155, %.critedge.i.i.i155, %.critedge.i.i.i155, %.critedge.i.i.i155
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.54)
  %i.dn = load ptr, ptr %i.g, align 8
  %i.do = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.dn, ptr noundef nonnull %i.g, ptr noundef %3) ; 0 uses
  %i.dp = load ptr, ptr %i.g, align 8
  store ptr %i.dp, ptr %2, align 8
  br label %bb.bz

bb.bl:                                            ; preds = %.critedge.i.i.i155
  %i.dq = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i156, ptr noundef nonnull align 4 dereferenceable(4) %i.di, i1 noundef zeroext true) ; 2 uses
  store ptr %i.dq, ptr %i.g, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ds = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.dq, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.dr)
  br i1 %i.ds, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.55)
  %i.dt = load ptr, ptr %i.g, align 8
  %i.du = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.dt, ptr noundef nonnull %i.g, ptr noundef %3) ; 0 uses
  %i.dv = load ptr, ptr %i.g, align 8
  store ptr %i.dv, ptr %2, align 8
  br label %bb.bz

bb.bn:                                            ; preds = %bb.bl
  %i.dw = load ptr, ptr %i.g, align 8             ; 2 uses
  br i1 %5, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.dx = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.dw, ptr noundef nonnull %i.g, ptr noundef %3) ; 0 uses
  %i.dy = load ptr, ptr %i.g, align 8
  store ptr %i.dy, ptr %2, align 8
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bn
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ea = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.dw, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.dz)
  br i1 %i.ea, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.56)
  %i.eb = load ptr, ptr %i.g, align 8
  %i.ec = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.eb, ptr noundef nonnull %i.g, ptr noundef %3) ; 0 uses
  %i.ed = load ptr, ptr %i.g, align 8
  store ptr %i.ed, ptr %2, align 8
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %i.ee = load ptr, ptr %i.g, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.eg = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.ee, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ef)
  br i1 %i.eg, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.57)
  %i.eh = load ptr, ptr %i.g, align 8
  %i.ei = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.eh, ptr noundef nonnull %i.g, ptr noundef %3) ; 0 uses
  %i.ej = load ptr, ptr %i.g, align 8
  store ptr %i.ej, ptr %2, align 8
  br label %bb.bz

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i32 0, ptr %i.h, align 4
  %i.ek = load ptr, ptr %i.g, align 8
  %i.el = call noundef zeroext i1 @_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj(ptr nonnull align 8 poison, ptr noundef %i.ek, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br i1 %i.el, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.em = load ptr, ptr %i.g, align 8
  br label %.critedge

bb.bv:                                            ; preds = %bb.bt
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.eo = load i32, ptr %i.h, align 4
  %i.ep = zext i32 %i.eo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 0, ptr %6, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float 0.000000e+00, ptr %i.eq, align 4
  call void @_ZNSt6vectorISt4pairIjfESaIS1_EE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 noundef %i.ep, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.er = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not180 = icmp eq ptr %i.er, %i.et
  br i1 %.not180, label %.critedge65, label %.lr.ph

bb.bw:                                            ; preds = %bb.bx
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0158.0181, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eu, %i.et
  br i1 %.not, label %.critedge65, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bv, %bb.bw
  %.sroa.0158.0181 = phi ptr [ %i.eu, %bb.bw ], [ %i.er, %bb.bv ] ; 3 uses
  %i.ev = load ptr, ptr %i.g, align 8
  %i.ew = call noundef zeroext i1 @_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj(ptr nonnull align 8 poison, ptr noundef %i.ev, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0158.0181)
  %i.ex = load ptr, ptr %i.g, align 8             ; 2 uses
  br i1 %i.ew, label %bb.bx, label %.critedge

bb.bx:                                            ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0158.0181, i64 4
  %i.ez = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.ex, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ey)
  br i1 %i.ez, label %bb.bw, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fa = load ptr, ptr %i.g, align 8
  br label %.critedge

.critedge65:                                      ; preds = %bb.bw, %bb.bv
  %i.fb = load ptr, ptr %i.g, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.by, %.critedge65, %bb.bu
  %.sink = phi ptr [ %i.fa, %bb.by ], [ %i.em, %bb.bu ], [ %i.fb, %.critedge65 ], [ %i.ex, %.lr.ph ]
  %i.fc = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %.sink, ptr noundef nonnull %i.g, ptr noundef %3) ; 0 uses
  %i.fd = load ptr, ptr %i.g, align 8
  store ptr %i.fd, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.bz

bb.bz:                                            ; preds = %.critedge, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit157, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit149, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit130, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit111, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit92, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter20ParseSkeletonElementEPKcPS2_S2_i(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 4 uses
  %i.e = alloca ptr, align 8                      ; 21 uses
  %5 = alloca %class.aiVector3t, align 8          ; 8 uses
  %6 = alloca %class.aiVector3t, align 8          ; 8 uses
  %7 = alloca %class.aiMatrix4x4t, align 4        ; 15 uses
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.i, align 8
  %8 = ptrtoaddr ptr %1 to i64
  %9 = ptrtoaddr ptr %3 to i64                    ; 11 uses
  %i.j = sub i64 %9, %8
  %scevgep.i.i.i = getelementptr i8, ptr %1, i64 %i.j ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i.i = phi ptr [ %1, %bb.a ], [ %i.l, %bb.d ] ; 4 uses
  %i.k = load i8, ptr %.0.i.i.i, align 1          ; 2 uses
  switch i8 %i.k, label %.critedge.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %3
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.c
  %.pr.i = load i8, ptr %scevgep.i.i.i, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.b, %.critedge.i.ithread-pre-split.i
  %i.m = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.k, %bb.b ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.b ] ; 2 uses
  switch i8 %i.m, label %bb.e [
    i8 13, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 10, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 0, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
    i8 12, label %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
  ]

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.n = add i8 %i.m, -58
  %or.cond11.i.i = icmp ult i8 %i.n, -10
  br i1 %or.cond11.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.o = phi i8 [ %i.t, %.lr.ph.i.i ], [ %i.m, %bb.e ]
  %.013.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.e ]
  %.0812.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.0.lcssa.i.i.i, %bb.e ]
  %i.p = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.o, -48
  %i.q = zext nneg i8 %narrow.i.i to i32
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = add i8 %i.t, -58
  %or.cond.i.i = icmp ult i8 %i.u, -10
  br i1 %or.cond.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !108

_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit: ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  %i.v = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull @.str.36)
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit
  %.0.i.i = phi ptr [ %1, %_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj.exit ], [ %i.x, %bb.h ] ; 7 uses
  %i.w = load i8, ptr %.0.i.i, align 1
  switch i8 %i.w, label %bb.g [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.g:                                             ; preds = %bb.f
  %.not22.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.f, !llvm.loop !112

.critedge.i.i:                                    ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f
  %.0.lcssa.i.i34 = phi ptr [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.f ], [ %scevgep.i.i.i, %bb.g ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i34 to i64
  %i.y = sub i64 %9, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i34, i64 %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i34, %.critedge.i.i ], [ %i.aa, %bb.k ] ; 4 uses
  %i.z = load i8, ptr %.1.i.i, align 1
  switch i8 %i.z, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit [
    i8 13, label %bb.j
    i8 10, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not23.i.i = icmp eq ptr %.1.i.i, %3
  br i1 %.not23.i.i, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.i, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit: ; preds = %bb.i, %bb.j
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %scevgep25.i.i, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4
  br label %bb.bh

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %i.ae = zext i32 %i.r to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.af = phi ptr [ %.0.lcssa.i.i.i, %bb.e ], [ %i.s, %.loopexit.loopexit ] ; 8 uses
  %.0.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %i.ae, %.loopexit.loopexit ] ; 2 uses
  store ptr %i.af, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 144
  %.not = icmp ugt i64 %i.an, %.0.lcssa.i.i
  br i1 %.not, label %bb.s, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.ap, ptr noundef nonnull @.str.41) #27 ; 0 uses
  %i.ar = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 1 dereferenceable(1024) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %10 = ptrtoaddr ptr %i.af to i64
  %i.as = sub i64 %9, %10
  %scevgep.i.i35 = getelementptr i8, ptr %i.af, i64 %i.as
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.0.i.i36 = phi ptr [ %i.af, %bb.l ], [ %i.au, %bb.o ] ; 7 uses
  %i.at = load i8, ptr %.0.i.i36, align 1
  switch i8 %i.at, label %bb.n [
    i8 13, label %.critedge.i.i37
    i8 10, label %.critedge.i.i37
    i8 0, label %.critedge.i.i37
    i8 35, label %.critedge.i.i37
  ]

bb.n:                                             ; preds = %bb.m
  %.not22.i.i44 = icmp eq ptr %.0.i.i36, %3
  br i1 %.not22.i.i44, label %.critedge.i.i37, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 1
  br label %bb.m, !llvm.loop !112

.critedge.i.i37:                                  ; preds = %bb.n, %bb.m, %bb.m, %bb.m, %bb.m
  %.0.lcssa.i.i38 = phi ptr [ %.0.i.i36, %bb.m ], [ %.0.i.i36, %bb.m ], [ %.0.i.i36, %bb.m ], [ %.0.i.i36, %bb.m ], [ %scevgep.i.i35, %bb.n ] ; 3 uses
  %.0.lcssa24.i.i39 = ptrtoaddr ptr %.0.lcssa.i.i38 to i64
  %i.av = sub i64 %9, %.0.lcssa24.i.i39
  %scevgep25.i.i40 = getelementptr i8, ptr %.0.lcssa.i.i38, i64 %i.av
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.critedge.i.i37
  %.1.i.i41 = phi ptr [ %.0.lcssa.i.i38, %.critedge.i.i37 ], [ %i.ax, %bb.r ] ; 4 uses
  %i.aw = load i8, ptr %.1.i.i41, align 1
  switch i8 %i.aw, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45 [
    i8 13, label %bb.q
    i8 10, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %.not23.i.i42 = icmp eq ptr %.1.i.i41, %3
  br i1 %.not23.i.i42, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i.i41, i64 1
  br label %bb.p, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45: ; preds = %bb.p, %bb.q
  %.1.lcssa.i.i43 = phi ptr [ %.1.i.i41, %bb.p ], [ %scevgep25.i.i40, %bb.q ]
  %i.ay = load i32, ptr %i.ao, align 4
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ao, align 4
  br label %bb.bh

bb.s:                                             ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw [144 x i8], ptr %i.aj, i64 %.0.lcssa.i.i ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 17 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %.not.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  store i64 0, ptr %i.bf, align 8
  store float 1.000000e+00, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 108
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bt = load ptr, ptr %i.bb, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 160 ; 2 uses
  store ptr %i.bu, ptr %i.bb, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4Bone9Animation9MatrixKeyESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  tail call void @_ZNSt6vectorIN6Assimp3SMD4Bone9Animation9MatrixKeyESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bc)
  %.pre = load ptr, ptr %i.bb, align 8
  br label %_ZNSt6vectorIN6Assimp3SMD4Bone9Animation9MatrixKeyESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

_ZNSt6vectorIN6Assimp3SMD4Bone9Animation9MatrixKeyESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit: ; preds = %bb.t, %bb.u
  %i.bw = phi ptr [ %i.bu, %bb.t ], [ %.pre, %bb.u ] ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -160 ; 3 uses
  %i.by = sitofp i32 %4 to double
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store double %i.by, ptr %i.bz, align 8
  %11 = ptrtoaddr ptr %i.af to i64
  %i.ca = sub i64 %9, %11
  %scevgep.i.i.i46 = getelementptr i8, ptr %i.af, i64 %i.ca ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_ZNSt6vectorIN6Assimp3SMD4Bone9Animation9MatrixKeyESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  %.0.i.i.i47 = phi ptr [ %i.af, %_ZNSt6vectorIN6Assimp3SMD4Bone9Animation9MatrixKeyESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit ], [ %i.cc, %bb.x ] ; 4 uses
  %i.cb = load i8, ptr %.0.i.i.i47, align 1       ; 2 uses
  switch i8 %i.cb, label %.critedge.i.i.i51 [
    i8 32, label %bb.w
    i8 9, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.not.i.i.i48 = icmp eq ptr %.0.i.i.i47, %3
  br i1 %.not.i.i.i48, label %.critedge.i.ithread-pre-split.i49, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i47, i64 1
  br label %bb.v, !llvm.loop !107

.critedge.i.ithread-pre-split.i49:                ; preds = %bb.w
  %.pr.i50 = load i8, ptr %scevgep.i.i.i46, align 1
  br label %.critedge.i.i.i51

.critedge.i.i.i51:                                ; preds = %bb.v, %.critedge.i.ithread-pre-split.i49
  %i.cd = phi i8 [ %.pr.i50, %.critedge.i.ithread-pre-split.i49 ], [ %i.cb, %bb.v ]
  %.0.lcssa.i.i.i52 = phi ptr [ %scevgep.i.i.i46, %.critedge.i.ithread-pre-split.i49 ], [ %.0.i.i.i47, %bb.v ]
  switch i8 %i.cd, label %bb.ae [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit: ; preds = %.critedge.i.i.i51, %.critedge.i.i.i51, %.critedge.i.i.i51, %.critedge.i.i.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.cf, ptr noundef nonnull @.str.42) #27 ; 0 uses
  %i.ch = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit
  %.0.i.i54 = phi ptr [ %i.af, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit ], [ %i.cj, %bb.aa ] ; 7 uses
  %i.ci = load i8, ptr %.0.i.i54, align 1
  switch i8 %i.ci, label %bb.z [
    i8 13, label %.critedge.i.i55
    i8 10, label %.critedge.i.i55
    i8 0, label %.critedge.i.i55
    i8 35, label %.critedge.i.i55
  ]

bb.z:                                             ; preds = %bb.y
  %.not22.i.i62 = icmp eq ptr %.0.i.i54, %3
  br i1 %.not22.i.i62, label %.critedge.i.i55, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 1
  br label %bb.y, !llvm.loop !112

.critedge.i.i55:                                  ; preds = %bb.z, %bb.y, %bb.y, %bb.y, %bb.y
  %.0.lcssa.i.i56 = phi ptr [ %.0.i.i54, %bb.y ], [ %.0.i.i54, %bb.y ], [ %.0.i.i54, %bb.y ], [ %.0.i.i54, %bb.y ], [ %scevgep.i.i.i46, %bb.z ] ; 3 uses
  %.0.lcssa24.i.i57 = ptrtoaddr ptr %.0.lcssa.i.i56 to i64
  %i.ck = sub i64 %9, %.0.lcssa24.i.i57
  %scevgep25.i.i58 = getelementptr i8, ptr %.0.lcssa.i.i56, i64 %i.ck
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.critedge.i.i55
  %.1.i.i59 = phi ptr [ %.0.lcssa.i.i56, %.critedge.i.i55 ], [ %i.cm, %bb.ad ] ; 4 uses
  %i.cl = load i8, ptr %.1.i.i59, align 1
  switch i8 %i.cl, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63 [
    i8 13, label %bb.ac
    i8 10, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %.not23.i.i60 = icmp eq ptr %.1.i.i59, %3
  br i1 %.not23.i.i60, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i.i59, i64 1
  br label %bb.ab, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63: ; preds = %bb.ab, %bb.ac
  %.1.lcssa.i.i61 = phi ptr [ %.1.i.i59, %bb.ab ], [ %scevgep25.i.i58, %bb.ac ]
  %i.cn = load i32, ptr %i.ce, align 4
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.ce, align 4
  br label %bb.bh

bb.ae:                                            ; preds = %.critedge.i.i.i51
  %i.cp = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i52, ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext true) ; 5 uses
  store ptr %i.cp, ptr %i.e, align 8
  %12 = ptrtoaddr ptr %i.cp to i64
  %i.cq = sub i64 %9, %12
  %scevgep.i.i.i64 = getelementptr i8, ptr %i.cp, i64 %i.cq ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.0.i.i.i65 = phi ptr [ %i.cp, %bb.ae ], [ %i.cs, %bb.ah ] ; 4 uses
  %i.cr = load i8, ptr %.0.i.i.i65, align 1       ; 2 uses
  switch i8 %i.cr, label %.critedge.i.i.i69 [
    i8 32, label %bb.ag
    i8 9, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %.not.i.i.i66 = icmp eq ptr %.0.i.i.i65, %3
  br i1 %.not.i.i.i66, label %.critedge.i.ithread-pre-split.i67, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 1
  br label %bb.af, !llvm.loop !107

.critedge.i.ithread-pre-split.i67:                ; preds = %bb.ag
  %.pr.i68 = load i8, ptr %scevgep.i.i.i64, align 1
  br label %.critedge.i.i.i69

.critedge.i.i.i69:                                ; preds = %bb.af, %.critedge.i.ithread-pre-split.i67
  %i.ct = phi i8 [ %.pr.i68, %.critedge.i.ithread-pre-split.i67 ], [ %i.cr, %bb.af ]
  %.0.lcssa.i.i.i70 = phi ptr [ %scevgep.i.i.i64, %.critedge.i.ithread-pre-split.i67 ], [ %.0.i.i.i65, %bb.af ]
  switch i8 %i.ct, label %bb.ao [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71: ; preds = %.critedge.i.i.i69, %.critedge.i.i.i69, %.critedge.i.i.i69, %.critedge.i.i.i69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.cv, ptr noundef nonnull @.str.43) #27 ; 0 uses
  %i.cx = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cx, ptr noundef nonnull align 1 dereferenceable(1024) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71
  %.0.i.i73 = phi ptr [ %i.cp, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit71 ], [ %i.cz, %bb.ak ] ; 7 uses
  %i.cy = load i8, ptr %.0.i.i73, align 1
  switch i8 %i.cy, label %bb.aj [
    i8 13, label %.critedge.i.i74
    i8 10, label %.critedge.i.i74
    i8 0, label %.critedge.i.i74
    i8 35, label %.critedge.i.i74
  ]

bb.aj:                                            ; preds = %bb.ai
  %.not22.i.i81 = icmp eq ptr %.0.i.i73, %3
  br i1 %.not22.i.i81, label %.critedge.i.i74, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i73, i64 1
  br label %bb.ai, !llvm.loop !112

.critedge.i.i74:                                  ; preds = %bb.aj, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %.0.lcssa.i.i75 = phi ptr [ %.0.i.i73, %bb.ai ], [ %.0.i.i73, %bb.ai ], [ %.0.i.i73, %bb.ai ], [ %.0.i.i73, %bb.ai ], [ %scevgep.i.i.i64, %bb.aj ] ; 3 uses
  %.0.lcssa24.i.i76 = ptrtoaddr ptr %.0.lcssa.i.i75 to i64
  %i.da = sub i64 %9, %.0.lcssa24.i.i76
  %scevgep25.i.i77 = getelementptr i8, ptr %.0.lcssa.i.i75, i64 %i.da
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.critedge.i.i74
  %.1.i.i78 = phi ptr [ %.0.lcssa.i.i75, %.critedge.i.i74 ], [ %i.dc, %bb.an ] ; 4 uses
  %i.db = load i8, ptr %.1.i.i78, align 1
  switch i8 %i.db, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82 [
    i8 13, label %bb.am
    i8 10, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %.not23.i.i79 = icmp eq ptr %.1.i.i78, %3
  br i1 %.not23.i.i79, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i.i78, i64 1
  br label %bb.al, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82: ; preds = %bb.al, %bb.am
  %.1.lcssa.i.i80 = phi ptr [ %.1.i.i78, %bb.al ], [ %scevgep25.i.i77, %bb.am ]
  %i.dd = load i32, ptr %i.cu, align 4
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.cu, align 4
  br label %bb.bh

bb.ao:                                            ; preds = %.critedge.i.i.i69
  %i.df = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i70, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true) ; 5 uses
  store ptr %i.df, ptr %i.e, align 8
  %13 = ptrtoaddr ptr %i.df to i64
  %i.dg = sub i64 %9, %13
  %scevgep.i.i.i83 = getelementptr i8, ptr %i.df, i64 %i.dg ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %.0.i.i.i84 = phi ptr [ %i.df, %bb.ao ], [ %i.di, %bb.ar ] ; 4 uses
  %i.dh = load i8, ptr %.0.i.i.i84, align 1       ; 2 uses
  switch i8 %i.dh, label %.critedge.i.i.i88 [
    i8 32, label %bb.aq
    i8 9, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %.not.i.i.i85 = icmp eq ptr %.0.i.i.i84, %3
  br i1 %.not.i.i.i85, label %.critedge.i.ithread-pre-split.i86, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i84, i64 1
  br label %bb.ap, !llvm.loop !107

.critedge.i.ithread-pre-split.i86:                ; preds = %bb.aq
  %.pr.i87 = load i8, ptr %scevgep.i.i.i83, align 1
  br label %.critedge.i.i.i88

.critedge.i.i.i88:                                ; preds = %bb.ap, %.critedge.i.ithread-pre-split.i86
  %i.dj = phi i8 [ %.pr.i87, %.critedge.i.ithread-pre-split.i86 ], [ %i.dh, %bb.ap ]
  %.0.lcssa.i.i.i89 = phi ptr [ %scevgep.i.i.i83, %.critedge.i.ithread-pre-split.i86 ], [ %.0.i.i.i84, %bb.ap ]
  switch i8 %i.dj, label %bb.ay [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90: ; preds = %.critedge.i.i.i88, %.critedge.i.i.i88, %.critedge.i.i.i88, %.critedge.i.i.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.dl, ptr noundef nonnull @.str.44) #27 ; 0 uses
  %i.dn = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dn, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90
  %.0.i.i92 = phi ptr [ %i.df, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit90 ], [ %i.dp, %bb.au ] ; 7 uses
  %i.do = load i8, ptr %.0.i.i92, align 1
  switch i8 %i.do, label %bb.at [
    i8 13, label %.critedge.i.i93
    i8 10, label %.critedge.i.i93
    i8 0, label %.critedge.i.i93
    i8 35, label %.critedge.i.i93
  ]

bb.at:                                            ; preds = %bb.as
  %.not22.i.i100 = icmp eq ptr %.0.i.i92, %3
  br i1 %.not22.i.i100, label %.critedge.i.i93, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i92, i64 1
  br label %bb.as, !llvm.loop !112

.critedge.i.i93:                                  ; preds = %bb.at, %bb.as, %bb.as, %bb.as, %bb.as
  %.0.lcssa.i.i94 = phi ptr [ %.0.i.i92, %bb.as ], [ %.0.i.i92, %bb.as ], [ %.0.i.i92, %bb.as ], [ %.0.i.i92, %bb.as ], [ %scevgep.i.i.i83, %bb.at ] ; 3 uses
  %.0.lcssa24.i.i95 = ptrtoaddr ptr %.0.lcssa.i.i94 to i64
  %i.dq = sub i64 %9, %.0.lcssa24.i.i95
  %scevgep25.i.i96 = getelementptr i8, ptr %.0.lcssa.i.i94, i64 %i.dq
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.critedge.i.i93
  %.1.i.i97 = phi ptr [ %.0.lcssa.i.i94, %.critedge.i.i93 ], [ %i.ds, %bb.ax ] ; 4 uses
  %i.dr = load i8, ptr %.1.i.i97, align 1
  switch i8 %i.dr, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101 [
    i8 13, label %bb.aw
    i8 10, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %.not23.i.i98 = icmp eq ptr %.1.i.i97, %3
  br i1 %.not23.i.i98, label %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ds = getelementptr inbounds nuw i8, ptr %.1.i.i97, i64 1
  br label %bb.av, !llvm.loop !113

_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101: ; preds = %bb.av, %bb.aw
  %.1.lcssa.i.i99 = phi ptr [ %.1.i.i97, %bb.av ], [ %scevgep25.i.i96, %bb.aw ]
  %i.dt = load i32, ptr %i.dk, align 4
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.dk, align 4
  br label %bb.bh

bb.ay:                                            ; preds = %.critedge.i.i.i88
  %i.dv = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i89, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i1 noundef zeroext true) ; 4 uses
  store ptr %i.dv, ptr %i.e, align 8
  %14 = ptrtoaddr ptr %i.dv to i64
  %i.dw = sub i64 %9, %14
  %scevgep.i.i.i102 = getelementptr i8, ptr %i.dv, i64 %i.dw ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %.0.i.i.i103 = phi ptr [ %i.dv, %bb.ay ], [ %i.dy, %bb.bb ] ; 4 uses
  %i.dx = load i8, ptr %.0.i.i.i103, align 1      ; 2 uses
  switch i8 %i.dx, label %.critedge.i.i.i107 [
    i8 32, label %bb.ba
    i8 9, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %.not.i.i.i104 = icmp eq ptr %.0.i.i.i103, %3
  br i1 %.not.i.i.i104, label %.critedge.i.ithread-pre-split.i105, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i103, i64 1
  br label %bb.az, !llvm.loop !107

.critedge.i.ithread-pre-split.i105:               ; preds = %bb.ba
  %.pr.i106 = load i8, ptr %scevgep.i.i.i102, align 1
  br label %.critedge.i.i.i107

.critedge.i.i.i107:                               ; preds = %bb.az, %.critedge.i.ithread-pre-split.i105
  %i.dz = phi i8 [ %.pr.i106, %.critedge.i.ithread-pre-split.i105 ], [ %i.dx, %bb.az ]
  %.0.lcssa.i.i.i108 = phi ptr [ %scevgep.i.i.i102, %.critedge.i.ithread-pre-split.i105 ], [ %.0.i.i.i103, %bb.az ]
  switch i8 %i.dz, label %bb.bc [
    i8 13, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109
    i8 10, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109
    i8 0, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109
    i8 12, label %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109
  ]

_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109: ; preds = %.critedge.i.i.i107, %.critedge.i.i.i107, %.critedge.i.i.i107, %.critedge.i.i.i107
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.45)
  %i.ea = load ptr, ptr %i.e, align 8
  %i.eb = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.ea, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.ec = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.bc:                                            ; preds = %.critedge.i.i.i107
  %i.ed = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i108, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext true) ; 2 uses
  store ptr %i.ed, ptr %i.e, align 8
  %i.ee = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.ed, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br i1 %i.ee, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.46)
  %i.ef = load ptr, ptr %i.e, align 8
  %i.eg = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.ef, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.eh = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.ei = load ptr, ptr %i.e, align 8
  %i.ej = call noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nonnull align 8 poison, ptr noundef %i.ei, ptr noundef nonnull %i.e, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  br i1 %i.ej, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull @.str.47)
  %i.ek = load ptr, ptr %i.e, align 8
  %i.el = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.ek, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.em = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.en = load float, ptr %6, align 8
  %i.eo = load float, ptr %i.h, align 4
  %i.ep = load float, ptr %i.i, align 8
  %i.eq = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff(ptr noundef nonnull align 4 dereferenceable(64) %i.bx, float noundef %i.en, float noundef %i.eo, float noundef %i.ep) ; 0 uses
  %i.er = load float, ptr %5, align 8
  %i.es = load float, ptr %i.f, align 4
  %i.et = load float, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store float 1.000000e+00, ptr %7, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.er, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.es, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.9111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float 1.000000e+00, ptr %.sroa.9111.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.et, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.12.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.12112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 60
  store float 1.000000e+00, ptr %.sroa.12112.0..sroa_idx, align 4
  %i.eu = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfEmLERKS0_(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.bx) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull align 4 dereferenceable(64) %7, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ev = getelementptr inbounds i8, ptr %i.bw, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ev, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  %i.ew = getelementptr inbounds i8, ptr %i.bw, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ew, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.ex = load ptr, ptr %i.e, align 8
  %i.ey = call noundef zeroext i1 @_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef %i.ex, ptr noundef nonnull %i.e, ptr noundef %3) ; 0 uses
  %i.ez = load ptr, ptr %i.e, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109, %bb.bd, %bb.bf, %bb.bg, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit
  %.1.lcssa.i.i61.sink = phi ptr [ %.1.lcssa.i.i61, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit63 ], [ %.1.lcssa.i.i80, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit82 ], [ %.1.lcssa.i.i99, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit101 ], [ %i.ec, %_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf.exit109 ], [ %i.eh, %bb.bd ], [ %i.em, %bb.bf ], [ %i.ez, %bb.bg ], [ %.1.lcssa.i.i43, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit45 ], [ %.1.lcssa.i.i, %_ZN6Assimp11SMDImporter8SkipLineEPKcPS2_S2_.exit ]
  store ptr %.1.lcssa.i.i61.sink, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6Assimp11SMDImporter16ParseUnsignedIntEPKcPS2_S2_Rj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #16 align 2 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %3 to i64
  %i.a = sub i64 %6, %5
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.c, %bb.d ] ; 4 uses
  %i.b = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.b, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.ithread-pre-split:                    ; preds = %bb.c
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.critedge.i.ithread-pre-split
  %i.d = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.b, %bb.b ] ; 4 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.b ] ; 2 uses
  %i.e = icmp ult i8 %i.d, 14
  br i1 %i.e, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %.critedge.i.i
  %i.f = add i8 %i.d, -58
  %or.cond11.i = icmp ult i8 %i.f, -10
  br i1 %or.cond11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.g = phi i8 [ %i.l, %.lr.ph.i ], [ %i.d, %bb.e ]
  %.013.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.e ]
  %.0812.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.0.lcssa.i.i, %bb.e ]
  %i.h = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.g, -48
  %i.i = zext nneg i8 %narrow.i to i32
  %i.j = add i32 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = add i8 %i.l, -58
  %or.cond.i = icmp ult i8 %i.m, -10
  br i1 %or.cond.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !108

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.08.lcssa.i = phi ptr [ %.0.lcssa.i.i, %bb.e ], [ %i.k, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.j, %.lr.ph.i ]
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  store ptr %.08.lcssa.i, ptr %2, align 8
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %._crit_edge.i, %bb.f
  store i32 %.0.lcssa.i, ptr %4, align 4
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

switch.hole_check:                                ; preds = %.critedge.i.i
  %switch.maskindex = zext nneg i8 %i.d to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %switch.hole_check, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.n = phi i1 [ true, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ false, %switch.hole_check ]
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readnone captures(address) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %3 to i64
  %i.a = sub i64 %6, %5
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.a ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %1, %bb.a ], [ %i.c, %bb.d ] ; 4 uses
  %i.b = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.b, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %3
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !107

.critedge.i.ithread-pre-split:                    ; preds = %bb.c
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.b, %.critedge.i.ithread-pre-split
  %i.d = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.b, %bb.b ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.b ]
  %i.e = icmp ult i8 %i.d, 14
  br i1 %i.e, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %.critedge.i.i
  %i.f = tail call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext true)
  store ptr %i.f, ptr %2, align 8
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

switch.hole_check:                                ; preds = %.critedge.i.i
  %switch.maskindex = zext nneg i8 %i.d to i16
  %switch.shifted = lshr i16 13313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.e

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %switch.hole_check, %bb.e
  %i.g = phi i1 [ true, %bb.e ], [ false, %switch.hole_check ]
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff(ptr noundef nonnull align 4 dereferenceable(64) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #27 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #27 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #27 ; 4 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #27 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #27 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #27 ; 4 uses
  %i.g = fmul float %i.c, %i.e
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.a, i64 1
  %i.m = insertelement <2 x float> poison, float %i.i, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.h, i64 1
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = insertelement <2 x float> poison, float %i.h, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.f, i64 1
  %i.r = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.o)
  store <2 x float> %i.t, ptr %i.j, align 4
  %i.u = fmul float %i.c, %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.u, ptr %i.v, align 4
  %i.w = fmul float %i.d, %i.f                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = fneg float %i.b
  %i.z = insertelement <2 x float> %i.r, float %i.e, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.y, i64 1
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.w, i64 1
  %i.af = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ag, <2 x float> %i.ac)
  store <2 x float> %i.ah, ptr %i.x, align 4
  %i.ai = fneg float %i.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ai, ptr %i.aj, align 4
  %i.ak = fmul float %i.b, %i.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ak, ptr %i.al, align 4
  %i.am = fmul float %i.a, %i.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.am, ptr %i.an, align 4
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load i8, ptr %0, align 1                 ; 3 uses
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %.pre = load i8, ptr %i.e, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 8 uses
  %i.g = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]   ; 10 uses
  switch i8 %i.f, label %bb.j [
    i8 78, label %bb.d
    i8 110, label %bb.d
    i8 73, label %bb.g
    i8 105, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = tail call i32 @strncasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.69, i64 noundef 3) #31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float +qnan, ptr %1, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %cond = icmp eq i8 %i.f, 105
  br i1 %cond, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.c
  %i.k = tail call i32 @strncasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.70, i64 noundef 3) #31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %storemerge = select i1 %i.d, float -inf, float +inf
  store float %storemerge, ptr %1, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 4 uses
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %bb.ab [
    i8 73, label %bb.i
    i8 105, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.o = tail call i32 @strncasecmp(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.71, i64 noundef 5) #31
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %spec.select = select i1 %i.p, ptr %i.q, ptr %i.m
  br label %bb.ab

bb.j:                                             ; preds = %bb.c
  %i.r = add i8 %i.f, -48
  %or.cond44 = icmp ult i8 %i.r, 10
  br i1 %or.cond44, label %._crit_edge, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.j
  %i.s = icmp eq i8 %i.f, 46
  %i.t = icmp eq i8 %i.f, 44
  %or.cond45 = and i1 %2, %i.t
  %or.cond = or i1 %i.s, %or.cond45
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = add i8 %i.v, -48
  %or.cond46 = icmp ult i8 %i.w, 10
  br i1 %or.cond46, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #31
  %i.z = trunc i64 %i.y to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.g, i32 noundef %i.z, i8 noundef signext 63)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(22) @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) @.str.73)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.ac unwind label %bb.o

end_hunk_2
