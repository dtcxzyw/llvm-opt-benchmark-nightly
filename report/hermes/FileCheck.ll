Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/FileCheck?download=true
inline.NumInlined: 1998
inline.NumDeleted: 843
begin_hunk_0_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
.thread306:                                       ; preds = %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt0, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt1, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt7, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt5, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.jt3, %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.qj = load ptr, ptr %17, align 8, !tbaa !105
  %i.qk = load ptr, ptr %i.bb, align 8, !tbaa !105
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %.thread306._crit_edge, label %bb.aj

.thread306._crit_edge:                            ; preds = %.thread306
  %.phi.trans.insert351 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre352 = load ptr, ptr %.phi.trans.insert351, align 8, !tbaa !276
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  switch i32 %.042, label %_ZN4llvh11raw_ostreamlsEc.exit [
    i32 0, label %.backedge
    i32 4, label %.backedge
  ]

.backedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.bd, ptr %6, align 8, !tbaa !80
  store i32 0, ptr %i.be, align 8, !tbaa !81
  store i32 2, ptr %i.bf, align 4, !tbaa !82
  %i.qm = load i64, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit.thread, label %.lr.ph.preheader.i, !llvm.loop !262

bb.aj:                                            ; preds = %.thread306
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.qo = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %35, i8 0, i64 24, i1 false)
  store ptr %i.qp, ptr %i.qo, align 8, !tbaa !65
  %i.qq = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 0, ptr %i.qq, align 8, !tbaa !56
  store i8 0, ptr %i.qp, align 8, !tbaa !49
  %i.qr = getelementptr inbounds nuw i8, ptr %35, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, i8 0, i64 24, i1 false)
  %i.qs = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 3 uses
  store i32 0, ptr %i.qs, align 8, !tbaa !111
  %i.qt = getelementptr inbounds nuw i8, ptr %35, i64 96 ; 2 uses
  store ptr null, ptr %i.qt, align 8, !tbaa !61
  %i.qu = getelementptr inbounds nuw i8, ptr %35, i64 104
  store ptr %i.qs, ptr %i.qu, align 8, !tbaa !83
  %i.qv = getelementptr inbounds nuw i8, ptr %35, i64 112
  store ptr %i.qs, ptr %i.qv, align 8, !tbaa !112
  %i.qw = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 0, ptr %i.qw, align 8, !tbaa !113
  %i.qx = getelementptr inbounds nuw i8, ptr %35, i64 128
  store i32 8, ptr %i.qx, align 8, !tbaa !46
  %i.qy = load ptr, ptr %0, align 8, !tbaa !98    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.qz = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  store ptr %i.qz, ptr %36, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !116 ; 7 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !117
  %.not.i142 = icmp eq ptr %i.rb, %i.rd
  br i1 %.not.i142, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.re = load ptr, ptr %i.qy, align 8, !tbaa !58
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !56
  call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.rb, ptr noundef nonnull align 8 dereferenceable(136) %35)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 136
  store ptr %i.re, ptr %i.rh, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i.i144 = getelementptr inbounds nuw i8, ptr %i.rb, i64 144
  store i64 %i.rg, ptr %.sroa.2.0..sroa_idx.i.i144, align 8, !tbaa !50
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 152
  store ptr %i.qz, ptr %i.ri, align 8, !tbaa !48
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rb, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rj, i8 0, i64 24, i1 false)
  %i.rk = load ptr, ptr %i.ra, align 8, !tbaa !116
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 184
  store ptr %i.rl, ptr %i.ra, align 8, !tbaa !116
  br label %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit

bb.al:                                            ; preds = %bb.aj
  call void @_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE17_M_realloc_insertIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.rb, ptr noundef nonnull align 8 dereferenceable(136) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.qy, ptr noundef nonnull align 8 dereferenceable(8) %36)
  br label %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit

_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.rm = getelementptr inbounds nuw i8, ptr %35, i64 80
  %i.rn = load ptr, ptr %i.qt, align 8, !tbaa !61
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.rm, ptr noundef %i.rn)
  %i.ro = load ptr, ptr %i.qr, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i146 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i.i146, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i147, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit
  %i.rp = getelementptr inbounds nuw i8, ptr %35, i64 72
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !69
  %i.rr = ptrtoint ptr %i.rq to i64
  %i.rs = ptrtoint ptr %i.ro to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef %i.rt) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i147

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i147: ; preds = %bb.am, %_ZNSt6vectorIN4llvh15FileCheckStringESaIS1_EE12emplace_backIJNS0_16FileCheckPatternERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5SMLocEEEERS1_DpOT_.exit
  %i.ru = load ptr, ptr %i.qo, align 8, !tbaa !58 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.qp
  br i1 %i.rv, label %_ZN4llvh16FileCheckPatternD2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i147
  %i.rw = load i64, ptr %i.qp, align 8, !tbaa !49
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #21
  br label %_ZN4llvh16FileCheckPatternD2Ev.exit150

_ZN4llvh16FileCheckPatternD2Ev.exit150:           ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.ry = load ptr, ptr %i.ra, align 8, !tbaa !276 ; 4 uses
  %i.rz = getelementptr inbounds i8, ptr %i.ry, i64 -24 ; 2 uses
  %i.sa = load ptr, ptr %17, align 8, !tbaa !102
  %i.sb = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.sc = load ptr, ptr %i.ba, align 8, !tbaa !104
  %i.sd = load ptr, ptr %i.rz, align 8, !tbaa !102
  store ptr %i.sd, ptr %17, align 8, !tbaa !102
  %i.se = getelementptr inbounds i8, ptr %i.ry, i64 -16 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !101
  store ptr %i.sf, ptr %i.bb, align 8, !tbaa !101
  %i.sg = getelementptr inbounds i8, ptr %i.ry, i64 -8 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !104
  store ptr %i.sh, ptr %i.ba, align 8, !tbaa !104
  store ptr %i.sa, ptr %i.rz, align 8, !tbaa !102
  store ptr %i.sb, ptr %i.se, align 8, !tbaa !101
  store ptr %i.sc, ptr %i.sg, align 8, !tbaa !104
  br label %bb.an

bb.an:                                            ; preds = %.thread306._crit_edge, %_ZN4llvh16FileCheckPatternD2Ev.exit150
  %i.si = phi ptr [ %.pre352, %.thread306._crit_edge ], [ %i.ry, %_ZN4llvh16FileCheckPatternD2Ev.exit150 ]
  %i.sj = load ptr, ptr %5, align 8, !tbaa !276
  %i.sk = icmp eq ptr %i.sj, %i.si
  br i1 %i.sk, label %bb.ao, label %_ZN4llvh11raw_ostreamlsEc.exit

bb.ao:                                            ; preds = %bb.an
  %i.sl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !90
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 24 ; 3 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !91 ; 2 uses
  %i.sq = ptrtoint ptr %i.sn to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = icmp ult i64 %i.ss, 41
  br i1 %i.st, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.su = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.sl, ptr noundef nonnull @.str.41, i64 noundef 41) #18 ; 2 uses
  %.phi.trans.insert353 = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %.pre354 = load ptr, ptr %.phi.trans.insert353, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.sp, ptr noundef nonnull align 1 dereferenceable(41) @.str.41, i64 41, i1 false)
  %i.sv = load ptr, ptr %i.so, align 8, !tbaa !91
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 41 ; 2 uses
  store ptr %i.sw, ptr %i.so, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.ap, %bb.aq
  %i.sx = phi ptr [ %.pre354, %bb.ap ], [ %i.sw, %bb.aq ] ; 2 uses
  %.0.i.i151 = phi ptr [ %i.su, %bb.ap ], [ %i.sl, %bb.aq ] ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !118
  %i.ta = load ptr, ptr %0, align 8, !tbaa !119
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = icmp ugt i64 %i.td, 32                  ; 2 uses
  %i.tf = select i1 %i.te, ptr @.str.42, ptr @.str.43 ; 2 uses
  %i.tg = select i1 %i.te, i64 3, i64 1           ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.0.i.i151, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !90
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = ptrtoint ptr %i.sx to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = icmp ugt i64 %i.tg, %i.tl
  br i1 %i.tm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.tn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i151, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit155

