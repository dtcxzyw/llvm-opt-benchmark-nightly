Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/concatenate?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1094
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.mz = load atomic i64, ptr %i.my acquire, align 8 ; 2 uses
  %i.na = icmp eq i64 %i.mz, 4294967297
  %i.nb = trunc i64 %i.mz to i32                  ; 2 uses
  br i1 %i.na, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.my, align 8, !tbaa !117
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  store i32 0, ptr %i.nc, align 4, !tbaa !118
  %i.nd = load ptr, ptr %i.mx, align 8, !tbaa !120
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #20, !inline_history !380
  %i.ng = load ptr, ptr %i.mx, align 8, !tbaa !120
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #20, !inline_history !380
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.nj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !656
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nk = add nsw i32 %i.nb, -1
  store i32 %i.nk, ptr %i.my, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.nl = atomicrmw volatile add ptr %i.my, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nb, %bb.ei ], [ %i.nl, %bb.ej ]
  %i.nm = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nm, label %bb.ek, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i, !prof !122

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mx) #20, !inline_history !379
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.eg, %.lr.ph.i.i.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.nn, %i.mn
  br i1 %.not.i.i.i.i.i55, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i
  store ptr %i.mv, ptr %i.mm, align 8, !tbaa !171
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.ee, %bb.ed, %bb.ec
  %i.no = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !656 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 64 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 72 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !147 ; 4 uses
  %i.ns = load ptr, ptr %i.np, align 8, !tbaa !145 ; 3 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = ashr exact i64 %i.nv, 4                 ; 2 uses
  %i.nx = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nx, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i
  %i.ny = sub nuw nsw i64 1, %i.nw
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.np, i64 noundef %i.ny), !inline_history !379
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i

bb.em:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i
  %i.nz = icmp ugt i64 %i.nw, 1
  br i1 %i.nz, label %bb.en, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i

bb.en:                                            ; preds = %bb.em
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 16 ; 3 uses
  %.not.i.i100.i = icmp eq ptr %i.nr, %i.oa
  br i1 %.not.i.i100.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i101.i

.lr.ph.i.i.i.i101.i:                              ; preds = %bb.en, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i102.i = phi ptr [ %i.os, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i ], [ %i.oa, %bb.en ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i102.i, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !115 ; 8 uses
  %.not.i.i.i.i.i.i.i.i103.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i.i.i103.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i101.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 4 uses
  %i.oe = load atomic i64, ptr %i.od acquire, align 8 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 4294967297
  %i.og = trunc i64 %i.oe to i32                  ; 2 uses
  br i1 %i.of, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 0, ptr %i.od, align 8, !tbaa !117
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  store i32 0, ptr %i.oh, align 4, !tbaa !118
  %i.oi = load ptr, ptr %i.oc, align 8, !tbaa !120
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #20, !inline_history !381
  %i.ol = load ptr, ptr %i.oc, align 8, !tbaa !120
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #20, !inline_history !381
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !656
  %.not.i.i.i.i.i.i.i.i.i104.i = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i104.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.op = add nsw i32 %i.og, -1
  store i32 %i.op, ptr %i.od, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i

bb.es:                                            ; preds = %bb.eq
  %i.oq = atomicrmw volatile add ptr %i.od, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i: ; preds = %bb.es, %bb.er
  %.0.i.i.i.i.i.i.i.i.i.i106.i = phi i32 [ %i.og, %bb.er ], [ %i.oq, %bb.es ]
  %i.or = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i106.i, 1
  br i1 %i.or, label %bb.et, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, !prof !122

bb.et:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #20, !inline_history !379
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i105.i, %bb.ep, %.lr.ph.i.i.i.i101.i
  %i.os = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i102.i, i64 16 ; 2 uses
  %.not.i.i.i.i107.i = icmp eq ptr %i.os, %i.nr
  br i1 %.not.i.i.i.i107.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i101.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  store ptr %i.oa, ptr %i.nq, align 8, !tbaa !147
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.en, %bb.em, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #20, !noalias !656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %88, i8 0, i64 24, i1 false), !noalias !656
  %i.ot = load ptr, ptr %1, align 8, !tbaa !166, !noalias !656, !nonnull !142, !align !167 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !147 ; 3 uses
  %i.ow = load ptr, ptr %i.ot, align 8, !tbaa !145 ; 3 uses
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy                    ; 3 uses
  %i.pa = icmp ugt i64 %i.oz, 9223372036854775792
  br i1 %i.pa, label %.noexc.i102, label %bb.eu

.noexc.i102:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21, !inline_history !379
  unreachable

bb.eu:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i
  %i.pb = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 9 uses
  %.not370.i = icmp eq ptr %i.ov, %i.ow
  br i1 %.not370.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.eu
  %i.pc = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.pd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oz) #22, !inline_history !379 ; 4 uses
  store ptr %i.pd, ptr %88, align 8, !tbaa !223, !noalias !656
  store ptr %i.pd, ptr %i.pc, align 8, !tbaa !224, !noalias !656
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.oz ; 2 uses
  store ptr %i.pe, ptr %i.pb, align 8, !tbaa !225, !noalias !656
  %.pre.i56 = load ptr, ptr %1, align 8, !tbaa !166, !noalias !656 ; 2 uses
  %.pre278.i = load ptr, ptr %.pre.i56, align 8, !tbaa !168
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 8
  %.pre279.i = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !168
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i, %bb.eu
  %.promoted244.i = phi ptr [ %i.pd, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ null, %bb.eu ] ; 3 uses
  %.promoted.i = phi ptr [ %i.pe, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ null, %bb.eu ] ; 2 uses
  %i.pf = phi ptr [ %.pre279.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ %i.ov, %bb.eu ] ; 2 uses
  %i.pg = phi ptr [ %.pre278.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i ], [ %i.ow, %bb.eu ] ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.pf
  br i1 %i.ph, label %.critedge.i, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i
  %i.pi = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %89, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %90, i64 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %89, i64 104 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %89, i64 112
  %i.po = getelementptr inbounds nuw i8, ptr %89, i64 120
  br label %bb.ew

