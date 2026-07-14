inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64               ; 2 uses
  %i.nn = sub i64 %i.nl, %i.nm                    ; 2 uses
  %i.no = icmp ugt i64 %i.ng, %i.nn
  br i1 %i.no, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.np = icmp ugt i64 %i.nh, 1152921504606846975
  br i1 %i.np, label %bb.bm, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i, !prof !23

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc149 unwind label %.loopexit.split-lp

.noexc149:                                        ; preds = %bb.bm
  unreachable

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bl
  %i.nq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ng) #25
          to label %.noexc150 unwind label %.loopexit ; 3 uses

.noexc150:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.nd, %i.nc
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc150
  %i.nr = add i64 %i.ne, -8
  %i.ns = sub i64 %i.nr, %i.nf
  %i.nt = and i64 %i.ns, -8
  %i.nu = add i64 %i.nt, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nq, ptr align 4 %i.nd, i64 %i.nu, i1 false)
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i

_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc150
  %.not.i.i148 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i148, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.nn) #23
  br label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bn, %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i
  store ptr %i.nq, ptr %i.na, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ng
  store ptr %i.nv, ptr %i.ni, align 8
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i

bb.bo:                                            ; preds = %bb.bk
  %i.nw = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8            ; 3 uses
  %i.ny = ptrtoint ptr %i.nx to i64
  %i.nz = sub i64 %i.ny, %i.nm                    ; 4 uses
  %.not24.i = icmp ult i64 %i.nz, %i.ng
  br i1 %.not24.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oa = icmp sgt i64 %i.nh, 0
  br i1 %i.oa, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bp
  %min.iters.check313 = icmp ult i64 %i.nh, 4
  br i1 %min.iters.check313, label %.lr.ph.i.i.i.i.i.i.preheader343, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep307 = getelementptr i8, ptr %i.nk, i64 %i.ng
  %bound0309 = icmp ult ptr %i.nk, %i.nc
  %bound1310 = icmp ult ptr %i.nd, %scevgep307
  %found.conflict311 = and i1 %bound0309, %bound1310
  br i1 %found.conflict311, label %.lr.ph.i.i.i.i.i.i.preheader343, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck306
  %n.vec316 = and i64 %i.nh, 9223372036854775804  ; 3 uses
  %i.ob = and i64 %i.nh, 3
  %i.oc = shl i64 %n.vec316, 3                    ; 2 uses
  %i.od = getelementptr i8, ptr %i.nk, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.nd, i64 %i.oc
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph314
  %index318 = phi i64 [ 0, %vector.ph314 ], [ %index.next331, %vector.body317 ] ; 2 uses
  %i.of = shl i64 %index318, 3                    ; 3 uses
  %i.og = or disjoint i64 %i.of, 16               ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.nk, i64 %i.of
  %next.gep320 = getelementptr i8, ptr %i.nk, i64 %i.og
  %next.gep321 = getelementptr i8, ptr %i.nd, i64 %i.of
  %next.gep322 = getelementptr i8, ptr %i.nd, i64 %i.og
  %wide.vec323337 = load <4 x float>, ptr %next.gep321, align 4, !alias.scope !24
  %wide.vec326338 = load <4 x float>, ptr %next.gep322, align 4, !alias.scope !24
  store <4 x float> %wide.vec323337, ptr %next.gep319, align 4, !alias.scope !27, !noalias !24
  store <4 x float> %wide.vec326338, ptr %next.gep320, align 4, !alias.scope !27, !noalias !24
  %index.next331 = add nuw i64 %index318, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next331, %n.vec316
  br i1 %i.oh, label %middle.block332, label %vector.body317, !llvm.loop !29

middle.block332:                                  ; preds = %vector.body317
  %cmp.n333 = icmp eq i64 %i.nh, %n.vec316
  br i1 %cmp.n333, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader343

.lr.ph.i.i.i.i.i.i.preheader343:                  ; preds = %vector.memcheck306, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block332
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.nh, %vector.memcheck306 ], [ %i.nh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ob, %middle.block332 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.nk, %vector.memcheck306 ], [ %i.nk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.od, %middle.block332 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %i.nd, %vector.memcheck306 ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.oe, %middle.block332 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader343, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.oo, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader343 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.on, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader343 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.om, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader343 ] ; 3 uses
  %i.oi = load i32, ptr %.0910.i.i.i.i.i.i, align 4
  store i32 %i.oi, ptr %.0811.i.i.i.i.i.i, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store float %i.ok, ptr %i.ol, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.oo = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.op = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.op, label %.lr.ph.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, !llvm.loop !32

bb.bq:                                            ; preds = %bb.bo
  %i.oq = ashr exact i64 %i.nz, 3                 ; 7 uses
  %i.or = icmp sgt i64 %i.oq, 0
  br i1 %i.or, label %.lr.ph.i.i.i.i.i26.i.preheader, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i.i.i.i26.i.preheader:                   ; preds = %bb.bq
  %min.iters.check285 = icmp ult i64 %i.oq, 4
  br i1 %min.iters.check285, label %.lr.ph.i.i.i.i.i26.i.preheader342, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i.i.i.i.i26.i.preheader
  %scevgep283 = getelementptr i8, ptr %i.nd, i64 %i.nz
  %bound0 = icmp ult ptr %i.nk, %scevgep283
  %bound1 = icmp ult ptr %i.nd, %i.nx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i26.i.preheader342, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck282
  %n.vec288 = and i64 %i.oq, 9223372036854775804  ; 3 uses
  %i.os = and i64 %i.oq, 3
  %i.ot = shl i64 %n.vec288, 3                    ; 2 uses
  %i.ou = getelementptr i8, ptr %i.nk, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.nd, i64 %i.ot
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph286
  %index290 = phi i64 [ 0, %vector.ph286 ], [ %index.next300, %vector.body289 ] ; 2 uses
  %i.ow = shl i64 %index290, 3                    ; 3 uses
  %i.ox = or disjoint i64 %i.ow, 16               ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.nk, i64 %i.ow
  %next.gep292 = getelementptr i8, ptr %i.nk, i64 %i.ox
  %next.gep293 = getelementptr i8, ptr %i.nd, i64 %i.ow
  %next.gep294 = getelementptr i8, ptr %i.nd, i64 %i.ox
  %wide.vec339 = load <4 x float>, ptr %next.gep293, align 4, !alias.scope !33
  %wide.vec296340 = load <4 x float>, ptr %next.gep294, align 4, !alias.scope !33
  store <4 x float> %wide.vec339, ptr %next.gep291, align 4, !alias.scope !36, !noalias !33
  store <4 x float> %wide.vec296340, ptr %next.gep292, align 4, !alias.scope !36, !noalias !33
  %index.next300 = add nuw i64 %index290, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next300, %n.vec288
  br i1 %i.oy, label %middle.block301, label %vector.body289, !llvm.loop !38

