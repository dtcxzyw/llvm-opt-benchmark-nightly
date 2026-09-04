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
  br i1 %i.za, label %.thread337, label %bb.hj

bb.hj:                                            ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274
  %i.zb = icmp eq i64 %i.yu, %i.yq
  br i1 %i.zb, label %bb.hk, label %.thread337

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.yr, label %.thread12.i286, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276: ; preds = %bb.hk
  %i.zc = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %i.zd = load ptr, ptr %i.ys, align 8, !tbaa !54
  %bcmp.i.i277 = call i32 @bcmp(ptr %i.zd, ptr %i.zc, i64 %i.yq)
  %i.ze = icmp eq i32 %bcmp.i.i277, 0
  br i1 %i.ze, label %bb.hl, label %.thread337

bb.hl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276
  %i.zf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !122 ; 2 uses
  %i.zh = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.zi = icmp ult i32 %i.zg, %i.zh
  br i1 %i.zi, label %.thread337, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285

.thread12.i286:                                   ; preds = %bb.hk
  %i.zj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !122 ; 2 uses
  %i.zl = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.zm = icmp ult i32 %i.zk, %i.zl
  br i1 %i.zm, label %.thread337, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285: ; preds = %bb.hl, %.thread12.i286
  %i.zn = phi i32 [ %i.zl, %.thread12.i286 ], [ %i.zh, %bb.hl ]
  %i.zo = phi i32 [ %i.zk, %.thread12.i286 ], [ %i.zg, %bb.hl ]
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

.thread337:                                       ; preds = %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291, %.thread12.i286, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274, %bb.hl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285, %bb.hj
  %i.zu = phi ptr [ %.012.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285 ], [ %spec.select, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291 ], [ %.012.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276 ], [ %.012.i.i.i.i, %bb.hj ], [ %.0811.i.i.i.i, %bb.hl ], [ %.0811.i.i.i.i, %.thread12.i286 ], [ %.0811.i.i.i.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274 ] ; 16 uses
  %i.zv = phi i64 [ 16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i285 ], [ %spec.select347, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit291 ], [ 16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i276 ], [ 16, %bb.hj ], [ 24, %bb.hl ], [ 24, %.thread12.i286 ], [ 24, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i274 ]
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %i.zv
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i198 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i198, label %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !186

_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i: ; preds = %.thread337
  %i.zw = icmp eq ptr %i.zu, %i.cb
  br i1 %i.zw, label %.critedge.i, label %bb.hm