bb.ev:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0224.0251.i, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.pf
  br i1 %i.pq, label %.critedge.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.lr.ph.i58
  %i.pr = phi ptr [ %.promoted244.i, %.lr.ph.i58 ], [ %i.qr, %bb.ev ] ; 8 uses
  %.sroa.0224.0251.i = phi ptr [ %i.pg, %.lr.ph.i58 ], [ %i.pp, %bb.ev ] ; 2 uses
  %i.ps = phi ptr [ %.promoted.i, %.lr.ph.i58 ], [ %i.qt, %bb.ev ] ; 7 uses
  %i.pt = phi ptr [ %.promoted244.i, %.lr.ph.i58 ], [ %i.qs, %bb.ev ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #20, !noalias !656
  %i.pu = load ptr, ptr %.sroa.0224.0251.i, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %89, i8 0, i64 16, i1 false), !noalias !656
  store i64 -1, ptr %i.pi, align 8, !tbaa !661, !noalias !656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.pj, i8 0, i64 104, i1 false), !noalias !656
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %89, ptr noundef nonnull align 8 dereferenceable(120) %i.pu)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i unwind label %bb.ex, !inline_history !379

bb.ex:                                            ; preds = %bb.ew
  %i.pv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ps, ptr %i.pb, align 8, !noalias !656
  store ptr %i.pt, ptr %88, align 8, !noalias !656
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.pm) #20, !inline_history !379
  br label %.body.i

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i:    ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #20, !noalias !656
  invoke void @_ZN5arrow9list_util8internal17RangeOfValuesUsedERKNS_9ArraySpanE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.165") align 8 %90, ptr noundef nonnull align 8 dereferenceable(128) %89)
          to label %bb.ey unwind label %bb.fa, !inline_history !379

bb.ey:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i
  %i.pw = load ptr, ptr %90, align 8, !tbaa !129, !noalias !656
  %i.px = icmp eq ptr %i.pw, null                 ; 2 uses
  br i1 %i.px, label %bb.fc, label %bb.ez, !prof !130

bb.ez:                                            ; preds = %bb.ey
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !656
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i60 unwind label %.loopexit.i59, !inline_history !379

bb.fa:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ps, ptr %i.pb, align 8, !noalias !656
  store ptr %i.pt, ptr %88, align 8, !noalias !656
  br label %bb.fm

.loopexit.i59:                                    ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ez
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ps, ptr %i.pb, align 8, !noalias !656
  store ptr %i.pt, ptr %88, align 8, !noalias !656
  br label %bb.fb

.loopexit.split-lp.i:                             ; preds = %bb.ff
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fb:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i59
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i59 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.pz = load ptr, ptr %90, align 8, !tbaa !129, !noalias !656 ; 2 uses
  %.not.i.i117.i = icmp eq ptr %i.pz, null
  br i1 %.not.i.i117.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i, label %bb.fk, !prof !130

bb.fc:                                            ; preds = %bb.ey
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.pk, align 8, !noalias !656 ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !656 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.pr, %i.ps
  br i1 %.not.i.i98, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.pr, align 8, !tbaa !218
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !218
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  store ptr %i.qa, ptr %i.pl, align 8, !tbaa !224, !noalias !656
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i60

bb.fe:                                            ; preds = %bb.fc
  %i.qb = ptrtoint ptr %i.pr to i64
  %i.qc = ptrtoint ptr %i.pt to i64
  %i.qd = sub i64 %i.qb, %i.qc                    ; 4 uses
  %i.qe = icmp eq i64 %i.qd, 9223372036854775792
  br i1 %i.qe, label %bb.ff, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ff:                                            ; preds = %bb.fe
  store ptr %i.ps, ptr %i.pb, align 8, !noalias !656
  store ptr %i.pt, ptr %88, align 8, !noalias !656
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #21
          to label %.noexc112.i unwind label %.loopexit.split-lp.i, !inline_history !379

.noexc112.i:                                      ; preds = %bb.ff
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fe
  %i.qf = ashr exact i64 %i.qd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qf, i64 1)
  %i.qg = add i64 %.sroa.speculated.i.i.i.i, %i.qf ; 2 uses
  %i.qh = icmp ult i64 %i.qg, %i.qf
  %i.qi = call i64 @llvm.umin.i64(i64 %i.qg, i64 576460752303423487)
  %i.qj = select i1 %i.qh, i64 576460752303423487, i64 %i.qi ; 3 uses
  %.not.i.i.i.i99 = icmp ne i64 %i.qj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i99)
  %i.qk = shl nuw nsw i64 %i.qj, 4
  %i.ql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #22
          to label %.noexc113.i unwind label %.loopexit.i59, !inline_history !379 ; 5 uses

.noexc113.i:                                      ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qd ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.qm, align 8, !tbaa !218
  %.sroa.7.0..sroa_idx228.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx228.i, align 8, !tbaa !218
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.pt, %i.pr
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i100:                            ; preds = %.noexc113.i, %.lr.ph.i.i.i.i.i.i100
  %.03.i.i.i.i.i.i = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i100 ], [ %i.ql, %.noexc113.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.qn, %.lr.ph.i.i.i.i.i.i100 ], [ %i.pt, %.noexc113.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !228, !alias.scope !662
  %i.qn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i101 = icmp eq ptr %i.qn, %i.pr
  br i1 %.not.i.i.i.i.i.i101, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i100, !llvm.loop !12

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i100, %.noexc113.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ql, %.noexc113.i ], [ %i.qo, %.lr.ph.i.i.i.i.i.i100 ]
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.qd) #23, !inline_history !379
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.fg, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  store ptr %i.qp, ptr %i.pl, align 8, !tbaa !224, !noalias !656
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qj
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i60