middle.block301:                                  ; preds = %vector.body289
  %cmp.n302 = icmp eq i64 %i.oq, %n.vec288
  br i1 %cmp.n302, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i26.i.preheader342

.lr.ph.i.i.i.i.i26.i.preheader342:                ; preds = %vector.memcheck282, %.lr.ph.i.i.i.i.i26.i.preheader, %middle.block301
  %.012.i.i.i.i.i27.i.ph = phi i64 [ %i.oq, %vector.memcheck282 ], [ %i.oq, %.lr.ph.i.i.i.i.i26.i.preheader ], [ %i.os, %middle.block301 ]
  %.0811.i.i.i.i.i28.i.ph = phi ptr [ %i.nk, %vector.memcheck282 ], [ %i.nk, %.lr.ph.i.i.i.i.i26.i.preheader ], [ %i.ou, %middle.block301 ]
  %.0910.i.i.i.i.i29.i.ph = phi ptr [ %i.nd, %vector.memcheck282 ], [ %i.nd, %.lr.ph.i.i.i.i.i26.i.preheader ], [ %i.ov, %middle.block301 ]
  br label %.lr.ph.i.i.i.i.i26.i

.lr.ph.i.i.i.i.i26.i:                             ; preds = %.lr.ph.i.i.i.i.i26.i.preheader342, %.lr.ph.i.i.i.i.i26.i
  %.012.i.i.i.i.i27.i = phi i64 [ %i.pf, %.lr.ph.i.i.i.i.i26.i ], [ %.012.i.i.i.i.i27.i.ph, %.lr.ph.i.i.i.i.i26.i.preheader342 ] ; 2 uses
  %.0811.i.i.i.i.i28.i = phi ptr [ %i.pe, %.lr.ph.i.i.i.i.i26.i ], [ %.0811.i.i.i.i.i28.i.ph, %.lr.ph.i.i.i.i.i26.i.preheader342 ] ; 3 uses
  %.0910.i.i.i.i.i29.i = phi ptr [ %i.pd, %.lr.ph.i.i.i.i.i26.i ], [ %.0910.i.i.i.i.i29.i.ph, %.lr.ph.i.i.i.i.i26.i.preheader342 ] ; 3 uses
  %i.oz = load i32, ptr %.0910.i.i.i.i.i29.i, align 4
  store i32 %i.oz, ptr %.0811.i.i.i.i.i28.i, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.i, i64 4
  %i.pb = load float, ptr %i.pa, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.i, i64 4
  store float %i.pb, ptr %i.pc, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.i, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.i, i64 8
  %i.pf = add nsw i64 %.012.i.i.i.i.i27.i, -1
  %i.pg = icmp samesign ugt i64 %.012.i.i.i.i.i27.i, 1
  br i1 %i.pg, label %.lr.ph.i.i.i.i.i26.i, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i, !llvm.loop !39

_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i26.i, %middle.block301
  %.pre.i = load ptr, ptr %i.mz, align 8
  %.pre32.i = load ptr, ptr %i.nw, align 8        ; 2 uses
  %.pre33.i = load ptr, ptr %i.na, align 8
  %.pre34.i = load ptr, ptr %i.nb, align 8
  %.pre35.i = ptrtoint ptr %.pre32.i to i64
  %.pre36.i = ptrtoint ptr %.pre33.i to i64
  %.pre38.i = sub i64 %.pre35.i, %.pre36.i
  br label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.i

_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.i:     ; preds = %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i, %bb.bq
  %.pre-phi39.i = phi i64 [ %.pre38.i, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i ], [ %i.nz, %bb.bq ] ; 3 uses
  %i.ph = phi ptr [ %.pre34.i, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i ], [ %i.nc, %bb.bq ] ; 3 uses
  %i.pi = phi ptr [ %.pre32.i, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i ], [ %i.nx, %bb.bq ] ; 5 uses
  %i.pj = phi ptr [ %.pre.i, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i ], [ %i.nd, %bb.bq ] ; 3 uses
  %i.pk = ptrtoaddr ptr %i.pi to i64
  %i.pl = ptrtoaddr ptr %i.pj to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.pre-phi39.i ; 5 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.pm, %i.ph
  br i1 %.not9.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.i
  %7 = ptrtoint ptr %i.pj to i64
  %8 = ptrtoint ptr %i.ph to i64
  %i.pn = add i64 %8, -8
  %i.po = add i64 %.pre-phi39.i, %7
  %i.pp = sub i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = lshr i64 %i.pp, 3
  %i.pr = add nuw nsw i64 %i.pq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.pp, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader341, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ps = add nuw i64 %.pre-phi39.i, %i.pl
  %i.pt = sub i64 %i.ps, %i.pk
  %diff.check = icmp ugt i64 %i.pt, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader341, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pr, 4611686018427387900     ; 3 uses
  %i.pu = shl i64 %n.vec, 3                       ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pi, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pm, i64 %i.pu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.px = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.pi, i64 %i.px ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.pm, i64 %i.px ; 2 uses
  %i.py = getelementptr i8, ptr %next.gep279, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep279, align 4
  %wide.load280 = load <2 x i64>, ptr %i.py, align 4
  %i.pz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load280, ptr %i.pz, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qa = icmp eq i64 %index.next, %n.vec
  br i1 %i.qa, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pr, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i.preheader341

