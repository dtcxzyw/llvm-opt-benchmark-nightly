Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmTryRunCommand?download=true
inline.NumInlined: 1204
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_117TryRunCommandImpl18DoNotRunExecutableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIS6_ES8_PS6_SD_SD_b:bb.a
  %i.abm = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.abl, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.fc unwind label %bb.fd     ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %.not.i537 = icmp eq ptr %i.abm, null
  %spec.select.i538 = select i1 %.not.i537, ptr @_ZN7cmValue5EmptyB5cxx11E, ptr %i.abm
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i538)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit536 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit536: ; preds = %bb.fc, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527
  %i.abo = load ptr, ptr %33, align 8, !tbaa !24  ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.cj
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit536
  %i.abq = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit536, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i541
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.abs = load ptr, ptr %32, align 8, !tbaa !24  ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.bt
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543
  %i.abu = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.abw = load ptr, ptr %31, align 8, !tbaa !24  ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.bd
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546
  %i.aby = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit546, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i547
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.aca = load ptr, ptr %30, align 8, !tbaa !24  ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.acc = icmp eq ptr %i.aca, %i.acb
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549
  %i.acd = load i64, ptr %i.acb, align 8, !tbaa !25
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.ace) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.acf = load ptr, ptr %29, align 8, !tbaa !24  ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ach = icmp eq ptr %i.acf, %i.acg
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552
  %i.aci = load i64, ptr %i.acg, align 8, !tbaa !25
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.acj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit552, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.ack = load ptr, ptr %26, align 8, !tbaa !24  ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.acm = icmp eq ptr %i.ack, %i.acl
  br i1 %i.acm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555
  %i.acn = load i64, ptr %i.acl, align 8, !tbaa !25
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.aco) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  ret void

bb.fe:                                            ; preds = %bb.fd, %bb.ez, %bb.ew, %bb.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.x
  %.pn155.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn, %bb.er ], [ %i.abk, %bb.ez ], [ %i.abh, %bb.ew ], [ %i.abn, %bb.fd ], [ %.pn125.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %i.jw, %bb.bc ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %i.hj, %bb.an ], [ %.pn107.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %i.mj, %bb.bs ], [ %.pn98.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %i.ew, %bb.x ] ; 2 uses
  %i.acp = load ptr, ptr %33, align 8, !tbaa !24  ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.cj
  br i1 %i.acq, label %.body193, label %.body193.sink.split

.body193.sink.split:                              ; preds = %bb.fe, %bb.m
  %.sink776 = phi ptr [ %i.cv, %bb.m ], [ %i.acp, %bb.fe ]
  %.pn155.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cu, %bb.m ], [ %.pn155.pn.pn.pn.pn, %bb.fe ]
  %i.acr = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %.sink776, i64 noundef %i.acs) #22
  br label %.body193

.body193:                                         ; preds = %.body193.sink.split, %bb.fe, %bb.m
  %.pn155.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.m ], [ %.pn155.pn.pn.pn.pn, %bb.fe ], [ %.pn155.pn.pn.pn.pn.pn.ph, %.body193.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.act = load ptr, ptr %32, align 8, !tbaa !24  ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.bt
  br i1 %i.acu, label %.body182, label %.body182.sink.split

.body182.sink.split:                              ; preds = %.body193, %bb.k
  %.sink779 = phi ptr [ %i.cf, %bb.k ], [ %i.act, %.body193 ]
  %.pn155.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ce, %bb.k ], [ %.pn155.pn.pn.pn.pn.pn, %.body193 ]
  %i.acv = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.acw = add i64 %i.acv, 1
  call void @_ZdlPvm(ptr noundef %.sink779, i64 noundef %i.acw) #22
  br label %.body182

