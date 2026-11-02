Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/cache_simulator?download=true
inline.NumInlined: 1250
inline.NumDeleted: 623
begin_hunk_0_@_ZN7rocksdb24BlockCacheTraceSimulator16InitializeCachesEv:bb.a
  br i1 %i.yv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i287, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i272

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i272: ; preds = %.lr.ph.i.i.i.i
  %i.yw = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %i.yx = load ptr, ptr %i.ys, align 8, !tbaa !54
  %i.yy = call i32 @memcmp(ptr noundef %i.yx, ptr noundef %i.yw, i64 noundef %.sroa.speculated.i.i.i271) #22 ; 2 uses
  %.not.i.i.i273 = icmp eq i32 %i.yy, 0
  br i1 %.not.i.i.i273, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i287, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i287: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i272, %.lr.ph.i.i.i.i
  %i.yz = sub i64 %i.yu, %i.yq
  %spec.select7.i.i.i.i288 = call i64 @llvm.smax.i64(i64 %i.yz, i64 -2147483648)
  %.08.i.i.i.i289 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i288, i64 2147483647)
  %.0.i6.i.i.i290 = trunc nsw i64 %.08.i.i.i.i289 to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i287, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i272
  %.0.i.i.i275 = phi i32 [ %i.yy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i272 ], [ %.0.i6.i.i.i290, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i287 ]
  %i.za = icmp slt i32 %.0.i.i.i275, 0
  br i1 %i.za, label %.thread337, label %bb.hi

bb.hi:                                            ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274
  %i.zb = icmp eq i64 %i.yu, %i.yq
  br i1 %i.zb, label %bb.hj, label %.thread337

bb.hj:                                            ; preds = %bb.hi
  br i1 %i.yr, label %.thread12.i286, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276: ; preds = %bb.hj
  %i.zc = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %i.zd = load ptr, ptr %i.ys, align 8, !tbaa !54
  %bcmp.i.i277 = call i32 @bcmp(ptr %i.zd, ptr %i.zc, i64 %i.yq)
  %i.ze = icmp eq i32 %bcmp.i.i277, 0
  br i1 %i.ze, label %bb.hk, label %.thread337

bb.hk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276
  %i.zf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !122 ; 2 uses
  %i.zh = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.zi = icmp ult i32 %i.zg, %i.zh
  br i1 %i.zi, label %.thread337, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285

.thread12.i286:                                   ; preds = %bb.hj
  %i.zj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !122 ; 2 uses
  %i.zl = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.zm = icmp ult i32 %i.zk, %i.zl
  br i1 %i.zm, label %.thread337, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285: ; preds = %bb.hk, %.thread12.i286
  %i.zn = phi i32 [ %i.zl, %.thread12.i286 ], [ %i.zh, %bb.hk ]
  %i.zo = phi i32 [ %i.zk, %.thread12.i286 ], [ %i.zg, %bb.hk ]
  %i.zp = icmp eq i32 %i.zo, %i.zn
  br i1 %i.zp, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291, label %.thread337

_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285
  %i.zq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !118
  %i.zs = load i64, ptr %i.ci, align 8, !tbaa !118
  %i.zt = icmp ult i64 %i.zr, %i.zs
  %cond.fr = freeze i1 %i.zt                      ; 2 uses
  %spec.select = select i1 %cond.fr, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %spec.select347 = select i1 %cond.fr, i64 24, i64 16
  br label %.thread337

.thread337:                                       ; preds = %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291, %.thread12.i286, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274, %bb.hk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285, %bb.hi
  %i.zu = phi ptr [ %.012.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285 ], [ %spec.select, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291 ], [ %.012.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276 ], [ %.012.i.i.i.i, %bb.hi ], [ %.0811.i.i.i.i, %bb.hk ], [ %.0811.i.i.i.i, %.thread12.i286 ], [ %.0811.i.i.i.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274 ] ; 16 uses
  %i.zv = phi i64 [ 16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285 ], [ %spec.select347, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291 ], [ 16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276 ], [ 16, %bb.hi ], [ 24, %bb.hk ], [ 24, %.thread12.i286 ], [ 24, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274 ]
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %i.zv
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i198 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i198, label %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !186