.lr.ph.i.i.i.i.i.preheader341:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.pi, %vector.memcheck ], [ %i.pi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.pv, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.pm, %vector.memcheck ], [ %i.pm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.pw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader341, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader341 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.qc, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader341 ] ; 2 uses
  %i.qb = load i64, ptr %.0810.i.i.i.i.i, align 4
  store i64 %i.qb, ptr %.011.i.i.i.i.i, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.qc, %i.ph
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %middle.block332, %middle.block, %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.i, %bb.bp, %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.qe = load ptr, ptr %i.na, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.ng
  %i.qg = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %i.qf, ptr %i.qg, align 8
  br label %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit

_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit:          ; preds = %bb.bj, %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, %_ZN10aiVector3tIfE9NormalizeEv.exit
  store i32 %.164168, ptr %i.ii, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qh = add i32 %.164168, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.ar, label %bb.as, !llvm.loop !42

bb.br:                                            ; preds = %._crit_edge
  %i.qi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.bs unwind label %bb.bx     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.qj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI9aiColor4tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.preheader unwind label %bb.bx ; 0 uses

.preheader:                                       ; preds = %bb.bs
  %i.qk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.by unwind label %bb.cg     ; 0 uses

.lr.ph.i.i.i:                                     ; preds = %bb.cf, %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.qr, %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.cf ] ; 3 uses
  %i.ql = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = ptrtoint ptr %i.ql to i64
  %i.qq = sub i64 %i.qo, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qq) #23
  br label %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qr, %i.hp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i, %bb.cf
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i
  %i.qs = ptrtoint ptr %i.hp to i64
  %i.qt = ptrtoint ptr %.pr.i to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.qu) #23
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.qv = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EED2Ev.exit
  %i.qw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qv to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.ra) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EED2Ev.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.rb = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rb to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rg) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ri = load ptr, ptr %i.rh, align 8            ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit91, label %bb.ch

bb.bx:                                            ; preds = %bb.bs, %bb.br, %._crit_edge
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.by:                                            ; preds = %.preheader
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.rl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.rk)
          to label %bb.bz unwind label %bb.cg     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.rm)
          to label %bb.ca unwind label %bb.cg     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.rp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.ro)
          to label %bb.cb unwind label %bb.cg     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.rr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.rq)
          to label %bb.cc unwind label %bb.cg     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.rt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.rs)
          to label %bb.cd unwind label %bb.cg     ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.rv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.ru)
          to label %bb.ce unwind label %bb.cg     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.rx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.rw)
          to label %bb.cf unwind label %bb.cg     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.hp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %.preheader
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ch:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit
  %i.rz = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.sa = load ptr, ptr %i.rz, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE:bb.a
  store i32 0, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr null, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i32 0, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr null, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i32 0, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store ptr null, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store i32 0, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  store ptr null, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  store i32 0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  store ptr null, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  store i32 0, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 88
  store ptr null, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 96
  store i32 0, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 104
  store ptr null, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 112
  store i32 0, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 120
  store ptr null, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 128 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.hg
  br i1 %i.ie, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.if = getelementptr inbounds nuw i8, ptr %i.ef, i64 208 ; 4 uses
  store ptr %i.hd, ptr %i.if, align 8
  %i.ig = zext i32 %i.gb to i64
  %i.ih = mul nuw nsw i64 %i.ig, 12               ; 3 uses
  %i.ii = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ih) #25
          to label %bb.ag unwind label %bb.ah     ; 2 uses

bb.ag:                                            ; preds = %.unr-lcssa
  %i.ij = add nsw i64 %i.ih, -12                  ; 2 uses
  %i.ik = urem i64 %i.ij, 12
  %i.il = sub nuw nsw i64 %i.ij, %i.ik
  %i.im = add nuw nsw i64 %i.il, 12               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ii, i8 0, i64 %i.im, i1 false)
  store ptr %i.ii, ptr %i.ei, align 8
  %i.in = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ih) #25
          to label %.lr.ph476.preheader unwind label %bb.ah ; 2 uses

.lr.ph476.preheader:                              ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.in, i8 0, i64 %i.im, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  store ptr %i.in, ptr %i.io, align 8
  %i.ip = ashr exact i64 %i.fy, 2
  br label %.lr.ph476

bb.ah:                                            ; preds = %._crit_edge492, %bb.ay, %bb.ag, %.unr-lcssa
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %bb.aj
  %i.ir = phi i64 [ %i.jc, %bb.aj ], [ 0, %.lr.ph476.preheader ] ; 4 uses
  %.0227475 = phi i32 [ %i.jb, %bb.aj ], [ 0, %.lr.ph476.preheader ]
  %.0474 = phi i32 [ %i.mi, %bb.aj ], [ 0, %.lr.ph476.preheader ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #25
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %.lr.ph476
  %i.iv = load ptr, ptr %i.if, align 8
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.ir
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.iu, ptr %i.ix, align 8
  %i.iy = load ptr, ptr %i.if, align 8
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.ir
  store i32 3, ptr %i.iz, align 8
  %i.ja = zext i32 %i.it to i64
  br label %bb.al

bb.aj:                                            ; preds = %.loopexit433
  %i.jb = add i32 %.0227475, 1                    ; 2 uses
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = icmp ugt i64 %i.ip, %i.jc
  br i1 %i.jd, label %.lr.ph476, label %.loopexit445, !llvm.loop !49

bb.ak:                                            ; preds = %.lr.ph476
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.al:                                            ; preds = %bb.ai, %.loopexit433
  %indvars.iv = phi i64 [ 0, %bb.ai ], [ %indvars.iv.next, %.loopexit433 ] ; 3 uses
  %.1471 = phi i32 [ %.0474, %bb.ai ], [ %i.mi, %.loopexit433 ] ; 5 uses
  %i.jf = load ptr, ptr %i.ba, align 8
  %i.jg = getelementptr inbounds nuw [132 x i8], ptr %i.jf, i64 %i.ja
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = zext i32 %i.ji to i64                   ; 5 uses
  %i.jk = load ptr, ptr %1, align 8
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %i.jk, i64 %i.jj
  %i.jm = load ptr, ptr %i.ei, align 8
  %i.jn = zext i32 %.1471 to i64                  ; 2 uses
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %i.jn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jo, ptr noundef nonnull align 4 dereferenceable(12) %i.jl, i64 12, i1 false)
  %i.jp = load ptr, ptr %i.bm, align 8
  %i.jq = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %i.jj
  %i.jr = load ptr, ptr %i.io, align 8
  %i.js = getelementptr inbounds nuw [12 x i8], ptr %i.jr, i64 %i.jn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.js, ptr noundef nonnull align 4 dereferenceable(12) %i.jq, i64 12, i1 false)
  %i.jt = load ptr, ptr %i.bk, align 8
  %i.ju = load ptr, ptr %i.bl, align 8
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %.loopexit433, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jw = load ptr, ptr %i.bo, align 8
  %i.jx = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = sdiv exact i64 %i.ka, 24
  %i.kc = icmp ugt i64 %i.kb, %i.jj
  br i1 %i.kc, label %bb.an, label %.loopexit433