bb.hm:                                            ; preds = %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 32 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !55 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.zz, i64 %i.yq) ; 2 uses
  %i.aaa = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.aaa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.hm
  %i.aab = load ptr, ptr %i.zx, align 8, !tbaa !54
  %i.aac = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %i.aad = call i32 @memcmp(ptr noundef %i.aac, ptr noundef %i.aab, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i268 = icmp eq i32 %i.aad, 0
  br i1 %.not.i.i.i268, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.hm
  %i.aae = sub i64 %i.yq, %i.zz
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aae, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.aad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.aaf = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.aaf, label %.critedge.i, label %bb.hn

bb.hn:                                            ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i
  %i.aag = icmp eq i64 %i.yq, %i.zz
  br i1 %i.aag, label %bb.ho, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

bb.ho:                                            ; preds = %bb.hn
  %i.aah = icmp eq i64 %i.yq, 0
  br i1 %i.aah, label %.thread12.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ho
  %i.aai = load ptr, ptr %i.zx, align 8, !tbaa !54
  %i.aaj = load ptr, ptr %.sroa.0318.0454, align 8, !tbaa !54
  %bcmp.i.i269 = call i32 @bcmp(ptr %i.aaj, ptr %i.aai, i64 %i.yq)
  %i.aak = icmp eq i32 %bcmp.i.i269, 0
  br i1 %i.aak, label %bb.hp, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

bb.hp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.aal = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zu, i64 64
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !122 ; 2 uses
  %i.aao = icmp ult i32 %i.aal, %i.aan
  br i1 %i.aao, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i

.thread12.i:                                      ; preds = %bb.ho
  %i.aap = load i32, ptr %i.cj, align 8, !tbaa !122 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zu, i64 64
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !122 ; 2 uses
  %i.aas = icmp ult i32 %i.aap, %i.aar
  br i1 %i.aas, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i: ; preds = %bb.hp, %.thread12.i
  %i.aat = phi i32 [ %i.aar, %.thread12.i ], [ %i.aan, %bb.hp ]
  %i.aau = phi i32 [ %i.aap, %.thread12.i ], [ %i.aal, %bb.hp ]
  %i.aav = icmp eq i32 %i.aau, %i.aat
  br i1 %i.aav, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

_ZNK7rocksdb18CacheConfigurationltERKS0_.exit:    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i
  %i.aaw = load i64, ptr %i.ci, align 8, !tbaa !118
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zu, i64 72
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !118
  %i.aaz = icmp ult i64 %i.aaw, %i.aay
  br i1 %i.aaz, label %.critedge.i, label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

.critedge.i:                                      ; preds = %.thread12.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i, %bb.hp, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit, %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.hi
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.zu, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit ], [ %i.zu, %_ZNSt3mapIN7rocksdb18CacheConfigurationESt6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS5_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ %i.cb, %bb.hi ], [ %i.zu, %bb.hp ], [ %i.zu, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i ], [ %i.zu, %.thread12.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %.sroa.0318.0454, ptr %6, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aba = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb18CacheConfigurationESt4pairIKS1_St6vectorISt10shared_ptrINS0_14CacheSimulatorEESaIS7_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc199 unwind label %.loopexit348

.noexc199:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342

_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342: ; preds = %bb.hn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.noexc199, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit
  %.sroa.06.0.i = phi ptr [ %i.aba, %.noexc199 ], [ %i.zu, %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit ], [ %i.zu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.zu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9.thread.i ], [ %i.zu, %bb.hn ] ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 112 ; 4 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !126 ; 7 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 120 ; 3 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !127
  %.not.i200 = icmp eq ptr %i.abd, %i.abf
  br i1 %.not.i200, label %bb.hu, label %bb.hq

bb.hq:                                            ; preds = %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342
  %i.abg = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.abh = load <2 x ptr>, ptr %19, align 16, !tbaa !19
  store <2 x ptr> %i.abh, ptr %i.abd, align 8, !tbaa !19
  %.not.i.i.i.i.i201 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i.i.i201, label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 3 uses
  %i.abj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i202 = icmp eq i8 %i.abj, 0
  br i1 %.not.i.i.i.i.i.i202, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.abk = load i32, ptr %i.abi, align 4, !tbaa !21
  %i.abl = add nsw i32 %i.abk, 1
  store i32 %i.abl, ptr %i.abi, align 4, !tbaa !21
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.ht:                                            ; preds = %bb.hr
  %i.abm = atomicrmw volatile add ptr %i.abi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i203 = load ptr, ptr %i.abc, align 8, !tbaa !126
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.ht, %bb.hs, %bb.hq
  %i.abn = phi ptr [ %i.abd, %bb.hq ], [ %i.abd, %bb.hs ], [ %.pre.i203, %bb.ht ]
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  store ptr %i.abo, ptr %i.abc, align 8, !tbaa !126
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit

bb.hu:                                            ; preds = %_ZNK7rocksdb18CacheConfigurationltERKS0_.exit.thread342
  %i.abp = load ptr, ptr %i.abb, align 8, !tbaa !128 ; 12 uses
  %i.abq = ptrtoint ptr %i.abd to i64             ; 3 uses
  %i.abr = ptrtoint ptr %i.abp to i64             ; 4 uses
  %i.abs = sub i64 %i.abq, %i.abr                 ; 3 uses
  %i.abt = icmp eq i64 %i.abs, 9223372036854775792
  br i1 %i.abt, label %bb.hv, label %_ZNKSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.hv:                                            ; preds = %bb.hu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
          to label %.noexc300 unwind label %.loopexit.split-lp349

.noexc300:                                        ; preds = %bb.hv
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.hu
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
          to label %.noexc301 unwind label %.loopexit348 ; 13 uses

.noexc301:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.abs
  %i.acc = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.acd = load <2 x ptr>, ptr %19, align 16, !tbaa !19
  store <2 x ptr> %i.acd, ptr %i.acb, align 8, !tbaa !19
  %.not.i.i.i.i.i293 = icmp eq ptr %i.acc, null
  br i1 %.not.i.i.i.i.i293, label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295, label %bb.hw

bb.hw:                                            ; preds = %.noexc301
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 8 ; 3 uses
  %i.acf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i294 = icmp eq i8 %i.acf, 0
  br i1 %.not.i.i.i.i.i.i294, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.acg = load i32, ptr %i.ace, align 4, !tbaa !21
  %i.ach = add nsw i32 %i.acg, 1
  store i32 %i.ach, ptr %i.ace, align 4, !tbaa !21
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295

bb.hy:                                            ; preds = %bb.hw
  %i.aci = atomicrmw volatile add ptr %i.ace, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295

_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295: ; preds = %bb.hy, %bb.hx, %.noexc301
  %.not10.i.i.i.i296 = icmp eq ptr %i.abp, %i.abd
  br i1 %.not10.i.i.i.i296, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i297.preheader

.lr.ph.i.i.i.i297.preheader:                      ; preds = %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295
  %i.acj = add i64 %i.abq, -16
  %i.ack = sub i64 %i.acj, %i.abr                 ; 2 uses
  %i.acl = lshr i64 %i.ack, 4
  %i.acm = add nuw nsw i64 %i.acl, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ack, 112
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i297.preheader729, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i297.preheader
  %scevgep = getelementptr i8, ptr %i.aca, i64 8
  %i.acn = add i64 %i.abq, -16
  %i.aco = sub i64 %i.acn, %i.abr
  %i.acp = and i64 %i.aco, -16                    ; 4 uses
  %scevgep709 = getelementptr i8, ptr %scevgep, i64 %i.acp
  %scevgep710 = getelementptr i8, ptr %i.abp, i64 8 ; 2 uses
  %scevgep711 = getelementptr i8, ptr %scevgep710, i64 %i.acp
  %scevgep712 = getelementptr i8, ptr %i.abp, i64 16
  %scevgep713 = getelementptr i8, ptr %scevgep712, i64 %i.acp
  %scevgep714 = getelementptr i8, ptr %i.aca, i64 8
  %scevgep715 = getelementptr i8, ptr %i.aca, i64 16
  %scevgep716 = getelementptr i8, ptr %scevgep715, i64 %i.acp
  %bound0 = icmp ult ptr %i.aca, %scevgep711
  %bound1 = icmp ult ptr %i.abp, %scevgep709
  %found.conflict = and i1 %bound0, %bound1
  %bound0717 = icmp ult ptr %scevgep710, %scevgep716
  %bound1718 = icmp ult ptr %scevgep714, %scevgep713
  %found.conflict719 = and i1 %bound0717, %bound1718
  %conflict.rdx = or i1 %found.conflict, %found.conflict719
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i297.preheader729, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.acm, 2305843009213693948    ; 3 uses
  %i.acq = shl i64 %n.vec, 4                      ; 2 uses
  %i.acr = getelementptr i8, ptr %i.aca, i64 %i.acq ; 2 uses
  %i.acs = getelementptr i8, ptr %i.abp, i64 %i.acq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.act = shl i64 %index, 4                      ; 3 uses
  %36 = or disjoint i64 %i.act, 32                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aca, i64 %i.act
  %next.gep720 = getelementptr i8, ptr %i.aca, i64 %36
  %next.gep721 = getelementptr i8, ptr %i.abp, i64 %i.act ; 2 uses
  %next.gep722 = getelementptr i8, ptr %i.abp, i64 %36 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %wide.vec = load <4 x ptr>, ptr %next.gep721, align 8, !tbaa !19, !alias.scope !222, !noalias !221
  %wide.vec724 = load <4 x ptr>, ptr %next.gep722, align 8, !tbaa !19, !alias.scope !222, !noalias !221
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !19, !alias.scope !221, !noalias !222
  store <4 x ptr> %wide.vec724, ptr %next.gep720, align 8, !tbaa !19, !alias.scope !221, !noalias !222
  store <4 x ptr> splat (ptr null), ptr %next.gep721, align 8, !tbaa !19, !alias.scope !222, !noalias !221
  store <4 x ptr> splat (ptr null), ptr %next.gep722, align 8, !tbaa !19, !alias.scope !222, !noalias !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.acu = icmp eq i64 %index.next, %n.vec
  br i1 %i.acu, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i297.preheader729

.lr.ph.i.i.i.i297.preheader729:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i297.preheader, %middle.block
  %.012.i.i.i.i298.ph = phi ptr [ %i.aca, %vector.memcheck ], [ %i.aca, %.lr.ph.i.i.i.i297.preheader ], [ %i.acr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.abp, %vector.memcheck ], [ %i.abp, %.lr.ph.i.i.i.i297.preheader ], [ %i.acs, %middle.block ]
  br label %.lr.ph.i.i.i.i297

.lr.ph.i.i.i.i297:                                ; preds = %.lr.ph.i.i.i.i297.preheader729, %.lr.ph.i.i.i.i297
  %.012.i.i.i.i298 = phi ptr [ %i.acy, %.lr.ph.i.i.i.i297 ], [ %.012.i.i.i.i298.ph, %.lr.ph.i.i.i.i297.preheader729 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.acx, %.lr.ph.i.i.i.i297 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i297.preheader729 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.acv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.acw = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !222, !noalias !221
  store ptr null, ptr %i.acv, align 8, !tbaa !18, !alias.scope !222, !noalias !221
  store <2 x ptr> %i.acw, ptr %.012.i.i.i.i298, align 8, !tbaa !19, !alias.scope !221, !noalias !222
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !130, !alias.scope !222, !noalias !221
  %i.acx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i298, i64 16 ; 2 uses
  %.not.i.i.i.i299 = icmp eq ptr %i.acx, %i.abd
  br i1 %.not.i.i.i.i299, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i297, !llvm.loop !191

_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i297, %middle.block, %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aca, %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i295 ], [ %i.acr, %middle.block ], [ %i.acy, %.lr.ph.i.i.i.i297 ]
  %i.acz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.abp, null
  br i1 %.not.i23.i, label %.noexc204, label %bb.hz

bb.hz:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.ada = load ptr, ptr %i.abe, align 8, !tbaa !127
  %i.adb = ptrtoint ptr %i.ada to i64
  %i.adc = sub i64 %i.adb, %i.abr
  call void @_ZdlPvm(ptr noundef nonnull %i.abp, i64 noundef %i.adc) #23
  br label %.noexc204

.noexc204:                                        ; preds = %bb.hz, %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  store ptr %i.aca, ptr %i.abb, align 8, !tbaa !128
  store ptr %i.acz, ptr %i.abc, align 8, !tbaa !126
  %i.add = getelementptr inbounds nuw [16 x i8], ptr %i.aca, i64 %i.aby
  store ptr %i.add, ptr %i.abe, align 8, !tbaa !127
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit: ; preds = %.noexc204, %_ZSt12construct_atISt10shared_ptrIN7rocksdb14CacheSimulatorEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i
  %i.ade = load ptr, ptr %21, align 8, !tbaa !54  ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.g
  br i1 %i.adf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit
  %i.adg = load i64, ptr %i.g, align 8, !tbaa !20
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.ade, i64 noundef %i.adh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb14CacheSimulatorEESaIS3_EE9push_backERKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.adi = load ptr, ptr %20, align 8, !tbaa !43  ; 3 uses
  %.not.i208 = icmp eq ptr %i.adi, null
  br i1 %.not.i208, label %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214, label %bb.ia

bb.ia:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i209 = icmp eq ptr %i.adk, null
  br i1 %.not.i.i.i.i.i209, label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 8 ; 4 uses
  %i.adm = load atomic i64, ptr %i.adl acquire, align 8 ; 2 uses
  %i.adn = icmp eq i64 %i.adm, 4294967297
  %i.ado = trunc i64 %i.adm to i32                ; 2 uses
  br i1 %i.adn, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  store i32 0, ptr %i.adl, align 8, !tbaa !120
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adk, i64 12
  store i32 0, ptr %i.adp, align 4, !tbaa !121
  %i.adq = load ptr, ptr %i.adk, align 8, !tbaa !26
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.ads = load ptr, ptr %i.adr, align 8
  call void %i.ads(ptr noundef nonnull align 8 dereferenceable(16) %i.adk) #22, !inline_history !4
  %i.adt = load ptr, ptr %i.adk, align 8, !tbaa !26
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 24
  %i.adv = load ptr, ptr %i.adu, align 8
  call void %i.adv(ptr noundef nonnull align 8 dereferenceable(16) %i.adk) #22, !inline_history !4
  br label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213

bb.id:                                            ; preds = %bb.ib
  %i.adw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i210 = icmp eq i8 %i.adw, 0
  br i1 %.not.i.i.i.i.i.i210, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.adx = add nsw i32 %i.ado, -1
  store i32 %i.adx, ptr %i.adl, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211

bb.if:                                            ; preds = %bb.id
  %i.ady = atomicrmw volatile add ptr %i.adl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i.i.i.i212 = phi i32 [ %i.ado, %bb.ie ], [ %i.ady, %bb.if ]
  %i.adz = icmp eq i32 %.0.i.i.i.i.i.i.i212, 1
  br i1 %i.adz, label %bb.ig, label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213, !prof !110

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adk) #22
  br label %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213