_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i: ; preds = %.thread337
  %i.zw = icmp eq ptr %i.zu, %i.cb
  br i1 %i.zw, label %.critedge.i, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 32 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !55 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.zz, i64 %i.yq) ; 2 uses
  %i.aaa = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.aaa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.hl
  %i.aab = load ptr, ptr %i.zx, align 8, !tbaa !54
  %i.aac = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %i.aad = call i32 @memcmp(ptr noundef %i.aac, ptr noundef %i.aab, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i268 = icmp eq i32 %i.aad, 0
  br i1 %.not.i.i.i268, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.hl
  %i.aae = sub i64 %i.yq, %i.zz
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aae, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.aad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.aaf = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.aaf, label %.critedge.i, label %bb.hm

bb.hm:                                            ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i
  %i.aag = icmp eq i64 %i.yq, %i.zz
  br i1 %i.aag, label %bb.hn, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

bb.hn:                                            ; preds = %bb.hm
  %i.aah = icmp eq i64 %i.yq, 0
  br i1 %i.aah, label %.thread12.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.hn
  %i.aai = load ptr, ptr %i.zx, align 8, !tbaa !54
  %i.aaj = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %bcmp.i.i269 = call i32 @bcmp(ptr %i.aaj, ptr %i.aai, i64 %i.yq)
  %i.aak = icmp eq i32 %bcmp.i.i269, 0
  br i1 %i.aak, label %bb.ho, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

bb.ho:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.aal = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zu, i64 64
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !122 ; 2 uses
  %i.aao = icmp ult i32 %i.aal, %i.aan
  br i1 %i.aao, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i

.thread12.i:                                      ; preds = %bb.hn
  %i.aap = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zu, i64 64
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !122 ; 2 uses
  %i.aas = icmp ult i32 %i.aap, %i.aar
  br i1 %i.aas, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i: ; preds = %bb.ho, %.thread12.i
  %i.aat = phi i32 [ %i.aar, %.thread12.i ], [ %i.aan, %bb.ho ]
  %i.aau = phi i32 [ %i.aap, %.thread12.i ], [ %i.aal, %bb.ho ]
  %i.aav = icmp eq i32 %i.aau, %i.aat
  br i1 %i.aav, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

_ZNK7rocksdb18CacheConfigurationltERKS0_.exit:    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i
  %i.aaw = load i64, ptr %i.ci, align 8, !tbaa !118
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zu, i64 72
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !118
  %i.aaz = icmp ult i64 %i.aaw, %i.aay
  br i1 %i.aaz, label %.critedge.i, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

.critedge.i:                                      ; preds = %.thread12.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i, %bb.ho, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit, %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.hh
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.zu, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit ], [ %i.zu, %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ %i.cb, %bb.hh ], [ %i.zu, %bb.ho ], [ %i.zu, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i ], [ %i.zu, %.thread12.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %.sroa.0318.0454, ptr %6, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aba = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb18CacheConfigurationESt4pairIKS1_St6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS7_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc199 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp

.noexc199:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342: ; preds = %bb.hm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.noexc199, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit
  %.sroa.06.0.i = phi ptr [ %i.aba, %.noexc199 ], [ %i.zu, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit ], [ %i.zu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.zu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i ], [ %i.zu, %bb.hm ] ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 112 ; 4 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !126 ; 7 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 120 ; 3 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !127
  %.not.i200 = icmp eq ptr %i.abd, %i.abf
  br i1 %.not.i200, label %bb.ht, label %bb.hp

bb.hp:                                            ; preds = %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342
  %i.abg = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.abh = load <2 x ptr>, ptr %19, align 16, !tbaa !19
  store <2 x ptr> %i.abh, ptr %i.abd, align 8, !tbaa !19
  %.not.i.i.i.i.i201 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i.i.i201, label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 3 uses
  %i.abj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i202 = icmp eq i8 %i.abj, 0
  br i1 %.not.i.i.i.i.i.i202, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.abk = load i32, ptr %i.abi, align 4, !tbaa !21
  %i.abl = add nsw i32 %i.abk, 1
  store i32 %i.abl, ptr %i.abi, align 4, !tbaa !21
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.hs:                                            ; preds = %bb.hq
  %i.abm = atomicrmw volatile add ptr %i.abi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i203 = load ptr, ptr %i.abc, align 8, !tbaa !126
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.hs, %bb.hr, %bb.hp
  %i.abn = phi ptr [ %i.abd, %bb.hp ], [ %i.abd, %bb.hr ], [ %.pre.i203, %bb.hs ]
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  store ptr %i.abo, ptr %i.abc, align 8, !tbaa !126
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit

bb.ht:                                            ; preds = %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342
  %i.abp = load ptr, ptr %i.abb, align 8, !tbaa !128 ; 13 uses
  %i.abq = ptrtoint ptr %i.abd to i64             ; 2 uses
  %i.abr = ptrtoint ptr %i.abp to i64             ; 3 uses
  %i.abs = sub i64 %i.abq, %i.abr                 ; 3 uses
  %i.abt = icmp eq i64 %i.abs, 9223372036854775792
  br i1 %i.abt, label %bb.hu, label %_ZNKSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
          to label %.noexc300 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp

.noexc300:                                        ; preds = %bb.hu
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ht
  %i.abu = ashr exact i64 %i.abs, 4               ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.abu, i64 1)
  %i.abv = add nsw i64 %.sroa.speculated.i.i, %i.abu ; 2 uses
  %i.abw = icmp ult i64 %i.abv, %i.abu
  %i.abx = call i64 @llvm.umin.i64(i64 %i.abv, i64 576460752303423487)
  %i.aby = select i1 %i.abw, i64 576460752303423487, i64 %i.abx ; 3 uses
  %.not.i.i292 = icmp ne i64 %i.aby, 0
  call void @llvm.assume(i1 %.not.i.i292)
  %i.abz = shl nuw nsw i64 %i.aby, 4
  %i.aca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abz) #24
          to label %.noexc301 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ; 13 uses

