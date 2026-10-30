Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmPathResolver?download=true
inline.NumInlined: 457
inline.NumDeleted: 126
begin_hunk_0_@_ZNK2cm12PathResolver8ResolverINS0_8Policies11LogicalPathEE7ResolveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_:bb.a

vec.epilog.iter.check375:                         ; preds = %middle.block372
  %min.epilog.iters.check377 = icmp eq i64 %i.ky, 0
  br i1 %min.epilog.iters.check377, label %.lr.ph.i.i.i28.i.i.preheader, label %vec.epilog.ph378, !prof !27

vec.epilog.ph378:                                 ; preds = %vector.main.loop.iter.check267, %vec.epilog.iter.check375
  %vec.epilog.resume.val379 = phi i64 [ %n.vec270, %vec.epilog.iter.check375 ], [ 0, %vector.main.loop.iter.check267 ]
  %n.vec380 = and i64 %i.kw, -8                   ; 3 uses
  %i.np = getelementptr i8, ptr %i.kv, i64 %n.vec380
  br label %vec.epilog.vector.body381

vec.epilog.vector.body381:                        ; preds = %pred.store.continue407, %vec.epilog.ph378
  %index382 = phi i64 [ %vec.epilog.resume.val379, %vec.epilog.ph378 ], [ %index.next408, %pred.store.continue407 ] ; 9 uses
  %next.gep383 = getelementptr i8, ptr %i.kv, i64 %index382 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep384 = getelementptr i8, ptr %i.nq, i64 1
  %i.nr = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep385 = getelementptr i8, ptr %i.nr, i64 2
  %i.ns = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep386 = getelementptr i8, ptr %i.ns, i64 3
  %i.nt = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep387 = getelementptr i8, ptr %i.nt, i64 4
  %i.nu = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep388 = getelementptr i8, ptr %i.nu, i64 5
  %i.nv = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep389 = getelementptr i8, ptr %i.nv, i64 6
  %i.nw = getelementptr i8, ptr %i.kv, i64 %index382
  %next.gep390 = getelementptr i8, ptr %i.nw, i64 7
  %wide.load391 = load <8 x i8>, ptr %next.gep383, align 1, !tbaa !20
  %i.nx = icmp eq <8 x i8> %wide.load391, splat (i8 92) ; 8 uses
  %i.ny = extractelement <8 x i1> %i.nx, i64 0
  br i1 %i.ny, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %vec.epilog.vector.body381
  store i8 47, ptr %next.gep383, align 1, !tbaa !20
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %vec.epilog.vector.body381
  %i.nz = extractelement <8 x i1> %i.nx, i64 1
  br i1 %i.nz, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  store i8 47, ptr %next.gep384, align 1, !tbaa !20
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.oa = extractelement <8 x i1> %i.nx, i64 2
  br i1 %i.oa, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  store i8 47, ptr %next.gep385, align 1, !tbaa !20
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.ob = extractelement <8 x i1> %i.nx, i64 3
  br i1 %i.ob, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  store i8 47, ptr %next.gep386, align 1, !tbaa !20
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.oc = extractelement <8 x i1> %i.nx, i64 4
  br i1 %i.oc, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  store i8 47, ptr %next.gep387, align 1, !tbaa !20
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %i.od = extractelement <8 x i1> %i.nx, i64 5
  br i1 %i.od, label %pred.store.if402, label %pred.store.continue403

pred.store.if402:                                 ; preds = %pred.store.continue401
  store i8 47, ptr %next.gep388, align 1, !tbaa !20
  br label %pred.store.continue403

pred.store.continue403:                           ; preds = %pred.store.if402, %pred.store.continue401
  %i.oe = extractelement <8 x i1> %i.nx, i64 6
  br i1 %i.oe, label %pred.store.if404, label %pred.store.continue405

pred.store.if404:                                 ; preds = %pred.store.continue403
  store i8 47, ptr %next.gep389, align 1, !tbaa !20
  br label %pred.store.continue405

pred.store.continue405:                           ; preds = %pred.store.if404, %pred.store.continue403
  %i.of = extractelement <8 x i1> %i.nx, i64 7
  br i1 %i.of, label %pred.store.if406, label %pred.store.continue407

pred.store.if406:                                 ; preds = %pred.store.continue405
  store i8 47, ptr %next.gep390, align 1, !tbaa !20
  br label %pred.store.continue407

pred.store.continue407:                           ; preds = %pred.store.if406, %pred.store.continue405
  %index.next408 = add nuw i64 %index382, 8       ; 2 uses
  %i.og = icmp eq i64 %index.next408, %n.vec380
  br i1 %i.og, label %vec.epilog.middle.block409, label %vec.epilog.vector.body381, !llvm.loop !46

vec.epilog.middle.block409:                       ; preds = %pred.store.continue407
  %cmp.n410 = icmp eq i64 %i.kw, %n.vec380
  br i1 %cmp.n410, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, label %.lr.ph.i.i.i28.i.i.preheader

.lr.ph.i.i.i28.i.i.preheader:                     ; preds = %iter.check374, %vec.epilog.iter.check375, %vec.epilog.middle.block409
  %.sroa.02.07.i.i.i29.i.i.ph = phi ptr [ %i.kv, %iter.check374 ], [ %i.kz, %vec.epilog.iter.check375 ], [ %i.np, %vec.epilog.middle.block409 ]
  br label %.lr.ph.i.i.i28.i.i