_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213: ; preds = %bb.ig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i211, %bb.ic, %bb.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.adi, i64 noundef 16) #23
  br label %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214

_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt14default_deleteIN7rocksdb10GhostCacheEEclEPS1_.exit.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.aea = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 8 uses
  %.not.i.i215 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i215, label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, label %bb.ih

bb.ih:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 4 uses
  %i.aec = load atomic i64, ptr %i.aeb acquire, align 8 ; 2 uses
  %i.aed = icmp eq i64 %i.aec, 4294967297
  %i.aee = trunc i64 %i.aec to i32                ; 2 uses
  br i1 %i.aed, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  store i32 0, ptr %i.aeb, align 8, !tbaa !120
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aea, i64 12
  store i32 0, ptr %i.aef, align 4, !tbaa !121
  %i.aeg = load ptr, ptr %i.aea, align 8, !tbaa !26
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aei = load ptr, ptr %i.aeh, align 8
  call void %i.aei(ptr noundef nonnull align 8 dereferenceable(16) %i.aea) #22, !inline_history !185
  %i.aej = load ptr, ptr %i.aea, align 8, !tbaa !26
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 24
  %i.ael = load ptr, ptr %i.aek, align 8
  call void %i.ael(ptr noundef nonnull align 8 dereferenceable(16) %i.aea) #22, !inline_history !185
  br label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