.noexc301:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.abs
  %i.acc = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.acd = load <2 x ptr>, ptr %19, align 16, !tbaa !19
  store <2 x ptr> %i.acd, ptr %i.acb, align 8, !tbaa !19
  %.not.i.i.i.i.i293 = icmp eq ptr %i.acc, null
  br i1 %.not.i.i.i.i.i293, label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295, label %bb.hv

bb.hv:                                            ; preds = %.noexc301
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 8 ; 3 uses
  %i.acf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i294 = icmp eq i8 %i.acf, 0
  br i1 %.not.i.i.i.i.i.i294, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.acg = load i32, ptr %i.ace, align 4, !tbaa !21
  %i.ach = add nsw i32 %i.acg, 1
  store i32 %i.ach, ptr %i.ace, align 4, !tbaa !21
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295

bb.hx:                                            ; preds = %bb.hv
  %i.aci = atomicrmw volatile add ptr %i.ace, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295

_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295: ; preds = %bb.hx, %bb.hw, %.noexc301
  %.not10.i.i.i.i296 = icmp eq ptr %i.abp, %i.abd
  br i1 %.not10.i.i.i.i296, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i297.preheader

.lr.ph.i.i.i.i297.preheader:                      ; preds = %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295
  %i.acj = add i64 %i.abq, -16
  %i.ack = sub i64 %i.acj, %i.abr                 ; 3 uses
  %i.acl = lshr i64 %i.ack, 4
  %i.acm = add nuw nsw i64 %i.acl, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ack, 112
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i297.preheader733, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i297.preheader
  %i.acn = and i64 %i.ack, -16                    ; 2 uses
  %i.aco = or disjoint i64 %i.acn, 8              ; 2 uses
  %i.acp = getelementptr i8, ptr %i.aca, i64 %i.aco
  %i.acq = getelementptr i8, ptr %i.abp, i64 %i.aco
  %i.acr = getelementptr i8, ptr %i.abp, i64 8
  %i.acs = add i64 %i.acn, 16                     ; 2 uses
  %i.act = getelementptr i8, ptr %i.abp, i64 %i.acs
  %i.acu = getelementptr i8, ptr %i.aca, i64 8
  %i.acv = getelementptr i8, ptr %i.aca, i64 %i.acs
  %bound0 = icmp ult ptr %i.aca, %i.acq
  %bound1 = icmp ult ptr %i.abp, %i.acp
  %found.conflict = and i1 %bound0, %bound1
  %bound0727 = icmp ult ptr %i.acr, %i.acv
  %bound1728 = icmp ult ptr %i.acu, %i.act
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx = or i1 %found.conflict, %found.conflict729
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i297.preheader733, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.acm, 2305843009213693948    ; 3 uses
  %i.acw = shl i64 %n.vec, 4                      ; 2 uses
  %i.acx = getelementptr i8, ptr %i.aca, i64 %i.acw ; 2 uses
  %i.acy = getelementptr i8, ptr %i.abp, i64 %i.acw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.acz = shl i64 %index, 4                      ; 3 uses
  %36 = or disjoint i64 %i.acz, 32                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aca, i64 %i.acz
  %next.gep730 = getelementptr i8, ptr %i.aca, i64 %36
  %next.gep.a = getelementptr i8, ptr %i.abp, i64 %i.acz ; 2 uses
  %next.gep730.a = getelementptr i8, ptr %i.abp, i64 %36 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %wide.vec = load <4 x ptr>, ptr %next.gep.a, align 8, !tbaa !19, !alias.scope !222
  %wide.vec734 = load <4 x ptr>, ptr %next.gep730.a, align 8, !tbaa !19, !alias.scope !222
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !19, !alias.scope !221
  store <4 x ptr> %wide.vec734, ptr %next.gep730, align 8, !tbaa !19, !alias.scope !221
  store <4 x ptr> splat (ptr null), ptr %next.gep.a, align 8, !tbaa !19, !alias.scope !222
  store <4 x ptr> splat (ptr null), ptr %next.gep730.a, align 8, !tbaa !19, !alias.scope !222
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ada = icmp eq i64 %index.next, %n.vec
  br i1 %i.ada, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i297.preheader733

