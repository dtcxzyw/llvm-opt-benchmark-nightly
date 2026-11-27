Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/factory?download=true
inline.NumInlined: 16551
inline.NumDeleted: 4623
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_ZNK5osgeo4proj2io16AuthorityFactory24getOfficialNameFromAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_bRS8_SB_SB_:bb.a
.invoke727:                                       ; preds = %bb.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.cont728 unwind label %bb.bl

.cont728:                                         ; preds = %.invoke727
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i298: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.qp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.198, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit301 unwind label %bb.bl ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i298
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  store i32 0, ptr %24, align 8, !tbaa !374
  %i.qq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 8 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 12 uses
  store ptr %i.qr, ptr %i.qq, align 8, !tbaa !166
  %i.qs = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.qt = load i64, ptr %i.qb, align 8, !tbaa !167 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.qt, ptr %i.b, align 8, !tbaa !168
  %i.qu = icmp ugt i64 %i.qt, 15
  br i1 %i.qu, label %.noexc.i.i303, label %._crit_edge.i.i.i302

.noexc.i.i303:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit301
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.qq, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc304 unwind label %bb.bv ; 2 uses

.noexc304:                                        ; preds = %.noexc.i.i303
  store ptr %i.qv, ptr %i.qq, align 8, !tbaa !164
  %i.qw = load i64, ptr %i.b, align 8, !tbaa !168
  store i64 %i.qw, ptr %i.qr, align 8, !tbaa !165
  br label %._crit_edge.i.i.i302

._crit_edge.i.i.i302:                             ; preds = %.noexc304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit301
  %i.qx = phi ptr [ %i.qv, %.noexc304 ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit301 ] ; 2 uses
  switch i64 %i.qt, label %bb.br [
    i64 1, label %bb.bq
    i64 0, label %bb.bs
  ]

bb.bq:                                            ; preds = %._crit_edge.i.i.i302
  %i.qy = load i8, ptr %i.qs, align 1, !tbaa !165
  store i8 %i.qy, ptr %i.qx, align 1, !tbaa !165
  br label %bb.bs

bb.br:                                            ; preds = %._crit_edge.i.i.i302
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.qs, i64 %i.qt, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %._crit_edge.i.i.i302
  %i.qz = load i64, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store i64 %i.qz, ptr %i.ra, align 8, !tbaa !167
  %i.rb = load ptr, ptr %i.qq, align 8, !tbaa !164
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qz
  store i8 0, ptr %i.rc, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.rd = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  store i32 0, ptr %i.rd, align 8, !tbaa !198
  %i.re = getelementptr inbounds nuw i8, ptr %24, i64 48
  store double 0.000000e+00, ptr %i.re, align 8, !tbaa !199
  %i.rf = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %.noexc309 unwind label %bb.bw ; 6 uses

.noexc309:                                        ; preds = %bb.bs
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load i32, ptr %24, align 8, !tbaa !374
  store i32 %i.rh, ptr %i.rg, align 8, !tbaa !374
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 24 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 40 ; 3 uses
  store ptr %i.rj, ptr %i.ri, align 8, !tbaa !166
  %i.rk = load ptr, ptr %i.qq, align 8, !tbaa !164 ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.qr
  br i1 %i.rl, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306

bb.bt:                                            ; preds = %.noexc309
  %i.rm = load i64, ptr %i.ra, align 8, !tbaa !167 ; 3 uses
  %i.rn = icmp ult i64 %i.rm, 16
  call void @llvm.assume(i1 %i.rn)
  %i.ro = add nuw nsw i64 %i.rm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rj, ptr noundef nonnull align 8 dereferenceable(1) %i.qr, i64 %i.ro, i1 false)
  br label %bb.bu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306: ; preds = %.noexc309
  store ptr %i.rk, ptr %i.ri, align 8, !tbaa !164
  %i.rp = load i64, ptr %i.qr, align 8, !tbaa !165
  store i64 %i.rp, ptr %i.rj, align 8, !tbaa !165
  %.pre.i.i.i308 = load i64, ptr %i.ra, align 8, !tbaa !167
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306, %bb.bt
  %i.rq = phi i64 [ %.pre.i.i.i308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306 ], [ %i.rm, %bb.bt ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  store i64 %i.rq, ptr %i.rr, align 8, !tbaa !167
  store ptr %i.qr, ptr %i.qq, align 8, !tbaa !164
  store i64 0, ptr %i.ra, align 8, !tbaa !167
  store i8 0, ptr %i.qr, align 8, !tbaa !165
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rf, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rs, ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i64 16, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.rf, ptr noundef nonnull align 8 dereferenceable(24) %21) #33
  %i.rt = load i64, ptr %i.no, align 8, !tbaa !377
  %i.ru = add i64 %i.rt, 1
  store i64 %i.ru, ptr %i.no, align 8, !tbaa !377
  %i.rv = load ptr, ptr %i.qq, align 8, !tbaa !164 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.qr
  br i1 %i.rw, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311: ; preds = %bb.bu
  %i.rx = load i64, ptr %i.qr, align 8, !tbaa !165
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit313

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit313:          ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit297