bb.an:                                            ; preds = %bb.am
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.jj ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  %.not426468 = icmp eq ptr %i.ke, %i.kg
  br i1 %.not426468, label %.loopexit433, label %.lr.ph470

.lr.ph470:                                        ; preds = %bb.an, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %.sroa.0367.0469 = phi ptr [ %i.ly, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit ], [ %i.ke, %bb.an ] ; 3 uses
  %i.kh = load i32, ptr %.sroa.0367.0469, align 4
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [24 x i8], ptr %.0228, i64 %i.ki ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0367.0469, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.km = load ptr, ptr %i.kl, align 8            ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8
  %.not.i290 = icmp eq ptr %i.km, %i.ko
  br i1 %.not.i290, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph470
  store i32 %.1471, ptr %i.km, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kq = load float, ptr %i.kk, align 4
  store float %i.kq, ptr %i.kp, align 4
  %i.kr = load ptr, ptr %i.kl, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %i.ks, ptr %i.kl, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

bb.ap:                                            ; preds = %.lr.ph470
  %i.kt = load ptr, ptr %i.kj, align 8            ; 7 uses
  %i.ku = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.kv = ptrtoint ptr %i.kt to i64               ; 3 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 4 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775800
  br i1 %i.kx, label %bb.aq, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.noexc293 unwind label %.loopexit.split-lp435

.noexc293:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.ky = ashr exact i64 %i.kw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i291 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i291, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 1152921504606846975)
  %i.lc = select i1 %i.la, i64 1152921504606846975, i64 %i.lb ; 3 uses
  %.not.i.i.i292 = icmp ne i64 %i.lc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i292)
  %i.ld = shl nuw nsw i64 %i.lc, 3
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #25
          to label %.noexc294 unwind label %.loopexit434 ; 8 uses

.noexc294:                                        ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw ; 2 uses
  store i32 %.1471, ptr %i.lf, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load float, ptr %i.kk, align 4
  store float %i.lh, ptr %i.lg, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.kt, %i.km
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc294
  %i.li = ptrtoaddr ptr %i.le to i64
  %4 = sub i64 %i.ku, %i.kv
  %5 = add i64 %4, -8                             ; 2 uses
  %i.lj = lshr i64 %5, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.ll = sub i64 %i.kv, %i.li
  %diff.check = icmp ugt i64 %i.ll, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader703, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.lk, 4611686018427387900     ; 3 uses
  %i.lm = shl i64 %n.vec, 3                       ; 2 uses
  %i.ln = getelementptr i8, ptr %i.le, i64 %i.lm  ; 2 uses
  %i.lo = getelementptr i8, ptr %i.kt, i64 %i.lm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.le, i64 %i.lp ; 2 uses
  %next.gep678 = getelementptr i8, ptr %i.kt, i64 %i.lp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.lq = getelementptr i8, ptr %next.gep678, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep678, align 4, !alias.scope !53, !noalias !50
  %wide.load679 = load <2 x i64>, ptr %i.lq, align 4, !alias.scope !53, !noalias !50
  %i.lr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !50, !noalias !53
  store <2 x i64> %wide.load679, ptr %i.lr, align 4, !alias.scope !50, !noalias !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader703

.lr.ph.i.i.i.i.i.preheader703:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ln, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i.preheader ], [ %i.lo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader703, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader703 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader703 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.lt = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !53, !noalias !50
  store i64 %i.lt, ptr %.012.i.i.i.i.i, align 4, !alias.scope !50, !noalias !53
  %i.lu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lu, %i.km
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc294
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.le, %.noexc294 ], [ %i.ln, %middle.block ], [ %i.lv, %.lr.ph.i.i.i.i.i ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #23
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ar, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.le, ptr %i.kj, align 8
  store ptr %i.lw, ptr %i.kl, align 8
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.lx, ptr %i.kn, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ao
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0367.0469, i64 8 ; 2 uses
  %i.lz = load ptr, ptr %i.bn, align 8
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.jj
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  %.not426 = icmp eq ptr %i.ly, %i.mc
  br i1 %.not426, label %.loopexit433, label %.lr.ph470, !llvm.loop !57

.loopexit434:                                     ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit436 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp435:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit433:                                     ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit, %bb.an, %bb.am, %bb.al
  %i.md = load ptr, ptr %i.if, align 8
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.md, i64 %i.ir
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv
  store i32 %.1471, ptr %i.mh, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mi = add i32 %.1471, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.aj, label %bb.al, !llvm.loop !58

.loopexit445:                                     ; preds = %bb.aj, %.loopexit446.thread
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ef, i64 112
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ef, i64 176
  %i.ml = ashr exact i64 %i.fy, 2
  br label %bb.at

bb.as:                                            ; preds = %bb.ax
  %i.mm = load ptr, ptr %i.br, align 8
  %i.mn = load ptr, ptr %i.bs, align 8
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %.loopexit443, label %bb.ay

bb.at:                                            ; preds = %.loopexit445, %bb.ax
  %i.mp = phi ptr [ %i.ed, %.loopexit445 ], [ %i.ox, %bb.ax ] ; 2 uses
  %indvars.iv548 = phi i64 [ 0, %.loopexit445 ], [ %indvars.iv.next549, %bb.ax ] ; 5 uses
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv548 ; 5 uses
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = icmp eq ptr %i.mr, %i.mt
  br i1 %i.mu, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mv = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = mul nuw nsw i64 %i.mw, 12               ; 2 uses
  %i.my = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mx) #25
          to label %bb.av unwind label %bb.aw     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.mz = icmp eq i32 %i.mv, 0
  br i1 %i.mz, label %.loopexit440, label %.loopexit440.loopexit

