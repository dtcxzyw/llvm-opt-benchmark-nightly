Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_reader?download=true
inline.NumInlined: 8948
inline.NumDeleted: 2868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7rocksdb15BlockBasedTable4OpenERKNS_11ReadOptionsERKNS_16ImmutableOptionsERKNS_10EnvOptionsERKNS_22BlockBasedTableOptionsERKNS_21InternalKeyComparatorEOSt10unique_ptrINS_22RandomAccessFileReaderESt14default_deleteISH_EEmhPSG_INS_11TableReaderESI_ISM_EEmSt10shared_ptrINS_23CacheReservationManagerEERKSQ_IKNS_14SliceTransformEENS_10UnownedPtrINS_18CompressionManagerEEEbbibmbPNS_17TailPrefetchStatsEPNS_16BlockCacheTracerEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt5arrayImLm2EEbbPNS_10BlobSourceE:bb.a
  %i.op = load i8, ptr %71, align 8, !tbaa !108, !alias.scope !1500
  %i.oq = icmp eq i8 %i.op, 0
  br i1 %i.oq, label %bb.di, label %.critedge.i

bb.di:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !112, !alias.scope !1500 ; 2 uses
  %.not.i.i107.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i107.i, label %_ZN7rocksdb6StatusD2Ev.exit109.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i108.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i108.i: ; preds = %bb.di
  call void @_ZdaPv(ptr noundef nonnull %i.os) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit109.i

_ZN7rocksdb6StatusD2Ev.exit109.i:                 ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i108.i, %bb.di
  %i.ot = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !805, !noalias !1500 ; 8 uses
  %.not.i.i.i110.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i110.i, label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.dj

bb.dj:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit109.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 4 uses
  %i.ow = load atomic i64, ptr %i.ov acquire, align 8 ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 4294967297
  %i.oy = trunc i64 %i.ow to i32                  ; 2 uses
  br i1 %i.ox, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.ov, align 8, !tbaa !807
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  store i32 0, ptr %i.oz, align 4, !tbaa !808
  %i.pa = load ptr, ptr %i.ou, align 8, !tbaa !92
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8
  call void %i.pc(ptr noundef nonnull align 8 dereferenceable(16) %i.ou) #38, !inline_history !1481
  %i.pd = load ptr, ptr %i.ou, align 8, !tbaa !92
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(16) %i.ou) #38, !inline_history !1481
  br label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.pg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !1500
  %.not.i.i.i.i111.i = icmp eq i8 %i.pg, 0
  br i1 %.not.i.i.i.i111.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ph = add nsw i32 %i.oy, -1
  store i32 %i.ph, ptr %i.ov, align 8, !tbaa !466
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.pi = atomicrmw volatile add ptr %i.ov, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i.i = phi i32 [ %i.oy, %bb.dm ], [ %i.pi, %bb.dn ]
  %i.pj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.pj, label %bb.do, label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !471

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ou) #38
  br label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dk, %_ZN7rocksdb6StatusD2Ev.exit109.i
  %i.pk = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !95, !noalias !1500 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %_ZN7rocksdb13ConfigOptionsD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.po = load i64, ptr %i.pm, align 8, !tbaa !96, !noalias !1500
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.pp) #39
  br label %_ZN7rocksdb13ConfigOptionsD2Ev.exit.i