.lr.ph.i.i.i28.i.i:                               ; preds = %.lr.ph.i.i.i28.i.i.preheader, %bb.ad
  %.sroa.02.07.i.i.i29.i.i = phi ptr [ %i.oj, %bb.ad ], [ %.sroa.02.07.i.i.i29.i.i.ph, %.lr.ph.i.i.i28.i.i.preheader ] ; 3 uses
  %i.oh = load i8, ptr %.sroa.02.07.i.i.i29.i.i, align 1, !tbaa !20
  %i.oi = icmp eq i8 %i.oh, 92
  br i1 %i.oi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i28.i.i
  store i8 47, ptr %.sroa.02.07.i.i.i29.i.i, align 1, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i28.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i29.i.i, i64 1 ; 2 uses
  %.not.i.i.i30.i.i = icmp eq ptr %i.oj, %i.kx
  br i1 %.not.i.i.i30.i.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, label %.lr.ph.i.i.i28.i.i, !llvm.loop !47

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i: ; preds = %bb.ad, %vec.epilog.middle.block409, %middle.block372
  %.pr.i.i31.i.i = load i64, ptr %i.dy, align 8, !tbaa !19 ; 3 uses
  %.pre.i.i32.i.i = load ptr, ptr %6, align 8, !tbaa !23 ; 4 uses
  %i.ok = icmp eq i64 %.pr.i.i31.i.i, 0
  br i1 %i.ok, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i
  %i.ol = load i8, ptr %.pre.i.i32.i.i, align 1, !tbaa !20
  %i.om = icmp eq i8 %i.ol, 47
  br i1 %i.om, label %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i33.i.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i: ; preds = %bb.ae, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.on = phi i64 [ %.pr.i.i31.i.i, %bb.ae ], [ 0, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.oo = phi ptr [ %.pre.i.i32.i.i, %bb.ae ], [ %.pre.i.i32.i.i, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i ], [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.op = add i64 %i.kc, 1                        ; 4 uses
  %i.oq = load i64, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.or = icmp ugt i64 %i.op, %i.oq
  br i1 %i.or, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i

bb.af:                                            ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %i.op, i64 noundef %i.oq) #17
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i:                                     ; preds = %bb.af
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i: ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i
  %i.os = xor i64 %i.kc, -1
  %i.ot = add i64 %.0.i84.i, %i.os
  %i.ou = sub nuw i64 %i.oq, %i.op
  %spec.select.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ot, i64 %i.ou)
  %i.ov = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.op, i64 noundef %spec.select.i.i.i.i.i.i.i, ptr noundef %i.oo, i64 noundef %i.on)
          to label %.noexc86.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc86.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i
  %.fca.1.insert.i10.i.i.i.i = insertvalue { i32, i64 } { i32 0, i64 poison }, i64 %i.kc, 1
  br label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i33.i.i: ; preds = %bb.ae
  %i.ow = load i64, ptr %i.e, align 8, !tbaa !19
  %spec.select.i.i.i11.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.0.i84.i, i64 %i.ow)
  %i.ox = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %spec.select.i.i.i11.i.i.i.i, ptr noundef nonnull %.pre.i.i32.i.i, i64 noundef %.pr.i.i31.i.i)
          to label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i33.i.i, %.noexc86.i.i.i
  %.pn.i.i.i.i = phi { i32, i64 } [ %.fca.1.insert.i10.i.i.i.i, %.noexc86.i.i.i ], [ { i32 1, i64 undef }, %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i33.i.i ] ; 2 uses
  %i.oy = extractvalue { i32, i64 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.oz = extractvalue { i32, i64 } %.pn.i.i.i.i, 1 ; 2 uses
  %i.pa = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.dw
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  %i.pc = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i33.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i, %bb.af
  %lpad.loopexit.split-lp559 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pf = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.dw
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ph = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i.i
  %i.pj = load i8, ptr %i.dv, align 8, !tbaa !34, !range !35, !noundef !12
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.ah, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i
  store i8 0, ptr %i.dv, align 8, !tbaa !34
  %i.pl = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.dx
  br i1 %i.pm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.pn = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #16
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.z
  %.sroa.053.0.i.i.i = phi i32 [ undef, %bb.z ], [ %i.oy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.oy, %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %bb.z ], [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.oz, %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i ] ; 2 uses
  %i.pp = load i8, ptr %i.dv, align 8, !tbaa !34, !range !35, !noundef !12
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.ai, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit93.i.i.i

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store i8 0, ptr %i.dv, align 8, !tbaa !34
  %i.pr = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.dx
  br i1 %i.ps, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit93.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i.i.i: ; preds = %bb.ai
  %i.pt = load i64, ptr %i.dx, align 8, !tbaa !20
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #16
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit93.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit93.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.pv = load ptr, ptr %4, align 8, !tbaa !23    ; 3 uses
  %i.pw = icmp eq ptr %i.pv, %i.dt                ; 2 uses
  br i1 %i.ko, label %.critedge66.i.i.i, label %bb.aj

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i, %bb.ag
  %.pn.i26.i.i = phi { ptr, i32 } [ %i.pe, %bb.ag ], [ %lpad.loopexit.split-lp559, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i.i ], [ %lpad.loopexit.split-lp559, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp559, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.px = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.dt
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i

bb.aj:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit93.i.i.i
  br i1 %i.pw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i.i.i: ; preds = %bb.aj
  %i.pz = load i64, ptr %i.dt, align 8, !tbaa !20
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.qa) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.qb = add i64 %i.kc, 1                        ; 6 uses
  %i.qc = add i64 %.0.i84.i, 3
  %i.qd = sub i64 %i.qc, %i.kc                    ; 2 uses
  %i.qe = load i64, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.qf = icmp ugt i64 %i.qb, %i.qe
  br i1 %i.qf, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i, %.lr.ph.i
  %i.qg = phi ptr [ @.str.6, %.lr.ph.i ], [ @.str.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i ]
  %i.qh = phi ptr [ @.str.5, %.lr.ph.i ], [ @.str.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i ]
  %i.qi = phi i64 [ %i.jf, %.lr.ph.i ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i ]
  %i.qj = phi i64 [ %i.ji, %.lr.ph.i ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull %i.qg, ptr noundef nonnull %i.qh, i64 noundef %i.qi, i64 noundef %i.qj) #17
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i95.i.i.i
  switch i64 %i.qd, label %bb.al [
    i64 -1, label %bb.ak
    i64 0, label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE16ResolveComponentENS1_4RootEmm.exit.i.i
  ]

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  store i64 %i.qb, ptr %i.e, align 8, !tbaa !19
  %i.qk = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qb
  store i8 0, ptr %i.ql, align 1, !tbaa !20
  br label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE16ResolveComponentENS1_4RootEmm.exit.i.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.qm = sub nuw i64 %i.qe, %i.qb
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.qd, i64 %i.qm)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.qb, i64 noundef %spec.select.i.i.i.i)
          to label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE16ResolveComponentENS1_4RootEmm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.qn = load i64, ptr %i.dt, align 8, !tbaa !20
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qo) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.body

.critedge66.i.i.i:                                ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit93.i.i.i
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.i.i: ; preds = %.critedge66.i.i.i
  %i.qp = load i64, ptr %i.dt, align 8, !tbaa !20
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.qq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i: ; preds = %.critedge66.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.qr = icmp eq i32 %.sroa.053.0.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.qr, label %.backedge.i.i, label %.critedge.i.i

.backedge.i.i:                                    ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE16ResolveComponentENS1_4RootEmm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i
  %.0.be.i.i = phi i64 [ %.sroa.6.1.i.i.i, %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE16ResolveComponentENS1_4RootEmm.exit.i.i ], [ %.sroa.6.0.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i ] ; 2 uses
  %i.qs = load i64, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %i.qt = icmp ugt i64 %i.qs, 1
  %i.qu = icmp ult i64 %.0.be.i.i, %i.qs
  %or.cond.i.i = select i1 %i.qt, i1 %i.qu, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i, label %.critedge.i.i, !llvm.loop !48