_ZN5arrow6StatusC2ERKS0_.exit.i60:                ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.fd, %bb.ez
  %i.qr = phi ptr [ %i.qp, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.qa, %bb.fd ], [ %i.pr, %bb.ez ]
  %i.qs = phi ptr [ %i.ql, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.pt, %bb.fd ], [ %i.pt, %bb.ez ] ; 4 uses
  %i.qt = phi ptr [ %i.qq, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ps, %bb.fd ], [ %i.ps, %bb.ez ] ; 3 uses
  %i.qu = load ptr, ptr %90, align 8, !tbaa !129, !noalias !656 ; 2 uses
  %.not.i.i114.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i114.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i, label %bb.fh, !prof !130

bb.fh:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i60
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !140, !range !141, !noundef !142
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %90) #20, !inline_history !379
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i

_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i:         ; preds = %bb.fi, %bb.fh, %_ZN5arrow6StatusC2ERKS0_.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #20, !noalias !656
  %i.qy = load ptr, ptr %i.pm, align 8, !tbaa !229, !noalias !656 ; 3 uses
  %i.qz = load ptr, ptr %i.pn, align 8, !tbaa !230, !noalias !656 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.qy, %i.qz
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.ra, %.lr.ph.i.i.i ], [ %i.qy, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !385
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i115.i = icmp eq ptr %i.ra, %i.qz
  br i1 %.not.i.i.i115.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.pm, align 8, !tbaa !229, !noalias !656
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i
  %i.rb = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.qy, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i.i116.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i.i116.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.rc = load ptr, ptr %i.po, align 8, !tbaa !231, !noalias !656
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %i.rb to i64
  %i.rf = sub i64 %i.rd, %i.re
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rf) #23, !inline_history !386
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i

_ZN5arrow9ArraySpanD2Ev.exit.i:                   ; preds = %bb.fj, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #20, !noalias !656
  br i1 %i.px, label %bb.ev, label %.loopexit234.i

bb.fk:                                            ; preds = %bb.fb
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !140, !range !141, !noundef !142
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %90) #20, !inline_history !379
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i

_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i:      ; preds = %bb.fl, %bb.fk, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #20, !noalias !656
  br label %bb.fm

bb.fm:                                            ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i, %bb.fa
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit118.i ], [ %i.py, %bb.fa ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %89) #20, !inline_history !379
  br label %.body.i

.body.i:                                          ; preds = %bb.fm, %bb.ex
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.fm ], [ %i.pv, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #20, !noalias !656
  br label %bb.nm

.critedge.i:                                      ; preds = %bb.ev, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i
  %.lcssa245.i = phi ptr [ %.promoted244.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i ], [ %i.qs, %bb.ev ] ; 3 uses
  %.lcssa238.i = phi ptr [ %.promoted.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i ], [ %i.qt, %bb.ev ]
  store ptr %.lcssa238.i, ptr %i.pb, align 8, !noalias !656
  store ptr %.lcssa245.i, ptr %88, align 8, !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #20, !noalias !656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false), !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #20, !noalias !656
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl9ChildDataEmRKSt6vectorINS0_5RangeESaIS3_EE(ptr dead_on_unwind noalias writable align 8 %92, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %88)
          to label %bb.fn unwind label %bb.fp

bb.fn:                                            ; preds = %.critedge.i
  %i.rj = load ptr, ptr %92, align 8, !tbaa !129, !noalias !656
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.fr, label %bb.fo, !prof !130

bb.fo:                                            ; preds = %bb.fn
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !656
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %92)
          to label %_ZN5arrow6StatusC2ERKS0_.exit120.i unwind label %bb.fq, !inline_history !379

bb.fp:                                            ; preds = %.critedge.i
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

bb.fq:                                            ; preds = %bb.fo
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

bb.fr:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #20, !noalias !656
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.rn = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.rp = load <2 x ptr>, ptr %i.rn, align 8, !tbaa !168, !noalias !665
  store <2 x ptr> %i.rp, ptr %93, align 16, !tbaa !168, !alias.scope !666, !noalias !656
  %i.rq = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %92, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !146, !noalias !665
  store ptr %i.rs, ptr %i.rq, align 16, !tbaa !146, !alias.scope !666, !noalias !656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rn, i8 0, i64 24, i1 false), !noalias !665
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #20, !noalias !656
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #20, !noalias !656
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !164, !noalias !656
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(48) %95, ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef %i.ru)
          to label %bb.fs unwind label %bb.gv, !inline_history !379

bb.fs:                                            ; preds = %bb.fr
  %i.rv = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !656
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 64
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !145
  invoke fastcc void @_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE(ptr dead_on_unwind noalias writable align 8 %94, ptr noundef nonnull align 8 dereferenceable(48) %95, ptr noundef %i.rx, ptr noundef nonnull %91)
          to label %bb.ft unwind label %bb.gw, !inline_history !379

bb.ft:                                            ; preds = %bb.fs
  %i.ry = getelementptr inbounds nuw i8, ptr %95, i64 40
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !115, !noalias !656 ; 8 uses
  %.not.i.i.i121.i = icmp eq ptr %i.rz, null
  br i1 %.not.i.i.i121.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8 ; 4 uses
  %i.sb = load atomic i64, ptr %i.sa acquire, align 8 ; 2 uses
  %i.sc = icmp eq i64 %i.sb, 4294967297
  %i.sd = trunc i64 %i.sb to i32                  ; 2 uses
  br i1 %i.sc, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.sa, align 8, !tbaa !117
  %i.se = getelementptr inbounds nuw i8, ptr %i.rz, i64 12
  store i32 0, ptr %i.se, align 4, !tbaa !118
  %i.sf = load ptr, ptr %i.rz, align 8, !tbaa !120
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(16) %i.rz) #20, !inline_history !391
  %i.si = load ptr, ptr %i.rz, align 8, !tbaa !120
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(16) %i.rz) #20, !inline_history !391
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64

