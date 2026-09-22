Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/ldb_cmd?download=true
inline.NumInlined: 11498
inline.NumDeleted: 3305
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN7rocksdb10LDBCommand14PrepareOptionsEv:bb.a
          to label %bb.bz unwind label %bb.cm

bb.bz:                                            ; preds = %bb.by
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0290.0300, i64 712
  %i.nn = load <2 x ptr>, ptr %20, align 16, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !133 ; 8 uses
  store <2 x ptr> %i.nn, ptr %i.nk, align 8, !tbaa !103
  %.not.i.i.i.i233 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i233, label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 4 uses
  %i.nq = load atomic i64, ptr %i.np acquire, align 8 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 4294967297
  %i.ns = trunc i64 %i.nq to i32                  ; 2 uses
  br i1 %i.nr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.np, align 8, !tbaa !136
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  store i32 0, ptr %i.nt, align 4, !tbaa !137
  %i.nu = load ptr, ptr %i.no, align 8, !tbaa !127
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.no) #36, !inline_history !2
  %i.nx = load ptr, ptr %i.no, align 8, !tbaa !127
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(16) %i.no) #36, !inline_history !2
  br label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit

bb.cc:                                            ; preds = %bb.ca
  %i.oa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i.i.i = icmp eq i8 %i.oa, 0
  br i1 %.not.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ob = add nsw i32 %i.ns, -1
  store i32 %i.ob, ptr %i.np, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.oc = atomicrmw volatile add ptr %i.np, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i = phi i32 [ %i.ns, %bb.cd ], [ %i.oc, %bb.ce ]
  %i.od = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.od, label %bb.cf, label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit, !prof !97

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.no) #36
  br label %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit

_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit: ; preds = %bb.bz, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cf
  %i.oe = load ptr, ptr %i.nh, align 8, !tbaa !133 ; 8 uses
  %.not.i.i234 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i234, label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 4 uses
  %i.og = load atomic i64, ptr %i.of acquire, align 8 ; 2 uses
  %i.oh = icmp eq i64 %i.og, 4294967297
  %i.oi = trunc i64 %i.og to i32                  ; 2 uses
  br i1 %i.oh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.of, align 8, !tbaa !136
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  store i32 0, ptr %i.oj, align 4, !tbaa !137
  %i.ok = load ptr, ptr %i.oe, align 8, !tbaa !127
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #36, !inline_history !3
  %i.on = load ptr, ptr %i.oe, align 8, !tbaa !127
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #36, !inline_history !3
  br label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.oq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i235 = icmp eq i8 %i.oq, 0
  br i1 %.not.i.i.i235, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.or = add nsw i32 %i.oi, -1
  store i32 %i.or, ptr %i.of, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.os = atomicrmw volatile add ptr %i.of, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i = phi i32 [ %i.oi, %bb.cj ], [ %i.os, %bb.ck ]
  %i.ot = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ot, label %bb.cl, label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !97

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oe) #36
  br label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb13MergeOperatorEEaSEOS2_.exit, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.cn

bb.cm:                                            ; preds = %bb.by
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.co

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bx
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0290.0300, i64 1008 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.nf
  br i1 %i.ow, label %.critedge, label %bb.bx

bb.co:                                            ; preds = %bb.cm, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %bb.bf
  %.pn47 = phi { ptr, i32 } [ %i.ou, %bb.cm ], [ %i.jw, %bb.bf ], [ %i.nc, %bb.bv ], [ %.pn43.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !114 ; 2 uses
  %.not.i.i236 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i236, label %_ZN7rocksdb6StatusD2Ev.exit238, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i237

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i237: ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.oy) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit238