_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE16ResolveComponentENS1_4RootEmm.exit.i.i: ; preds = %bb.al, %bb.w, %bb.t, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i82.i.i.i, %bb.v, %.critedge3.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74.i.i.i, %bb.u, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.r
  %.sroa.6.1.i.i.i = phi i64 [ %.0.i84.i, %bb.w ], [ 0, %bb.t ], [ %i.kc, %bb.ak ], [ %..i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69.i.i.i ], [ %..i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ], [ 0, %bb.s ], [ %.0.i84.i, %.critedge3.i.i.i ], [ %.0.i84.i, %bb.v ], [ %..i.i.i, %bb.u ], [ %..i.i.i, %bb.r ], [ %..i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74.i.i.i ], [ %..i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i82.i.i.i ], [ %..i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ], [ %i.kc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.backedge.i.i

.critedge.i.i:                                    ; preds = %.backedge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i, %.preheader.split.i.i
  %.sroa.018.1.i.i = phi i32 [ 0, %.preheader.split.i.i ], [ 0, %.backedge.i.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i ]
  %.sroa.6.1.i.i = phi i64 [ %i.je, %.preheader.split.i.i ], [ %i.qs, %.backedge.i.i ], [ %.sroa.6.0.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i.i.i ]
  %i.qv = insertvalue { i32, i64 } poison, i32 %.sroa.018.1.i.i, 0
  %i.qw = insertvalue { i32, i64 } %i.qv, i64 %.sroa.6.1.i.i, 1
  br label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE11ResolvePathEv.exit.i

_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE11ResolvePathEv.exit.i: ; preds = %.critedge.i.i, %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE11ResolveRootENS1_4RootE.exit.i.i
  %.fca.1.insert.merged.i.i = phi { i32, i64 } [ %i.qw, %.critedge.i.i ], [ %.pn.i.i.i, %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE11ResolveRootENS1_4RootE.exit.i.i ]
  %i.qx = extractvalue { i32, i64 } %.fca.1.insert.merged.i.i, 0
  %cond.i = icmp eq i32 %i.qx, 0
  br i1 %cond.i, label %bb.am, label %bb.h

bb.am:                                            ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies11LogicalPathEE11ResolvePathEv.exit.i
  %i.qy = load ptr, ptr %2, align 8, !tbaa !23    ; 6 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ra = icmp eq ptr %i.qy, %i.qz
  %i.rb = load ptr, ptr %i.c, align 8, !tbaa !23  ; 5 uses
  %i.rc = icmp eq ptr %i.rb, %i.d                 ; 2 uses
  %.pre107.i = load i64, ptr %i.e, align 8, !tbaa !19 ; 5 uses
  br i1 %i.ra, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %bb.am
  br i1 %i.rc, label %bb.an, label %.thread.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10.i: ; preds = %bb.am
  br i1 %i.rc, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i
  %i.rd = icmp ult i64 %.pre107.i, 16
  call void @llvm.assume(i1 %i.rd)
  switch i64 %.pre107.i, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14.i
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.re = load i8, ptr %i.rb, align 1, !tbaa !20
  store i8 %i.re, ptr %i.qy, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qy, ptr align 1 %i.rb, i64 %.pre107.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.rf = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.rf, ptr %i.rg, align 8, !tbaa !19
  %i.rh = load ptr, ptr %2, align 8, !tbaa !23
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rf
  store i8 0, ptr %i.ri, align 1, !tbaa !20
  %.pre.i15.i = load ptr, ptr %i.c, align 8, !tbaa !23
  br label %bb.as

.thread.i17.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.rb, ptr %2, align 8, !tbaa !23
  store i64 %.pre107.i, ptr %i.rj, align 8, !tbaa !19
  %i.rk = load i64, ptr %i.d, align 8, !tbaa !20
  store i64 %i.rk, ptr %i.qz, align 8, !tbaa !20
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i10.i
  %i.rl = load i64, ptr %i.qz, align 8, !tbaa !20
  store ptr %i.rb, ptr %2, align 8, !tbaa !23
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre107.i, ptr %i.rm, align 8, !tbaa !19
  %i.rn = load i64, ptr %i.d, align 8, !tbaa !20
  store i64 %i.rn, ptr %i.qz, align 8, !tbaa !20
  %.not.i12.i = icmp eq ptr %i.qy, null
  br i1 %.not.i12.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11.i
  store ptr %i.qy, ptr %i.c, align 8, !tbaa !23
  store i64 %i.rl, ptr %i.d, align 8, !tbaa !20
  br label %bb.as

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i11.i, %.thread.i17.i
  store ptr %i.d, ptr %i.c, align 8, !tbaa !23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14.i
  %i.ro = phi ptr [ %i.qy, %bb.aq ], [ %i.d, %bb.ar ], [ %.pre.i15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !19
  store i8 0, ptr %i.ro, align 1, !tbaa !20
  %i.rp = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.g
end_hunk_0
begin_hunk_1_@_ZNK2cm12PathResolver8ResolverINS0_8Policies8RealPathEE7ResolveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_:bb.a
  %.not50.i.i = icmp ult i64 %.0.i.i, %i.kx
  br i1 %.not50.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, label %.invoke

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.ac
  %i.kz = sub i64 %..i.i.i, %i.ku
  %i.la = sub nuw i64 %i.kx, %i.ku                ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.la, i64 %i.kz) ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ku ; 5 uses
  %i.lc = icmp eq i64 %.0.i.i, %i.kp
  br i1 %i.lc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i [
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ad
  %lhsc190.i.i.i = load i8, ptr %i.lb, align 1
  %i.ld = icmp eq i8 %lhsc190.i.i.i, 46
  br i1 %i.ld, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76.i.i.i: ; preds = %bb.ad
  %i.le = load i16, ptr %i.lb, align 1
  %i.lf = icmp ne i16 %i.le, 11822
  %i.lg = zext i1 %i.lf to i32
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ad
  %i.li = sub i64 %..i.i.i, %i.kp                 ; 2 uses
  switch i64 %i.li, label %bb.af [
    i64 -1, label %bb.ae
    i64 0, label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i
  ]

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  store i64 %i.ku, ptr %i.f, align 8, !tbaa !19
  store i8 0, ptr %i.lb, align 1, !tbaa !20
  br label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %spec.select.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.li, i64 %i.la)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.ku, i64 noundef %spec.select.i.i.i.i.i)
          to label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i [
    i64 0, label %.critedge4.i.i.i
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i81.i.i.i
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i89.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i81.i.i.i: ; preds = %bb.ag
  %lhsc.i.i.i = load i8, ptr %i.lb, align 1
  %i.lj = icmp eq i8 %lhsc.i.i.i, 46
  br i1 %i.lj, label %.critedge4.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i

.critedge4.i.i.i:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i81.i.i.i, %bb.ag
  %i.lk = sub i64 %..i.i.i, %.0.i.i               ; 2 uses
  switch i64 %i.lk, label %bb.ai [
    i64 -1, label %bb.ah
    i64 0, label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i
  ]

bb.ah:                                            ; preds = %.critedge4.i.i.i
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !19
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.0.i.i
  store i8 0, ptr %i.ll, align 1, !tbaa !20
  br label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i

bb.ai:                                            ; preds = %.critedge4.i.i.i
  %i.lm = sub nuw i64 %i.kx, %.0.i.i
  %spec.select.i.i86.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.lk, i64 %i.lm)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %.0.i.i, i64 noundef %spec.select.i.i86.i.i.i)
          to label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i89.i.i.i: ; preds = %bb.ag
  %i.ln = load i16, ptr %i.lb, align 1
  %i.lo = icmp ne i16 %i.ln, 11822
  %i.lp = zext i1 %i.lo to i32
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i89.i.i.i
  %i.lr = add i64 %.0.i.i, -1
  %i.ls = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 noundef signext 47, i64 noundef %i.lr) #15 ; 5 uses
  %i.lt = add i64 %i.ls, 1                        ; 6 uses
  %i.lu = add i64 %.0.i.i, 3
  %i.lv = sub i64 %i.lu, %i.ls                    ; 2 uses
  %i.lw = load i64, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  %i.lx = icmp ugt i64 %i.lt, %i.lw
  br i1 %i.lx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i