bb.fw:                                            ; preds = %bb.fu
  %i.sl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !656
  %.not.i.i.i.i122.i = icmp eq i8 %i.sl, 0
  br i1 %.not.i.i.i.i122.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.sm = add nsw i32 %i.sd, -1
  store i32 %i.sm, ptr %i.sa, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

bb.fy:                                            ; preds = %bb.fw
  %i.sn = atomicrmw volatile add ptr %i.sa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i.i.i63 = phi i32 [ %i.sd, %bb.fx ], [ %i.sn, %bb.fy ]
  %i.so = icmp eq i32 %.0.i.i.i.i.i.i63, 1
  br i1 %i.so, label %bb.fz, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64, !prof !122

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rz) #20, !inline_history !379
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64: ; preds = %bb.fz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62, %bb.fv, %bb.ft
  %i.sp = getelementptr inbounds nuw i8, ptr %95, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !115, !noalias !656 ; 8 uses
  %.not.i.i1.i.i65 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i1.i.i65, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImplD2Ev.exit.i69, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.aso = load atomic i64, ptr %i.asn acquire, align 8 ; 2 uses
  %i.asp = icmp eq i64 %i.aso, 4294967297
  %i.asq = trunc i64 %i.aso to i32                ; 2 uses
  br i1 %i.asp, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  store i32 0, ptr %i.asn, align 8, !tbaa !117
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asm, i64 12
  store i32 0, ptr %i.asr, align 4, !tbaa !118
  %i.ass = load ptr, ptr %i.asm, align 8, !tbaa !120
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  %i.asu = load ptr, ptr %i.ast, align 8
  call void %i.asu(ptr noundef nonnull align 8 dereferenceable(16) %i.asm) #20, !inline_history !442
  %i.asv = load ptr, ptr %i.asm, align 8, !tbaa !120
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 24
  %i.asx = load ptr, ptr %i.asw, align 8
  call void %i.asx(ptr noundef nonnull align 8 dereferenceable(16) %i.asm) #20, !inline_history !442
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i111

bb.nu:                                            ; preds = %bb.ns
  %i.asy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !696
  %.not.i.i.i.i.i.i.i.i.i.i108 = icmp eq i8 %i.asy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i108, label %bb.nw, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.asz = add nsw i32 %i.asq, -1
  store i32 %i.asz, ptr %i.asn, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i109

bb.nw:                                            ; preds = %bb.nu
  %i.ata = atomicrmw volatile add ptr %i.asn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i109: ; preds = %bb.nw, %bb.nv
  %.0.i.i.i.i.i.i.i.i.i.i.i110 = phi i32 [ %i.asq, %bb.nv ], [ %i.ata, %bb.nw ]
  %i.atb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i110, 1
  br i1 %i.atb, label %bb.nx, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i111, !prof !122

bb.nx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i109
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asm) #20, !inline_history !441
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i111

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i111: ; preds = %bb.nx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i109, %bb.nt, %.lr.ph.i.i.i.i.i105
  %i.atc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i106, i64 16 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq ptr %i.atc, %i.asc
  br i1 %.not.i.i.i.i.i112, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i113, label %.lr.ph.i.i.i.i.i105, !llvm.loop !10

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i113: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i111
  store ptr %i.ask, ptr %i.asb, align 8, !tbaa !171
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i114

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i114: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i113, %bb.nr, %bb.nq, %bb.np
  %i.atd = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !696 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 64 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atd, i64 72 ; 2 uses
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !147 ; 4 uses
  %i.ath = load ptr, ptr %i.ate, align 8, !tbaa !145 ; 3 uses
  %i.ati = ptrtoint ptr %i.atg to i64
  %i.atj = ptrtoint ptr %i.ath to i64
  %i.atk = sub i64 %i.ati, %i.atj
  %i.atl = ashr exact i64 %i.atk, 4               ; 2 uses
  %i.atm = icmp eq ptr %i.atg, %i.ath
  br i1 %i.atm, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i114
  %i.atn = sub nuw nsw i64 1, %i.atl
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ate, i64 noundef %i.atn), !inline_history !441
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115

bb.nz:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit.i114
  %i.ato = icmp ugt i64 %i.atl, 1
  br i1 %i.ato, label %bb.oa, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115

bb.oa:                                            ; preds = %bb.nz
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ath, i64 16 ; 3 uses
  %.not.i.i93.i = icmp eq ptr %i.atg, %i.atp
  br i1 %.not.i.i93.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115, label %.lr.ph.i.i.i.i94.i

.lr.ph.i.i.i.i94.i:                               ; preds = %bb.oa, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290
  %.05.i.i.i.i95.i = phi ptr [ %i.auh, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290 ], [ %i.atp, %bb.oa ] ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i95.i, i64 8
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !115 ; 8 uses
  %.not.i.i.i.i.i.i.i.i96.i = icmp eq ptr %i.atr, null
  br i1 %.not.i.i.i.i.i.i.i.i96.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290, label %bb.ob

