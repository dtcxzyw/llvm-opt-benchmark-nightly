Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a
bb.cc:                                            ; preds = %.lr.ph811, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit
  %.sroa.0477.0809 = phi ptr [ %i.xu, %.lr.ph811 ], [ %i.aan, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0477.0809, i64 64 ; 2 uses
  %i.yr = load ptr, ptr %i.yq, align 8
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.0477.0809, i64 72 ; 3 uses
  %i.yt = load ptr, ptr %i.ys, align 8
  %i.yu = icmp eq ptr %i.yr, %i.yt
  br i1 %i.yu, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.ce unwind label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.yv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xx, ptr noundef nonnull @.str.10, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309 unwind label %bb.cl ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309: ; preds = %bb.ce
  %i.yw = load ptr, ptr %0, align 8
  %i.yx = getelementptr i8, ptr %i.yw, i64 -24
  %i.yy = load i64, ptr %i.yx, align 8
  %i.yz = getelementptr inbounds i8, ptr %0, i64 %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = load i64, ptr %i.za, align 8
  %i.zc = trunc i64 %i.zb to i32
  %i.zd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.xx, i32 noundef %i.zc)
          to label %bb.cf unwind label %bb.cl     ; 0 uses

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  store ptr %i.xy, ptr %14, align 8, !alias.scope !219
  store i64 0, ptr %i.xz, align 8, !alias.scope !219
  store i8 0, ptr %i.xy, align 8, !alias.scope !219
  %i.ze = load ptr, ptr %i.ya, align 8, !noalias !219 ; 3 uses
  %.not.i.not.i.i310 = icmp eq ptr %i.ze, null
  %i.zf = load ptr, ptr %i.yb, align 8, !noalias !219 ; 2 uses
  %i.zg = icmp ugt ptr %i.ze, %i.zf
  %.08.i.i.i311 = select i1 %i.zg, ptr %i.ze, ptr %i.zf ; 2 uses
  %.not5.i.i312 = icmp eq ptr %.08.i.i.i311, null
  %.not.i.i313 = select i1 %.not.i.not.i.i310, i1 true, i1 %.not5.i.i312
  br i1 %.not.i.i313, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.zh = load ptr, ptr %i.yc, align 8, !noalias !219 ; 2 uses
  %i.zi = ptrtoint ptr %.08.i.i.i311 to i64
  %i.zj = ptrtoint ptr %i.zh to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %i.zl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.zh, i64 noundef %i.zk)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319 unwind label %bb.ch ; 0 uses

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %i.zm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zn = load ptr, ptr %14, align 8, !alias.scope !219 ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.xy
  br i1 %i.zo, label %.body317, label %.body317.sink.split

bb.ci:                                            ; preds = %bb.cf
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.yd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319 unwind label %bb.ch

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319: ; preds = %bb.ci, %bb.cg
  %i.zp = load ptr, ptr %14, align 8
  store ptr %i.zp, ptr %i.f, align 8
  %i.zq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc320 unwind label %bb.cm

.noexc320:                                        ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319
  br i1 %i.zq, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit, label %bb.cj

bb.cj:                                            ; preds = %.noexc320
  %i.zr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc321 unwind label %bb.cm

.noexc321:                                        ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.zs = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc322 unwind label %bb.cm

.noexc322:                                        ; preds = %.noexc321
  store ptr %i.zs, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.zr, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc323 unwind label %bb.cm

.noexc323:                                        ; preds = %.noexc322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit: ; preds = %.noexc323, %.noexc320
  %i.zt = load ptr, ptr %14, align 8              ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.xy
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit
  %i.zv = load i64, ptr %i.xy, align 8
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zt, i64 noundef %i.zw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJPKcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  store ptr %i.ye, ptr %13, align 8
  %i.zx = load i64, ptr %i.yg, align 8
  %i.zy = getelementptr inbounds i8, ptr %13, i64 %i.zx
  store ptr %i.yf, ptr %i.zy, align 8
  store ptr %i.yh, ptr %i.xx, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yi, align 8
  %i.zz = load ptr, ptr %i.yd, align 8            ; 2 uses
  %i.aaa = icmp eq ptr %i.zz, %i.yj
  br i1 %i.aaa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.aab = load i64, ptr %i.yj, align 8
  %i.aac = add i64 %i.aab, 1
  call void @_ZdlPvm(ptr noundef %i.zz, i64 noundef %i.aac) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328