bb.as:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.to = getelementptr inbounds nuw i8, ptr %.0.i.i151, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sx, ptr noundef nonnull align 1 dereferenceable(1) %i.tf, i64 %i.tg, i1 false)
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !91
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 %i.tg
  store ptr %i.tq, ptr %i.to, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit155

_ZN4llvh11raw_ostreamlsEPKc.exit155:              ; preds = %bb.ar, %bb.as
  %i.tr = load ptr, ptr %0, align 8, !tbaa !98    ; 4 uses
  %i.ts = load ptr, ptr %i.sy, align 8, !tbaa !98 ; 3 uses
  %.not312 = icmp eq ptr %i.tr, %i.ts
  br i1 %.not312, label %._crit_edge323, label %bb.at

bb.at:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit155
  %i.tt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !90
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 24 ; 3 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !91 ; 2 uses
  %i.ty = icmp eq ptr %i.tv, %i.tx
  br i1 %i.ty, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.tz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.tt, ptr noundef nonnull @.str.27, i64 noundef 1) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit158

bb.av:                                            ; preds = %bb.at
  store i8 39, ptr %i.tx, align 1
  %i.ua = load ptr, ptr %i.tw, align 8, !tbaa !91
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  store ptr %i.ub, ptr %i.tw, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit158

_ZN4llvh11raw_ostreamlsEPKc.exit158:              ; preds = %bb.au, %bb.av
  %.0.i.i157 = phi ptr [ %i.tz, %bb.au ], [ %i.tt, %bb.av ]
  %i.uc = load ptr, ptr %i.tr, align 8, !tbaa !58
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !56
  %i.uf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i157, ptr noundef %i.uc, i64 noundef %i.ue) #18 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !90
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 24 ; 3 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !91 ; 2 uses
  %i.uk = ptrtoint ptr %i.uh to i64
  %i.ul = ptrtoint ptr %i.uj to i64
  %i.um = sub i64 %i.uk, %i.ul
  %i.un = icmp ult i64 %i.um, 2
  br i1 %i.un, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit158
  %i.uo = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.uf, ptr noundef nonnull @.str.1, i64 noundef 2) #18 ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit158
  store i16 10042, ptr %i.uj, align 1
  %i.up = load ptr, ptr %i.ui, align 8, !tbaa !91
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  store ptr %i.uq, ptr %i.ui, align 8, !tbaa !91
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %37 = getelementptr inbounds nuw i8, ptr %i.tr, i64 32 ; 2 uses
  %.not313320 = icmp eq ptr %37, %i.ts
  br i1 %.not313320, label %._crit_edge323, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ay, %_ZN4llvh11raw_ostreamlsEPKc.exit167
  %.sroa.0186.1321 = phi ptr [ %i.vs, %_ZN4llvh11raw_ostreamlsEPKc.exit167 ], [ %37, %bb.ay ] ; 3 uses
  %i.ur = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !90
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 24 ; 3 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !91 ; 2 uses
  %i.uw = ptrtoint ptr %i.ut to i64
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = icmp ult i64 %i.uy, 3
  br i1 %i.uz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph
  %i.va = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ur, ptr noundef nonnull @.str.44, i64 noundef 3) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit164

bb.ba:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.uv, ptr noundef nonnull align 1 dereferenceable(3) @.str.44, i64 3, i1 false)
  %i.vb = load ptr, ptr %i.uu, align 8, !tbaa !91
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 3
  store ptr %i.vc, ptr %i.uu, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit164

_ZN4llvh11raw_ostreamlsEPKc.exit164:              ; preds = %bb.az, %bb.ba
  %.0.i.i163 = phi ptr [ %i.va, %bb.az ], [ %i.ur, %bb.ba ]
  %i.vd = load ptr, ptr %.sroa.0186.1321, align 8, !tbaa !58
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0186.1321, i64 8
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !56
  %i.vg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i163, ptr noundef %i.vd, i64 noundef %i.vf) #18 ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !90
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 24 ; 3 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !91 ; 2 uses
  %i.vl = ptrtoint ptr %i.vi to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = icmp ult i64 %i.vn, 2
  br i1 %i.vo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit164
  %i.vp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.vg, ptr noundef nonnull @.str.1, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit167