bb.ob:                                            ; preds = %.lr.ph.i.i.i.i94.i
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 8 ; 4 uses
  %i.att = load atomic i64, ptr %i.ats acquire, align 8 ; 2 uses
  %i.atu = icmp eq i64 %i.att, 4294967297
  %i.atv = trunc i64 %i.att to i32                ; 2 uses
  br i1 %i.atu, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  store i32 0, ptr %i.ats, align 8, !tbaa !117
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atr, i64 12
  store i32 0, ptr %i.atw, align 4, !tbaa !118
  %i.atx = load ptr, ptr %i.atr, align 8, !tbaa !120
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 16
  %i.atz = load ptr, ptr %i.aty, align 8
  call void %i.atz(ptr noundef nonnull align 8 dereferenceable(16) %i.atr) #20, !inline_history !443
  %i.aua = load ptr, ptr %i.atr, align 8, !tbaa !120
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 24
  %i.auc = load ptr, ptr %i.aub, align 8
  call void %i.auc(ptr noundef nonnull align 8 dereferenceable(16) %i.atr) #20, !inline_history !443
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290

bb.od:                                            ; preds = %bb.ob
  %i.aud = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !696
  %.not.i.i.i.i.i.i.i.i.i97.i = icmp eq i8 %i.aud, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i97.i, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.aue = add nsw i32 %i.atv, -1
  store i32 %i.aue, ptr %i.ats, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i

bb.of:                                            ; preds = %bb.od
  %i.auf = atomicrmw volatile add ptr %i.ats, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i: ; preds = %bb.of, %bb.oe
  %.0.i.i.i.i.i.i.i.i.i.i99.i = phi i32 [ %i.atv, %bb.oe ], [ %i.auf, %bb.of ]
  %i.aug = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i99.i, 1
  br i1 %i.aug, label %bb.og, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290, !prof !122

bb.og:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atr) #20, !inline_history !441
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290: ; preds = %bb.og, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i98.i, %bb.oc, %.lr.ph.i.i.i.i94.i
  %i.auh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i95.i, i64 16 ; 2 uses
  %.not.i.i.i.i100.i = icmp eq ptr %i.auh, %i.atg
  br i1 %.not.i.i.i.i100.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i291, label %.lr.ph.i.i.i.i94.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i291: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i290
  store ptr %i.atp, ptr %i.atf, align 8, !tbaa !147
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i291, %bb.oa, %bb.nz, %bb.ny
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #20, !noalias !696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false), !noalias !696
  %i.aui = load ptr, ptr %1, align 8, !tbaa !166, !noalias !696, !nonnull !142, !align !167 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !147 ; 3 uses
  %i.aul = load ptr, ptr %i.aui, align 8, !tbaa !145 ; 3 uses
  %i.aum = ptrtoint ptr %i.auk to i64
  %i.aun = ptrtoint ptr %i.aul to i64
  %i.auo = sub i64 %i.aum, %i.aun                 ; 3 uses
  %i.aup = icmp ugt i64 %i.auo, 9223372036854775792
  br i1 %i.aup, label %.noexc.i289, label %bb.oh

.noexc.i289:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21, !inline_history !441
  unreachable

bb.oh:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit.i115
  %i.auq = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 9 uses
  %.not347.i = icmp eq ptr %i.auk, %i.aul
  br i1 %.not347.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116: ; preds = %bb.oh
  %i.aur = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.aus = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.auo) #22, !inline_history !441 ; 4 uses
  store ptr %i.aus, ptr %64, align 8, !tbaa !223, !noalias !696
  store ptr %i.aus, ptr %i.aur, align 8, !tbaa !224, !noalias !696
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 %i.auo ; 2 uses
  store ptr %i.aut, ptr %i.auq, align 8, !tbaa !225, !noalias !696
  %.pre.i117 = load ptr, ptr %1, align 8, !tbaa !166, !noalias !696 ; 2 uses
  %.pre254.i = load ptr, ptr %.pre.i117, align 8, !tbaa !168
  %.phi.trans.insert.i118 = getelementptr inbounds nuw i8, ptr %.pre.i117, i64 8
  %.pre255.i = load ptr, ptr %.phi.trans.insert.i118, align 8, !tbaa !168
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119: ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116, %bb.oh
  %.promoted222.i = phi ptr [ %i.aus, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116 ], [ null, %bb.oh ] ; 3 uses
  %.promoted.i120 = phi ptr [ %i.aut, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116 ], [ null, %bb.oh ] ; 2 uses
  %i.auu = phi ptr [ %.pre255.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116 ], [ %i.auk, %bb.oh ] ; 2 uses
  %i.auv = phi ptr [ %.pre254.i, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_M_allocateEm.exit.i.i116 ], [ %i.aul, %bb.oh ] ; 2 uses
  %i.auw = icmp eq ptr %i.auv, %i.auu
  br i1 %i.auw, label %.critedge.i139, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119
  %i.aux = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.auy = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.auz = getelementptr inbounds nuw i8, ptr %66, i64 8
  %.sroa.2.0..sroa_idx.i.i.i122 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.ava = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %65, i64 104 ; 3 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %65, i64 112
  %i.avd = getelementptr inbounds nuw i8, ptr %65, i64 120
  br label %bb.oj

bb.oi:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i138
  %i.ave = getelementptr inbounds nuw i8, ptr %.sroa.0202.0229.i, i64 16 ; 2 uses
  %i.avf = icmp eq ptr %i.ave, %i.auu
  br i1 %i.avf, label %.critedge.i139, label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %.lr.ph.i121
  %i.avg = phi ptr [ %.promoted222.i, %.lr.ph.i121 ], [ %i.awg, %bb.oi ] ; 8 uses
  %.sroa.0202.0229.i = phi ptr [ %i.auv, %.lr.ph.i121 ], [ %i.ave, %bb.oi ] ; 2 uses
  %i.avh = phi ptr [ %.promoted.i120, %.lr.ph.i121 ], [ %i.awi, %bb.oi ] ; 7 uses
  %i.avi = phi ptr [ %.promoted222.i, %.lr.ph.i121 ], [ %i.awh, %bb.oi ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #20, !noalias !696
  %i.avj = load ptr, ptr %.sroa.0202.0229.i, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %65, i8 0, i64 16, i1 false), !noalias !696
  store i64 -1, ptr %i.aux, align 8, !tbaa !661, !noalias !696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.auy, i8 0, i64 104, i1 false), !noalias !696
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %65, ptr noundef nonnull align 8 dereferenceable(120) %i.avj)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i125 unwind label %bb.ok, !inline_history !441