bb.ck:                                            ; preds = %bb.cd
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cl:                                            ; preds = %bb.ce, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc322, %.noexc321, %bb.cj, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit319
  %i.aaf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aag = load ptr, ptr %14, align 8             ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.xy
  br i1 %i.aah, label %.body317, label %.body317.sink.split

.body317.sink.split:                              ; preds = %bb.cm, %bb.ch
  %.sink1104 = phi ptr [ %i.zn, %bb.ch ], [ %i.aag, %bb.cm ]
  %.pn170.ph = phi { ptr, i32 } [ %i.zm, %bb.ch ], [ %i.aaf, %bb.cm ]
  %i.aai = load i64, ptr %i.xy, align 8
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %.sink1104, i64 noundef %i.aaj) #29
  br label %.body317

.body317:                                         ; preds = %.body317.sink.split, %bb.cm, %bb.ch
  %.pn170 = phi { ptr, i32 } [ %i.zm, %bb.ch ], [ %i.aaf, %bb.cm ], [ %.pn170.ph, %.body317.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %bb.cn

bb.cn:                                            ; preds = %.body317, %bb.cl
  %.pn170.pn = phi { ptr, i32 } [ %.pn170, %.body317 ], [ %i.aae, %bb.cl ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %13) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pn170.pn.pn = phi { ptr, i32 } [ %.pn170.pn, %bb.cn ], [ %i.aad, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.gs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i327
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yi, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yk) #30
  store ptr %i.yl, ptr %13, align 8
  %i.aak = load i64, ptr %i.yn, align 8
  %i.aal = getelementptr inbounds i8, ptr %13, i64 %i.aak
  store ptr %i.ym, ptr %i.aal, align 8
  store i64 0, ptr %i.yo, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yp) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.pre893 = load ptr, ptr %i.yq, align 8         ; 2 uses
  %.pre894 = load ptr, ptr %i.ys, align 8
  %i.aam = icmp eq ptr %.pre894, %.pre893
  br i1 %i.aam, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328
  store ptr %.pre893, ptr %i.ys, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i328, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0477.0809, i64 88 ; 2 uses
  %.not669 = icmp eq ptr %i.aan, %i.xw
  br i1 %.not669, label %.loopexit685, label %bb.cc

.loopexit685:                                     ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5clearEv.exit, %bb.cb, %._crit_edge806
  br i1 %i.aa, label %.preheader678, label %.loopexit679

.preheader678:                                    ; preds = %.loopexit685
  %i.aao = trunc i64 %i.fl to i32                 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 8 ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 16 ; 3 uses
  %i.aar = icmp ugt i64 %i.fl, 2
  %or.cond664 = and i1 %i.aar, %i.rn
  %umax859 = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  br label %bb.cp

bb.cp:                                            ; preds = %.preheader678, %bb.dh
  %22 = phi i1 [ false, %.preheader678 ], [ true, %bb.dh ]
  %i.aas = phi i1 [ true, %.preheader678 ], [ false, %bb.dh ]
  %.0120817 = phi i64 [ 0, %.preheader678 ], [ %.2122, %bb.dh ] ; 2 uses
  br i1 %22, label %.preheader, label %.preheader671

.preheader671:                                    ; preds = %bb.cp
  br i1 %.not665779, label %.loopexit, label %.lr.ph814.preheader

.lr.ph814.preheader:                              ; preds = %.preheader671
  %.pre895 = load ptr, ptr %.sroa.phi504, align 8
  br label %.lr.ph814

.preheader:                                       ; preds = %bb.cp
  br i1 %.not665779, label %.loopexit, label %.lr.ph816.preheader

.lr.ph816.preheader:                              ; preds = %.preheader
  %.pre896 = load ptr, ptr %.sroa.phi504, align 8
  br label %.lr.ph816