_ZN7rocksdb6StatusD2Ev.exit238:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i237, %bb.co, %bb.be
  %.pn47.pn = phi { ptr, i32 } [ %i.jv, %bb.be ], [ %.pn47, %bb.co ], [ %.pn47, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.ei

bb.cp:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit232, %bb.b, %bb.a
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !188
  %i.pc = invoke noundef ptr @_ZN7rocksdb3Env7DefaultEv()
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !1405
  store ptr %i.pf, ptr %i.pa, align 8, !tbaa !188
  br label %bb.ct

bb.cs:                                            ; preds = %bb.dg, %bb.ct, %bb.cp
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %i.ph = load ptr, ptr %0, align 8, !tbaa !127
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8
  invoke void %i.pj(ptr noundef nonnull align 8 dereferenceable(2416) %0)
          to label %bb.cu unwind label %bb.cs

bb.cu:                                            ; preds = %bb.ct
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !141
  %i.pm = icmp eq i32 %i.pl, 2
  br i1 %i.pm, label %bb.eg, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !310
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 5 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !310
  %i.pr = icmp eq ptr %i.po, %i.pq
  br i1 %i.pr, label %bb.cw, label %bb.dh

bb.cw:                                            ; preds = %bb.cv
  %i.ps = load ptr, ptr %2, align 8, !tbaa !310
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !310
  %i.pv = icmp eq ptr %i.ps, %i.pu
  br i1 %i.pv, label %bb.cx, label %bb.dg

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN7rocksdb2DB18ListColumnFamiliesERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %22, ptr noundef nonnull align 8 dereferenceable(753) %i.oz, ptr noundef nonnull align 8 dereferenceable(32) %i.pw, ptr noundef nonnull %21)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.px = load i8, ptr %22, align 8, !tbaa !200
  %i.py = icmp eq i8 %i.px, 0
  br i1 %i.py, label %bb.cz, label %.loopexit

bb.cz:                                            ; preds = %bb.cy
  %i.pz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !112 ; 2 uses
  %i.qb = load ptr, ptr %21, align 8, !tbaa !111  ; 2 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %25 = icmp ugt i64 %i.qe, 32
  br i1 %25, label %.lr.ph302, label %.loopexit

.lr.ph302:                                        ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 1288
  br label %bb.db

bb.da:                                            ; preds = %bb.cx
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit248

bb.db:                                            ; preds = %.lr.ph302, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEERS1_DpOT_.exit
  %.sroa.0286.0301 = phi ptr [ %i.qb, %.lr.ph302 ], [ %i.qm, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEERS1_DpOT_.exit ] ; 3 uses
  %i.qi = load ptr, ptr %i.pp, align 8, !tbaa !338 ; 3 uses
  %i.qj = load ptr, ptr %i.qf, align 8, !tbaa !339
  %.not.i = icmp eq ptr %i.qi, %i.qj
  br i1 %.not.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE(ptr noundef nonnull align 8 dereferenceable(1008) %i.qi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0286.0301, ptr noundef nonnull align 8 dereferenceable(976) %i.qg)
          to label %.noexc240 unwind label %bb.de

.noexc240:                                        ; preds = %bb.dc
  %i.qk = load ptr, ptr %i.pp, align 8, !tbaa !338
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 1008
  store ptr %i.ql, ptr %i.pp, align 8, !tbaa !338
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEERS1_DpOT_.exit

bb.dd:                                            ; preds = %bb.db
  invoke void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.pn, ptr %i.qi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0286.0301, ptr noundef nonnull align 8 dereferenceable(1736) %i.oz)
          to label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEERS1_DpOT_.exit unwind label %bb.de

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEERS1_DpOT_.exit: ; preds = %bb.dd, %.noexc240
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0286.0301, i64 32 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.qa
  br i1 %i.qn, label %.loopexit, label %bb.db

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !114 ; 2 uses
  %.not.i.i246 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i246, label %_ZN7rocksdb6StatusD2Ev.exit248, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i247

.loopexit:                                        ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_7OptionsEEEERS1_DpOT_.exit, %bb.cz, %bb.cy
  %i.qr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !114 ; 2 uses
  %.not.i.i242 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i242, label %_ZN7rocksdb6StatusD2Ev.exit244, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i243

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i243: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.qs) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit244

_ZN7rocksdb6StatusD2Ev.exit244:                   ; preds = %.loopexit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  %i.qt = load ptr, ptr %21, align 8, !tbaa !111  ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !112 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qt, %i.qv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit244, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.rb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.qt, %_ZN7rocksdb6StatusD2Ev.exit244 ] ; 3 uses
  %i.qw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.qy = icmp eq ptr %i.qw, %i.qx
  br i1 %i.qy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.qz = load i64, ptr %i.qx, align 8, !tbaa !101
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.ra) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %i.rb, %i.qv
  br i1 %.not.i.i.i245, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7rocksdb6StatusD2Ev.exit244
  %i.rc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.qt, %_ZN7rocksdb6StatusD2Ev.exit244 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.rc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !113
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.dh

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i247: ; preds = %bb.de
  call void @_ZdaPv(ptr noundef nonnull %i.qq) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit248