bb.ok:                                            ; preds = %bb.oj
  %i.avk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.avh, ptr %i.auq, align 8, !noalias !696
  store ptr %i.avi, ptr %64, align 8, !noalias !696
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.avb) #20, !inline_history !441
  br label %.body.i123

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i125: ; preds = %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #20, !noalias !696
  invoke void @_ZN5arrow9list_util8internal17RangeOfValuesUsedERKNS_9ArraySpanE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.165") align 8 %66, ptr noundef nonnull align 8 dereferenceable(128) %65)
          to label %bb.ol unwind label %bb.on, !inline_history !441

bb.ol:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i125
  %i.avl = load ptr, ptr %66, align 8, !tbaa !129, !noalias !696
  %i.avm = icmp eq ptr %i.avl, null               ; 2 uses
  br i1 %i.avm, label %bb.op, label %bb.om, !prof !130

bb.om:                                            ; preds = %bb.ol
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !696
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i130 unwind label %.loopexit.i127, !inline_history !441

bb.on:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i125
  %i.avn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.avh, ptr %i.auq, align 8, !noalias !696
  store ptr %i.avi, ptr %64, align 8, !noalias !696
  br label %bb.oz

.loopexit.i127:                                   ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275, %bb.om
  %lpad.loopexit.i128 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.avh, ptr %i.auq, align 8, !noalias !696
  store ptr %i.avi, ptr %64, align 8, !noalias !696
  br label %bb.oo

.loopexit.split-lp.i287:                          ; preds = %bb.os
  %lpad.loopexit.split-lp.i288 = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.oo:                                            ; preds = %.loopexit.split-lp.i287, %.loopexit.i127
  %lpad.phi.i129 = phi { ptr, i32 } [ %lpad.loopexit.i128, %.loopexit.i127 ], [ %lpad.loopexit.split-lp.i288, %.loopexit.split-lp.i287 ]
  %i.avo = load ptr, ptr %66, align 8, !tbaa !129, !noalias !696 ; 2 uses
  %.not.i.i110.i = icmp eq ptr %i.avo, null
  br i1 %.not.i.i110.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i, label %bb.ox, !prof !130

bb.op:                                            ; preds = %bb.ol
  %.sroa.0.0.copyload.i.i.i271 = load i64, ptr %i.auz, align 8, !noalias !696 ; 2 uses
  %.sroa.2.0.copyload.i.i.i272 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i122, align 8, !noalias !696 ; 2 uses
  %.not.i.i273 = icmp eq ptr %i.avg, %i.avh
  br i1 %.not.i.i273, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  store i64 %.sroa.0.0.copyload.i.i.i271, ptr %i.avg, align 8, !tbaa !218
  %.sroa.7.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i272, ptr %.sroa.7.0..sroa_idx.i274, align 8, !tbaa !218
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avg, i64 16 ; 2 uses
  store ptr %i.avp, ptr %i.ava, align 8, !tbaa !224, !noalias !696
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i130

bb.or:                                            ; preds = %bb.op
  %i.avq = ptrtoint ptr %i.avg to i64
  %i.avr = ptrtoint ptr %i.avi to i64
  %i.avs = sub i64 %i.avq, %i.avr                 ; 4 uses
  %i.avt = icmp eq i64 %i.avs, 9223372036854775792
  br i1 %i.avt, label %bb.os, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275

bb.os:                                            ; preds = %bb.or
  store ptr %i.avh, ptr %i.auq, align 8, !noalias !696
  store ptr %i.avi, ptr %64, align 8, !noalias !696
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #21
          to label %.noexc105.i unwind label %.loopexit.split-lp.i287, !inline_history !441

.noexc105.i:                                      ; preds = %bb.os
  unreachable

_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275: ; preds = %bb.or
  %i.avu = ashr exact i64 %i.avs, 4               ; 3 uses
  %.sroa.speculated.i.i.i.i276 = call i64 @llvm.umax.i64(i64 %i.avu, i64 1)
  %i.avv = add i64 %.sroa.speculated.i.i.i.i276, %i.avu ; 2 uses
  %i.avw = icmp ult i64 %i.avv, %i.avu
  %i.avx = call i64 @llvm.umin.i64(i64 %i.avv, i64 576460752303423487)
  %i.avy = select i1 %i.avw, i64 576460752303423487, i64 %i.avx ; 3 uses
  %.not.i.i.i.i277 = icmp ne i64 %i.avy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i277)
  %i.avz = shl nuw nsw i64 %i.avy, 4
  %i.awa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avz) #22
          to label %.noexc106.i unwind label %.loopexit.i127, !inline_history !441 ; 5 uses

.noexc106.i:                                      ; preds = %_ZNKSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i275
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.avs ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i271, ptr %i.awb, align 8, !tbaa !218
  %.sroa.7.0..sroa_idx206.i = getelementptr inbounds nuw i8, ptr %i.awb, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i272, ptr %.sroa.7.0..sroa_idx206.i, align 8, !tbaa !218
  %.not1.i.i.i.i.i.i278 = icmp eq ptr %i.avi, %i.avg
  br i1 %.not1.i.i.i.i.i.i278, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i283, label %.lr.ph.i.i.i.i.i.i279