.loopexit440.loopexit:                            ; preds = %bb.av
  %i.na = add nsw i64 %i.mx, -12                  ; 2 uses
  %i.nb = urem i64 %i.na, 12
  %i.nc = sub nuw nsw i64 %i.na, %i.nb
  %i.nd = add nsw i64 %i.nc, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.my, i8 0, i64 %i.nd, i1 false)
  br label %.loopexit440

.loopexit440:                                     ; preds = %.loopexit440.loopexit, %bb.av
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv548 ; 4 uses
  store ptr %i.my, ptr %i.ne, align 8
  %.not532 = icmp eq ptr %i.mp, %i.eb
  br i1 %.not532, label %._crit_edge, label %.lr.ph481

._crit_edge:                                      ; preds = %.lr.ph481, %.loopexit440
  %i.nf = phi ptr [ %i.eb, %.loopexit440 ], [ %i.ed, %.lr.ph481 ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv548
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv548
  store i32 %i.nh, ptr %i.ni, align 4
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph481:                                        ; preds = %.loopexit440, %.lr.ph481
  %i.nk = phi i64 [ %i.ov, %.lr.ph481 ], [ 0, %.loopexit440 ]
  %.0224480 = phi i32 [ %i.ou, %.lr.ph481 ], [ 0, %.loopexit440 ]
  %.2479 = phi i32 [ %i.or, %.lr.ph481 ], [ 0, %.loopexit440 ] ; 4 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = zext i32 %i.nm to i64                   ; 3 uses
  %i.no = load ptr, ptr %i.ba, align 8
  %i.np = getelementptr inbounds nuw [132 x i8], ptr %i.no, i64 %i.nn
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = zext i32 %i.nq to i64
  %i.ns = load ptr, ptr %i.mq, align 8
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.ns, i64 %i.nr
  %i.nu = load ptr, ptr %i.ne, align 8
  %i.nv = add i32 %.2479, 1
  %i.nw = zext i32 %.2479 to i64
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.nw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nx, ptr noundef nonnull align 4 dereferenceable(12) %i.nt, i64 12, i1 false)
  %i.ny = load ptr, ptr %i.ba, align 8
  %i.nz = getelementptr inbounds nuw [132 x i8], ptr %i.ny, i64 %i.nn
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.ob = load i32, ptr %i.oa, align 4
  %i.oc = zext i32 %i.ob to i64
  %i.od = load ptr, ptr %i.mq, align 8
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.od, i64 %i.oc
  %i.of = load ptr, ptr %i.ne, align 8
  %i.og = add i32 %.2479, 2
  %i.oh = zext i32 %i.nv to i64
  %i.oi = getelementptr inbounds nuw [12 x i8], ptr %i.of, i64 %i.oh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oi, ptr noundef nonnull align 4 dereferenceable(12) %i.oe, i64 12, i1 false)
  %i.oj = load ptr, ptr %i.ba, align 8
  %i.ok = getelementptr inbounds nuw [132 x i8], ptr %i.oj, i64 %i.nn
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = zext i32 %i.om to i64
  %i.oo = load ptr, ptr %i.mq, align 8
  %i.op = getelementptr inbounds nuw [12 x i8], ptr %i.oo, i64 %i.on
  %i.oq = load ptr, ptr %i.ne, align 8
  %i.or = add i32 %.2479, 3
end_hunk_1
begin_hunk_2_@_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE:bb.a
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  store ptr %i.ahe, ptr %i.ahj, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ahe, ptr nonnull align 4 %i.agw, i64 %i.ahc, i1 false)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.not536 = icmp eq i32 %i.xi, 0
  br i1 %.not536, label %._crit_edge509, label %.lr.ph508

._crit_edge509:                                   ; preds = %.lr.ph508, %bb.co
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8          ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8          ; 2 uses
  %i.aho = icmp eq ptr %i.ahl, %i.ahn
  br i1 %i.aho, label %bb.dl, label %bb.cp