.invoke:                                          ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i, %bb.ac
  %i.ly = phi ptr [ @.str.6, %bb.ac ], [ @.str.1, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i ]
  %i.lz = phi ptr [ @.str.5, %bb.ac ], [ @.str.7, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i ]
  %i.ma = phi i64 [ %i.ku, %bb.ac ], [ %i.lt, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i ]
  %i.mb = phi i64 [ %i.kx, %bb.ac ], [ %i.lw, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull %i.ly, ptr noundef nonnull %i.lz, i64 noundef %i.ma, i64 noundef %i.mb) #17
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit92.i.i.i
  switch i64 %i.lv, label %bb.ak [
    i64 -1, label %bb.aj
    i64 0, label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i
  ]

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i
  store i64 %i.lt, ptr %i.f, align 8, !tbaa !19
  %i.mc = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lt
  store i8 0, ptr %i.md, align 1, !tbaa !20
  br label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i
  %i.me = sub nuw i64 %i.lw, %i.lt
  %spec.select.i.i94.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.lv, i64 %i.me)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.lt, i64 noundef %spec.select.i.i94.i.i.i)
          to label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i89.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i81.i.i.i, %bb.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  store ptr %i.dw, ptr %4, align 8, !tbaa !16, !alias.scope !78
  %spec.select.i.i.i.i24.i.i = call noundef i64 @llvm.umin.i64(i64 %..i.i.i, i64 %i.kx) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !78
  store i64 %spec.select.i.i.i.i24.i.i, ptr %i.b, align 8, !tbaa !31, !noalias !78
  %i.mf = icmp ugt i64 %spec.select.i.i.i.i24.i.i, 15
  br i1 %i.mf, label %.noexc10.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc10.i.i.i.i.i:                               ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i
  %i.mg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %.noexc10.i.i.i.i.i
  store ptr %i.mg, ptr %4, align 8, !tbaa !23, !alias.scope !78
  %i.mh = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !78
  store i64 %i.mh, ptr %i.dw, align 8, !tbaa !20, !alias.scope !78
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc8, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i
  %i.mi = phi ptr [ %i.mg, %.noexc8 ], [ %i.dw, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit79.thread.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i24.i.i, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i25.i.i
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.mj = load i8, ptr %i.ky, align 1, !tbaa !20
  store i8 %i.mj, ptr %i.mi, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i25.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mi, ptr align 1 %i.ky, i64 %spec.select.i.i.i.i24.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i25.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i25.i.i: ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i.i.i.i
  %i.mk = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !78 ; 2 uses
  store i64 %i.mk, ptr %i.dx, align 8, !tbaa !19, !alias.scope !78
  %i.ml = load ptr, ptr %4, align 8, !tbaa !23, !alias.scope !78
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mk
  store i8 0, ptr %i.mm, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  store i8 0, ptr %i.dy, align 8, !tbaa !34, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !79
  store ptr %i.ee, ptr %3, align 8, !tbaa !16, !noalias !79
  store i64 0, ptr %i.ef, align 8, !tbaa !19, !noalias !79
  store i8 0, ptr %i.ee, align 8, !tbaa !20, !noalias !79
  %i.mn = load ptr, ptr %10, align 8, !tbaa !28, !noalias !79, !nonnull !12, !align !13 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !30, !noalias !79
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !79
  %i.mr = invoke i64 %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.mn, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.an unwind label %bb.ap, !noalias !79

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i25.i.i
  %.fr21.i.i = freeze i64 %i.mr                   ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.fr21.i.i to i32 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.fr21.i.i, 32 ; 6 uses
  switch i32 %.sroa.0.0.extract.trunc.i, label %.thread18.i.i [
    i32 0, label %bb.ao
    i32 1, label %bb.ba
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ms = load i64, ptr %i.g, align 8, !tbaa !22, !noalias !79
  %i.mt = add i64 %i.ms, 1                        ; 2 uses
  store i64 %i.mt, ptr %i.g, align 8, !tbaa !22, !noalias !79
  %i.mu = icmp ugt i64 %i.mt, 31
  br i1 %i.mu, label %.thread18.i.i, label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i25.i.i
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.mw = load ptr, ptr %3, align 8, !tbaa !23, !noalias !79 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.ee
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.i: ; preds = %bb.ap
  %i.my = load i64, ptr %i.ee, align 8, !tbaa !20, !noalias !79
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #16, !noalias !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !79
  %i.na = load i8, ptr %i.dy, align 8, !tbaa !34, !range !35, !noundef !12
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %12, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

12:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  store i8 0, ptr %i.dy, align 8, !tbaa !34
  %13 = load ptr, ptr %5, align 8, !tbaa !23      ; 2 uses
  %14 = icmp eq ptr %13, %i.ea
  br i1 %14, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.sink.split

bb.aq:                                            ; preds = %bb.ao
  %i.nc = load i64, ptr %i.ef, align 8, !tbaa !19, !noalias !79 ; 9 uses
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %.thread18.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ne = load i8, ptr %i.dy, align 8, !tbaa !34, !range !35, !noundef !12
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.ng = load ptr, ptr %5, align 8, !tbaa !23    ; 6 uses
  %i.nh = icmp eq ptr %i.ng, %i.ea
  %i.ni = load ptr, ptr %3, align 8, !tbaa !23    ; 5 uses
  %i.nj = icmp eq ptr %i.ni, %i.ee                ; 2 uses
  br i1 %i.nh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.as
  br i1 %i.nj, label %bb.at, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.as
  br i1 %i.nj, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.nk = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nk)
  %cond.i = icmp eq i64 %i.nc, 1
  br i1 %cond.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nl = load i8, ptr %i.ni, align 1, !tbaa !20
  store i8 %i.nl, ptr %i.ng, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ng, ptr align 1 %i.ni, i64 %i.nc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.av, %bb.au
  %i.nm = load i64, ptr %i.ef, align 8, !tbaa !19 ; 2 uses
  store i64 %i.nm, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19
  %i.nn = load ptr, ptr %5, align 8, !tbaa !23
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nm
  store i8 0, ptr %i.no, align 1, !tbaa !20
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.ni, ptr %5, align 8, !tbaa !23
  store i64 %i.nc, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19
  %i.np = load i64, ptr %i.ee, align 8, !tbaa !20
  store i64 %i.np, ptr %i.ea, align 8, !tbaa !20
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.nq = load i64, ptr %i.ea, align 8, !tbaa !20
  store ptr %i.ni, ptr %5, align 8, !tbaa !23
  store i64 %i.nc, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19
  %i.nr = load i64, ptr %i.ee, align 8, !tbaa !20
  store i64 %i.nr, ptr %i.ea, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ng, ptr %3, align 8, !tbaa !23
  store i64 %i.nq, ptr %i.ee, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.ee, ptr %3, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.ax, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.ns = phi ptr [ %i.ng, %bb.aw ], [ %i.ee, %bb.ax ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.ef, align 8, !tbaa !19
  store i8 0, ptr %i.ns, align 1, !tbaa !20
  br label %.thread18.i.i

bb.ay:                                            ; preds = %bb.ar
  store ptr %i.ea, ptr %5, align 8, !tbaa !16
  %i.nt = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.ee
  br i1 %i.nu, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i

bb.az:                                            ; preds = %bb.ay
  %i.nv = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nv)
  %i.nw = add nuw nsw i64 %i.nc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.nw, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i: ; preds = %bb.ay
  store ptr %i.nt, ptr %5, align 8, !tbaa !23
  %i.nx = load i64, ptr %i.ee, align 8, !tbaa !20
  store i64 %i.nx, ptr %i.ea, align 8, !tbaa !20
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit.i.i

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i, %bb.az
  store i64 %i.nc, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19
  store ptr %i.ee, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %i.ef, align 8, !tbaa !19
  store i8 0, ptr %i.ee, align 8, !tbaa !20
  store i8 1, ptr %i.dy, align 8, !tbaa !34
  br label %.thread18.i.i

bb.ba:                                            ; preds = %bb.an
  %i.ny = icmp ne i64 %.sroa.9.0.extract.shift.i, 22 ; 2 uses
  %spec.select37.i = zext i1 %i.ny to i32
  %i.nz = select i1 %i.ny, i64 %.sroa.9.0.extract.shift.i, i64 0
  br label %.thread18.i.i

.thread18.i.i:                                    ; preds = %bb.ba, %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %bb.aq, %bb.ao, %bb.an
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.extract.shift.i, %bb.an ], [ %i.nz, %bb.ba ], [ %.sroa.9.0.extract.shift.i, %bb.aq ], [ 40, %bb.ao ], [ %.sroa.9.0.extract.shift.i, %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit.i.i ], [ %.sroa.9.0.extract.shift.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.an ], [ %spec.select37.i, %bb.ba ], [ 0, %bb.aq ], [ 1, %bb.ao ], [ 0, %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i ] ; 2 uses
  %i.oa = load ptr, ptr %3, align 8, !tbaa !23, !noalias !79 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.ee
  br i1 %i.ob, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i: ; preds = %.thread18.i.i
  %i.oc = load i64, ptr %i.ee, align 8, !tbaa !20, !noalias !79
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i: ; preds = %.thread18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !79
  %i.oe = load i8, ptr %i.dy, align 8, !tbaa !34, !range !35, !noundef !12
  %i.of = trunc nuw i8 %i.oe to i1                ; 2 uses
  br i1 %i.of, label %bb.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26.i.i

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i
  store ptr %i.dz, ptr %6, align 8, !tbaa !16
  %i.og = load ptr, ptr %5, align 8, !tbaa !23    ; 3 uses
  %i.oh = icmp eq ptr %i.og, %i.ea
  br i1 %i.oh, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.oi = load i64, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19 ; 3 uses
  %i.oj = icmp ult i64 %i.oi, 16
  call void @llvm.assume(i1 %i.oj)
  %i.ok = add nuw nsw i64 %i.oi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dz, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ok, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i: ; preds = %bb.bb
  store ptr %i.og, ptr %6, align 8, !tbaa !23
  %i.ol = load i64, ptr %i.ea, align 8, !tbaa !20
  store i64 %i.ol, ptr %i.dz, align 8, !tbaa !20
  %.pre142.i.i.i = load i64, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i, %bb.bc
  %i.om = phi ptr [ %i.dz, %bb.bc ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i ] ; 45 uses
  %i.on = phi i64 [ %i.oi, %bb.bc ], [ %.pre142.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i ] ; 10 uses
  store i64 %i.on, ptr %i.eb, align 8, !tbaa !19
  store ptr %i.ea, ptr %5, align 8, !tbaa !23
  store i64 0, ptr %.phi.trans.insert141.i.i.i, align 8, !tbaa !19
  store i8 0, ptr %i.ea, align 8, !tbaa !20
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.on
  %.not6.i.i.i36.i.i = icmp samesign eq i64 %i.on, 0
  br i1 %.not6.i.i.i36.i.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i, label %iter.check435