.lr.ph.i.i.i.i.i.i279:                            ; preds = %.noexc106.i, %.lr.ph.i.i.i.i.i.i279
  %.03.i.i.i.i.i.i280 = phi ptr [ %i.awd, %.lr.ph.i.i.i.i.i.i279 ], [ %i.awa, %.noexc106.i ] ; 2 uses
  %.092.i.i.i.i.i.i281 = phi ptr [ %i.awc, %.lr.ph.i.i.i.i.i.i279 ], [ %i.avi, %.noexc106.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i.i280, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i.i281, i64 16, i1 false), !tbaa.struct !228, !alias.scope !697
  %i.awc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i281, i64 16 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i280, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i282 = icmp eq ptr %i.awc, %i.avg
  br i1 %.not.i.i.i.i.i.i282, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i283, label %.lr.ph.i.i.i.i.i.i279, !llvm.loop !12

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i283: ; preds = %.lr.ph.i.i.i.i.i.i279, %.noexc106.i
  %.0.lcssa.i.i.i.i.i.i284 = phi ptr [ %i.awa, %.noexc106.i ], [ %i.awd, %.lr.ph.i.i.i.i.i.i279 ]
  %i.awe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i284, i64 16 ; 2 uses
  %.not.i27.i.i.i285 = icmp eq ptr %i.avi, null
  br i1 %.not.i27.i.i.i285, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286, label %bb.ot

bb.ot:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i283
  call void @_ZdlPvm(ptr noundef nonnull %i.avi, i64 noundef %i.avs) #23, !inline_history !441
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286

_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286: ; preds = %bb.ot, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i283
  store ptr %i.awe, ptr %i.ava, align 8, !tbaa !224, !noalias !696
  %i.awf = getelementptr inbounds nuw [16 x i8], ptr %i.awa, i64 %i.avy
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i130

_ZN5arrow6StatusC2ERKS0_.exit.i130:               ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286, %bb.oq, %bb.om
  %i.awg = phi ptr [ %i.awe, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %i.avp, %bb.oq ], [ %i.avg, %bb.om ]
  %i.awh = phi ptr [ %i.awa, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %i.avi, %bb.oq ], [ %i.avi, %bb.om ] ; 4 uses
  %i.awi = phi ptr [ %i.awf, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i286 ], [ %i.avh, %bb.oq ], [ %i.avh, %bb.om ] ; 3 uses
  %i.awj = load ptr, ptr %66, align 8, !tbaa !129, !noalias !696 ; 2 uses
  %.not.i.i107.i = icmp eq ptr %i.awj, null
  br i1 %.not.i.i107.i, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131, label %bb.ou, !prof !130

bb.ou:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i130
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 1
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !140, !range !141, !noundef !142
  %i.awm = trunc nuw i8 %i.awl to i1
  br i1 %i.awm, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %66) #20, !inline_history !441
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131

_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131:      ; preds = %bb.ov, %bb.ou, %_ZN5arrow6StatusC2ERKS0_.exit.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20, !noalias !696
  %i.awn = load ptr, ptr %i.avb, align 8, !tbaa !229, !noalias !696 ; 3 uses
  %i.awo = load ptr, ptr %i.avc, align 8, !tbaa !230, !noalias !696 ; 2 uses
  %.not.i1.i.i.i132 = icmp eq ptr %i.awn, %i.awo
  br i1 %.not.i1.i.i.i132, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i137, label %.lr.ph.i.i.i133

.lr.ph.i.i.i133:                                  ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131, %.lr.ph.i.i.i133
  %.0.i2.i.i.i134 = phi ptr [ %i.awp, %.lr.ph.i.i.i133 ], [ %i.awn, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131 ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i134), !inline_history !447
  %i.awp = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i134, i64 128 ; 2 uses
  %.not.i.i.i108.i = icmp eq ptr %i.awp, %i.awo
  br i1 %.not.i.i.i108.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i135, label %.lr.ph.i.i.i133, !llvm.loop !13

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i135: ; preds = %.lr.ph.i.i.i133
  %.pre.i.i.i136 = load ptr, ptr %i.avb, align 8, !tbaa !229, !noalias !696
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i137

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i137: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i135, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131
  %i.awq = phi ptr [ %.pre.i.i.i136, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i135 ], [ %i.awn, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit.i131 ] ; 3 uses
  %.not.i.i.i.i109.i = icmp eq ptr %i.awq, null
  br i1 %.not.i.i.i.i109.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i138, label %bb.ow

bb.ow:                                            ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i137
  %i.awr = load ptr, ptr %i.avd, align 8, !tbaa !231, !noalias !696
  %i.aws = ptrtoint ptr %i.awr to i64
  %i.awt = ptrtoint ptr %i.awq to i64
  %i.awu = sub i64 %i.aws, %i.awt
  call void @_ZdlPvm(ptr noundef nonnull %i.awq, i64 noundef %i.awu) #23, !inline_history !448
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i138

_ZN5arrow9ArraySpanD2Ev.exit.i138:                ; preds = %bb.ow, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #20, !noalias !696
  br i1 %i.avm, label %bb.oi, label %.loopexit212.i

bb.ox:                                            ; preds = %bb.oo
  %i.awv = getelementptr inbounds nuw i8, ptr %i.avo, i64 1
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !140, !range !141, !noundef !142
  %i.awx = trunc nuw i8 %i.aww to i1
  br i1 %i.awx, label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %66) #20, !inline_history !441
  br label %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i

_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i:      ; preds = %bb.oy, %bb.ox, %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20, !noalias !696
  br label %bb.oz

bb.oz:                                            ; preds = %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i, %bb.on
  %.pn.pn.i126 = phi { ptr, i32 } [ %lpad.phi.i129, %_ZN5arrow6ResultISt4pairIllEED2Ev.exit111.i ], [ %i.avn, %bb.on ]
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %65) #20, !inline_history !441
  br label %.body.i123