.lr.ph816:                                        ; preds = %.lr.ph816.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349
  %i.aat = phi ptr [ %i.abz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349 ], [ %.pre896, %.lr.ph816.preheader ] ; 6 uses
  %.0118815 = phi i64 [ %i.aca, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349 ], [ 0, %.lr.ph816.preheader ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.0118815 ; 2 uses
  %i.aav = load <2 x double>, ptr %i.aau, align 8, !noalias !220
  %i.aaw = load <2 x double>, ptr %8, align 16, !noalias !220
  %i.aax = fadd <2 x double> %i.aav, %i.aaw       ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.aaz = load double, ptr %i.aay, align 8, !noalias !220
  %i.aba = load double, ptr %i.fh, align 16, !noalias !220
  %i.abb = fadd double %i.aaz, %i.aba             ; 2 uses
  %i.abc = load ptr, ptr %.sroa.phi507, align 8
  %.not.i.i334 = icmp eq ptr %i.aat, %i.abc
  br i1 %.not.i.i334, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph816
  store <2 x double> %i.aax, ptr %i.aat, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  store double %i.abb, ptr %.sroa.7.0..sroa_idx, align 8
  %i.abd = load ptr, ptr %.sroa.phi504, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 24 ; 2 uses
  store ptr %i.abe, ptr %.sroa.phi504, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349

bb.cr:                                            ; preds = %.lr.ph816
  %i.abf = load ptr, ptr %i.ro, align 8           ; 5 uses
  %i.abg = ptrtoint ptr %i.aat to i64
  %i.abh = ptrtoint ptr %i.abf to i64             ; 2 uses
  %i.abi = sub i64 %i.abg, %i.abh                 ; 3 uses
  %i.abj = icmp eq i64 %i.abi, 9223372036854775800
  br i1 %i.abj, label %bb.cs, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc347 unwind label %.loopexit.split-lp.a

.noexc347:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335: ; preds = %bb.cr
  %i.abk = sdiv exact i64 %i.abi, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i336 = call i64 @llvm.umax.i64(i64 %i.abk, i64 1)
  %i.abl = add nsw i64 %.sroa.speculated.i.i.i.i336, %i.abk ; 2 uses
  %i.abm = icmp ult i64 %i.abl, %i.abk
  %i.abn = call i64 @llvm.umin.i64(i64 %i.abl, i64 384307168202282325)
  %i.abo = select i1 %i.abm, i64 384307168202282325, i64 %i.abn ; 3 uses
  %.not.i.i.i.i337 = icmp ne i64 %i.abo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i337)
  %i.abp = mul nuw nsw i64 %i.abo, 24
  %i.abq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abp) #28
          to label %.noexc348 unwind label %.loopexit670 ; 5 uses

.noexc348:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abi ; 2 uses
  store <2 x double> %i.aax, ptr %i.abr, align 8
  %.sroa.7.0..sroa_idx474 = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  store double %i.abb, ptr %.sroa.7.0..sroa_idx474, align 8
  %.not10.i.i.i.i.i.i338 = icmp eq ptr %i.abf, %i.aat
  br i1 %.not10.i.i.i.i.i.i338, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i339

.lr.ph.i.i.i.i.i.i339:                            ; preds = %.noexc348, %.lr.ph.i.i.i.i.i.i339
  %.012.i.i.i.i.i.i340 = phi ptr [ %i.abt, %.lr.ph.i.i.i.i.i.i339 ], [ %i.abq, %.noexc348 ] ; 2 uses
  %.0911.i.i.i.i.i.i341 = phi ptr [ %i.abs, %.lr.ph.i.i.i.i.i.i339 ], [ %i.abf, %.noexc348 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i340, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i341, i64 24, i1 false), !alias.scope !221
  %i.abs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i341, i64 24 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i340, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i342 = icmp eq ptr %i.abs, %i.aat
  br i1 %.not.i.i.i.i.i.i342, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343, label %.lr.ph.i.i.i.i.i.i339, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343: ; preds = %.lr.ph.i.i.i.i.i.i339, %.noexc348
  %.0.lcssa.i.i.i.i.i.i344 = phi ptr [ %i.abq, %.noexc348 ], [ %i.abt, %.lr.ph.i.i.i.i.i.i339 ]
  %i.abu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i344, i64 24 ; 2 uses
  %.not.i23.i.i.i345 = icmp eq ptr %i.abf, null
  br i1 %.not.i23.i.i.i345, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343
  %i.abv = load ptr, ptr %.sroa.phi507, align 8
  %i.abw = ptrtoint ptr %i.abv to i64
  %i.abx = sub i64 %i.abw, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef %i.abx) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346: ; preds = %bb.ct, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i343
  store ptr %i.abq, ptr %i.ro, align 8
  store ptr %i.abu, ptr %.sroa.phi504, align 8
  %i.aby = getelementptr inbounds nuw [24 x i8], ptr %i.abq, i64 %i.abo
  store ptr %i.aby, ptr %.sroa.phi507, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346, %bb.cq
  %i.abz = phi ptr [ %i.abu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i346 ], [ %i.abe, %bb.cq ]
  %i.aca = add nuw i64 %.0118815, 1               ; 2 uses
  %exitcond860.not = icmp eq i64 %i.aca, %umax859
  br i1 %exitcond860.not, label %.loopexit, label %.lr.ph816, !llvm.loop !188