bb.bv:                                            ; preds = %.noexc.i.i303
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit316

bb.bw:                                            ; preds = %bb.bs
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sb = load ptr, ptr %i.qq, align 8, !tbaa !164 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.qr
  br i1 %i.sc, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314: ; preds = %bb.bw
  %i.sd = load i64, ptr %i.qr, align 8, !tbaa !165
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit316

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit316:          ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314, %bb.bv
  %.pn89 = phi { ptr, i32 } [ %i.rz, %bb.bv ], [ %i.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i314 ], [ %i.sa, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.dd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit297: ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit313
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  %i.sf = load ptr, ptr %1, align 8, !tbaa !402
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !406, !noalias !2269
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !408, !noalias !2269
  invoke void @_ZN5osgeo4proj2io15DatabaseContext7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %25, ptr noundef nonnull align 8 dereferenceable(1696) %i.sh, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull readonly align 8 dereferenceable(24) %21, i1 noundef zeroext false)
          to label %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit318 unwind label %bb.by

_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit297
  %i.si = load ptr, ptr %25, align 8, !tbaa !182  ; 2 uses
  %i.sj = icmp eq ptr %i.si, %25
  br i1 %i.sj, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit318
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.sk, ptr %0, align 8, !tbaa !166
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.sl, align 8, !tbaa !167
  store i8 0, ptr %i.sk, align 8, !tbaa !165
  br label %bb.da

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit297
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.bz:                                            ; preds = %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit318
  %i.sn = load ptr, ptr %21, align 8, !tbaa !182  ; 2 uses
  %.not8.i.i319 = icmp eq ptr %i.sn, %21
  br i1 %.not8.i.i319, label %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit, label %.lr.ph.i.i320

.lr.ph.i.i320:                                    ; preds = %bb.bz, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i323
  %.09.i.i321 = phi ptr [ %i.so, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i323 ], [ %i.sn, %bb.bz ] ; 4 uses
  %i.so = load ptr, ptr %.09.i.i321, align 8, !tbaa !182 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.09.i.i321, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !164 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.09.i.i321, i64 40 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i322: ; preds = %.lr.ph.i.i320
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !165
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.su) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i323

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i323:      ; preds = %.lr.ph.i.i320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i322
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i321, i64 noundef 72) #34
  %.not.i.i324 = icmp eq ptr %i.so, %21
  br i1 %.not.i.i324, label %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit, label %.lr.ph.i.i320, !llvm.loop !2