.body.i123:                                       ; preds = %bb.oz, %bb.ok
  %.pn.pn.pn.i124 = phi { ptr, i32 } [ %.pn.pn.i126, %bb.oz ], [ %i.avk, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #20, !noalias !696
  br label %bb.wa

.critedge.i139:                                   ; preds = %bb.oi, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119
  %.lcssa223.i = phi ptr [ %.promoted222.i, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119 ], [ %i.awh, %bb.oi ] ; 3 uses
  %.lcssa216.i = phi ptr [ %.promoted.i120, %_ZNSt6vectorIN5arrow12_GLOBAL__N_15RangeESaIS2_EE7reserveEm.exit.i119 ], [ %i.awi, %bb.oi ]
  store ptr %.lcssa216.i, ptr %i.auq, align 8, !noalias !696
  store ptr %.lcssa223.i, ptr %64, align 8, !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #20, !noalias !696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false), !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #20, !noalias !696
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl9ChildDataEmRKSt6vectorINS0_5RangeESaIS3_EE(ptr dead_on_unwind noalias writable align 8 %68, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %bb.pa unwind label %bb.pc

bb.pa:                                            ; preds = %.critedge.i139
  %i.awy = load ptr, ptr %68, align 8, !tbaa !129, !noalias !696
  %i.awz = icmp eq ptr %i.awy, null
  br i1 %i.awz, label %bb.pe, label %bb.pb, !prof !130

bb.pb:                                            ; preds = %bb.pa
  store ptr null, ptr %117, align 8, !tbaa !129, !alias.scope !696
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %_ZN5arrow6StatusC2ERKS0_.exit113.i unwind label %bb.pd, !inline_history !441

bb.pc:                                            ; preds = %.critedge.i139
  %i.axa = landingpad { ptr, i32 }
          cleanup
  br label %bb.vx

bb.pd:                                            ; preds = %bb.pb
  %i.axb = landingpad { ptr, i32 }
          cleanup
  br label %bb.vw

bb.pe:                                            ; preds = %bb.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #20, !noalias !696
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.axc = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.axe = load <2 x ptr>, ptr %i.axc, align 8, !tbaa !168, !noalias !700
  store <2 x ptr> %i.axe, ptr %69, align 16, !tbaa !168, !alias.scope !701, !noalias !696
  %i.axf = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !146, !noalias !700
  store ptr %i.axh, ptr %i.axf, align 16, !tbaa !146, !alias.scope !701, !noalias !696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axc, i8 0, i64 24, i1 false), !noalias !700
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #20, !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #20, !noalias !696
  %i.axi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !164, !noalias !696
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef %i.axj)
          to label %bb.pf unwind label %bb.qi, !inline_history !441

bb.pf:                                            ; preds = %bb.pe
  %i.axk = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !696
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 64
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !145
  invoke fastcc void @_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE(ptr dead_on_unwind noalias writable align 8 %70, ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef %i.axm, ptr noundef nonnull %67)
          to label %bb.pg unwind label %bb.qj, !inline_history !441

bb.pg:                                            ; preds = %bb.pf
  %i.axn = getelementptr inbounds nuw i8, ptr %71, i64 40
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !115, !noalias !696 ; 8 uses
  %.not.i.i.i114.i = icmp eq ptr %i.axo, null
  br i1 %.not.i.i.i114.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i143, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8 ; 4 uses
  %i.axq = load atomic i64, ptr %i.axp acquire, align 8 ; 2 uses
  %i.axr = icmp eq i64 %i.axq, 4294967297
  %i.axs = trunc i64 %i.axq to i32                ; 2 uses
  br i1 %i.axr, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  store i32 0, ptr %i.axp, align 8, !tbaa !117
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axo, i64 12
  store i32 0, ptr %i.axt, align 4, !tbaa !118
  %i.axu = load ptr, ptr %i.axo, align 8, !tbaa !120
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.axw = load ptr, ptr %i.axv, align 8
  call void %i.axw(ptr noundef nonnull align 8 dereferenceable(16) %i.axo) #20, !inline_history !453
  %i.axx = load ptr, ptr %i.axo, align 8, !tbaa !120
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 24
  %i.axz = load ptr, ptr %i.axy, align 8
  call void %i.axz(ptr noundef nonnull align 8 dereferenceable(16) %i.axo) #20, !inline_history !453
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i143

bb.pj:                                            ; preds = %bb.ph
  %i.aya = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !696
  %.not.i.i.i.i115.i = icmp eq i8 %i.aya, 0
  br i1 %.not.i.i.i.i115.i, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ayb = add nsw i32 %i.axs, -1
  store i32 %i.ayb, ptr %i.axp, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i141

bb.pl:                                            ; preds = %bb.pj
  %i.ayc = atomicrmw volatile add ptr %i.axp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i141

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i141: ; preds = %bb.pl, %bb.pk
  %.0.i.i.i.i.i.i142 = phi i32 [ %i.axs, %bb.pk ], [ %i.ayc, %bb.pl ]
  %i.ayd = icmp eq i32 %.0.i.i.i.i.i.i142, 1
  br i1 %i.ayd, label %bb.pm, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i143, !prof !122

bb.pm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i141
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axo) #20, !inline_history !441
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i143

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i143: ; preds = %bb.pm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i141, %bb.pi, %bb.pg
  %i.aye = getelementptr inbounds nuw i8, ptr %71, i64 24
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !115, !noalias !696 ; 8 uses
  %.not.i.i1.i.i144 = icmp eq ptr %i.ayf, null
  br i1 %.not.i.i1.i.i144, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImplD2Ev.exit.i148, label %bb.pn

bb.pn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i143
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8 ; 4 uses
end_hunk_1