.lr.ph.i.i.i.i297.preheader733:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i297.preheader, %middle.block
  %.012.i.i.i.i298.ph = phi ptr [ %i.aca, %vector.memcheck ], [ %i.aca, %.lr.ph.i.i.i.i297.preheader ], [ %i.acx, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.abp, %vector.memcheck ], [ %i.abp, %.lr.ph.i.i.i.i297.preheader ], [ %i.acy, %middle.block ]
  br label %.lr.ph.i.i.i.i297

.lr.ph.i.i.i.i297:                                ; preds = %.lr.ph.i.i.i.i297.preheader733, %.lr.ph.i.i.i.i297
  %.012.i.i.i.i298 = phi ptr [ %i.ade, %.lr.ph.i.i.i.i297 ], [ %.012.i.i.i.i298.ph, %.lr.ph.i.i.i.i297.preheader733 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.add, %.lr.ph.i.i.i.i297 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i297.preheader733 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.adb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.adc = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !222
  store ptr null, ptr %i.adb, align 8, !tbaa !18, !alias.scope !222
  store <2 x ptr> %i.adc, ptr %.012.i.i.i.i298, align 8, !tbaa !19, !alias.scope !221
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !130, !alias.scope !222
  %i.add = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i298, i64 16 ; 2 uses
  %.not.i.i.i.i299 = icmp eq ptr %i.add, %i.abd
  br i1 %.not.i.i.i.i299, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i297, !llvm.loop !191

_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i297, %middle.block, %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aca, %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295 ], [ %i.acx, %middle.block ], [ %i.ade, %.lr.ph.i.i.i.i297 ]
  %i.adf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.abp, null
  br i1 %.not.i23.i, label %.noexc204, label %bb.hy

bb.hy:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.adg = load ptr, ptr %i.abe, align 8, !tbaa !127
  %i.adh = ptrtoint ptr %i.adg to i64
  %i.adi = sub i64 %i.adh, %i.abr
  call void @_ZdlPvm(ptr noundef nonnull %i.abp, i64 noundef %i.adi) #23
  br label %.noexc204