_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit: ; preds = %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i323, %bb.bz
  store ptr %21, ptr %i.nn, align 8, !tbaa !181
  store ptr %21, ptr %21, align 8, !tbaa !182
  store i64 0, ptr %i.no, align 8, !tbaa !184
  store i64 0, ptr %i.mv, align 8, !tbaa !167
  %i.sv = load ptr, ptr %20, align 8, !tbaa !164
  store i8 0, ptr %i.sv, align 1, !tbaa !165
  %i.sw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 10 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %27, i64 17 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 10 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %28, i64 18 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %.sroa.0475.0.peel = load ptr, ptr %25, align 8, !tbaa !182 ; 3 uses
  %.not.peel = icmp eq ptr %.sroa.0475.0.peel, %25
  br i1 %.not.peel, label %.loopexit522, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit331.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit331.peel: ; preds = %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0475.0.peel, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.te, align 8, !tbaa !187
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.pre)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit333.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit333.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit331.peel
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !187
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.tg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit335.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit335.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit333.peel
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !187
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ti)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit335.peel
  %i.tj = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.tk = and i64 %i.tj, -64
  %i.tl = icmp eq i64 %i.tk, 4611686018427387840
  br i1 %i.tl, label %.loopexit523.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i338.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i338.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337.peel
  %i.tm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.482, i64 noundef 64)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i338.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  store ptr %i.sw, ptr %27, align 8, !tbaa !166
  store i8 34, ptr %i.sw, align 8, !tbaa !165
  store i64 1, ptr %i.sx, align 8, !tbaa !167
  store i8 0, ptr %i.sy, align 1, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store ptr %i.sz, ptr %28, align 8, !tbaa !166
  store i16 8738, ptr %i.sz, align 8
  store i64 2, ptr %i.ta, align 8, !tbaa !167
  store i8 0, ptr %i.tb, align 2, !tbaa !165
  invoke void @_ZN5osgeo4proj8internal10replaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cb unwind label %.loopexit.split-lp528.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  %i.tn = load i64, ptr %i.tc, align 8, !tbaa !167 ; 2 uses
  %i.to = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.tp = sub i64 4611686018427387903, %i.to
  %i.tq = icmp ult i64 %i.tp, %i.tn
  br i1 %i.tq, label %.loopexit531, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i350.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i350.peel: ; preds = %bb.cb
  %i.tr = load ptr, ptr %26, align 8, !tbaa !164
  %i.ts = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.tr, i64 noundef %i.tn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353.peel unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i350.peel
  %i.tt = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.tu = icmp eq ptr %i.tt, %i.td
  br i1 %i.tu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i355.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353.peel
  %i.tv = load i64, ptr %i.td, align 8, !tbaa !165
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i355.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353.peel
  %32 = load i64, ptr %i.tc, align 8, !tbaa !167
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i355.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354.peel
  %i.tx = load ptr, ptr %28, align 8, !tbaa !164  ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.sz
  br i1 %i.ty, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i358.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.peel
  %i.tz = load i64, ptr %i.sz, align 8, !tbaa !165
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i358.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.peel
  %34 = load i64, ptr %i.ta, align 8, !tbaa !167
  %35 = icmp ult i64 %34, 16
  call void @llvm.assume(i1 %35)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i358.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  %i.ub = load ptr, ptr %27, align 8, !tbaa !164  ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.sw
  br i1 %i.uc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i361.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.peel
  %i.ud = load i64, ptr %i.sw, align 8, !tbaa !165
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i361.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.peel
  %36 = load i64, ptr %i.sx, align 8, !tbaa !167
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i361.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.uf = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.ug = add i64 %i.uf, -4611686018427387870
  %i.uh = icmp ult i64 %i.ug, 34
  br i1 %i.uh, label %.loopexit523.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.peel
  %i.ui = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.200, i64 noundef 34)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit366.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit366.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363.peel
  invoke void @_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE9_M_insertIJRNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit366.peel
  invoke void @_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE9_M_insertIJRNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE9_M_insertIJRNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.peel.next unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %bb.cd, %bb.ck
  %.sroa.0475.0.in = phi ptr [ %.sroa.0475.0, %bb.ck ], [ %.sroa.0475.0.peel, %bb.cd ]
  %.sroa.0475.0 = load ptr, ptr %.sroa.0475.0.in, align 8, !tbaa !182 ; 3 uses
  %.not = icmp eq ptr %.sroa.0475.0, %25
  br i1 %.not, label %.loopexit522, label %bb.cg

