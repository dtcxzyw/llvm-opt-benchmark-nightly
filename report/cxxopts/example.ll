Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cxxopts/original/example?download=true
inline.NumInlined: 9080
inline.NumDeleted: 3223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z5parseiPPKc:bb.a

bb.uh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2027
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxi, i64 67
  %i.cxm = load i8, ptr %i.cxl, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2029

bb.ui:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2027
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cxi)
          to label %.noexc2032 unwind label %bb.uk

.noexc2032:                                       ; preds = %bb.ui
  %i.cxn = load ptr, ptr %i.cxi, align 8, !tbaa !120
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxn, i64 48
  %i.cxp = load ptr, ptr %i.cxo, align 8
  %i.cxq = invoke noundef signext i8 %i.cxp(ptr noundef nonnull align 8 dereferenceable(570) %i.cxi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2029 unwind label %bb.uk, !inline_history !784

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2029: ; preds = %.noexc2032, %bb.uh
  %.0.i.i.i2030 = phi i8 [ %i.cxm, %bb.uh ], [ %i.cxq, %.noexc2032 ]
  %i.cxr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxc, i8 noundef signext %.0.i.i.i2030)
          to label %.noexc2034 unwind label %bb.uk

.noexc2034:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2029
  %i.cxs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cxr)
          to label %_ZNSolsEPFRSoS_E.exit1809 unwind label %bb.uk ; 0 uses