.loopexit670:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i335
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp.a:                             ; preds = %bb.cs
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.lr.ph814:                                        ; preds = %.lr.ph814.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365
  %i.acb = phi ptr [ %i.adb, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365 ], [ %.pre895, %.lr.ph814.preheader ] ; 5 uses
  %.0117813 = phi i64 [ %i.acc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365 ], [ %i.fl, %.lr.ph814.preheader ]
  %i.acc = add i64 %.0117813, -1                  ; 3 uses
  %i.acd = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.acc ; 2 uses
  %i.ace = load ptr, ptr %.sroa.phi507, align 8
  %.not.i350 = icmp eq ptr %i.acb, %i.ace
  br i1 %.not.i350, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acb, ptr noundef nonnull align 8 dereferenceable(24) %i.acd, i64 24, i1 false)
  %i.acf = load ptr, ptr %.sroa.phi504, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24 ; 2 uses
  store ptr %i.acg, ptr %.sroa.phi504, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365

bb.cv:                                            ; preds = %.lr.ph814
  %i.ach = load ptr, ptr %i.ro, align 8           ; 5 uses
  %i.aci = ptrtoint ptr %i.acb to i64
  %i.acj = ptrtoint ptr %i.ach to i64             ; 2 uses
  %i.ack = sub i64 %i.aci, %i.acj                 ; 3 uses
  %i.acl = icmp eq i64 %i.ack, 9223372036854775800
  br i1 %i.acl, label %bb.cw, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc363 unwind label %.loopexit.split-lp674

.noexc363:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351: ; preds = %bb.cv
  %i.acm = sdiv exact i64 %i.ack, 24              ; 3 uses
  %.sroa.speculated.i.i.i352 = call i64 @llvm.umax.i64(i64 %i.acm, i64 1)
  %i.acn = add nsw i64 %.sroa.speculated.i.i.i352, %i.acm ; 2 uses
  %i.aco = icmp ult i64 %i.acn, %i.acm
  %i.acp = call i64 @llvm.umin.i64(i64 %i.acn, i64 384307168202282325)
  %i.acq = select i1 %i.aco, i64 384307168202282325, i64 %i.acp ; 3 uses
  %.not.i.i.i353 = icmp ne i64 %i.acq, 0
  call void @llvm.assume(i1 %.not.i.i.i353)
  %i.acr = mul nuw nsw i64 %i.acq, 24
  %i.acs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acr) #28
          to label %.noexc364 unwind label %.loopexit673 ; 5 uses

.noexc364:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.ack
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.act, ptr noundef nonnull align 8 dereferenceable(24) %i.acd, i64 24, i1 false)
  %.not10.i.i.i.i.i354 = icmp eq ptr %i.ach, %i.acb
  br i1 %.not10.i.i.i.i.i354, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359, label %.lr.ph.i.i.i.i.i355

.lr.ph.i.i.i.i.i355:                              ; preds = %.noexc364, %.lr.ph.i.i.i.i.i355
  %.012.i.i.i.i.i356 = phi ptr [ %i.acv, %.lr.ph.i.i.i.i.i355 ], [ %i.acs, %.noexc364 ] ; 2 uses
  %.0911.i.i.i.i.i357 = phi ptr [ %i.acu, %.lr.ph.i.i.i.i.i355 ], [ %i.ach, %.noexc364 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i356, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i357, i64 24, i1 false), !alias.scope !222
  %i.acu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i357, i64 24 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i356, i64 24 ; 2 uses
  %.not.i.i.i.i.i358 = icmp eq ptr %i.acu, %i.acb
  br i1 %.not.i.i.i.i.i358, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359, label %.lr.ph.i.i.i.i.i355, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359: ; preds = %.lr.ph.i.i.i.i.i355, %.noexc364
  %.0.lcssa.i.i.i.i.i360 = phi ptr [ %i.acs, %.noexc364 ], [ %i.acv, %.lr.ph.i.i.i.i.i355 ]
  %i.acw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i360, i64 24 ; 2 uses
  %.not.i23.i.i361 = icmp eq ptr %i.ach, null
  br i1 %.not.i23.i.i361, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359
  %i.acx = load ptr, ptr %.sroa.phi507, align 8
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = sub i64 %i.acy, %i.acj
  call void @_ZdlPvm(ptr noundef nonnull %i.ach, i64 noundef %i.acz) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362: ; preds = %bb.cx, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i359
  store ptr %i.acs, ptr %i.ro, align 8
  store ptr %i.acw, ptr %.sroa.phi504, align 8
  %i.ada = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %i.acq
  store ptr %i.ada, ptr %.sroa.phi507, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365: ; preds = %bb.cu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362
  %i.adb = phi ptr [ %i.acg, %bb.cu ], [ %i.acw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i362 ]
  %.not166 = icmp eq i64 %i.acc, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph814