.lr.ph508:                                        ; preds = %bb.co, %.lr.ph508
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %.lr.ph508 ], [ 0, %bb.co ] ; 9 uses
  %i.ahp = load ptr, ptr %i.yo, align 8
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.ahp, i64 %indvars.iv563
  store i32 3, ptr %i.ahq, align 8
  %i.ahr = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #25
  %i.ahs = load ptr, ptr %i.yo, align 8
  %i.aht = getelementptr inbounds nuw [16 x i8], ptr %i.ahs, i64 %indvars.iv563
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  store ptr %i.ahr, ptr %i.ahu, align 8
  %i.ahv = load ptr, ptr %i.wq, align 8
  %i.ahw = getelementptr inbounds nuw [132 x i8], ptr %i.ahv, i64 %indvars.iv563
  %i.ahx = load i32, ptr %i.ahw, align 4
  %i.ahy = load ptr, ptr %i.yo, align 8
  %i.ahz = getelementptr inbounds nuw [16 x i8], ptr %i.ahy, i64 %indvars.iv563
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8
  store i32 %i.ahx, ptr %i.aib, align 4
  %i.aic = load ptr, ptr %i.wq, align 8
  %i.aid = getelementptr inbounds nuw [132 x i8], ptr %i.aic, i64 %indvars.iv563
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aif = load i32, ptr %i.aie, align 4
  %i.aig = load ptr, ptr %i.yo, align 8
  %i.aih = getelementptr inbounds nuw [16 x i8], ptr %i.aig, i64 %indvars.iv563
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aij = load ptr, ptr %i.aii, align 8
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  store i32 %i.aif, ptr %i.aik, align 4
  %i.ail = load ptr, ptr %i.wq, align 8
  %i.aim = getelementptr inbounds nuw [132 x i8], ptr %i.ail, i64 %indvars.iv563
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  %i.aio = load i32, ptr %i.ain, align 4
  %i.aip = load ptr, ptr %i.yo, align 8
  %i.aiq = getelementptr inbounds nuw [16 x i8], ptr %i.aip, i64 %indvars.iv563
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.ais = load ptr, ptr %i.air, align 8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store i32 %i.aio, ptr %i.ait, align 4
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.aiu = load i32, ptr %i.vg, align 8
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = icmp samesign ult i64 %indvars.iv.next564, %i.aiv
  br i1 %i.aiw, label %.lr.ph508, label %._crit_edge509, !llvm.loop !68

bb.cp:                                            ; preds = %._crit_edge509
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.aiy = load ptr, ptr %i.aix, align 8          ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8          ; 2 uses
  %i.ajb = icmp eq ptr %i.aiy, %i.aja
  br i1 %i.ajb, label %bb.dl, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ajc = ptrtoint ptr %i.ahn to i64
  %i.ajd = ptrtoint ptr %i.ahl to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  %i.ajf = ashr exact i64 %i.aje, 5               ; 3 uses
  %i.ajg = icmp ugt i64 %i.ajf, 384307168202282325
  br i1 %i.ajg, label %bb.cr, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc313 unwind label %bb.cs

.noexc313:                                        ; preds = %bb.cr
  unreachable

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.cq
  %i.ajh = mul nuw nsw i64 %i.ajf, 24             ; 3 uses
  %i.aji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajh) #25
          to label %.lr.ph518.preheader unwind label %bb.cs ; 8 uses

.lr.ph518.preheader:                              ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store ptr %i.aji, ptr %3, align 8
  %i.ajj = getelementptr inbounds nuw [24 x i8], ptr %i.aji, i64 %i.ajf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aji, i8 0, i64 %i.ajh, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.aji, i64 %i.ajh ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ajj, ptr %i.ajl, align 8
  store ptr %scevgep.i.i.i.i.i, ptr %i.ajk, align 8
  br label %.lr.ph518

._crit_edge519:                                   ; preds = %._crit_edge514
  %.pre571 = load ptr, ptr %i.ahm, align 8        ; 3 uses
  %.pre572 = load ptr, ptr %i.ahk, align 8        ; 3 uses
  %.pre577 = ptrtoint ptr %.pre571 to i64
  %.pre579 = ptrtoint ptr %.pre572 to i64
  %.pre581 = sub i64 %.pre577, %.pre579
  %.pre583 = ashr exact i64 %.pre581, 5
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ve, i64 216 ; 2 uses
  store i32 0, ptr %i.ajm, align 8
  %.not537 = icmp eq ptr %.pre571, %.pre572       ; 2 uses
  br i1 %.not537, label %._crit_edge523, label %.lr.ph522

bb.cs:                                            ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %bb.cr
  %i.ajn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.lr.ph518:                                        ; preds = %.lr.ph518.preheader, %._crit_edge514
  %i.ajo = phi ptr [ %i.ajs, %._crit_edge514 ], [ %i.aja, %.lr.ph518.preheader ]
  %.0204517 = phi i32 [ %i.aju, %._crit_edge514 ], [ 0, %.lr.ph518.preheader ] ; 3 uses
  %.sroa.0340.0516 = phi ptr [ %i.ajt, %._crit_edge514 ], [ %i.aiy, %.lr.ph518.preheader ] ; 3 uses
  %i.ajp = load ptr, ptr %.sroa.0340.0516, align 8 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0340.0516, i64 8 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8
  %.not428510 = icmp eq ptr %i.ajp, %i.ajr
  br i1 %.not428510, label %._crit_edge514, label %.lr.ph513

._crit_edge514.loopexit:                          ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit
  %.pre570 = load ptr, ptr %i.aiz, align 8
  br label %._crit_edge514

._crit_edge514:                                   ; preds = %._crit_edge514.loopexit, %.lr.ph518
  %i.ajs = phi ptr [ %.pre570, %._crit_edge514.loopexit ], [ %i.ajo, %.lr.ph518 ] ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0340.0516, i64 24 ; 2 uses
  %i.aju = add i32 %.0204517, 1
  %.not427 = icmp eq ptr %i.ajt, %i.ajs
  br i1 %.not427, label %._crit_edge519, label %.lr.ph518, !llvm.loop !69

.lr.ph513:                                        ; preds = %.lr.ph518, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit
  %.sroa.0334.0511 = phi ptr [ %i.alj, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit ], [ %i.ajp, %.lr.ph518 ] ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.0334.0511, i64 4
  %i.ajw = load float, ptr %i.ajv, align 4        ; 2 uses
  %i.ajx = load i32, ptr %.sroa.0334.0511, align 4
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [24 x i8], ptr %i.aji, i64 %i.ajy ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 4 uses
  %i.akb = load ptr, ptr %i.aka, align 8          ; 6 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16 ; 2 uses
  %i.akd = load ptr, ptr %i.akc, align 8
  %.not.i315 = icmp eq ptr %i.akb, %i.akd
  br i1 %.not.i315, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph513
  store i32 %.0204517, ptr %i.akb, align 4
  %.sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  store float %i.ajw, ptr %.sroa_idx328, align 4
  %i.ake = load ptr, ptr %i.aka, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  store ptr %i.akf, ptr %i.aka, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