_ZNSolsEPFRSoS_E.exit1809:                        ; preds = %.noexc2034
  %i.cxt = load ptr, ptr %181, align 8, !tbaa !69 ; 2 uses
  %i.cxu = icmp eq ptr %i.cxt, %i.cwv
  br i1 %i.cxu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810: ; preds = %_ZNSolsEPFRSoS_E.exit1809
  %i.cxv = load i64, ptr %i.cwv, align 8, !tbaa !70
  %i.cxw = add i64 %i.cxv, 1
  call void @_ZdlPvm(ptr noundef %i.cxt, i64 noundef %i.cxw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812: ; preds = %_ZNSolsEPFRSoS_E.exit1809, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1810
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #30
  br label %._crit_edge.i.i1819

bb.uj:                                            ; preds = %._crit_edge.i.i1779
  %i.cxx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  %i.cxy = load ptr, ptr %180, align 8, !tbaa !69 ; 2 uses
  %i.cxz = icmp eq ptr %i.cxy, %i.cvk
  br i1 %i.cxz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813: ; preds = %bb.uj
  %i.cya = load i64, ptr %i.cvk, align 8, !tbaa !70
  %i.cyb = add i64 %i.cya, 1
  call void @_ZdlPvm(ptr noundef %i.cxy, i64 noundef %i.cyb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1815: ; preds = %bb.uj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1813
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.uk:                                            ; preds = %.noexc2034, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2029, %.noexc2032, %bb.ui, %bb.ug, %bb.uf, %bb.ue, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1802
  %i.cyc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  %i.cyd = load ptr, ptr %181, align 8, !tbaa !69 ; 2 uses
  %i.cye = icmp eq ptr %i.cyd, %i.cwv
  br i1 %i.cye, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1816: ; preds = %bb.uk
  %i.cyf = load i64, ptr %i.cwv, align 8, !tbaa !70
  %i.cyg = add i64 %i.cyf, 1
  call void @_ZdlPvm(ptr noundef %i.cyd, i64 noundef %i.cyg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1818: ; preds = %bb.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1816
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

._crit_edge.i.i1819:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1800
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #30
  %i.cyh = getelementptr inbounds nuw i8, ptr %182, i64 16 ; 6 uses
  store ptr %i.cyh, ptr %182, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cyh, ptr noundef nonnull align 1 dereferenceable(6) @.str.39, i64 6, i1 false)
  %i.cyi = getelementptr inbounds nuw i8, ptr %182, i64 8
  store i64 6, ptr %i.cyi, align 8, !tbaa !71
  %i.cyj = getelementptr inbounds nuw i8, ptr %182, i64 22
  store i8 0, ptr %i.cyj, align 2, !tbaa !70
  %i.cyk = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(184) %158, ptr noundef nonnull align 8 dereferenceable(32) %182)
          to label %.noexc1836 unwind label %bb.ve ; 2 uses

.noexc1836:                                       ; preds = %._crit_edge.i.i1819
  %i.cyl = icmp eq ptr %i.cyk, null
  br i1 %i.cyl, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837, label %bb.ul

bb.ul:                                            ; preds = %.noexc1836
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyk, i64 40
  %i.cyn = getelementptr inbounds nuw i8, ptr %158, i64 80
  %i.cyo = load i64, ptr %i.cyn, align 8, !tbaa !151
  %.not.not.i.i.i1823 = icmp eq i64 %i.cyo, 0
  %i.cyp = load i64, ptr %i.cym, align 8          ; 4 uses
  br i1 %.not.not.i.i.i1823, label %bb.um, label %bb.up

bb.um:                                            ; preds = %bb.ul
  %i.cyq = getelementptr inbounds nuw i8, ptr %158, i64 72
  br label %bb.un

bb.un:                                            ; preds = %bb.uo, %bb.um
  %.sroa.06.0.in.i.i.i1833 = phi ptr [ %i.cyq, %bb.um ], [ %.sroa.06.0.i.i.i1834, %bb.uo ]
  %.sroa.06.0.i.i.i1834 = load ptr, ptr %.sroa.06.0.in.i.i.i1833, align 8, !tbaa !152 ; 4 uses
  %.not.i.i.i1835 = icmp eq ptr %.sroa.06.0.i.i.i1834, null
  br i1 %.not.i.i.i1835, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.cyr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i1834, i64 8
  %i.cys = load i64, ptr %i.cyr, align 8, !tbaa !67
  %i.cyt = icmp eq i64 %i.cyp, %i.cys
  br i1 %i.cyt, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1831, label %bb.un, !llvm.loop !2

bb.up:                                            ; preds = %bb.ul
  %i.cyu = getelementptr inbounds nuw i8, ptr %158, i64 56
  %i.cyv = getelementptr inbounds nuw i8, ptr %158, i64 64
  %i.cyw = load i64, ptr %i.cyv, align 8, !tbaa !147 ; 2 uses
  %i.cyx = urem i64 %i.cyp, %i.cyw                ; 2 uses
  %i.cyy = load ptr, ptr %i.cyu, align 8, !tbaa !146
  %i.cyz = getelementptr inbounds nuw [8 x i8], ptr %i.cyy, i64 %i.cyx
  %i.cza = load ptr, ptr %i.cyz, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i1824 = icmp eq ptr %i.cza, null
  br i1 %.not.i.i.i.i.i1824, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.czb = load ptr, ptr %i.cza, align 8, !tbaa !152 ; 3 uses
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 8
  %i.czd = load i64, ptr %i.czc, align 8, !tbaa !67
  %i.cze = icmp eq i64 %i.cyp, %i.czd
  br i1 %i.cze, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1831, label %.lr.ph.i.i.i.i.i1825

bb.ur:                                            ; preds = %bb.us
  %i.czf = icmp eq i64 %i.cyp, %i.czi
  br i1 %i.czf, label %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1831, label %.lr.ph.i.i.i.i.i1825, !llvm.loop !3

.lr.ph.i.i.i.i.i1825:                             ; preds = %bb.uq, %bb.ur
  %.020.i.i.i.i.i1826 = phi ptr [ %i.czg, %bb.ur ], [ %i.czb, %bb.uq ]
  %i.czg = load ptr, ptr %.020.i.i.i.i.i1826, align 8, !tbaa !152 ; 4 uses
  %.not18.i.i.i.i.i1827 = icmp eq ptr %i.czg, null
  br i1 %.not18.i.i.i.i.i1827, label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837, label %bb.us

bb.us:                                            ; preds = %.lr.ph.i.i.i.i.i1825
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 8
  %i.czi = load i64, ptr %i.czh, align 8, !tbaa !67 ; 2 uses
  %i.czj = urem i64 %i.czi, %i.cyw
  %.not19.i.i.i.i.i1828 = icmp eq i64 %i.czj, %i.cyx
  br i1 %.not19.i.i.i.i.i1828, label %bb.ur, label %..loopexit_crit_edge21.i.i.i.i.i1829, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i1829:             ; preds = %bb.us
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837, !llvm.loop !3

_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1831: ; preds = %bb.ur, %bb.uo, %bb.uq
  %.sroa.06.1.i.i.i1832 = phi ptr [ %.sroa.06.0.i.i.i1834, %bb.uo ], [ %i.czb, %bb.uq ], [ %i.czg, %bb.ur ]
  %i.czk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i1832, i64 40
  %i.czl = load i64, ptr %i.czk, align 8, !tbaa !157
  %i.czm = icmp eq i64 %i.czl, 0
  br label %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837

_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837: ; preds = %.lr.ph.i.i.i.i.i1825, %bb.un, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1831, %..loopexit_crit_edge21.i.i.i.i.i1829, %bb.up, %.noexc1836
  %.1.i1830 = phi i1 [ true, %.noexc1836 ], [ %i.czm, %_ZNKSt13unordered_mapImN7cxxopts11OptionValueESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE4findERS7_.exit.i1831 ], [ true, %..loopexit_crit_edge21.i.i.i.i.i1829 ], [ true, %bb.un ], [ true, %bb.up ], [ true, %.lr.ph.i.i.i.i.i1825 ]
  %i.czn = load ptr, ptr %182, align 8, !tbaa !69 ; 2 uses
  %i.czo = icmp eq ptr %i.czn, %i.cyh
  br i1 %i.czo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837
  %i.czp = load i64, ptr %i.cyh, align 8, !tbaa !70
  %i.czq = add i64 %i.czp, 1
  call void @_ZdlPvm(ptr noundef %i.czn, i64 noundef %i.czq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840: ; preds = %_ZNK7cxxopts11ParseResult5countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1837, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1838
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #30
  br i1 %.1.i1830, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ut

bb.ut:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840
  %i.czr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.72, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1842 unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1842: ; preds = %bb.ut
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #30
  %i.czs = getelementptr inbounds nuw i8, ptr %183, i64 16 ; 6 uses
  store ptr %i.czs, ptr %183, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.czs, ptr noundef nonnull align 1 dereferenceable(6) @.str.39, i64 6, i1 false)
  %i.czt = getelementptr inbounds nuw i8, ptr %183, i64 8
  store i64 6, ptr %i.czt, align 8, !tbaa !71
  %i.czu = getelementptr inbounds nuw i8, ptr %183, i64 22
  store i8 0, ptr %i.czu, align 2, !tbaa !70
  %i.czv = invoke noundef nonnull align 8 dereferenceable(33) ptr @_ZNK7cxxopts11ParseResultixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %158, ptr noundef nonnull align 8 dereferenceable(32) %183)
          to label %bb.uu unwind label %bb.vf