_ZN7rocksdb13ConfigOptionsD2Ev.exit.i:            ; preds = %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38, !noalias !1500
  br label %bb.dq

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, %bb.df
  %.pn71.pn.i = phi { ptr, i32 } [ %.pn69.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i ], [ %i.oh, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38, !noalias !1500
  br label %bb.fs

bb.dq:                                            ; preds = %_ZN7rocksdb13ConfigOptionsD2Ev.exit.i, %_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102.i
  %i.pq = add nuw i64 %i.mh, 1                    ; 6 uses
  %i.pr = load i64, ptr %i.jj, align 8, !tbaa !361, !noalias !1500 ; 2 uses
  %i.ps = icmp ult i64 %i.pq, %i.pr
  br i1 %i.ps, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit116.thread.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i113.i: ; preds = %bb.dq
  %i.pt = load ptr, ptr %72, align 8, !tbaa !95, !noalias !1500 ; 2 uses
  %i.pu = sub nuw i64 %i.pr, %i.pq
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pq
  %i.pw = call ptr @memchr(ptr noundef nonnull %i.pv, i32 noundef 59, i64 noundef %i.pu) #38 ; 2 uses
  %.not.i.i114.i = icmp eq ptr %i.pw, null
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = ptrtoint ptr %i.pt to i64
  %i.pz = sub i64 %i.px, %i.py                    ; 3 uses
  %i.qa = icmp eq i64 %i.pz, -1
  %or.cond.i = or i1 %.not.i.i114.i, %i.qa
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit116.thread.i, label %bb.ds, !prof !1513

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit116.thread.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i113.i, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38, !noalias !1500
  store ptr @.str.175, ptr %40, align 8, !tbaa !82, !noalias !1500
  %i.qb = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 42, ptr %i.qb, align 8, !tbaa !83, !noalias !1500
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38, !noalias !1500
  store ptr @.str, ptr %41, align 8, !tbaa !82, !noalias !1500
  %i.qc = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 0, ptr %i.qc, align 8, !tbaa !83, !noalias !1500
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit.i unwind label %bb.dr

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit116.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38, !noalias !1500
  br label %bb.fk

bb.dr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEcm.exit116.thread.i
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38, !noalias !1500
  br label %bb.fs

bb.ds:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i113.i
  %i.qe = sub i64 %i.pz, %i.pq                    ; 2 uses
  %i.qf = and i64 %i.qe, 1
  %.not74.i = icmp eq i64 %i.qf, 0
  br i1 %.not74.i, label %bb.dv, label %bb.dt, !prof !831

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38, !noalias !1500
  store ptr @.str.176, ptr %42, align 8, !tbaa !82, !noalias !1500
  %i.qg = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 45, ptr %i.qg, align 8, !tbaa !83, !noalias !1500
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38, !noalias !1500
  store ptr @.str, ptr %43, align 8, !tbaa !82, !noalias !1500
  %i.qh = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 0, ptr %i.qh, align 8, !tbaa !83, !noalias !1500
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit117.i unwind label %bb.du

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit117.i: ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38, !noalias !1500
  br label %bb.fk

bb.du:                                            ; preds = %bb.dt
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38, !noalias !1500
  br label %bb.fs

bb.dv:                                            ; preds = %bb.ds
  %i.qj = lshr exact i64 %i.qe, 1                 ; 4 uses
  %i.qk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qj) #40
          to label %bb.dw unwind label %bb.dx     ; 6 uses

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qk, i8 0, i64 %i.qj, i1 false), !noalias !1514
  %.not237.i = icmp eq i64 %i.pz, %i.pq
  br i1 %.not237.i, label %.critedge86.i, label %.lr.ph.i.preheader.preheader.i

.lr.ph.i.preheader.preheader.i:                   ; preds = %bb.dw
  %i.ql = load ptr, ptr %72, align 8, !tbaa !95, !noalias !1500
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.pq
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.eg, %.lr.ph.i.preheader.preheader.i
  %.0239.i = phi i64 [ %i.rp, %bb.eg ], [ 0, %.lr.ph.i.preheader.preheader.i ] ; 2 uses
  %.0212238.i = phi ptr [ %scevgep.i, %bb.eg ], [ %i.qm, %.lr.ph.i.preheader.preheader.i ] ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.0212238.i, i64 2
  %i.qn = load i8, ptr %.0212238.i, align 1, !tbaa !96 ; 4 uses
  %i.qo = zext nneg i8 %i.qn to i64
  %i.qp = add i8 %i.qn, -48
  %or.cond.i.i = icmp ult i8 %i.qp, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.1.i, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.dy:                                            ; preds = %.lr.ph.i.preheader.i
  %i.qr = add i8 %i.qn, -65
  %or.cond5.i.i = icmp ult i8 %i.qr, 6
  br i1 %or.cond5.i.i, label %.lr.ph.i.1.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.qs = add i8 %i.qn, -97
  %or.cond8.i.i = icmp ult i8 %i.qs, 6
  br i1 %or.cond8.i.i, label %.lr.ph.i.1.i, label %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.thread.i