bb.cu:                                            ; preds = %.lr.ph513
  %i.akg = load ptr, ptr %i.ajz, align 8          ; 7 uses
  %i.akh = ptrtoint ptr %i.akb to i64             ; 2 uses
  %i.aki = ptrtoint ptr %i.akg to i64             ; 3 uses
  %i.akj = sub i64 %i.akh, %i.aki                 ; 4 uses
  %i.akk = icmp eq i64 %i.akj, 9223372036854775800
  br i1 %i.akk, label %bb.cv, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.noexc324 unwind label %.loopexit.split-lp

.noexc324:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cu
  %i.akl = ashr exact i64 %i.akj, 3               ; 3 uses
  %.sroa.speculated.i.i.i316 = tail call i64 @llvm.umax.i64(i64 %i.akl, i64 1)
  %i.akm = add nsw i64 %.sroa.speculated.i.i.i316, %i.akl ; 2 uses
  %i.akn = icmp ult i64 %i.akm, %i.akl
  %i.ako = tail call i64 @llvm.umin.i64(i64 %i.akm, i64 1152921504606846975)
  %i.akp = select i1 %i.akn, i64 1152921504606846975, i64 %i.ako ; 3 uses
  %.not.i.i.i317 = icmp ne i64 %i.akp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i317)
  %i.akq = shl nuw nsw i64 %i.akp, 3
  %i.akr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akq) #25
          to label %.noexc325 unwind label %.loopexit429 ; 8 uses

.noexc325:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.akj ; 2 uses
  store i32 %.0204517, ptr %i.aks, align 4
  %.sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.aks, i64 4
  store float %i.ajw, ptr %.sroa_idx330, align 4
  %.not10.i.i.i.i.i318 = icmp eq ptr %i.akg, %i.akb
  br i1 %.not10.i.i.i.i.i318, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i319.preheader

.lr.ph.i.i.i.i.i319.preheader:                    ; preds = %.noexc325
  %i.akt = ptrtoaddr ptr %i.akr to i64
  %6 = sub i64 %i.akh, %i.aki
  %7 = add i64 %6, -8                             ; 2 uses
  %i.aku = lshr i64 %7, 3
  %i.akv = add nuw nsw i64 %i.aku, 1              ; 2 uses
  %min.iters.check684 = icmp ult i64 %7, 24
  %i.akw = sub i64 %i.aki, %i.akt
  %diff.check682 = icmp ugt i64 %i.akw, -32
  %or.cond699 = or i1 %min.iters.check684, %diff.check682
  br i1 %or.cond699, label %.lr.ph.i.i.i.i.i319.preheader701, label %vector.ph685

vector.ph685:                                     ; preds = %.lr.ph.i.i.i.i.i319.preheader
  %n.vec687 = and i64 %i.akv, 4611686018427387900 ; 3 uses
  %i.akx = shl i64 %n.vec687, 3                   ; 2 uses
  %i.aky = getelementptr i8, ptr %i.akr, i64 %i.akx ; 2 uses
  %i.akz = getelementptr i8, ptr %i.akg, i64 %i.akx
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph685
  %index689 = phi i64 [ 0, %vector.ph685 ], [ %index.next694, %vector.body688 ] ; 2 uses
  %i.ala = shl i64 %index689, 3                   ; 2 uses
  %next.gep690 = getelementptr i8, ptr %i.akr, i64 %i.ala ; 2 uses
  %next.gep691 = getelementptr i8, ptr %i.akg, i64 %i.ala ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.alb = getelementptr i8, ptr %next.gep691, i64 16
  %wide.load692 = load <2 x i64>, ptr %next.gep691, align 4, !alias.scope !73, !noalias !70
  %wide.load693 = load <2 x i64>, ptr %i.alb, align 4, !alias.scope !73, !noalias !70
  %i.alc = getelementptr i8, ptr %next.gep690, i64 16
  store <2 x i64> %wide.load692, ptr %next.gep690, align 4, !alias.scope !70, !noalias !73
  store <2 x i64> %wide.load693, ptr %i.alc, align 4, !alias.scope !70, !noalias !73
  %index.next694 = add nuw i64 %index689, 4       ; 2 uses
  %i.ald = icmp eq i64 %index.next694, %n.vec687
  br i1 %i.ald, label %middle.block695, label %vector.body688, !llvm.loop !75

middle.block695:                                  ; preds = %vector.body688
  %cmp.n696 = icmp eq i64 %i.akv, %n.vec687
  br i1 %cmp.n696, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i319.preheader701

.lr.ph.i.i.i.i.i319.preheader701:                 ; preds = %.lr.ph.i.i.i.i.i319.preheader, %middle.block695
  %.012.i.i.i.i.i320.ph = phi ptr [ %i.akr, %.lr.ph.i.i.i.i.i319.preheader ], [ %i.aky, %middle.block695 ]
  %.0911.i.i.i.i.i321.ph = phi ptr [ %i.akg, %.lr.ph.i.i.i.i.i319.preheader ], [ %i.akz, %middle.block695 ]
  br label %.lr.ph.i.i.i.i.i319