bb.uu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1842
  %i.czw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7cxxopts11OptionValue2asISt6vectorIdSaIdEEEERKT_v(ptr noundef nonnull align 8 dereferenceable(33) %i.czv)
          to label %bb.uv unwind label %bb.vf     ; 3 uses

bb.uv:                                            ; preds = %bb.uu
  %i.czx = getelementptr inbounds nuw i8, ptr %i.czw, i64 8 ; 2 uses
  %i.czy = load ptr, ptr %i.czx, align 8, !tbaa !181 ; 3 uses
  %i.czz = load ptr, ptr %i.czw, align 8, !tbaa !182 ; 3 uses
  %i.daa = ptrtoint ptr %i.czy to i64
  %i.dab = ptrtoint ptr %i.czz to i64
  %i.dac = sub i64 %i.daa, %i.dab                 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.czy, %i.czz
  br i1 %.not.i.i.i.i, label %.noexc1848, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.dad = icmp ugt i64 %i.dac, 9223372036854775800
  br i1 %i.dad, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !128

.noexc.i.i:                                       ; preds = %bb.uw
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc1847 unwind label %bb.vf

.noexc1847:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.uw
  %i.dae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dac) #31
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc1848_crit_edge unwind label %bb.vf

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc1848_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.czw, align 8, !tbaa !842
  %.pre2395 = load ptr, ptr %i.czx, align 8, !tbaa !842
  br label %.noexc1848