.lr.ph.i.1.i:                                     ; preds = %bb.dz, %bb.dy, %.lr.ph.i.preheader.i
  %.sink.i = phi i64 [ 4294967241, %bb.dy ], [ 4294967248, %.lr.ph.i.preheader.i ], [ 4294967209, %bb.dz ]
  %i.qt = add nuw nsw i64 %.sink.i, %i.qo
  %i.qu = getelementptr inbounds nuw i8, ptr %.0212238.i, i64 1
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !96  ; 4 uses
  %.sink.i.i = shl nuw nsw i64 %i.qt, 4
  %102 = and i64 %.sink.i.i, 68719476720          ; 3 uses
  %i.qw = sext i8 %i.qv to i32                    ; 3 uses
  %i.qx = add i8 %i.qv, -48
  %or.cond.i.1.i = icmp ult i8 %i.qx, 10
  br i1 %or.cond.i.1.i, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.1.i
  %i.qy = add i8 %i.qv, -65
  %or.cond5.i.1.i = icmp ult i8 %i.qy, 6
  br i1 %or.cond5.i.1.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qz = add i8 %i.qv, -97
  %or.cond8.i.1.i = icmp ult i8 %i.qz, 6
  br i1 %or.cond8.i.1.i, label %bb.ec, label %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.thread.i

bb.ec:                                            ; preds = %bb.eb
  %i.ra = add nsw i32 %i.qw, -87
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = add nuw nsw i64 %102, %i.rb
  br label %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.i

bb.ed:                                            ; preds = %bb.ea
  %i.rd = add nsw i32 %i.qw, -55
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = add nuw nsw i64 %102, %i.re
  br label %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.i

bb.ee:                                            ; preds = %.lr.ph.i.1.i
  %i.rg = add nsw i32 %i.qw, -48
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = or disjoint i64 %102, %i.rh
  br label %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.i

_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %.sink.i.1.i = phi i64 [ %i.ri, %bb.ee ], [ %i.rc, %bb.ec ], [ %i.rf, %bb.ed ] ; 2 uses
  %i.rj = add nsw i64 %.sink.i.1.i, -255
  %spec.select.i232 = icmp ult i64 %i.rj, -254
  br i1 %spec.select.i232, label %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.thread.i, label %bb.eg, !prof !1515

_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.thread.i: ; preds = %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.i, %bb.eb, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38, !noalias !1500
  store ptr @.str.177, ptr %44, align 8, !tbaa !82, !noalias !1500
  %i.rk = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 46, ptr %i.rk, align 8, !tbaa !83, !noalias !1500
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38, !noalias !1500
  store ptr @.str, ptr %45, align 8, !tbaa !82, !noalias !1500
  %i.rl = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.rl, align 8, !tbaa !83, !noalias !1500
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i8 noundef zeroext 0)
          to label %bb.eh unwind label %bb.ef

bb.ef:                                            ; preds = %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.thread.i
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38, !noalias !1500
  br label %_ZNSt10unique_ptrIA_N7rocksdb15CompressionTypeESt14default_deleteIS2_EED2Ev.exit156.i

bb.eg:                                            ; preds = %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.i
  %i.rn = trunc nuw i64 %.sink.i.1.i to i8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.0239.i
  store i8 %i.rn, ptr %i.ro, align 1, !tbaa !724
  %i.rp = add nuw nsw i64 %.0239.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.rp, %i.qj
  br i1 %exitcond.not.i, label %.critedge86.i, label %.lr.ph.i.preheader.i, !llvm.loop !1484