.lr.ph.i.i.i.i.i319:                              ; preds = %.lr.ph.i.i.i.i.i319.preheader701, %.lr.ph.i.i.i.i.i319
  %.012.i.i.i.i.i320 = phi ptr [ %i.alg, %.lr.ph.i.i.i.i.i319 ], [ %.012.i.i.i.i.i320.ph, %.lr.ph.i.i.i.i.i319.preheader701 ] ; 2 uses
  %.0911.i.i.i.i.i321 = phi ptr [ %i.alf, %.lr.ph.i.i.i.i.i319 ], [ %.0911.i.i.i.i.i321.ph, %.lr.ph.i.i.i.i.i319.preheader701 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ale = load i64, ptr %.0911.i.i.i.i.i321, align 4, !alias.scope !73, !noalias !70
  store i64 %i.ale, ptr %.012.i.i.i.i.i320, align 4, !alias.scope !70, !noalias !73
  %i.alf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i321, i64 8 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i320, i64 8 ; 2 uses
  %.not.i.i.i.i.i322 = icmp eq ptr %i.alf, %i.akb
  br i1 %.not.i.i.i.i.i322, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i319, !llvm.loop !76

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i319, %middle.block695, %.noexc325
  %.0.lcssa.i.i.i.i.i323 = phi ptr [ %i.akr, %.noexc325 ], [ %i.aky, %middle.block695 ], [ %i.alg, %.lr.ph.i.i.i.i.i319 ]
  %i.alh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i323, i64 8
  %.not.i23.i.i = icmp eq ptr %i.akg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.akg, i64 noundef %i.akj) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.cw, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.akr, ptr %i.ajz, align 8
  store ptr %i.alh, ptr %i.aka, align 8
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %i.akp
  store ptr %i.ali, ptr %i.akc, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ct
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.0334.0511, i64 8 ; 2 uses
  %i.alk = load ptr, ptr %i.ajq, align 8
  %.not428 = icmp eq ptr %i.alj, %i.alk
  br i1 %.not428, label %._crit_edge514.loopexit, label %.lr.ph513, !llvm.loop !77

.loopexit429:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit.split-lp:                               ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

._crit_edge523.loopexit:                          ; preds = %bb.cy
  %i.all = zext i32 %i.alx to i64
  %i.alm = shl nuw nsw i64 %i.all, 3
  br label %._crit_edge523

._crit_edge523:                                   ; preds = %._crit_edge523.loopexit, %._crit_edge519
  %i.aln = phi i64 [ %i.alm, %._crit_edge523.loopexit ], [ 0, %._crit_edge519 ]
  %i.alo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aln) #25
          to label %bb.cz unwind label %bb.dc     ; 2 uses

.lr.ph522:                                        ; preds = %._crit_edge519, %bb.cy
  %i.alp = phi i32 [ %i.alx, %bb.cy ], [ 0, %._crit_edge519 ] ; 2 uses
  %i.alq = phi i64 [ %i.alz, %bb.cy ], [ 0, %._crit_edge519 ]
  %.0203520 = phi i32 [ %i.aly, %bb.cy ], [ 0, %._crit_edge519 ]
  %i.alr = getelementptr inbounds nuw [24 x i8], ptr %i.aji, i64 %i.alq ; 2 uses
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8
  %i.alv = icmp eq ptr %i.als, %i.alu
  br i1 %i.alv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph522
  %i.alw = add i32 %i.alp, 1                      ; 2 uses
  store i32 %i.alw, ptr %i.ajm, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph522, %bb.cx
  %i.alx = phi i32 [ %i.alp, %.lr.ph522 ], [ %i.alw, %bb.cx ] ; 2 uses
  %i.aly = add i32 %.0203520, 1                   ; 2 uses
  %i.alz = zext i32 %i.aly to i64                 ; 2 uses
  %i.ama = icmp ugt i64 %.pre583, %i.alz
  br i1 %i.ama, label %.lr.ph522, label %._crit_edge523.loopexit, !llvm.loop !78

bb.cz:                                            ; preds = %._crit_edge523
  store ptr %i.alo, ptr %i.vi, align 8
  br i1 %.not537, label %._crit_edge528, label %.lr.ph527

._crit_edge528.loopexit:                          ; preds = %bb.di
  %.pre574 = load ptr, ptr %i.ajk, align 8
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.cz
  %i.amb = phi ptr [ %.pre574, %._crit_edge528.loopexit ], [ %scevgep.i.i.i.i.i, %bb.cz ] ; 2 uses
  %.pr.i = phi ptr [ %i.aok, %._crit_edge528.loopexit ], [ %i.aji, %bb.cz ] ; 5 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.amb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge528, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ami, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge528 ] ; 3 uses
  %i.amc = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.amc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i
  %i.amd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ame = load ptr, ptr %i.amd, align 8
  %i.amf = ptrtoint ptr %i.ame to i64
  %i.amg = ptrtoint ptr %i.amc to i64
  %i.amh = sub i64 %i.amf, %i.amg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.amc, i64 noundef %i.amh) #23
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.da, %.lr.ph.i.i.i
  %i.ami = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.ami, %i.amb
  br i1 %.not.i.i.i326, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !79

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, %._crit_edge528
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.amj = load ptr, ptr %i.ajl, align 8
  %i.amk = ptrtoint ptr %i.amj to i64
  %i.aml = ptrtoint ptr %.pr.i to i64
  %i.amm = sub i64 %i.amk, %i.aml
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.amm) #23
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.dl

bb.dc:                                            ; preds = %._crit_edge523
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.lr.ph527:                                        ; preds = %bb.cz, %bb.di
  %i.amo = phi ptr [ %i.aoi, %bb.di ], [ %.pre572, %bb.cz ]
  %i.amp = phi ptr [ %i.aoj, %bb.di ], [ %.pre571, %bb.cz ]
  %i.amq = phi ptr [ %i.aok, %bb.di ], [ %i.aji, %bb.cz ] ; 2 uses
  %i.amr = phi i64 [ %i.aom, %bb.di ], [ 0, %bb.cz ] ; 3 uses
  %.0200525 = phi i32 [ %i.aol, %bb.di ], [ 0, %bb.cz ]
  %.0201524 = phi ptr [ %.1202, %bb.di ], [ %i.alo, %bb.cz ] ; 3 uses
  %i.ams = getelementptr inbounds nuw [24 x i8], ptr %i.amq, i64 %i.amr ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8
  %i.amw = icmp eq ptr %i.amt, %i.amv
  br i1 %i.amw, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph527
  %i.amx = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.de unwind label %bb.dh     ; 13 uses

bb.de:                                            ; preds = %bb.dd
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.amx, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.amy, align 4
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 1060
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.amz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ana, align 4
end_hunk_2
