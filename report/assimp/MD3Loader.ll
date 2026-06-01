inline.NumInlined: 1319
inline.NumDeleted: 545
begin_hunk_0_@_ZN6Assimp8Q3Shader10LoadShaderERNS0_10ShaderDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE:._crit_edge.i.i
    i8 13, label %bb.l
    i8 10, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %.not.i.i = icmp eq ptr %.0.i.i, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %thread-pre-split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.k, !llvm.loop !4

thread-pre-split:                                 ; preds = %bb.l
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.loopexit313

.loopexit313:                                     ; preds = %bb.k, %thread-pre-split
  %i.bf = phi i8 [ %.pr, %thread-pre-split ], [ %i.bd, %bb.k ]
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %thread-pre-split ], [ %.0.i.i, %bb.k ] ; 4 uses
  switch i8 %i.bf, label %bb.dh [
    i8 0, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i
    i8 123, label %bb.n
  ]

bb.n:                                             ; preds = %.loopexit313
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 3 uses
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195

bb.o:                                             ; preds = %bb.n
  %i.bl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull @.str.9)
          to label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.c, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

bb.r:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit237

.thread:                                          ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %.pre376 = ptrtoint ptr %.sroa.0262.0 to i64
  br label %.loopexit.split-lp

.loopexit312:                                     ; preds = %bb.cz, %bb.da, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.dh
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.p, %bb.o
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit: ; preds = %bb.de, %bb.df
  %.1277.ph = phi ptr [ %scevgep25.i.i190, %bb.df ], [ %.1.i.i191, %bb.de ]
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195:         ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit, %.preheader
  %.1277 = phi ptr [ %i.bg, %.preheader ], [ %.1277.ph, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195.loopexit ] ; 3 uses
  %i.bq = ptrtoint ptr %.1277 to i64
  %i.br = sub i64 %i.an, %i.bq
  %scevgep.i.i79 = getelementptr i8, ptr %.1277, i64 %i.br ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195
  %.0.i.i80 = phi ptr [ %.1277, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit195 ], [ %i.bt, %bb.v ] ; 4 uses
  %i.bs = load i8, ptr %.0.i.i80, align 1         ; 2 uses
  switch i8 %i.bs, label %.loopexit310 [
    i8 32, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
    i8 10, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  %.not.i.i81 = icmp eq ptr %.0.i.i80, %.0.i.i.i.i.i
  br i1 %.not.i.i81, label %thread-pre-split278, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i80, i64 1
  br label %bb.t, !llvm.loop !4

thread-pre-split278:                              ; preds = %bb.u
  %.pr279 = load i8, ptr %scevgep.i.i79, align 1
  br label %.loopexit310

.loopexit310:                                     ; preds = %bb.t, %thread-pre-split278
  %i.bu = phi i8 [ %.pr279, %thread-pre-split278 ], [ %i.bs, %bb.t ]
  %.0.lcssa.i.i82 = phi ptr [ %scevgep.i.i79, %thread-pre-split278 ], [ %.0.i.i80, %bb.t ] ; 8 uses
  switch i8 %i.bu, label %bb.cn [
    i8 0, label %.loopexit311
    i8 123, label %bb.w
    i8 125, label %bb.cm
  ]

bb.w:                                             ; preds = %.loopexit310
  %i.bv = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27
          to label %bb.x unwind label %.loopexit312 ; 7 uses

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i82, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  store ptr %i.by, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 0, ptr %i.bz, align 8
  store i8 0, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  store i32 0, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i32 0, ptr %i.cc, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #24
  %i.cd = load i64, ptr %i.bi, align 8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bi, align 8
  %i.cf = load ptr, ptr %i.bj, align 8            ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 3 uses
  %.not21.i = icmp eq ptr %4, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 52 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit:   ; preds = %bb.cj, %bb.ck
  %.2.ph = phi ptr [ %scevgep25.i.i, %bb.ck ], [ %.1.i.i, %bb.cj ]
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit:            ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit, %bb.x
  %.2 = phi ptr [ %i.bw, %bb.x ], [ %.2.ph, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.loopexit ] ; 3 uses
  %i.cm = ptrtoint ptr %.2 to i64
  %i.cn = sub i64 %i.an, %i.cm
  %scevgep.i.i85 = getelementptr i8, ptr %.2, i64 %i.cn ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit
  %.0.i.i86 = phi ptr [ %.2, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit ], [ %i.cp, %bb.aa ] ; 4 uses
  %i.co = load i8, ptr %.0.i.i86, align 1         ; 2 uses
  switch i8 %i.co, label %.loopexit [
    i8 32, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 10, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  %.not.i.i87 = icmp eq ptr %.0.i.i86, %.0.i.i.i.i.i
  br i1 %.not.i.i87, label %thread-pre-split280, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i86, i64 1
  br label %bb.y, !llvm.loop !4

thread-pre-split280:                              ; preds = %bb.z
  %.pr281 = load i8, ptr %scevgep.i.i85, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %thread-pre-split280
  %i.cq = phi i8 [ %.pr281, %thread-pre-split280 ], [ %i.co, %bb.y ] ; 2 uses
  %.0.lcssa.i.i88 = phi ptr [ %scevgep.i.i85, %thread-pre-split280 ], [ %.0.i.i86, %bb.y ] ; 14 uses
  %.not309 = icmp eq i8 %i.cq, 0
  br i1 %.not309, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit174.thread, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.cr = call i32 @strncasecmp(ptr noundef nonnull @.str.10, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 3) #28
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, label %bb.ac

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i: ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 3
  %i.ct = load i8, ptr %i.cs, align 1
  switch i8 %i.ct, label %bb.ac [
    i8 32, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 9, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 13, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 10, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 0, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 12, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
  ]

bb.ac:                                            ; preds = %bb.ab, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i
  %i.cu = call i32 @strncasecmp(ptr noundef nonnull @.str.11, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 8) #28
  %.not.i90 = icmp eq i32 %i.cu, 0
  br i1 %.not.i90, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, label %bb.as

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92: ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 8
  %i.cw = load i8, ptr %i.cv, align 1
  switch i8 %i.cw, label %bb.as [
    i8 32, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 9, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 13, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 10, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 0, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
    i8 12, label %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
  ]

_ZN6Assimp11TokenMatchIERPKcS1_j.exit:            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i
  %.sink = phi i64 [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 4, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ], [ 9, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 %.sink ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.an, %i.cy
  %scevgep.i.i.i = getelementptr i8, ptr %i.cx, i64 %i.cz
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_ZN6Assimp11TokenMatchIERPKcS1_j.exit
  %.0.i.i.i = phi ptr [ %i.cx, %_ZN6Assimp11TokenMatchIERPKcS1_j.exit ], [ %i.db, %bb.af ] ; 4 uses
  %i.da = load i8, ptr %.0.i.i.i, align 1, !noalias !6
  switch i8 %i.da, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i [
    i8 32, label %bb.ae
    i8 9, label %bb.ae
    i8 13, label %bb.ae
    i8 10, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.ad, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.ad ], [ %scevgep.i.i.i, %bb.ae ] ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.dd, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 4 uses
  %i.dc = load i8, ptr %storemerge.i, align 1, !noalias !6
  switch i8 %i.dc, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.ah
    i8 9, label %bb.ah
    i8 13, label %bb.ah
    i8 10, label %bb.ah
    i8 0, label %bb.ah
    i8 12, label %bb.ah
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.ag, !llvm.loop !9

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.de = ptrtoint ptr %storemerge.i to i64
  %i.df = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  store ptr %i.ap, ptr %4, align 8, !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !6
  store i64 %i.dg, ptr %i.e, align 8, !noalias !6
  %i.dh = icmp ugt i64 %i.dg, 15
  br i1 %i.dh, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ah
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc94 unwind label %bb.ar  ; 2 uses

.noexc94:                                         ; preds = %.noexc.i.i
  store ptr %i.di, ptr %4, align 8, !alias.scope !6
  %i.dj = load i64, ptr %i.e, align 8, !noalias !6
  store i64 %i.dj, ptr %i.ap, align 8, !alias.scope !6
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc94, %bb.ah
  %i.dk = phi ptr [ %i.di, %.noexc94 ], [ %i.ap, %bb.ah ] ; 2 uses
  switch i64 %i.dg, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  %i.dl = load i8, ptr %.0.lcssa.i.i.i, align 1
  store i8 %i.dl, ptr %i.dk, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %.0.lcssa.i.i.i, i64 %i.dg, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i
  %i.dm = load i64, ptr %i.e, align 8, !noalias !6 ; 2 uses
  store i64 %i.dm, ptr %i.aq, align 8, !alias.scope !6
  %i.dn = load ptr, ptr %4, align 8, !alias.scope !6
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  store i8 0, ptr %i.do, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !6
  %i.dp = load ptr, ptr %i.cg, align 8            ; 6 uses
  %i.dq = icmp eq ptr %i.dp, %i.ch
  %i.dr = load ptr, ptr %4, align 8               ; 6 uses
  %i.ds = icmp eq ptr %i.dr, %i.ap                ; 2 uses
  br i1 %i.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ak
  br i1 %i.ds, label %bb.al, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ak
  br i1 %i.ds, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dt = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.du = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.du)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  switch i64 %i.dt, label %bb.ao [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.dv = load i8, ptr %i.dr, align 1
  store i8 %i.dv, ptr %i.dp, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.dr, i64 %i.dt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.dw = load i64, ptr %i.aq, align 8            ; 2 uses
  store i64 %i.dw, ptr %i.ci, align 8
  %i.dx = load ptr, ptr %i.cg, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 0, ptr %i.dy, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dr, ptr %i.cg, align 8
  %i.dz = load <2 x i64>, ptr %i.aq, align 8
  store <2 x i64> %i.dz, ptr %i.ci, align 8
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ea = load i64, ptr %i.ch, align 8
  store ptr %i.dr, ptr %i.cg, align 8
  %i.eb = load <2 x i64>, ptr %i.aq, align 8
  store <2 x i64> %i.eb, ptr %i.ci, align 8
  %.not.i95 = icmp eq ptr %i.dp, null
  br i1 %.not.i95, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dp, ptr %4, align 8
  store i64 %i.ea, ptr %i.ap, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ap, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ap, %bb.aq
  %i.ec = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dp, %bb.ap ], [ %i.ap, %bb.aq ], [ %i.dr, %bb.al ]
  store i64 0, ptr %i.aq, align 8
  store i8 0, ptr %i.ec, align 1
  %i.ed = load ptr, ptr %4, align 8               ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.ap
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ef = load i64, ptr %i.ap, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.cf

bb.ar:                                            ; preds = %.noexc.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.ac, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i92
  %i.ei = call i32 @strncasecmp(ptr noundef nonnull @.str.12, ptr noundef nonnull %.0.lcssa.i.i88, i64 noundef 9) #28
  %.not.i99 = icmp eq i32 %i.ei, 0
  br i1 %.not.i99, label %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, label %bb.bs

_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102: ; preds = %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 9
  %i.ek = load i8, ptr %i.ej, align 1
  switch i8 %i.ek, label %bb.bs [
    i8 32, label %bb.at
    i8 9, label %bb.at
    i8 13, label %bb.at
    i8 10, label %bb.at
    i8 0, label %bb.at
    i8 12, label %bb.at
  ]

bb.at:                                            ; preds = %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i102
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i88, i64 10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.an, %i.em
  %scevgep.i.i.i104 = getelementptr i8, ptr %i.el, i64 %i.en
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.0.i.i.i105 = phi ptr [ %i.el, %bb.at ], [ %i.ep, %bb.aw ] ; 4 uses
  %i.eo = load i8, ptr %.0.i.i.i105, align 1, !noalias !11
  switch i8 %i.eo, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107 [
    i8 32, label %bb.av
    i8 9, label %bb.av
    i8 13, label %bb.av
    i8 10, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au
  %.not.i.i.i106 = icmp eq ptr %.0.i.i.i105, %.0.i.i.i.i.i
  br i1 %.not.i.i.i106, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i.i105, i64 1
  br label %bb.au, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107: ; preds = %bb.av, %bb.au
  %.0.lcssa.i.i.i108 = phi ptr [ %.0.i.i.i105, %bb.au ], [ %scevgep.i.i.i104, %bb.av ] ; 4 uses
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107
  %storemerge.i109 = phi ptr [ %.0.lcssa.i.i.i108, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i107 ], [ %i.er, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112 ] ; 8 uses
  %i.eq = load i8, ptr %storemerge.i109, align 1, !noalias !11
  switch i8 %i.eq, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112 [
    i8 32, label %bb.ay
    i8 9, label %bb.ay
    i8 13, label %bb.ay
    i8 10, label %bb.ay
    i8 0, label %bb.ay
    i8 12, label %bb.ay
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i112:    ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge.i109, i64 1
  br label %bb.ax, !llvm.loop !9

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.es = ptrtoint ptr %storemerge.i109 to i64    ; 2 uses
  %i.et = ptrtoint ptr %.0.lcssa.i.i.i108 to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 4 uses
  store ptr %i.ar, ptr %5, align 8, !alias.scope !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !11
  store i64 %i.eu, ptr %i.d, align 8, !noalias !11
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %.noexc.i.i111, label %._crit_edge.i.i.i110

.noexc.i.i111:                                    ; preds = %bb.ay
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc113 unwind label %bb.bc ; 2 uses

.noexc113:                                        ; preds = %.noexc.i.i111
  store ptr %i.ew, ptr %5, align 8, !alias.scope !11
  %i.ex = load i64, ptr %i.d, align 8, !noalias !11
  store i64 %i.ex, ptr %i.ar, align 8, !alias.scope !11
  br label %._crit_edge.i.i.i110

._crit_edge.i.i.i110:                             ; preds = %.noexc113, %bb.ay
  %i.ey = phi ptr [ %i.ew, %.noexc113 ], [ %i.ar, %bb.ay ] ; 2 uses
  switch i64 %i.eu, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i110
  %i.ez = load i8, ptr %.0.lcssa.i.i.i108, align 1
  store i8 %i.ez, ptr %i.ey, align 1
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %.0.lcssa.i.i.i108, i64 %i.eu, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i.i110
  %i.fa = load i64, ptr %i.d, align 8, !noalias !11 ; 2 uses
  store i64 %i.fa, ptr %i.as, align 8, !alias.scope !11
  %i.fb = load ptr, ptr %5, align 8, !alias.scope !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 0, ptr %i.fc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !11
  %i.fd = load i64, ptr %i.as, align 8            ; 3 uses
  switch i64 %i.fd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bb
  %i.fe = load ptr, ptr %5, align 8               ; 3 uses
  %i.ff = load i16, ptr %i.fe, align 1
  %i.fg = xor i16 %i.ff, 25697
  %i.fh = getelementptr i8, ptr %i.fe, i64 2
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i16
  %i.fk = xor i16 %i.fj, 100
  %i.fl = or i16 %i.fg, %i.fk
  %i.fm = icmp ne i16 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i32 1, ptr %i.cj, align 8
  store i32 1, ptr %i.ck, align 4
  br label %bb.bq

bb.bc:                                            ; preds = %.noexc.i.i111
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116: ; preds = %bb.bb
  %.pre = load ptr, ptr %5, align 8               ; 2 uses
  %bcmp.i115 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.14, i64 %i.fd)
  %i.fr = icmp eq i32 %bcmp.i115, 0
  br i1 %i.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
  store i32 3, ptr %i.cj, align 8
  store i32 2, ptr %i.ck, align 4
  br label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118: ; preds = %bb.bb
  %.pre373 = load ptr, ptr %5, align 8            ; 2 uses
  %bcmp.i117 = call i32 @bcmp(ptr %.pre373, ptr nonnull @.str.15, i64 %i.fd)
  %i.fs = icmp eq i32 %bcmp.i117, 0
  br i1 %i.fs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118
  store i32 5, ptr %i.cj, align 8
  store i32 6, ptr %i.ck, align 4
  br label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118
  %i.ft = invoke noundef i32 @_Z17StringToBlendFuncRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.be unwind label %bb.bd

bb.be:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit118.thread293
  store i32 %i.ft, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.fu = sub i64 %i.an, %i.es
  %scevgep.i.i.i119 = getelementptr i8, ptr %storemerge.i109, i64 %i.fu
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.0.i.i.i120 = phi ptr [ %storemerge.i109, %bb.be ], [ %i.fw, %bb.bh ] ; 4 uses
  %i.fv = load i8, ptr %.0.i.i.i120, align 1, !noalias !14
  switch i8 %i.fv, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122 [
    i8 32, label %bb.bg
    i8 9, label %bb.bg
    i8 13, label %bb.bg
    i8 10, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf
  %.not.i.i.i121 = icmp eq ptr %.0.i.i.i120, %.0.i.i.i.i.i
  br i1 %.not.i.i.i121, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i120, i64 1
  br label %bb.bf, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122: ; preds = %bb.bg, %bb.bf
  %.0.lcssa.i.i.i123 = phi ptr [ %.0.i.i.i120, %bb.bf ], [ %scevgep.i.i.i119, %bb.bg ] ; 4 uses
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i127, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122
  %storemerge.i124 = phi ptr [ %.0.lcssa.i.i.i123, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i122 ], [ %i.fy, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i127 ] ; 4 uses
end_hunk_0