.body182:                                         ; preds = %.body182.sink.split, %.body193, %bb.k
  %.pn155.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.k ], [ %.pn155.pn.pn.pn.pn.pn, %.body193 ], [ %.pn155.pn.pn.pn.pn.pn.pn.ph, %.body182.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.acx = load ptr, ptr %31, align 8, !tbaa !24  ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.bd
  br i1 %i.acy, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body182, %bb.i
  %.sink782 = phi ptr [ %i.bp, %bb.i ], [ %i.acx, %.body182 ]
  %.pn155.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bo, %bb.i ], [ %.pn155.pn.pn.pn.pn.pn.pn, %.body182 ]
  %i.acz = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %.sink782, i64 noundef %i.ada) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body182, %bb.i
  %.pn155.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.i ], [ %.pn155.pn.pn.pn.pn.pn.pn, %.body182 ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.adb = load ptr, ptr %30, align 8, !tbaa !24  ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.add = icmp eq ptr %i.adb, %i.adc
  br i1 %i.add, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568: ; preds = %.body
  %i.ade = load i64, ptr %i.adc, align 8, !tbaa !25
  %i.adf = add i64 %i.ade, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.adf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568, %bb.w
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.w ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568 ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.adg = load ptr, ptr %29, align 8, !tbaa !24  ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.adi = icmp eq ptr %i.adg, %i.adh
  br i1 %i.adi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570
  %i.adj = load i64, ptr %i.adh, align 8, !tbaa !25
  %i.adk = add i64 %i.adj, 1
  call void @_ZdlPvm(ptr noundef %i.adg, i64 noundef %i.adk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571, %bb.v
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.v ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571 ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.ff

bb.ff:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, %bb.u
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573 ], [ %i.et, %bb.u ] ; 2 uses
  %i.adl = load ptr, ptr %26, align 8, !tbaa !24  ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.adn = icmp eq ptr %i.adl, %i.adm
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %bb.ff
  %i.ado = load i64, ptr %i.adm, align 8, !tbaa !25
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.adp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574 ], [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  resume { ptr, i32 } %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117TryRunCommandImpl13RunExecutableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIS6_EPS6_SD_SD_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca [4 x %"struct.std::pair"], align 8  ; 15 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %class.cmList, align 8             ; 13 uses
  %12 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %class.cmRange, align 8            ; 6 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 -1, ptr %i.d, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !26
  store i8 0, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 29, ptr %i.c, align 8, !tbaa !23
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %10, align 8, !tbaa !24
  %i.k = load i64, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.j, ptr noundef nonnull align 1 dereferenceable(29) @.str.9, i64 29, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %10, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile17GetSafeDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.a unwind label %bb.k       ; 2 uses

bb.a:                                             ; preds = %.noexc
  %i.p = load ptr, ptr %10, align 8, !tbaa !24    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.r = load i64, ptr %i.i, align 8, !tbaa !25
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.r, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.w, ptr %12, align 8, !tbaa !22
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.y = load i64, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.y, ptr %i.b, align 8, !tbaa !23
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i60, label %._crit_edge.i.i59

.noexc.i60:                                       ; preds = %bb.b
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc61 unwind label %bb.l   ; 2 uses

.noexc61:                                         ; preds = %.noexc.i60
  store ptr %i.aa, ptr %12, align 8, !tbaa !24
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !25
  br label %._crit_edge.i.i59

._crit_edge.i.i59:                                ; preds = %.noexc61, %bb.b
  %i.ac = phi ptr [ %i.aa, %.noexc61 ], [ %i.w, %bb.b ] ; 2 uses
  switch i64 %i.y, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %.lr.ph55.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i59
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !25
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !25
  br label %.lr.ph55.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %.lr.ph55.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i59
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = load ptr, ptr %12, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aj = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1, i32 noundef 0)
          to label %.noexc.i62 unwind label %.body ; 0 uses

.noexc.i62:                                       ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.ak = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