bb.bc:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit164
  store i16 10042, ptr %i.vk, align 1
  %i.vq = load ptr, ptr %i.vj, align 8, !tbaa !91
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  store ptr %i.vr, ptr %i.vj, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit167

_ZN4llvh11raw_ostreamlsEPKc.exit167:              ; preds = %bb.bb, %bb.bc
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0186.1321, i64 32 ; 2 uses
  %.not313 = icmp eq ptr %i.vs, %i.ts
  br i1 %.not313, label %._crit_edge323, label %.lr.ph, !llvm.loop !263

._crit_edge323:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit167, %_ZN4llvh11raw_ostreamlsEPKc.exit155, %bb.ay
  %i.vt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24 ; 2 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !91 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !90
  %.not.i168 = icmp ult ptr %i.vv, %i.vx
  br i1 %.not.i168, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge323
  %i.vy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.vt, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.be:                                            ; preds = %._crit_edge323
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  store ptr %i.vz, ptr %i.vu, align 8, !tbaa !91
  store i8 10, ptr %i.vv, align 1, !tbaa !49
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, %bb.be, %bb.bd, %.thread309, %bb.an
  %.4 = phi i1 [ true, %bb.be ], [ true, %.thread309 ], [ false, %bb.an ], [ true, %bb.bd ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140 ]
  %i.wa = load ptr, ptr %17, align 8, !tbaa !102  ; 3 uses
  %i.wb = load ptr, ptr %i.bb, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wa, %i.wb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ws, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i ], [ %i.wa, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 7 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.wd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !61
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.wc, ptr noundef %i.we)
  %i.wf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.wh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !69
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.wg to i64
  %i.wl = sub i64 %i.wj, %i.wk
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.wl) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.wm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !58 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !49
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.ws, %i.wb
  br i1 %.not.i.i.i170, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, %_ZN4llvh11raw_ostreamlsEc.exit
  %i.wt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i ], [ %i.wa, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i
  %i.wu = load ptr, ptr %i.ba, align 8, !tbaa !104
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.wt to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wx) #21
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.wy = load ptr, ptr %9, align 8, !tbaa !102   ; 3 uses
  %i.wz = load ptr, ptr %i.bc, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i171 = icmp eq ptr %i.wy, %i.wz
  br i1 %.not4.i.i.i171, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177
  %.05.i.i.i173 = phi ptr [ %i.xq, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177 ], [ %i.wy, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit ] ; 7 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 80
  %i.xb = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 96
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !61
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.xa, ptr noundef %i.xc)
  %i.xd = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 56
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i174 = icmp eq ptr %i.xe, null
  br i1 %.not.i.i.i.i.i.i.i.i174, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i172
  %i.xf = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 72
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !69
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %i.xe to i64
  %i.xj = sub i64 %i.xh, %i.xi
  call void @_ZdlPvm(ptr noundef nonnull %i.xe, i64 noundef %i.xj) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175: ; preds = %bb.bh, %.lr.ph.i.i.i172
  %i.xk = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !58 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 40 ; 2 uses
  %i.xn = icmp eq ptr %i.xl, %i.xm
  br i1 %i.xn, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i176: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175
  %i.xo = load i64, ptr %i.xm, align 8, !tbaa !49
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xp) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i176
  %i.xq = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 136 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.xq, %i.wz
  br i1 %.not.i.i.i178, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179, label %.lr.ph.i.i.i172, !llvm.loop !2

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177
  %.pr.i180 = load ptr, ptr %9, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit
  %i.xr = phi ptr [ %.pr.i180, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179 ], [ %i.wy, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i182 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i1.i182, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit184, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181
  %i.xs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !104
  %i.xu = ptrtoint ptr %i.xt to i64
  %i.xv = ptrtoint ptr %i.xr to i64
  %i.xw = sub i64 %i.xu, %i.xv
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.xw) #21
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit184

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit184: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i1 %.4
}

declare void @_ZN4llvh12MemoryBuffer16getMemBufferCopyENS_9StringRefERKNS_5TwineE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !102    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 136
  %i.o = icmp ugt i64 %i.n, 67818912035696880
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i, !prof !103

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.04.08.i.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 136
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.b
end_hunk_0