iter.check435:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %min.iters.check327 = icmp ult i64 %i.on, 8
  br i1 %min.iters.check327, label %.lr.ph.i.i.i37.i.i.preheader, label %vector.main.loop.iter.check328

vector.main.loop.iter.check328:                   ; preds = %iter.check435
  %min.iters.check329 = icmp ult i64 %i.on, 32
  br i1 %min.iters.check329, label %vec.epilog.ph439, label %vector.ph330

vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %i.op = and i64 %i.on, 24
  %n.vec331 = and i64 %i.on, -32                  ; 4 uses
  %i.oq = getelementptr i8, ptr %i.om, i64 %n.vec331
  br label %vector.body332

vector.body332:                                   ; preds = %vector.ph330, %pred.store.continue431
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next432, %pred.store.continue431 ] ; 33 uses
  %next.gep334 = getelementptr i8, ptr %i.om, i64 %index333 ; 3 uses
  %i.or = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep335 = getelementptr i8, ptr %i.or, i64 1
  %i.os = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep336 = getelementptr i8, ptr %i.os, i64 2
  %i.ot = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep337 = getelementptr i8, ptr %i.ot, i64 3
  %i.ou = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep338 = getelementptr i8, ptr %i.ou, i64 4
  %i.ov = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep339 = getelementptr i8, ptr %i.ov, i64 5
  %i.ow = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep340 = getelementptr i8, ptr %i.ow, i64 6
  %i.ox = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep341 = getelementptr i8, ptr %i.ox, i64 7
  %i.oy = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep342 = getelementptr i8, ptr %i.oy, i64 8
  %i.oz = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep343 = getelementptr i8, ptr %i.oz, i64 9
  %i.pa = getelementptr i8, ptr %i.om, i64 %index333
  %next.gep344 = getelementptr i8, ptr %i.pa, i64 10
end_hunk_1
begin_hunk_2_@_ZNK2cm12PathResolver8ResolverINS0_8Policies8RealPathEE7ResolveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_:bb.a
pred.store.if428:                                 ; preds = %pred.store.continue427
  store i8 47, ptr %next.gep364, align 1, !tbaa !20
  br label %pred.store.continue429

pred.store.continue429:                           ; preds = %pred.store.if428, %pred.store.continue427
  %i.re = extractelement <16 x i1> %i.py, i64 15
  br i1 %i.re, label %pred.store.if430, label %pred.store.continue431

pred.store.if430:                                 ; preds = %pred.store.continue429
  store i8 47, ptr %next.gep365, align 1, !tbaa !20
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429
  %index.next432 = add nuw i64 %index333, 32      ; 2 uses
  %i.rf = icmp eq i64 %index.next432, %n.vec331
  br i1 %i.rf, label %middle.block433, label %vector.body332, !llvm.loop !68

middle.block433:                                  ; preds = %pred.store.continue431
  %cmp.n434 = icmp eq i64 %i.on, %n.vec331
  br i1 %cmp.n434, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, label %vec.epilog.iter.check436

vec.epilog.iter.check436:                         ; preds = %middle.block433
  %min.epilog.iters.check438 = icmp eq i64 %i.op, 0
  br i1 %min.epilog.iters.check438, label %.lr.ph.i.i.i37.i.i.preheader, label %vec.epilog.ph439, !prof !27