.loopexit673:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i351
  %lpad.loopexit675 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp674:                            ; preds = %bb.cw
  %lpad.loopexit.split-lp676 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit:                                        ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit365, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit349, %.preheader671, %.preheader
  %i.adc = load ptr, ptr %i.aap, align 8          ; 3 uses
  %i.add = load ptr, ptr %i.aaq, align 8
  %.not.i.i366 = icmp eq ptr %i.adc, %i.add
  br i1 %.not.i.i366, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.loopexit
  store i32 %i.aao, ptr %i.adc, align 4
  %i.ade = load ptr, ptr %i.aap, align 8
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  store ptr %i.adf, ptr %i.aap, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375

bb.cz:                                            ; preds = %.loopexit
  %i.adg = load ptr, ptr %.sroa.phi, align 8      ; 4 uses
  %i.adh = ptrtoint ptr %i.adc to i64
  %i.adi = ptrtoint ptr %i.adg to i64             ; 2 uses
  %i.adj = sub i64 %i.adh, %i.adi                 ; 5 uses
  %i.adk = icmp eq i64 %i.adj, 9223372036854775804
  br i1 %i.adk, label %bb.da, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc373 unwind label %.loopexit.split-lp681

.noexc373:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367: ; preds = %bb.cz
  %i.adl = ashr exact i64 %i.adj, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i368 = call i64 @llvm.umax.i64(i64 %i.adl, i64 1)
  %i.adm = add nsw i64 %.sroa.speculated.i.i.i.i368, %i.adl ; 2 uses
  %i.adn = icmp ult i64 %i.adm, %i.adl
  %i.ado = call i64 @llvm.umin.i64(i64 %i.adm, i64 2305843009213693951)
  %i.adp = select i1 %i.adn, i64 2305843009213693951, i64 %i.ado ; 3 uses
  %.not.i.i.i.i369 = icmp ne i64 %i.adp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i369)
  %i.adq = shl nuw nsw i64 %i.adp, 2
  %i.adr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adq) #28
          to label %.noexc374 unwind label %.loopexit680.a ; 4 uses

.noexc374:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367
  %i.ads = getelementptr inbounds i8, ptr %i.adr, i64 %i.adj ; 2 uses
  store i32 %i.aao, ptr %i.ads, align 4
  %i.adt = icmp sgt i64 %i.adj, 0
  br i1 %i.adt, label %bb.db, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370

bb.db:                                            ; preds = %.noexc374
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.adr, ptr align 4 %i.adg, i64 %i.adj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370: ; preds = %bb.db, %.noexc374
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  %.not.i17.i.i.i371 = icmp eq ptr %i.adg, null
  br i1 %.not.i17.i.i.i371, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370
  %i.adv = load ptr, ptr %i.aaq, align 8
  %i.adw = ptrtoint ptr %i.adv to i64
  %i.adx = sub i64 %i.adw, %i.adi
  call void @_ZdlPvm(ptr noundef nonnull %i.adg, i64 noundef %i.adx) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372: ; preds = %bb.dc, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i370
  store ptr %i.adr, ptr %.sroa.phi, align 8
  store ptr %i.adu, ptr %i.aap, align 8
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.adp
  store ptr %i.ady, ptr %i.aaq, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375

_ZNSt6vectorIjSaIjEE9push_backEOj.exit375:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i372, %bb.cy
  br i1 %or.cond664, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375
  %i.adz = load ptr, ptr %i.hj, align 8
  %i.aea = invoke noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.adz, ptr noundef nonnull align 8 dereferenceable(48) %12, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN6Assimp3IFC8TempMesh6AppendERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.dg unwind label %bb.df

.loopexit680.a:                                   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i367
  %lpad.loopexit682 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