.noexc1848:                                       ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc1848_crit_edge, %bb.uv
  %185 = phi ptr [ %i.czy, %bb.uv ], [ %.pre2395, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc1848_crit_edge ] ; 2 uses
  %186 = phi ptr [ %i.czz, %bb.uv ], [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc1848_crit_edge ] ; 4 uses
  %187 = phi ptr [ null, %bb.uv ], [ %i.dae, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc1848_crit_edge ] ; 8 uses
  %.pre-phi = ptrtoint ptr %185 to i64
  %.pre-phi2398 = ptrtoint ptr %186 to i64
  %i.daf = sub i64 %.pre-phi, %.pre-phi2398       ; 4 uses
  %i.dag = icmp sgt i64 %i.daf, 8
  br i1 %i.dag, label %bb.ux, label %bb.uy, !prof !183

bb.ux:                                            ; preds = %.noexc1848
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %187, ptr align 8 %186, i64 %i.daf, i1 false)
  br label %bb.va

bb.uy:                                            ; preds = %.noexc1848
  %i.dah = icmp eq i64 %i.daf, 8
  br i1 %i.dah, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.dai = load double, ptr %186, align 8, !tbaa !185
  store double %i.dai, ptr %187, align 8, !tbaa !185
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy, %bb.ux
  %i.daj = getelementptr inbounds i8, ptr %187, i64 %i.daf
  %i.dak = load ptr, ptr %183, align 8, !tbaa !69 ; 2 uses
  %i.dal = icmp eq ptr %i.dak, %i.czs
  br i1 %i.dal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849: ; preds = %bb.va
  %i.dam = load i64, ptr %i.czs, align 8, !tbaa !70
  %i.dan = add i64 %i.dam, 1
  call void @_ZdlPvm(ptr noundef %i.dak, i64 noundef %i.dan) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851: ; preds = %bb.va, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1849
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #30
  %.not22142307 = icmp eq ptr %185, %186
  br i1 %.not22142307, label %._crit_edge2310, label %.lr.ph2309

._crit_edge2310:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1862, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851
  %i.dao = load ptr, ptr @_ZSt4cout, align 8, !tbaa !120
  %i.dap = getelementptr i8, ptr %i.dao, i64 -24
  %i.daq = load i64, ptr %i.dap, align 8
  %i.dar = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.daq
  %i.das = getelementptr inbounds nuw i8, ptr %i.dar, i64 240
  %i.dat = load ptr, ptr %i.das, align 8, !tbaa !838 ; 6 uses
  %.not.i.i.i2037 = icmp eq ptr %i.dat, null
  br i1 %.not.i.i.i2037, label %bb.vb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2038

bb.vb:                                            ; preds = %._crit_edge2310
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc2042 unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2042:                                       ; preds = %bb.vb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2038: ; preds = %._crit_edge2310
  %i.dau = getelementptr inbounds nuw i8, ptr %i.dat, i64 56
  %i.dav = load i8, ptr %i.dau, align 8, !tbaa !175
  %.not.i1.i.i2039 = icmp eq i8 %i.dav, 0
  br i1 %.not.i1.i.i2039, label %bb.vd, label %bb.vc