_ZN7rocksdb6StatusD2Ev.exit248:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i247, %bb.de, %bb.da
  %.pn53.pn = phi { ptr, i32 } [ %i.qh, %bb.da ], [ %i.qo, %bb.de ], [ %i.qo, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i247 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.ei

bb.dg:                                            ; preds = %bb.cw
  %i.ri = load ptr, ptr %0, align 8, !tbaa !127
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.rk = load ptr, ptr %i.rj, align 8
  invoke void %i.rk(ptr noundef nonnull align 8 dereferenceable(2416) %0, ptr noundef nonnull %2)
          to label %bb.dh unwind label %bb.cs

bb.dh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.dg, %bb.cv
  %i.rl = load ptr, ptr %2, align 8, !tbaa !310
  %i.rm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !310
  %i.ro = icmp eq ptr %i.rl, %i.rn
  br i1 %i.ro, label %bb.eg, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rp = load ptr, ptr %i.pn, align 8, !tbaa !310 ; 5 uses
  %i.rq = load ptr, ptr %i.pp, align 8, !tbaa !310 ; 2 uses
  %i.rr = ptrtoint ptr %i.rq to i64               ; 2 uses
  %i.rs = ptrtoint ptr %i.rp to i64
  %i.rt = sub i64 %i.rr, %i.rs                    ; 2 uses
  %i.ru = sdiv exact i64 %i.rt, 1008
  %i.rv = ashr i64 %i.ru, 2                       ; 4 uses
  %i.rw = icmp sgt i64 %i.rv, 0
  br i1 %i.rw, label %.lr.ph.i.i.i249, label %._crit_edge.i.i.i

.lr.ph.i.i.i249:                                  ; preds = %bb.di
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !102
  %.fr45.i.i = freeze i64 %i.rz                   ; 19 uses
  %i.sa = mul nuw nsw i64 %i.rv, 4032
  %scevgep.i.i.i = getelementptr i8, ptr %i.rp, i64 %i.sa ; 2 uses
  %i.sb = icmp eq i64 %.fr45.i.i, 0
  br i1 %i.sb, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i249, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.us.i.i"
  %.087.i.us.i.i = phi i64 [ %i.sn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.us.i.i" ], [ %i.rv, %.lr.ph.i.i.i249 ] ; 2 uses
  %.sroa.049.086.i.us.i.i = phi ptr [ %i.sm, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.us.i.i" ], [ %i.rp, %.lr.ph.i.i.i249 ] ; 9 uses
  %i.sc = getelementptr i8, ptr %.sroa.049.086.i.us.i.i, i64 8
  %.val2.i.i.us.i.i = load i64, ptr %i.sc, align 8, !tbaa !102
  %i.sd = icmp eq i64 %.val2.i.i.us.i.i, 0
  br i1 %i.sd, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEEZNS2_10LDBCommand14PrepareOptionsEvE3$_0ET_SB_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread58.i.us.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread58.i.us.i.i": ; preds = %.lr.ph.i.split.us.i.i
  %i.se = getelementptr i8, ptr %.sroa.049.086.i.us.i.i, i64 1016
  %.val2.i23.i.us.i.i = load i64, ptr %i.se, align 8, !tbaa !102
  %i.sf = icmp eq i64 %.val2.i23.i.us.i.i, 0
  br i1 %i.sf, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_10LDBCommand14PrepareOptionsEvE3$_0EEET_SE_SE_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit25.split.us.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread59.i.us.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_10LDBCommand14PrepareOptionsEvE3$_0EEET_SE_SE_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit25.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread58.i.us.i.i"
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.049.086.i.us.i.i, i64 1008
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEEZNS2_10LDBCommand14PrepareOptionsEvE3$_0ET_SB_SB_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread59.i.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread58.i.us.i.i"
  %i.sh = getelementptr i8, ptr %.sroa.049.086.i.us.i.i, i64 2024
  %.val2.i27.i.us.i.i = load i64, ptr %i.sh, align 8, !tbaa !102
  %i.si = icmp eq i64 %.val2.i27.i.us.i.i, 0
  br i1 %i.si, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_10LDBCommand14PrepareOptionsEvE3$_0EEET_SE_SE_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit27.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit29.thread60.i.us.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit29.thread60.i.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread59.i.us.i.i"
  %i.sj = getelementptr i8, ptr %.sroa.049.086.i.us.i.i, i64 3032
  %.val2.i31.i.us.i.i = load i64, ptr %i.sj, align 8, !tbaa !102
  %i.sk = icmp eq i64 %.val2.i31.i.us.i.i, 0
  br i1 %i.sk, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_10LDBCommand14PrepareOptionsEvE3$_0EEET_SE_SE_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit29.split.us.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.us.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_10LDBCommand14PrepareOptionsEvE3$_0EEET_SE_SE_T0_St26random_access_iterator_tag.exit.loopexit.split.loop.exit29.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit29.thread60.i.us.i.i"
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.049.086.i.us.i.i, i64 3024
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN7rocksdb22ColumnFamilyDescriptorESt6vectorIS3_SaIS3_EEEEZNS2_10LDBCommand14PrepareOptionsEvE3$_0ET_SB_SB_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit29.thread60.i.us.i.i"
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.049.086.i.us.i.i, i64 4032
  %i.sn = add nsw i64 %.087.i.us.i.i, -1
  %i.so = icmp sgt i64 %.087.i.us.i.i, 1
  br i1 %i.so, label %.lr.ph.i.split.us.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1400

.lr.ph.i.split.split.i.i:                         ; preds = %.lr.ph.i.i.i249, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.i.i"
  %.087.i.i.i = phi i64 [ %i.tn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.i.i" ], [ %i.rv, %.lr.ph.i.i.i249 ] ; 2 uses
  %.sroa.049.086.i.i.i = phi ptr [ %i.tm, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit33.thread61.i.i.i" ], [ %i.rp, %.lr.ph.i.i.i249 ] ; 15 uses
  %i.sp = getelementptr i8, ptr %.sroa.049.086.i.i.i, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.sp, align 8, !tbaa !102
  %i.sq = icmp eq i64 %.val2.i.i.i.i, %.fr45.i.i
  br i1 %i.sq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread58.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7rocksdb10LDBCommand14PrepareOptionsEvE3$_0EclINS_17__normal_iteratorIPNS2_22ColumnFamilyDescriptorESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i": ; preds = %.lr.ph.i.split.split.i.i
  %.val1.i.i.i.i = load ptr, ptr %.sroa.049.086.i.i.i, align 8
  %i.sr = load ptr, ptr %i.rx, align 8, !tbaa !100 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb15BatchPutCommandC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKSt3mapIS7_S7_St4lessIS7_ESaISt4pairIKS7_S7_EEESB_:bb.a
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #37
          to label %.noexc43 unwind label %bb.o   ; 2 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.x, ptr %i.p, align 8, !tbaa !100
  store i64 %i.s, ptr %i.q, align 8, !tbaa !101
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc43, %bb.a
  %i.y = phi ptr [ %i.x, %.noexc43 ], [ %i.q, %bb.a ] ; 3 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.r, align 1, !tbaa !101
  store i8 %i.z, ptr %i.y, align 1, !tbaa !101
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !102
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 7 uses

.thread:                                          ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 160
  store ptr %i.ac, ptr %5, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !113
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %6, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ac)
          to label %bb.h unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 160) #38
  br label %.body

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !112
  invoke void @_ZN7rocksdb10LDBCommand19BuildCmdLineOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7rocksdb10LDBCommandC2ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEERKSt6vectorIS7_SaIS7_EEbSL_(ptr noundef nonnull align 8 dereferenceable(2416) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.an = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !101
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.am
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.j
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %bb.j ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !113
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  %.not4.i.i.i45 = icmp eq ptr %i.ac, %i.ah
  br i1 %.not4.i.i.i45, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49
  %.05.i.i.i47 = phi ptr [ %i.be, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49 ], [ %i.ac, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i47, align 8, !tbaa !100 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i47, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48: ; preds = %.lr.ph.i.i.i46
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !101
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49: ; preds = %.lr.ph.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i47, i64 32 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.be, %i.ah
  br i1 %.not.i.i.i50, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57, label %.lr.ph.i.i.i46, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i49, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 160) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !101
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !100 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !101
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !100 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !101
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !100 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !101
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.cd = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !101
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN7rocksdb15BatchPutCommandE, i64 16), ptr %0, align 8, !tbaa !127
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !112
  %i.cl = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = icmp ult i64 %i.co, 33
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cq, ptr %8, align 8, !tbaa !96
  %i.cr = invoke noalias noundef nonnull dereferenceable(60) ptr @_Znwm(i64 noundef 60) #37
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i unwind label %bb.s ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59
  store ptr %i.cr, ptr %8, align 8, !tbaa !100
  store i64 59, ptr %i.cq, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.cr, ptr noundef nonnull align 1 dereferenceable(59) @.str.310, i64 59, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 59, ptr %i.cs, align 8, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 59
  store i8 0, ptr %i.ct, align 1, !tbaa !101
  store i32 2, ptr %7, align 8, !tbaa !141, !alias.scope !2306
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 9 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !96, !alias.scope !2306
  %i.cw = invoke noalias noundef nonnull dereferenceable(60) ptr @_Znwm(i64 noundef 60) #37
          to label %bb.l unwind label %bb.t       ; 4 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store i64 59, ptr %i.cv, align 8, !tbaa !101, !alias.scope !2306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.cw, ptr noundef nonnull align 1 dereferenceable(59) %i.cr, i64 59, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 59
  store i8 0, ptr %i.cy, align 1, !tbaa !101
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load i32, ptr %7, align 8, !tbaa !141
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !141
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !100 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

.thread.i.i:                                      ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !100
  store i64 59, ptr %i.df, align 8, !tbaa !102
  %i.dg = load i64, ptr %i.cv, align 8, !tbaa !101
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !101
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %bb.l
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !101
  store ptr %i.cw, ptr %i.db, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 59, ptr %i.di, align 8, !tbaa !102
  %i.dj = load i64, ptr %i.cv, align 8, !tbaa !101
  store i64 %i.dj, ptr %i.dd, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !100
  store i64 %i.dh, ptr %i.cv, align 8, !tbaa !101
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !100
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit

_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit: ; preds = %bb.m, %bb.n
  %i.dk = phi ptr [ %i.cv, %bb.n ], [ %i.dc, %bb.m ]
  store i64 0, ptr %i.cx, align 8, !tbaa !102
  store i8 0, ptr %i.dk, align 1, !tbaa !101
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !100 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cv
  br i1 %i.dm, label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit
  %i.dn = load i64, ptr %i.cv, align 8, !tbaa !101
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #38
  br label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit

_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit:    ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dp = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cq
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit
  %i.dr = load i64, ptr %i.cq, align 8, !tbaa !101
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.loopexit179

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !100 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.o
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !101
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !100 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !101
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.1
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !100 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !101
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.2
  %i.em = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !101
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.h
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.er, %bb.q ], [ %i.eq, %bb.p ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #36
  br label %.body

.body:                                            ; preds = %.thread, %bb.g, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.ad, %.thread ], [ %i.ai, %bb.g ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !100 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %.body
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !101
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !100 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !101
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.1
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !100 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.2
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !100 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !101
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.3
  %i.fq = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !101
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4
  %.sink441 = phi i64 [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4 ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3 ]
  %.sink = phi ptr [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.4 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.3 ]
  %i.fu = add i64 %.sink441, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fu) #38
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.2 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.3 ], [ %.pn.pn.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.bj

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i59
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.cq
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.t
  %i.fz = load i64, ptr %i.cq, align 8, !tbaa !101
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.s
  %.pn37 = phi { ptr, i32 } [ %i.fv, %bb.s ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.fw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.bi

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.gb = and i64 %i.co, 32
  %.not = icmp eq i64 %i.gb, 0
  br i1 %.not, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82

.lr.ph:                                           ; preds = %bb.u
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 2432
  br label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.go, ptr %10, align 8, !tbaa !96
  %i.gp = invoke noalias noundef nonnull dereferenceable(68) ptr @_Znwm(i64 noundef 68) #37
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90 unwind label %bb.y ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82
  store ptr %i.gp, ptr %10, align 8, !tbaa !100
  store i64 67, ptr %i.go, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.gp, ptr noundef nonnull align 1 dereferenceable(67) @.str.311, i64 67, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 67, ptr %i.gq, align 8, !tbaa !102
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 67
  store i8 0, ptr %i.gr, align 1, !tbaa !101
  store i32 2, ptr %9, align 8, !tbaa !141, !alias.scope !2307
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 9 uses
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !96, !alias.scope !2307
  %i.gu = invoke noalias noundef nonnull dereferenceable(68) ptr @_Znwm(i64 noundef 68) #37
          to label %bb.v unwind label %bb.z       ; 4 uses

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90
  store i64 67, ptr %i.gt, align 8, !tbaa !101, !alias.scope !2307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.gu, ptr noundef nonnull align 1 dereferenceable(67) %i.gp, i64 67, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 67
  store i8 0, ptr %i.gw, align 1, !tbaa !101
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gy = load i32, ptr %9, align 8, !tbaa !141
  store i32 %i.gy, ptr %i.gx, align 8, !tbaa !141
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !100 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %.thread.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98

.thread.i.i103:                                   ; preds = %bb.v
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.gu, ptr %i.gz, align 8, !tbaa !100
  store i64 67, ptr %i.hd, align 8, !tbaa !102
  %i.he = load i64, ptr %i.gt, align 8, !tbaa !101
  store i64 %i.he, ptr %i.hb, align 8, !tbaa !101
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98: ; preds = %bb.v
  %i.hf = load i64, ptr %i.hb, align 8, !tbaa !101
  store ptr %i.gu, ptr %i.gz, align 8, !tbaa !100
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 67, ptr %i.hg, align 8, !tbaa !102
  %i.hh = load i64, ptr %i.gt, align 8, !tbaa !101
  store i64 %i.hh, ptr %i.hb, align 8, !tbaa !101
  %.not.i.i99 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i99, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98
  store ptr %i.ha, ptr %i.gs, align 8, !tbaa !100
  store i64 %i.hf, ptr %i.gt, align 8, !tbaa !101
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i98, %.thread.i.i103
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !100
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104

_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104: ; preds = %bb.w, %bb.x
  %i.hi = phi ptr [ %i.gt, %bb.x ], [ %i.ha, %bb.w ]
  store i64 0, ptr %i.gv, align 8, !tbaa !102
  store i8 0, ptr %i.hi, align 1, !tbaa !101
  %i.hj = load ptr, ptr %i.gs, align 8, !tbaa !100 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.gt
  br i1 %i.hk, label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104
  %i.hl = load i64, ptr %i.gt, align 8, !tbaa !101
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #38
  br label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107

_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  %i.hn = load ptr, ptr %10, align 8, !tbaa !100  ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.go
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107
  %i.hp = load i64, ptr %i.go, align 8, !tbaa !101
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.loopexit179

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i82
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i90
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %10, align 8, !tbaa !100  ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.go
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.z
  %i.hv = load i64, ptr %i.go, align 8, !tbaa !101
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.y
  %.pn35 = phi { ptr, i32 } [ %i.hr, %bb.y ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.hs, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.bi

bb.aa:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.hx = phi ptr [ %i.cl, %.lr.ph ], [ %i.lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ]
  %.0260 = phi i64 [ 0, %.lr.ph ], [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %.0260 ; 2 uses
  store ptr %i.gc, ptr %11, align 8, !tbaa !96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !100 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !102 ; 8 uses
  %i.ic = icmp ugt i64 %i.ib, 15
  br i1 %i.ic, label %bb.ab, label %._crit_edge.i.i116

bb.ab:                                            ; preds = %bb.aa
  %i.id = icmp slt i64 %i.ib, 0
  br i1 %i.id, label %.noexc.i119, label %bb.ac

.noexc.i119:                                      ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.468) #35
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %.noexc.i119
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.ie = add nuw i64 %i.ib, 1                    ; 2 uses
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %.noexc6.i118, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117, !prof !97

.noexc6.i118:                                     ; preds = %bb.ac
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc121 unwind label %.loopexit.split-lp

.noexc121:                                        ; preds = %.noexc6.i118
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117: ; preds = %bb.ac
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #37
          to label %.noexc122 unwind label %.loopexit180 ; 2 uses

.noexc122:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117
  store ptr %i.ig, ptr %11, align 8, !tbaa !100
  store i64 %i.ib, ptr %i.gc, align 8, !tbaa !101
  br label %._crit_edge.i.i116

._crit_edge.i.i116:                               ; preds = %.noexc122, %bb.aa
  %i.ih = phi ptr [ %i.ig, %.noexc122 ], [ %i.gc, %bb.aa ] ; 3 uses
  switch i64 %i.ib, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i116
  %i.ii = load i8, ptr %i.hz, align 1, !tbaa !101
  store i8 %i.ii, ptr %i.ih, align 1, !tbaa !101
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr align 1 %i.hz, i64 %i.ib, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i116
  store i64 %i.ib, ptr %i.gd, align 8, !tbaa !102
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ib
  store i8 0, ptr %i.ij, align 1, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.ik = or disjoint i64 %.0260, 1               ; 3 uses
  %i.il = load ptr, ptr %i.cj, align 8, !tbaa !112
  %i.im = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
end_hunk_1
begin_hunk_2_@_ZN7rocksdb15BatchPutCommandC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKSt3mapIS7_S7_St4lessIS7_ESaISt4pairIKS7_S7_EEESB_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bc
  %i.kk = phi i64 [ %.pre286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.kg, %bb.bc ]
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !102
  store ptr %i.gh, ptr %13, align 8, !tbaa !100
  store i64 0, ptr %i.gi, align 8, !tbaa !102
  store i8 0, ptr %i.gh, align 8, !tbaa !101
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 48 ; 3 uses
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !96
  %i.ko = load ptr, ptr %14, align 8, !tbaa !100  ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.gk
  br i1 %i.kp, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.kq = load i64, ptr %i.gl, align 8, !tbaa !102 ; 3 uses
  %i.kr = icmp ult i64 %i.kq, 16
  call void @llvm.assume(i1 %i.kr)
  %i.ks = add nuw nsw i64 %i.kq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kn, ptr noundef nonnull align 8 dereferenceable(1) %i.gk, i64 %i.ks, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.ko, ptr %i.km, align 8, !tbaa !100
  %i.kt = load i64, ptr %i.gk, align 8, !tbaa !101
  store i64 %i.kt, ptr %i.kn, align 8, !tbaa !101
  %.pre287 = load i64, ptr %i.gl, align 8, !tbaa !102
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ku = phi i64 [ %.pre287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.kq, %bb.bd ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  store i64 %i.ku, ptr %i.kv, align 8, !tbaa !102
  store ptr %i.gk, ptr %14, align 8, !tbaa !100
  store i64 0, ptr %i.gl, align 8, !tbaa !102
  %i.kw = load ptr, ptr %i.gm, align 8, !tbaa !761
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 64
  store ptr %i.kx, ptr %i.gm, align 8, !tbaa !761
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.be:                                            ; preds = %bb.ba
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit unwind label %bb.bf

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit: ; preds = %bb.be
  %.pre288 = load ptr, ptr %14, align 8, !tbaa !100 ; 2 uses
  %i.ky = icmp eq ptr %.pre288, %i.gk
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit
  %i.kz = load i64, ptr %i.gk, align 8, !tbaa !101
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %.pre288, i64 noundef %i.la) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.lb = load ptr, ptr %13, align 8, !tbaa !100  ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.gh
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.ld = load i64, ptr %i.gh, align 8, !tbaa !101
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.lf = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ge
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.lh = load i64, ptr %i.ge, align 8, !tbaa !101
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.lj = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.gc
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ll = load i64, ptr %i.gc, align 8, !tbaa !101
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ln = add nuw i64 %.0260, 2                   ; 2 uses
  %i.lo = load ptr, ptr %i.cj, align 8, !tbaa !112
  %i.lp = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = ashr exact i64 %i.ls, 5
  %i.lu = icmp ult i64 %i.ln, %i.lt
  br i1 %i.lu, label %bb.aa, label %.loopexit179, !llvm.loop !2305

.loopexit180:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit.split-lp:                               ; preds = %.noexc.i119, %.noexc6.i118
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit181:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i128
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

.loopexit.split-lp182:                            ; preds = %bb.ag, %.noexc.i130, %.noexc6.i129
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

.loopexit186:                                     ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i136
  %lpad.loopexit188 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

.loopexit.split-lp187:                            ; preds = %.noexc.i138, %.noexc6.i137
  %lpad.loopexit.split-lp189 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

.loopexit191:                                     ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i144
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

.loopexit.split-lp192:                            ; preds = %.noexc.i146, %.noexc6.i145
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bf:                                            ; preds = %bb.be
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %14, align 8, !tbaa !100  ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.gk
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bf
  %i.ly = load i64, ptr %i.gk, align 8, !tbaa !101
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bf, %.loopexit191, %.loopexit.split-lp192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  %.pn30 = phi { ptr, i32 } [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp192 ], [ %lpad.loopexit193, %.loopexit191 ], [ %i.lv, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.ma = load ptr, ptr %13, align 8, !tbaa !100  ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.gh
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.mc = load i64, ptr %i.gh, align 8, !tbaa !101
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %.loopexit186, %.loopexit.split-lp187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %lpad.loopexit.split-lp189, %.loopexit.split-lp187 ], [ %lpad.loopexit188, %.loopexit186 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.me = load ptr, ptr %12, align 8, !tbaa !100  ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.ge
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.mg = load i64, ptr %i.ge, align 8, !tbaa !101
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %.loopexit181, %.loopexit.split-lp182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ], [ %lpad.loopexit183, %.loopexit181 ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.mi = load ptr, ptr %11, align 8, !tbaa !100  ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.gc
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.mk = load i64, ptr %i.gc, align 8, !tbaa !101
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %.loopexit180, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit180 ], [ %.pn30.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.bi

.loopexit179:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !115
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !115
  %i.mq = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.mn, ptr %i.mp, ptr nonnull align 8 dereferenceable(32) @_ZN7rocksdb10LDBCommand21ARG_CREATE_IF_MISSINGB5cxx11E)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.loopexit179
  %i.mr = load ptr, ptr %i.mo, align 8, !tbaa !115
  %i.ms = icmp ne ptr %i.mq, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 377
  %i.mu = zext i1 %i.ms to i8
  store i8 %i.mu, ptr %i.mt, align 1, !tbaa !328
  ret void

bb.bh:                                            ; preds = %.loopexit179
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn39 = phi { ptr, i32 } [ %i.mv, %bb.bh ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn30.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #36
  call void @_ZN7rocksdb10LDBCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(2416) dereferenceable(2416) %0) #36
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.bi ], [ %.pn.pn.pn, %.loopexit ]
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !763    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !761  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !101
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !100 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !101
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !763
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !762
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #38
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15BatchPutCommand4HelpERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator", align 1    ; 3 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 5 uses
  %i.c = and i64 %i.b, -2
  %i.d = icmp eq i64 %i.c, 9223372036854775806
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.513) #35
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.e = add nsw i64 %i.b, 2                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !101
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.e, %i.k
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  store i16 8224, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.164, i64 noundef 2)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.d
  store i64 %i.e, ptr %i.a, align 8, !tbaa !102
  %i.m = load ptr, ptr %0, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !96, !alias.scope !2318
  store i64 8391737074322268514, ptr %i.o, align 8, !alias.scope !2318
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.p, align 8, !tbaa !102, !alias.scope !2318
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !101, !alias.scope !2318
  %i.r = load i64, ptr %i.a, align 8, !tbaa !102  ; 5 uses
  %i.s = and i64 %i.r, -8
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.513) #35
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.u = add nsw i64 %i.r, 8                      ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = load i64, ptr %i.g, align 8, !tbaa !101
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  store i64 8391737074322268514, ptr %i.aa, align 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.r, i64 noundef 0, ptr noundef nonnull %i.o, i64 noundef 8)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.f, %bb.g
  store i64 %i.u, ptr %i.a, align 8, !tbaa !102
  %i.ab = load ptr, ptr %0, align 8, !tbaa !100
end_hunk_2