.loopexit.split-lp681:                            ; preds = %bb.da
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.df:                                            ; preds = %bb.dg, %bb.de, %bb.dd
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.dg:                                            ; preds = %bb.de
  %i.aec = zext i1 %i.aea to i64
  %spec.select196 = add i64 %.0120817, %i.aec
  invoke void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.dh unwind label %bb.df

bb.dh:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375, %bb.dg
  %.2122 = phi i64 [ %spec.select196, %bb.dg ], [ %.0120817, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit375 ] ; 2 uses
  br i1 %i.aas, label %bb.cp, label %.loopexit679, !llvm.loop !192

.loopexit679:                                     ; preds = %bb.dh, %.loopexit685
  %.3123 = phi i64 [ 0, %.loopexit685 ], [ %.2122, %bb.dh ] ; 2 uses
  br i1 %i.rn, label %bb.di, label %bb.du

bb.di:                                            ; preds = %.loopexit679
  %i.aed = icmp eq i64 %.0125.lcssa, 1
  %i.aee = icmp eq i64 %.3123, 2
  %or.cond = select i1 %i.aed, i1 true, i1 %i.aee
  br i1 %or.cond, label %bb.dj, label %bb.du

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.dk unwind label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %i.aef = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aef, ptr noundef nonnull @.str.11, i64 noundef 90)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377 unwind label %bb.dq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377: ; preds = %bb.dk
  %i.aeh = load ptr, ptr %0, align 8
  %i.aei = getelementptr i8, ptr %i.aeh, i64 -24
  %i.aej = load i64, ptr %i.aei, align 8
  %i.aek = getelementptr inbounds i8, ptr %0, i64 %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aem = load i64, ptr %i.ael, align 8
  %i.aen = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aef, i64 noundef %i.aem)
          to label %_ZNSolsEm.exit379 unwind label %bb.dq ; 2 uses

_ZNSolsEm.exit379:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377
  %i.aeo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aen, ptr noundef nonnull @.str.12, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381 unwind label %bb.dq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381: ; preds = %_ZNSolsEm.exit379
  %i.aep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aen, i64 noundef %.0125.lcssa)
          to label %_ZNSolsEm.exit383 unwind label %bb.dq ; 2 uses

_ZNSolsEm.exit383:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit381
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, ptr noundef nonnull @.str.13, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385 unwind label %bb.dq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385: ; preds = %_ZNSolsEm.exit383
  %i.aer = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, i64 noundef %.3123)
          to label %_ZNSolsEm.exit387 unwind label %bb.dq ; 0 uses

_ZNSolsEm.exit387:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.aes = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.aes, ptr %16, align 8, !alias.scope !225
  %i.aet = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.aet, align 8, !alias.scope !225
  store i8 0, ptr %i.aes, align 8, !alias.scope !225
  %i.aeu = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.aev = load ptr, ptr %i.aeu, align 8, !noalias !225 ; 3 uses
  %.not.i.not.i.i388 = icmp eq ptr %i.aev, null
  %i.aew = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.aex = load ptr, ptr %i.aew, align 8, !noalias !225 ; 2 uses
  %i.aey = icmp ugt ptr %i.aev, %i.aex
  %.08.i.i.i389 = select i1 %i.aey, ptr %i.aev, ptr %i.aex ; 2 uses
  %.not5.i.i390 = icmp eq ptr %.08.i.i.i389, null
  %.not.i.i391 = select i1 %.not.i.not.i.i388, i1 true, i1 %.not5.i.i390
  br i1 %.not.i.i391, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %_ZNSolsEm.exit387
  %i.aez = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.afa = load ptr, ptr %i.aez, align 8, !noalias !225 ; 2 uses
  %i.afb = ptrtoint ptr %.08.i.i.i389 to i64
  %i.afc = ptrtoint ptr %i.afa to i64
  %i.afd = sub i64 %i.afb, %i.afc
  %i.afe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.afa, i64 noundef %i.afd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit397 unwind label %bb.dm ; 0 uses

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  %i.aff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afg = load ptr, ptr %16, align 8, !alias.scope !225 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.aes
  br i1 %i.afh, label %.body395, label %.body395.sink.split

bb.dn:                                            ; preds = %_ZNSolsEm.exit387
  %i.afi = getelementptr inbounds nuw i8, ptr %15, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.afi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit397 unwind label %bb.dm

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit397: ; preds = %bb.dn, %bb.dl
  %i.afj = load ptr, ptr %16, align 8
  store ptr %i.afj, ptr %i.g, align 8
  %i.afk = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc398 unwind label %bb.dr

end_hunk_0