.body:                                            ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #21
  %i.ao = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %.noexc.i62
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !25
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.as) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %.noexc.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.at = load ptr, ptr %11, align 8, !tbaa !21
  invoke void @_ZN13cmSystemTools23ConvertToRunCommandPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %21 = load ptr, ptr %11, align 8, !tbaa !29
  %22 = load ptr, ptr %i.ai, align 8, !tbaa !29
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %23, ptr %16, align 8
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %22, ptr %24, align 8
  store i64 1, ptr %17, align 8, !tbaa !521
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.7, ptr %i.au, align 8, !tbaa !522
  invoke void @_Z6cmWrapI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_St17basic_string_viewIcS6_ERKT_SH_SH_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 1, ptr nonnull @.str.50, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 1, ptr nonnull @.str.50, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %17)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !523
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %.pn.i.i.else.val.i = load ptr, ptr %14, align 8, !tbaa !42, !noalias !525
  %.sroa.gep36.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pn2.i.i.else.val.i = load i64, ptr %.sroa.gep36.i, align 8, !tbaa !23, !noalias !525
  store i64 %.pn2.i.i.else.val.i, ptr %6, align 8, !tbaa !23, !alias.scope !524, !noalias !523
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.pn.i.i.else.val.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !42, !alias.scope !524, !noalias !523
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %14, ptr %i.av, align 8, !tbaa !45, !alias.scope !524, !noalias !523
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !523
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i64 0, ptr %7, align 8, !noalias !523
  store i8 32, ptr %i.ay, align 8, !tbaa !25, !noalias !523
  store i64 1, ptr %i.ax, align 8, !tbaa !23, !noalias !523
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !tbaa !42, !noalias !523
  store i64 1, ptr %i.aw, align 8, !tbaa !23, !alias.scope !526, !noalias !523
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !42, !alias.scope !526, !noalias !523
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.az, align 8, !tbaa !45, !alias.scope !526, !noalias !523
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %.pn.i.i17.else.val.i = load ptr, ptr %15, align 8, !tbaa !42, !noalias !528
  %.sroa.gep32.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pn2.i.i19.else.val.i = load i64, ptr %.sroa.gep32.i, align 8, !tbaa !23, !noalias !528
  store i64 %.pn2.i.i19.else.val.i, ptr %i.ba, align 8, !tbaa !23, !alias.scope !527, !noalias !523
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %.pn.i.i17.else.val.i, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !42, !alias.scope !527, !noalias !523
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %15, ptr %i.bb, align 8, !tbaa !45, !alias.scope !527, !noalias !523
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !523
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i64 0, ptr %8, align 8, !noalias !523
  store i8 32, ptr %i.be, align 8, !tbaa !25, !noalias !523
  store i64 1, ptr %i.bd, align 8, !tbaa !23, !noalias !523
  %.sroa.4.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !tbaa !42, !noalias !523
  store i64 1, ptr %i.bc, align 8, !tbaa !23, !alias.scope !529, !noalias !523
  %.sroa.4.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i29.i, align 8, !tbaa !42, !alias.scope !529, !noalias !523
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr null, ptr %i.bf, align 8, !tbaa !45, !alias.scope !529, !noalias !523
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %6, i64 4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !523
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !26
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.noexc69 unwind label %bb.p

.noexc69:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.bl = load ptr, ptr %13, align 8, !tbaa !24
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.bl, i64 noundef %i.bh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bn = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.bs = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.bx = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !25
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.cc = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 3 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %11, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ck = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !54
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #22
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.r

bb.j:                                             ; preds = %.noexc.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.k:                                             ; preds = %.noexc
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.i
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.k
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !25
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.cr, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.au

bb.l:                                             ; preds = %.noexc.i60
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.body
  %i.cx = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.cy) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.l
  %.pn43 = phi { ptr, i32 } [ %i.cw, %bb.l ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.an, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.q

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.n:                                             ; preds = %bb.e
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.o:                                             ; preds = %bb.f
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.p
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !25
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.o
  %.pn45 = phi { ptr, i32 } [ %i.db, %bb.o ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.dc, %bb.p ] ; 2 uses
  %i.di = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !25
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.n
  %.pn45.pn = phi { ptr, i32 } [ %i.da, %bb.n ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.dn = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !25
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.m
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.m ], [ %.pn45.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn45.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %.loopexit
  %.pn45.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn43, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.au

bb.r:                                             ; preds = %_ZN6cmListD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN13cmSystemTools23ConvertToRunCommandPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ds)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26 ; 2 uses
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !26
  %i.dw = sub i64 4611686018427387903, %i.dv
  %i.dx = icmp ult i64 %i.dw, %i.du
  br i1 %i.dx, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i95

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.noexc96 unwind label %bb.x

.noexc96:                                         ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i95: ; preds = %bb.s
  %i.dy = load ptr, ptr %18, align 8, !tbaa !24
  %i.dz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dy, i64 noundef %i.du)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit98 unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i95
  %i.ea = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit98
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !25
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !26 ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit105, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ei = load i64, ptr %i.f, align 8, !tbaa !26
  %i.ej = sub i64 4611686018427387903, %i.ei
  %i.ek = icmp ult i64 %i.ej, %i.eg
  br i1 %i.ek, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i102

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.noexc103 unwind label %bb.y

.noexc103:                                        ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i102: ; preds = %bb.u
  %i.el = load ptr, ptr %1, align 8, !tbaa !24
  %i.em = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.el, i64 noundef %i.eg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit105 unwind label %bb.y ; 0 uses

bb.w:                                             ; preds = %bb.r
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i95, %bb.t
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.x
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !25
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

end_hunk_0