bb.eh:                                            ; preds = %_ZN7rocksdb14ParseBaseCharsILi16EEEbPPKcmPm.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38, !noalias !1500
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38, !noalias !1500
  br label %_ZNSt10unique_ptrIA_N7rocksdb15CompressionTypeESt14default_deleteIS2_EED2Ev.exit.i

.critedge86.i:                                    ; preds = %bb.eg, %bb.dw
  %i.rq = load ptr, ptr %36, align 16, !tbaa !1503, !noalias !1500 ; 3 uses
  %.not228.i = icmp eq ptr %i.rq, null
  br i1 %.not228.i, label %bb.ex, label %bb.ei

bb.ei:                                            ; preds = %.critedge86.i
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38, !noalias !1500
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qj
  %i.rs = load ptr, ptr %i.rq, align 8, !tbaa !92
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 216
  %i.ru = load ptr, ptr %i.rt, align 8
  invoke void %i.ru(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.91") align 8 %46, ptr noundef nonnull align 8 dereferenceable(48) %i.rq, ptr noundef nonnull %i.qk, ptr noundef nonnull %i.rr)
          to label %bb.ej unwind label %bb.ew

bb.ej:                                            ; preds = %bb.ei
  %i.rv = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.fu, i64 840
  %i.rx = load <2 x ptr>, ptr %46, align 16, !tbaa !132, !noalias !1500
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %46, i8 0, i64 16, i1 false), !noalias !1500
  %i.ry = load ptr, ptr %i.rw, align 8, !tbaa !805, !noalias !1500 ; 8 uses
  store <2 x ptr> %i.rx, ptr %i.ji, align 8, !tbaa !132, !noalias !1500
  %.not.i.i.i.i120.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i.i120.i, label %_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 4 uses
  %i.sa = load atomic i64, ptr %i.rz acquire, align 8 ; 2 uses
  %i.sb = icmp eq i64 %i.sa, 4294967297
  %i.sc = trunc i64 %i.sa to i32                  ; 2 uses
  br i1 %i.sb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.rz, align 8, !tbaa !807
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  store i32 0, ptr %i.sd, align 4, !tbaa !808
  %i.se = load ptr, ptr %i.ry, align 8, !tbaa !92
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(16) %i.ry) #38, !inline_history !1475
  %i.sh = load ptr, ptr %i.ry, align 8, !tbaa !92
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(16) %i.ry) #38, !inline_history !1475
  br label %_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i

bb.em:                                            ; preds = %bb.ek
  %i.sk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !1500
  %.not.i.i.i.i.i121.i = icmp eq i8 %i.sk, 0
  br i1 %.not.i.i.i.i.i121.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.sl = add nsw i32 %i.sc, -1
  store i32 %i.sl, ptr %i.rz, align 8, !tbaa !466
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122.i

bb.eo:                                            ; preds = %bb.em
  %i.sm = atomicrmw volatile add ptr %i.rz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122.i: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i.i.i123.i = phi i32 [ %i.sc, %bb.en ], [ %i.sm, %bb.eo ]
  %i.sn = icmp eq i32 %.0.i.i.i.i.i.i123.i, 1
  br i1 %i.sn, label %bb.ep, label %_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i, !prof !471

bb.ep:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ry) #38
  br label %_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i