.noexc204:                                        ; preds = %bb.hy, %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.aca, ptr %i.abb, align 8, !tbaa !128
  store ptr %i.adf, ptr %i.abc, align 8, !tbaa !126
  %i.adj = getelementptr inbounds nuw [16 x i8], ptr %i.aca, i64 %i.aby
  store ptr %i.adj, ptr %i.abe, align 8, !tbaa !127
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc204, %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.adk = load ptr, ptr %21, align 8, !tbaa !54  ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.g
  br i1 %i.adl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit
  %i.adm = load i64, ptr %i.g, align 8, !tbaa !20
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.adn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.ado = load ptr, ptr %20, align 8, !tbaa !43  ; 3 uses
  %.not.i208 = icmp eq ptr %i.ado, null
  br i1 %.not.i208, label %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i209 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i.i.i.i209, label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8 ; 4 uses
  %i.ads = load atomic i64, ptr %i.adr acquire, align 8 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, 4294967297
  %i.adu = trunc i64 %i.ads to i32                ; 2 uses
  br i1 %i.adt, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  store i32 0, ptr %i.adr, align 8, !tbaa !120
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adq, i64 12
  store i32 0, ptr %i.adv, align 4, !tbaa !121
  %i.adw = load ptr, ptr %i.adq, align 8, !tbaa !26
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.ady = load ptr, ptr %i.adx, align 8
  call void %i.ady(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #22, !inline_history !4
  %i.adz = load ptr, ptr %i.adq, align 8, !tbaa !26
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8
  call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #22, !inline_history !4
  br label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213

bb.ic:                                            ; preds = %bb.ia
  %i.aec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i210 = icmp eq i8 %i.aec, 0
  br i1 %.not.i.i.i.i.i.i210, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aed = add nsw i32 %i.adu, -1
  store i32 %i.aed, ptr %i.adr, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211

bb.ie:                                            ; preds = %bb.ic
  %i.aee = atomicrmw volatile add ptr %i.adr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211: ; preds = %bb.ie, %bb.id
  %.0.i.i.i.i.i.i.i212 = phi i32 [ %i.adu, %bb.id ], [ %i.aee, %bb.ie ]
  %i.aef = icmp eq i32 %.0.i.i.i.i.i.i.i212, 1
  br i1 %i.aef, label %bb.if, label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213, !prof !110

bb.if:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #22
  br label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213

_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213: ; preds = %bb.if, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211, %bb.ib, %bb.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.ado, i64 noundef 16) #23
  br label %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214

_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.aeg = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 8 uses
  %.not.i.i215 = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i215, label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, label %bb.ig

bb.ig:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8 ; 4 uses
  %i.aei = load atomic i64, ptr %i.aeh acquire, align 8 ; 2 uses
  %i.aej = icmp eq i64 %i.aei, 4294967297
  %i.aek = trunc i64 %i.aei to i32                ; 2 uses
  br i1 %i.aej, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  store i32 0, ptr %i.aeh, align 8, !tbaa !120
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12
  store i32 0, ptr %i.ael, align 4, !tbaa !121
  %i.aem = load ptr, ptr %i.aeg, align 8, !tbaa !26
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8
  call void %i.aeo(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #22, !inline_history !185
  %i.aep = load ptr, ptr %i.aeg, align 8, !tbaa !26
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %i.aer = load ptr, ptr %i.aeq, align 8
  call void %i.aer(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #22, !inline_history !185
  br label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

bb.ii:                                            ; preds = %bb.ig
  %i.aes = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i216 = icmp eq i8 %i.aes, 0
  br i1 %.not.i.i.i216, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aet = add nsw i32 %i.aek, -1
  store i32 %i.aet, ptr %i.aeh, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

bb.ik:                                            ; preds = %bb.ii
  %i.aeu = atomicrmw volatile add ptr %i.aeh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217: ; preds = %bb.ik, %bb.ij
  %.0.i.i.i.i218 = phi i32 [ %i.aek, %bb.ij ], [ %i.aeu, %bb.ik ]
  %i.aev = icmp eq i32 %.0.i.i.i.i218, 1
  br i1 %i.aev, label %bb.il, label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, !prof !110

bb.il:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #22
  br label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219: ; preds = %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214, %bb.ih, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.0314.0453, i64 8 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.cf
  br i1 %i.aex, label %.thread343, label %bb.c

bb.im:                                            ; preds = %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %.body154, %.body126, %.body98, %.body72, %.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp
  %.pn52 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn50, %.body72 ], [ %.pn48, %.body98 ], [ %.pn46, %.body126 ], [ %.pn44, %.body154 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %lpad.loopexit.split-lp738, %.loopexit.split-lp354.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aey = load ptr, ptr %21, align 8, !tbaa !54  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.g
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.im
  %i.afa = load i64, ptr %i.g, align 8, !tbaa !20
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.im, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %lpad.loopexit.split-lp734, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn52, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  resume { ptr, i32 } %.pn52.pn

bb.in:                                            ; preds = %bb.he, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i192, %bb.ha, %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.io

end_hunk_0