vec.epilog.ph439:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check436
  %vec.epilog.resume.val440 = phi i64 [ %n.vec331, %vec.epilog.iter.check436 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec441 = and i64 %i.on, -8                   ; 3 uses
  %i.rg = getelementptr i8, ptr %i.om, i64 %n.vec441
  br label %vec.epilog.vector.body442

vec.epilog.vector.body442:                        ; preds = %pred.store.continue468, %vec.epilog.ph439
  %index443 = phi i64 [ %vec.epilog.resume.val440, %vec.epilog.ph439 ], [ %index.next469, %pred.store.continue468 ] ; 9 uses
  %next.gep444 = getelementptr i8, ptr %i.om, i64 %index443 ; 2 uses
  %i.rh = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep445 = getelementptr i8, ptr %i.rh, i64 1
  %i.ri = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep446 = getelementptr i8, ptr %i.ri, i64 2
  %i.rj = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep447 = getelementptr i8, ptr %i.rj, i64 3
  %i.rk = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep448 = getelementptr i8, ptr %i.rk, i64 4
  %i.rl = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep449 = getelementptr i8, ptr %i.rl, i64 5
  %i.rm = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep450 = getelementptr i8, ptr %i.rm, i64 6
  %i.rn = getelementptr i8, ptr %i.om, i64 %index443
  %next.gep451 = getelementptr i8, ptr %i.rn, i64 7
  %wide.load452 = load <8 x i8>, ptr %next.gep444, align 1, !tbaa !20
  %i.ro = icmp eq <8 x i8> %wide.load452, splat (i8 92) ; 8 uses
  %i.rp = extractelement <8 x i1> %i.ro, i64 0
  br i1 %i.rp, label %pred.store.if453, label %pred.store.continue454

pred.store.if453:                                 ; preds = %vec.epilog.vector.body442
  store i8 47, ptr %next.gep444, align 1, !tbaa !20
  br label %pred.store.continue454

pred.store.continue454:                           ; preds = %pred.store.if453, %vec.epilog.vector.body442
  %i.rq = extractelement <8 x i1> %i.ro, i64 1
  br i1 %i.rq, label %pred.store.if455, label %pred.store.continue456

pred.store.if455:                                 ; preds = %pred.store.continue454
  store i8 47, ptr %next.gep445, align 1, !tbaa !20
  br label %pred.store.continue456

pred.store.continue456:                           ; preds = %pred.store.if455, %pred.store.continue454
  %i.rr = extractelement <8 x i1> %i.ro, i64 2
  br i1 %i.rr, label %pred.store.if457, label %pred.store.continue458

pred.store.if457:                                 ; preds = %pred.store.continue456
  store i8 47, ptr %next.gep446, align 1, !tbaa !20
  br label %pred.store.continue458

pred.store.continue458:                           ; preds = %pred.store.if457, %pred.store.continue456
  %i.rs = extractelement <8 x i1> %i.ro, i64 3
  br i1 %i.rs, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %pred.store.continue458
  store i8 47, ptr %next.gep447, align 1, !tbaa !20
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %pred.store.continue458
  %i.rt = extractelement <8 x i1> %i.ro, i64 4
  br i1 %i.rt, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %pred.store.continue460
  store i8 47, ptr %next.gep448, align 1, !tbaa !20
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %pred.store.continue460
  %i.ru = extractelement <8 x i1> %i.ro, i64 5
  br i1 %i.ru, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  store i8 47, ptr %next.gep449, align 1, !tbaa !20
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.rv = extractelement <8 x i1> %i.ro, i64 6
  br i1 %i.rv, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  store i8 47, ptr %next.gep450, align 1, !tbaa !20
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.rw = extractelement <8 x i1> %i.ro, i64 7
  br i1 %i.rw, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue466
  store i8 47, ptr %next.gep451, align 1, !tbaa !20
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue466
  %index.next469 = add nuw i64 %index443, 8       ; 2 uses
  %i.rx = icmp eq i64 %index.next469, %n.vec441
  br i1 %i.rx, label %vec.epilog.middle.block470, label %vec.epilog.vector.body442, !llvm.loop !69

vec.epilog.middle.block470:                       ; preds = %pred.store.continue468
  %cmp.n471 = icmp eq i64 %i.on, %n.vec441
  br i1 %cmp.n471, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, label %.lr.ph.i.i.i37.i.i.preheader

.lr.ph.i.i.i37.i.i.preheader:                     ; preds = %iter.check435, %vec.epilog.iter.check436, %vec.epilog.middle.block470
  %.sroa.02.07.i.i.i38.i.i.ph = phi ptr [ %i.om, %iter.check435 ], [ %i.oq, %vec.epilog.iter.check436 ], [ %i.rg, %vec.epilog.middle.block470 ]
  br label %.lr.ph.i.i.i37.i.i

.lr.ph.i.i.i37.i.i:                               ; preds = %.lr.ph.i.i.i37.i.i.preheader, %bb.be
  %.sroa.02.07.i.i.i38.i.i = phi ptr [ %i.sa, %bb.be ], [ %.sroa.02.07.i.i.i38.i.i.ph, %.lr.ph.i.i.i37.i.i.preheader ] ; 3 uses
  %i.ry = load i8, ptr %.sroa.02.07.i.i.i38.i.i, align 1, !tbaa !20
  %i.rz = icmp eq i8 %i.ry, 92
  br i1 %i.rz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i.i.i37.i.i
  store i8 47, ptr %.sroa.02.07.i.i.i38.i.i, align 1, !tbaa !20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i.i.i37.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i38.i.i, i64 1 ; 2 uses
  %.not.i.i.i39.i.i = icmp eq ptr %i.sa, %i.oo
  br i1 %.not.i.i.i39.i.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, label %.lr.ph.i.i.i37.i.i, !llvm.loop !70

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i: ; preds = %bb.be, %vec.epilog.middle.block470, %middle.block433
  %.pr.i.i40.i.i = load i64, ptr %i.eb, align 8, !tbaa !19 ; 3 uses
  %.pre.i.i41.i.i = load ptr, ptr %6, align 8, !tbaa !23 ; 4 uses
  %i.sb = icmp eq i64 %.pr.i.i40.i.i, 0
  br i1 %i.sb, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i
  %i.sc = load i8, ptr %.pre.i.i41.i.i, align 1, !tbaa !20
  %i.sd = icmp eq i8 %i.sc, 47
  br i1 %i.sd, label %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i44.i.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i: ; preds = %bb.bf, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.se = phi i64 [ %.pr.i.i40.i.i, %bb.bf ], [ 0, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.sf = phi ptr [ %.pre.i.i41.i.i, %bb.bf ], [ %.pre.i.i41.i.i, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i.i ], [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.sg = load i64, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  %.not51.i.i = icmp ult i64 %.0.i.i, %i.sg
  br i1 %.not51.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %i.ku, i64 noundef %i.sg) #17
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i.i:                                     ; preds = %bb.bg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i: ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.thread.i.i.i.i
  %i.sh = xor i64 %.0.i.i, -1
  %i.si = add i64 %..i.i.i, %i.sh
  %i.sj = sub nuw i64 %i.sg, %i.ku
  %spec.select.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.si, i64 %i.sj)
  %i.sk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.ku, i64 noundef %spec.select.i.i.i.i.i.i.i, ptr noundef %i.sf, i64 noundef %i.se)
          to label %.noexc97.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc97.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i
  %.fca.1.insert.i10.i.i.i.i = insertvalue { i32, i64 } { i32 0, i64 poison }, i64 %.0.i.i, 1
  br label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i44.i.i: ; preds = %bb.bf
  %i.sl = load i64, ptr %i.f, align 8, !tbaa !19
  %spec.select.i.i.i11.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %..i.i.i, i64 %i.sl)
  %i.sm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %spec.select.i.i.i11.i.i.i.i, ptr noundef nonnull %.pre.i.i41.i.i, i64 noundef %.pr.i.i40.i.i)
          to label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i44.i.i, %.noexc97.i.i.i
  %.pn.i.i.i.i = phi { i32, i64 } [ %.fca.1.insert.i10.i.i.i.i, %.noexc97.i.i.i ], [ { i32 1, i64 undef }, %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i44.i.i ] ; 2 uses
  %i.sn = extractvalue { i32, i64 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.so = extractvalue { i32, i64 } %.pn.i.i.i.i, 1 ; 2 uses
  %i.sp = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.dz
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42.i.i: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  %i.sr = load i64, ptr %i.dz, align 8, !tbaa !20
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_112ClassifyRootESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i44.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmRKS4_.exit.i.i.i.i, %bb.bg
  %lpad.loopexit.split-lp627 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.st = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.dz
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.sv = load i64, ptr %i.dz, align 8, !tbaa !20
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.i.i
  %15 = load i8, ptr %i.dy, align 8, !tbaa !34, !range !35, !noundef !12
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i
  store i8 0, ptr %i.dy, align 8, !tbaa !34
  %i.sx = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %17 = icmp eq ptr %i.sx, %i.ea
  br i1 %17, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26.i.i: ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i
  %.sroa.058.0.i.i.i = phi i32 [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i ], [ %i.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42.i.i ], [ %i.sn, %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i = phi i64 [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.i.i ], [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42.i.i ], [ %i.so, %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase14ResolveSymlinkENS1_4RootEmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i ] ; 2 uses
  %i.sy = load i8, ptr %i.dy, align 8, !tbaa !34, !range !35, !noundef !12
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %bb.bh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26.i.i
  store i8 0, ptr %i.dy, align 8, !tbaa !34
  %i.ta = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.ea
  br i1 %i.tb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i102.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i102.i.i.i: ; preds = %bb.bh
  %i.tc = load i64, ptr %i.ea, align 8, !tbaa !20
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #16
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i102.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.of, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i
  %i.te = icmp eq i32 %.sroa.0.0.i, 0
  br i1 %i.te, label %bb.bq, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.tf = load ptr, ptr %i.d, align 8, !tbaa !23  ; 6 uses
  %i.tg = icmp eq ptr %i.tf, %i.e
  %i.th = load ptr, ptr %4, align 8, !tbaa !23    ; 5 uses
  %i.ti = icmp eq ptr %i.th, %i.dw                ; 2 uses
  br i1 %i.tg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106.i.i.i: ; preds = %bb.bj
  br i1 %i.ti, label %bb.bk, label %.thread.i.i34.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27.i.i: ; preds = %bb.bj
  br i1 %i.ti, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i28.i.i

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106.i.i.i
  %i.tj = load i64, ptr %i.dx, align 8, !tbaa !19 ; 3 uses
  %i.tk = icmp ult i64 %i.tj, 16
  call void @llvm.assume(i1 %i.tk)
  switch i64 %i.tj, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i33.i.i
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.tl = load i8, ptr %i.th, align 1, !tbaa !20
  store i8 %i.tl, ptr %i.tf, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i33.i.i

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tf, ptr align 1 %i.th, i64 %i.tj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i33.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i33.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.tm = load i64, ptr %i.dx, align 8, !tbaa !19 ; 2 uses
  store i64 %i.tm, ptr %i.f, align 8, !tbaa !19
  %i.tn = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tm
  store i8 0, ptr %i.to, align 1, !tbaa !20
  %.pre.i105.i.i.i = load ptr, ptr %4, align 8, !tbaa !23
  br label %bb.bp

.thread.i.i34.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i106.i.i.i
  store ptr %i.th, ptr %i.d, align 8, !tbaa !23
  %i.tp = load <2 x i64>, ptr %i.dx, align 8, !tbaa !20
  store <2 x i64> %i.tp, ptr %i.f, align 8, !tbaa !20
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i28.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27.i.i
  %i.tq = load i64, ptr %i.e, align 8, !tbaa !20
  store ptr %i.th, ptr %i.d, align 8, !tbaa !23
  %i.tr = load <2 x i64>, ptr %i.dx, align 8, !tbaa !20
  store <2 x i64> %i.tr, ptr %i.f, align 8, !tbaa !20
  %.not.i.i29.i.i = icmp eq ptr %i.tf, null
  br i1 %.not.i.i29.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i28.i.i
  store ptr %i.tf, ptr %4, align 8, !tbaa !23
  store i64 %i.tq, ptr %i.dw, align 8, !tbaa !20
  br label %bb.bp

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i28.i.i, %.thread.i.i34.i.i
  store ptr %i.dw, ptr %4, align 8, !tbaa !23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i33.i.i
  %i.ts = phi ptr [ %i.tf, %bb.bn ], [ %i.dw, %bb.bo ], [ %.pre.i105.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i33.i.i ]
  store i64 0, ptr %i.dx, align 8, !tbaa !19
  store i8 0, ptr %i.ts, align 1, !tbaa !20
  %.sroa.9.0.insert.shift.i = shl nuw i64 %.sroa.9.0.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.bq

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a, %12
  %.sink = phi ptr [ %13, %12 ], [ %i.sx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a ]
  %.pn.i.i.i.ph = phi { ptr, i32 } [ %i.mv, %12 ], [ %lpad.loopexit.split-lp627, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a ]
  %i.tt = load i64, ptr %i.ea, align 8, !tbaa !20
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.tu) #16
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a, %12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.mv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %lpad.loopexit.split-lp627, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i ], [ %i.mv, %12 ], [ %lpad.loopexit.split-lp627, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i.i.i.a ], [ %.pn.i.i.i.ph, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.tv = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.dw
  br i1 %i.tw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bi, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i
  %cond1.i.i.i = phi i1 [ false, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i ], [ false, %bb.bp ], [ true, %bb.bi ]
  %.sroa.058.1.i.i.i = phi i32 [ %.sroa.058.0.i.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i ], [ 2, %bb.bp ], [ %.sroa.058.0.i.i.i, %bb.bi ]
  %.sroa.8.1.i.i.i = phi i64 [ %.sroa.8.0.i.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit104.i.i.i ], [ %.sroa.0.0.insert.insert.i, %bb.bp ], [ %.sroa.8.0.i.i.i, %bb.bi ]
  %i.tx = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.dw
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.i.i: ; preds = %bb.bq
  %i.tz = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %cond1.i.i.i, label %bb.br, label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ub = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !80
  store ptr %i.ec, ptr %7, align 8, !tbaa !16, !alias.scope !80
  %i.uc = load ptr, ptr %i.d, align 8, !tbaa !23, !noalias !80 ; 2 uses
  %spec.select.i.i.i111.i.i.i = call noundef i64 @llvm.umin.i64(i64 %..i.i.i, i64 %i.ub) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !80
  store i64 %spec.select.i.i.i111.i.i.i, ptr %i.a, align 8, !tbaa !31, !noalias !80
  %i.ud = icmp ugt i64 %spec.select.i.i.i111.i.i.i, 15
  br i1 %i.ud, label %.noexc10.i.i113.i.i.i, label %._crit_edge.i.i.i112.i.i.i

.noexc10.i.i113.i.i.i:                            ; preds = %bb.br
  %i.ue = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %.noexc10.i.i113.i.i.i
  store ptr %i.ue, ptr %7, align 8, !tbaa !23, !alias.scope !80
  %i.uf = load i64, ptr %i.a, align 8, !tbaa !31, !noalias !80
  store i64 %i.uf, ptr %i.ec, align 8, !tbaa !20, !alias.scope !80
  br label %._crit_edge.i.i.i112.i.i.i

._crit_edge.i.i.i112.i.i.i:                       ; preds = %.noexc9, %bb.br
  %i.ug = phi ptr [ %i.ue, %.noexc9 ], [ %i.ec, %bb.br ] ; 2 uses
  switch i64 %spec.select.i.i.i111.i.i.i, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit114.i.i.i
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i112.i.i.i
  %i.uh = load i8, ptr %i.uc, align 1, !tbaa !20
  store i8 %i.uh, ptr %i.ug, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit114.i.i.i

bb.bt:                                            ; preds = %._crit_edge.i.i.i112.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ug, ptr align 1 %i.uc, i64 %spec.select.i.i.i111.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit114.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit114.i.i.i: ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i112.i.i.i
  %i.ui = load i64, ptr %i.a, align 8, !tbaa !31, !noalias !80 ; 2 uses
  store i64 %i.ui, ptr %i.ed, align 8, !tbaa !19, !alias.scope !80
  %i.uj = load ptr, ptr %7, align 8, !tbaa !23, !alias.scope !80
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ui
  store i8 0, ptr %i.uk, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !80
  %i.ul = load ptr, ptr %10, align 8, !tbaa !28, !nonnull !12, !align !13 ; 2 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !30
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = invoke noundef zeroext i1 %i.uo(ptr noundef nonnull align 8 dereferenceable(8) %i.ul, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bu unwind label %bb.cc

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit114.i.i.i
  br i1 %i.up, label %bb.cd, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.uq = load ptr, ptr %i.d, align 8, !tbaa !23  ; 6 uses
  %i.ur = icmp eq ptr %i.uq, %i.e
  %i.us = load ptr, ptr %7, align 8, !tbaa !23    ; 5 uses
  %i.ut = icmp eq ptr %i.us, %i.ec                ; 2 uses
  br i1 %i.ur, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i.i: ; preds = %bb.bv
  br i1 %i.ut, label %bb.bw, label %.thread.i121.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i.i: ; preds = %bb.bv
  br i1 %i.ut, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i.i

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i.i
  %i.uu = load i64, ptr %i.ed, align 8, !tbaa !19 ; 3 uses
  %i.uv = icmp ult i64 %i.uu, 16
  call void @llvm.assume(i1 %i.uv)
  switch i64 %i.uu, label %bb.by [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i.i
    i64 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.uw = load i8, ptr %i.us, align 1, !tbaa !20
  store i8 %i.uw, ptr %i.uq, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uq, ptr align 1 %i.us, i64 %i.uu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i.i: ; preds = %bb.by, %bb.bx, %bb.bw
  %i.ux = load i64, ptr %i.ed, align 8, !tbaa !19 ; 2 uses
  store i64 %i.ux, ptr %i.f, align 8, !tbaa !19
  %i.uy = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.ux
  store i8 0, ptr %i.uz, align 1, !tbaa !20
  %.pre.i119.i.i.i = load ptr, ptr %7, align 8, !tbaa !23
  br label %bb.cb

.thread.i121.i.i.i:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120.i.i.i
  store ptr %i.us, ptr %i.d, align 8, !tbaa !23
  %i.va = load <2 x i64>, ptr %i.ed, align 8, !tbaa !20
  store <2 x i64> %i.va, ptr %i.f, align 8, !tbaa !20
  br label %bb.ca

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115.i.i.i
  %i.vb = load i64, ptr %i.e, align 8, !tbaa !20
  store ptr %i.us, ptr %i.d, align 8, !tbaa !23
  %i.vc = load <2 x i64>, ptr %i.ed, align 8, !tbaa !20
  store <2 x i64> %i.vc, ptr %i.f, align 8, !tbaa !20
  %.not.i117.i.i.i = icmp eq ptr %i.uq, null
  br i1 %.not.i117.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i.i
  store ptr %i.uq, ptr %7, align 8, !tbaa !23
  store i64 %i.vb, ptr %i.ec, align 8, !tbaa !20
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116.i.i.i, %.thread.i121.i.i.i
  store ptr %i.ec, ptr %7, align 8, !tbaa !23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i.i
  %i.vd = phi ptr [ %i.uq, %bb.bz ], [ %i.ec, %bb.ca ], [ %.pre.i119.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118.i.i.i ]
  store i64 0, ptr %i.ed, align 8, !tbaa !19
  store i8 0, ptr %i.vd, align 1, !tbaa !20
  br label %bb.cd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.ve = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.vf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.body

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit114.i.i.i
  %i.vg = landingpad { ptr, i32 }
          cleanup
  %i.vh = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.ec
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i.i: ; preds = %bb.cc
  %i.vj = load i64, ptr %i.ec, align 8, !tbaa !20
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i.i: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.body

bb.cd:                                            ; preds = %bb.cb, %bb.bu
  %spec.select140.i.i.i = phi i64 [ 8589934593, %bb.cb ], [ %..i.i.i, %bb.bu ]
  %spec.select.i32.i.i = phi i32 [ 2, %bb.cb ], [ 0, %bb.bu ]
  %i.vl = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.ec
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i: ; preds = %bb.cd
  %i.vn = load i64, ptr %i.ec, align 8, !tbaa !20
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i

_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i: ; preds = %bb.ak, %bb.ai, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i, %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i, %bb.ah, %.critedge4.i.i.i, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %.sroa.058.3.i.i.i = phi i32 [ 0, %bb.af ], [ 0, %bb.ai ], [ %spec.select.i32.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i ], [ %.sroa.058.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i ], [ 0, %bb.aj ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ], [ 0, %bb.ae ], [ 0, %.critedge4.i.i.i ], [ 0, %bb.ah ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.8.3.i.i.i = phi i64 [ %i.kp, %bb.af ], [ %.0.i.i, %bb.ai ], [ %spec.select140.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i.i ], [ %.sroa.8.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i.i.i ], [ %i.ls, %bb.aj ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ], [ %i.kp, %bb.ae ], [ %.0.i.i, %.critedge4.i.i.i ], [ %.0.i.i, %bb.ah ], [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i93.i.i.i ], [ %i.ls, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not23.i.i = icmp eq i32 %.sroa.058.3.i.i.i, 0
  br i1 %.not23.i.i, label %bb.ab, label %.critedge.i.i, !llvm.loop !73

.critedge.i.i:                                    ; preds = %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i, %bb.ab
  %.sroa.018.1.i.i = phi i32 [ 0, %bb.ab ], [ %.sroa.058.3.i.i.i, %_ZN2cm12PathResolver12_GLOBAL__N_14ImplINS0_8Policies8RealPathEE16ResolveComponentENS1_4RootEmm.exit.i.i ]
end_hunk_2
begin_hunk_3_@_ZNK2cm12PathResolver8ResolverINS0_8Policies9NaivePathEE7ResolveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.af
  %i.li = load i64, ptr %i.f, align 8, !tbaa !20
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.c
  br i1 %i.ll, label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lm = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #16
  br label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBaseD2Ev.exit

_ZN2cm12PathResolver12_GLOBAL__N_18ImplBaseD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i64 0

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.w, %bb.t, %bb.j, %.invoke
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %lpad.loopexit.split-lp359, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.lo = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.f
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %.body
  %i.lq = load i64, ptr %i.f, align 8, !tbaa !20
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ls = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.c
  br i1 %i.lt, label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBaseD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.lu = load i64, ptr %i.c, align 8, !tbaa !20
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #16
  br label %_ZN2cm12PathResolver12_GLOBAL__N_18ImplBaseD2Ev.exit15

_ZN2cm12PathResolver12_GLOBAL__N_18ImplBaseD2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN2cm12PathResolver6SystemC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cm12PathResolver6SystemE, i64 16), ptr %0, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN2cm12PathResolver6SystemD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN2cm12PathResolver6SystemD0Ev(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cm12PathResolver12_GLOBAL__N_18ImplBase11ReadSymlinkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5cmsys6StatusE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((32, 33)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !19
  store i8 0, ptr %i.b, align 8, !tbaa !20
  %i.d = load ptr, ptr %1, align 8, !tbaa !28, !nonnull !12, !align !13 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.fr21 = freeze i64 %i.h                        ; 2 uses
  store i64 %.fr21, ptr %3, align 4
  %i.i = trunc i64 %.fr21 to i32
  switch i32 %i.i, label %.thread18 [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !22
  %i.m = icmp ugt i64 %i.l, 31
  br i1 %i.m, label %.thread22, label %bb.e

.thread22:                                        ; preds = %bb.c
  store i64 171798691841, ptr %3, align 4
  br label %.thread18

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !20
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !19
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.thread18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #15 ; 0 uses
  br label %.thread18

bb.g:                                             ; preds = %bb.b
  %.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre = load i32, ptr %.in.phi.trans.insert, align 4
  %i.v = icmp eq i32 %.pre, 22
  br i1 %i.v, label %bb.h, label %.thread18

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %3, align 4
  br label %.thread18

.thread18:                                        ; preds = %bb.b, %.thread22, %bb.g, %bb.h, %bb.e, %bb.f
  %i.w = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.thread18
  %i.y = load i64, ptr %i.b, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %.thread18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34, !range !35, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !34
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #16
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34, !range !35, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !23     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.g, align 1, !tbaa !20
  store i8 %i.m, ptr %i.d, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19
  store i64 %i.t, ptr %i.r, align 8, !tbaa !19
  %i.u = load i64, ptr %i.h, align 8, !tbaa !20
  store i64 %i.u, ptr %i.e, align 8, !tbaa !20
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !20
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = load i64, ptr %i.h, align 8, !tbaa !20
  store i64 %i.z, ptr %i.e, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %1, align 8, !tbaa !23
  store i64 %i.v, ptr %i.h, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %1, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.d, %bb.g ], [ %i.h, %bb.h ], [ %i.g, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !19
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !16
  %i.ad = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !23
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !20
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !20
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !19
  store ptr %i.ae, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %i.al, align 8, !tbaa !19
  store i8 0, ptr %i.ae, align 8, !tbaa !20
  store i8 1, ptr %i.a, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN2cm12PathResolver6SystemE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{}
!13 = !{i64 8}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
end_hunk_3