.loopexit522:                                     ; preds = %.peel.next, %_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  %i.uj = load ptr, ptr %20, align 8, !tbaa !164, !noalias !2270
  %i.uk = load i64, ptr %i.mv, align 8, !tbaa !167, !noalias !2270 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.ul, ptr %30, align 8, !tbaa !166, !alias.scope !2271
  %i.um = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store i64 0, ptr %i.um, align 8, !tbaa !167, !alias.scope !2271
  store i8 0, ptr %i.ul, align 8, !tbaa !165, !alias.scope !2271
  %i.un = add i64 %i.uk, 47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %i.un)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.loopexit522
  %i.uo = load i64, ptr %i.um, align 8, !tbaa !167, !alias.scope !2271
  %i.up = add i64 %i.uo, -4611686018427387857
  %i.uq = icmp ult i64 %i.up, 47
  br i1 %i.uq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ce
  %i.ur = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.483, i64 noundef 47)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.cf ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.us = load i64, ptr %i.um, align 8, !tbaa !167, !alias.scope !2271
  %i.ut = sub i64 4611686018427387903, %i.us
  %i.uu = icmp ult i64 %i.ut, %i.uk
  br i1 %i.uu, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.cont.i.i unwind label %bb.cf

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.uv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.uj, i64 noundef %i.uk)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.cf ; 0 uses

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit522
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = load ptr, ptr %30, align 8, !tbaa !164, !alias.scope !2271 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.ul
  br i1 %i.uy, label %.body326, label %.body326.sink.split

bb.cg:                                            ; preds = %.peel.next
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0475.0, i64 16 ; 3 uses
  %i.va = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.vb = add i64 %i.va, -4611686018427387893
  %i.vc = icmp ult i64 %i.vb, 11
  br i1 %i.vc, label %.loopexit523.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i328

.loopexit523.invoke:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.loopexit523.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit523.cont:                                ; preds = %.loopexit523.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i328: ; preds = %bb.cg
  %i.vd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.58, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit331 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i328
  %i.ve = load ptr, ptr %i.uz, align 8, !tbaa !187
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ve)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit333 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit331
  %i.vf = load ptr, ptr %i.uz, align 8, !tbaa !187
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.vg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit335 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit333
  %i.vh = load ptr, ptr %i.uz, align 8, !tbaa !187
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.vi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit335
  %i.vj = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.vk = and i64 %i.vj, -64
  %i.vl = icmp eq i64 %i.vk, 4611686018427387840
  br i1 %i.vl, label %.loopexit523.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit337
  %i.vm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.482, i64 noundef 64)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i338
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  store ptr %i.sw, ptr %27, align 8, !tbaa !166
  store i8 34, ptr %i.sw, align 8, !tbaa !165
  store i64 1, ptr %i.sx, align 8, !tbaa !167
  store i8 0, ptr %i.sy, align 1, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store ptr %i.sz, ptr %28, align 8, !tbaa !166
  store i16 8738, ptr %i.sz, align 8
  store i64 2, ptr %i.ta, align 8, !tbaa !167
  store i8 0, ptr %i.tb, align 2, !tbaa !165
  invoke void @_ZN5osgeo4proj8internal10replaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.ci unwind label %.loopexit.split-lp528.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  %i.vn = load i64, ptr %i.tc, align 8, !tbaa !167 ; 2 uses
  %i.vo = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.vp = sub i64 4611686018427387903, %i.vo
  %i.vq = icmp ult i64 %i.vp, %i.vn
  br i1 %i.vq, label %.loopexit531, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i350

.loopexit531:                                     ; preds = %bb.ci, %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.noexc351 unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp

.noexc351:                                        ; preds = %.loopexit531
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i350: ; preds = %bb.ci
  %i.vr = load ptr, ptr %26, align 8, !tbaa !164
  %i.vs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.vr, i64 noundef %i.vn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353 unwind label %.loopexit.split-lp493.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i350
  %i.vt = load ptr, ptr %26, align 8, !tbaa !164  ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.td
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353
  %i.vv = load i64, ptr %i.td, align 8, !tbaa !165
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354
  %i.vx = load ptr, ptr %28, align 8, !tbaa !164  ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.sz
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356
  %i.vz = load i64, ptr %i.sz, align 8, !tbaa !165
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  %i.wb = load ptr, ptr %27, align 8, !tbaa !164  ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.sw
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  %i.wd = load i64, ptr %i.sw, align 8, !tbaa !165
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.wf = load i64, ptr %i.mv, align 8, !tbaa !167
  %i.wg = add i64 %i.wf, -4611686018427387870
  %i.wh = icmp ult i64 %i.wg, 34
  br i1 %i.wh, label %.loopexit523.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
end_hunk_0