bb.ij:                                            ; preds = %bb.ih
  %i.aem = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i216 = icmp eq i8 %i.aem, 0
  br i1 %.not.i.i.i216, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.aen = add nsw i32 %i.aee, -1
  store i32 %i.aen, ptr %i.aeb, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

bb.il:                                            ; preds = %bb.ij
  %i.aeo = atomicrmw volatile add ptr %i.aeb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217: ; preds = %bb.il, %bb.ik
  %.0.i.i.i.i218 = phi i32 [ %i.aee, %bb.ik ], [ %i.aeo, %bb.il ]
  %i.aep = icmp eq i32 %.0.i.i.i.i218, 1
  br i1 %i.aep, label %bb.im, label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219, !prof !110

bb.im:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aea) #22
  br label %_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219

_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit219: ; preds = %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit214, %bb.ii, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i217, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0314.0453, i64 8 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.cf
  br i1 %i.aer, label %.thread343, label %bb.c

bb.in:                                            ; preds = %.loopexit348, %.loopexit.split-lp349, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %.body154, %.body126, %.body98, %.body72, %bb.bg
  %.pn52 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn50, %.body72 ], [ %.pn48, %.body98 ], [ %.pn46, %.body126 ], [ %.pn44, %.body154 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %lpad.phi357, %bb.bg ], [ %lpad.loopexit350, %.loopexit348 ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp349 ] ; 2 uses
  %i.aes = load ptr, ptr %21, align 8, !tbaa !54  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.g
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.in
  %i.aeu = load i64, ptr %i.g, align 8, !tbaa !20
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.in, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn52, %bb.in ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZNSt12__shared_ptrIN7rocksdb14CacheSimulatorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  resume { ptr, i32 } %.pn52.pn

bb.io:                                            ; preds = %bb.hf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i192, %bb.hb, %_ZNSt10unique_ptrIN7rocksdb10GhostCacheESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ip

end_hunk_0