_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i: ; preds = %bb.ep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122.i, %bb.el, %bb.ej
  %i.so = load ptr, ptr %i.rv, align 8, !tbaa !805, !noalias !1500 ; 8 uses
  %.not.i.i125.i = icmp eq ptr %i.so, null
  br i1 %.not.i.i125.i, label %_ZNSt12__shared_ptrIN7rocksdb12DecompressorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 4 uses
  %i.sq = load atomic i64, ptr %i.sp acquire, align 8 ; 2 uses
  %i.sr = icmp eq i64 %i.sq, 4294967297
  %i.ss = trunc i64 %i.sq to i32                  ; 2 uses
  br i1 %i.sr, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.sp, align 8, !tbaa !807
  %i.st = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  store i32 0, ptr %i.st, align 4, !tbaa !808
  %i.su = load ptr, ptr %i.so, align 8, !tbaa !92
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull align 8 dereferenceable(16) %i.so) #38, !inline_history !1476
  %i.sx = load ptr, ptr %i.so, align 8, !tbaa !92
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(16) %i.so) #38, !inline_history !1476
  br label %_ZNSt12__shared_ptrIN7rocksdb12DecompressorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129.i

bb.es:                                            ; preds = %bb.eq
  %i.ta = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !1500
  %.not.i.i.i126.i = icmp eq i8 %i.ta, 0
  br i1 %.not.i.i.i126.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.tb = add nsw i32 %i.ss, -1
  store i32 %i.tb, ptr %i.sp, align 8, !tbaa !466
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127.i

bb.eu:                                            ; preds = %bb.es
  %i.tc = atomicrmw volatile add ptr %i.sp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127.i: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i128.i = phi i32 [ %i.ss, %bb.et ], [ %i.tc, %bb.eu ]
  %i.td = icmp eq i32 %.0.i.i.i.i128.i, 1
  br i1 %i.td, label %bb.ev, label %_ZNSt12__shared_ptrIN7rocksdb12DecompressorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129.i, !prof !471

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.so) #38
  br label %_ZNSt12__shared_ptrIN7rocksdb12DecompressorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129.i

_ZNSt12__shared_ptrIN7rocksdb12DecompressorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i127.i, %bb.er, %_ZNSt10shared_ptrIN7rocksdb12DecompressorEEaSEOS2_.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38, !noalias !1500
  br label %_ZNSt10unique_ptrIA_N7rocksdb15CompressionTypeESt14default_deleteIS2_EED2Ev.exit.i

bb.ew:                                            ; preds = %bb.ei
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38, !noalias !1500
  br label %_ZNSt10unique_ptrIA_N7rocksdb15CompressionTypeESt14default_deleteIS2_EED2Ev.exit156.i

bb.ex:                                            ; preds = %.critedge86.i
  store ptr null, ptr %i.ji, align 8, !tbaa !493, !noalias !1500
  %i.tf = getelementptr inbounds nuw i8, ptr %i.fu, i64 840 ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !805, !noalias !1500 ; 8 uses
  store ptr null, ptr %i.tf, align 8, !tbaa !805, !noalias !1500
  %.not.i.i.i.i130.i = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i.i130.i, label %_ZNSt10unique_ptrIA_N7rocksdb15CompressionTypeESt14default_deleteIS2_EED2Ev.exit.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 4 uses
  %i.ti = load atomic i64, ptr %i.th acquire, align 8 ; 2 uses
  %i.tj = icmp eq i64 %i.ti, 4294967297
  %i.tk = trunc i64 %i.ti to i32                  ; 2 uses
  br i1 %i.tj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.th, align 8, !tbaa !807
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  store i32 0, ptr %i.tl, align 4, !tbaa !808
  %i.tm = load ptr, ptr %i.tg, align 8, !tbaa !92
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(16) %i.tg) #38, !inline_history !1475
  %i.tp = load ptr, ptr %i.tg, align 8, !tbaa !92
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(16) %i.tg) #38, !inline_history !1475
  br label %_ZNSt10unique_ptrIA_N7rocksdb15CompressionTypeESt14default_deleteIS2_EED2Ev.exit.i

bb.fa:                                            ; preds = %bb.ey
  %i.ts = load i8, ptr @__libc_single_threaded, align 1, !tbaa !96, !noalias !1500
  %.not.i.i.i.i.i131.i = icmp eq i8 %i.ts, 0
  br i1 %.not.i.i.i.i.i131.i, label %bb.fc, label %bb.fb
end_hunk_0
