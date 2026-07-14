inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
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
  %i.pn = ptrtoint ptr %i.ph to i64
  %i.po = ptrtoint ptr %i.pj to i64
  %i.pp = add i64 %.pre-phi39.i, %i.po
  %7 = sub i64 %i.pn, %i.pp
  %8 = add i64 %7, -8                             ; 2 uses
  %i.pq = lshr i64 %8, 3
  %i.pr = add nuw nsw i64 %i.pq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
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
  %i.sb = ptrtoint ptr %i.sa to i64
end_hunk_0