bb.vc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2038
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dat, i64 67
  %i.dax = load i8, ptr %i.daw, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2040

bb.vd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2038
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dat)
          to label %.noexc2043 unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2043:                                       ; preds = %bb.vd
  %i.day = load ptr, ptr %i.dat, align 8, !tbaa !120
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 48
  %i.dba = load ptr, ptr %i.daz, align 8
  %i.dbb = invoke noundef signext i8 %i.dba(ptr noundef nonnull align 8 dereferenceable(570) %i.dat, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2040 unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !784

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2040: ; preds = %.noexc2043, %bb.vc
  %.0.i.i.i2041 = phi i8 [ %i.dax, %bb.vc ], [ %i.dbb, %.noexc2043 ]
  %i.dbc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i2041)
          to label %.noexc2045 unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2045:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2040
  %i.dbd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dbc)
          to label %_ZNSolsEPFRSoS_E.exit1853 unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ve:                                            ; preds = %._crit_edge.i.i1819
  %i.dbe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  %i.dbf = load ptr, ptr %182, align 8, !tbaa !69 ; 2 uses
  %i.dbg = icmp eq ptr %i.dbf, %i.cyh
  br i1 %i.dbg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1854

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1854: ; preds = %bb.ve
  %i.dbh = load i64, ptr %i.cyh, align 8, !tbaa !70
  %i.dbi = add i64 %i.dbh, 1
  call void @_ZdlPvm(ptr noundef %i.dbf, i64 noundef %i.dbi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1856: ; preds = %bb.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1854
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

bb.vf:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.uu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1842
  %i.dbj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE
  %i.dbk = load ptr, ptr %183, align 8, !tbaa !69 ; 2 uses
  %i.dbl = icmp eq ptr %i.dbk, %i.czs
  br i1 %i.dbl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1857: ; preds = %bb.vf
  %i.dbm = load i64, ptr %i.czs, align 8, !tbaa !70
  %i.dbn = add i64 %i.dbm, 1
  call void @_ZdlPvm(ptr noundef %i.dbk, i64 noundef %i.dbn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1859: ; preds = %bb.vf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1857
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

.lr.ph2309:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1862
  %.sroa.02085.02308 = phi ptr [ %i.dbr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1862 ], [ %187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1851 ] ; 2 uses
  %i.dbo = load double, ptr %.sroa.02085.02308, align 8, !tbaa !185
  %i.dbp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.dbo)
          to label %_ZNSolsEd.exit unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit:                                   ; preds = %.lr.ph2309
  %i.dbq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dbp, ptr noundef nonnull @.str.68, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1862 unwind label %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1862: ; preds = %_ZNSolsEd.exit
  %i.dbr = getelementptr inbounds nuw i8, ptr %.sroa.02085.02308, i64 8 ; 2 uses
  %.not2214 = icmp eq ptr %i.dbr, %i.daj
  br i1 %.not2214, label %._crit_edge2310, label %.lr.ph2309

_ZNSolsEPFRSoS_E.exit1853:                        ; preds = %.noexc2045
  %.not.i.i.i1863 = icmp eq ptr %187, null
  br i1 %.not.i.i.i1863, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.vg

bb.vg:                                            ; preds = %_ZNSolsEPFRSoS_E.exit1853
  call void @_ZdlPvm(ptr noundef nonnull %187, i64 noundef %i.dac) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph2309, %_ZNSolsEd.exit, %.noexc2045, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2040, %.noexc2043, %bb.vd, %bb.vb
  %lpad.loopexit.split-lp3084 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7cxxopts10exceptions9exceptionE ; 2 uses
  %.not.i.i.i1864 = icmp eq ptr %187, null
  br i1 %.not.i.i.i1864, label %_ZNSt6vectorIdSaIdEED2Ev.exit1865, label %bb.vh

bb.vh:                                            ; preds = %.loopexit.split-lp2217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPvm(ptr noundef nonnull %187, i64 noundef %i.dac) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit1865

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.vg, %_ZNSolsEPFRSoS_E.exit1853, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1840
  %i.dbs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.73, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1867 unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1867: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.dbt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
          to label %bb.vi unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.vi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1867
  %i.dbu = load ptr, ptr %i.dbt, align 8, !tbaa !120
  %i.dbv = getelementptr i8, ptr %i.dbu, i64 -24
  %i.dbw = load i64, ptr %i.dbv, align 8
  %i.dbx = getelementptr inbounds i8, ptr %i.dbt, i64 %i.dbw
  %i.dby = getelementptr inbounds nuw i8, ptr %i.dbx, i64 240
  %i.dbz = load ptr, ptr %i.dby, align 8, !tbaa !838 ; 6 uses
  %.not.i.i.i2048 = icmp eq ptr %i.dbz, null
  br i1 %.not.i.i.i2048, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2049

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2049: ; preds = %bb.vi
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dbz, i64 56
  %i.dcb = load i8, ptr %i.dca, align 8, !tbaa !175
  %.not.i1.i.i2050 = icmp eq i8 %i.dcb, 0
  br i1 %.not.i1.i.i2050, label %bb.vk, label %bb.vj

bb.vj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2049
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.dbz, i64 67
  %i.dcd = load i8, ptr %i.dcc, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2051

bb.vk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2049
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dbz)
          to label %.noexc2054 unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2054:                                       ; preds = %bb.vk
  %i.dce = load ptr, ptr %i.dbz, align 8, !tbaa !120
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.dce, i64 48
  %i.dcg = load ptr, ptr %i.dcf, align 8
  %i.dch = invoke noundef signext i8 %i.dcg(ptr noundef nonnull align 8 dereferenceable(570) %i.dbz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2051 unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !784

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2051: ; preds = %.noexc2054, %bb.vj
  %.0.i.i.i2052 = phi i8 [ %i.dcd, %bb.vj ], [ %i.dch, %.noexc2054 ]
  %i.dci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dbt, i8 noundef signext %.0.i.i.i2052)
          to label %.noexc2056 unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2056:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2051
  %i.dcj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dci)
          to label %_ZNSolsEPFRSoS_E.exit1869 unwind label %.loopexit.split-lp2228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit1869:                        ; preds = %.noexc2056
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #30
  %i.dck = getelementptr inbounds nuw i8, ptr %158, i64 112
  invoke void @_ZNSt6vectorIN7cxxopts8KeyValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %184, ptr noundef nonnull align 8 dereferenceable(24) %i.dck)
          to label %bb.vl unwind label %bb.vq

bb.vl:                                            ; preds = %_ZNSolsEPFRSoS_E.exit1869
  %i.dcl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.74, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1871 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1871: ; preds = %bb.vl
  %i.dcm = getelementptr inbounds nuw i8, ptr %184, i64 8 ; 2 uses
  %i.dcn = load ptr, ptr %i.dcm, align 8, !tbaa !186
  %i.dco = load ptr, ptr %184, align 8, !tbaa !187
  %i.dcp = ptrtoint ptr %i.dcn to i64
  %i.dcq = ptrtoint ptr %i.dco to i64
  %i.dcr = sub i64 %i.dcp, %i.dcq
  %i.dcs = ashr exact i64 %i.dcr, 6
  %i.dct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.dcs)
          to label %_ZNSolsEm.exit1873 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSolsEm.exit1873:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1871
  %i.dcu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dct, ptr noundef nonnull @.str.75, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1875 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1875: ; preds = %_ZNSolsEm.exit1873
  %i.dcv = load ptr, ptr %i.dct, align 8, !tbaa !120
  %i.dcw = getelementptr i8, ptr %i.dcv, i64 -24
  %i.dcx = load i64, ptr %i.dcw, align 8
  %i.dcy = getelementptr inbounds i8, ptr %i.dct, i64 %i.dcx
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 240
end_hunk_0
