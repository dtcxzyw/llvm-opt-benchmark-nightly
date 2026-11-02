Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/threadaffinity?download=true
inline.NumInlined: 1104
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL25logAffinitySettingResultsRKN3gmx8MDLoggerEPK20ThreadAffinityLayoutRKNS_16HardwareTopologyEiiRKNS_7MpiCommE:bb.a
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i99.i unwind label %bb.dp ; 7 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i99.i:                   ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i95.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i99.i
  %.08.i.i.i.i.i.i.i.i.i.i100.i = phi ptr [ %i.yz, %.lr.ph.i.i.i.i.i.i.i.i.i.i99.i ], [ %i.yw, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i95.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i101.i = phi ptr [ %i.za, %.lr.ph.i.i.i.i.i.i.i.i.i.i99.i ], [ %i.yq, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i95.i ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i101.i, i64 8
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !35
  store i32 %i.yy, ptr %.08.i.i.i.i.i.i.i.i.i.i100.i, align 4, !tbaa !35
  %i.yz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i100.i, i64 4 ; 5 uses
  %i.za = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i101.i, align 8, !tbaa !133 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i102.i = icmp eq ptr %i.za, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i102.i, label %_ZNSt6vectorIiSaIiEEC2INSt8__detail14_Node_iteratorIiLb1ELb0EEEvEET_S6_RKS0_.exit107.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i99.i, !llvm.loop !193

_ZNSt6vectorIiSaIiEEC2INSt8__detail14_Node_iteratorIiLb1ELb0EEEvEET_S6_RKS0_.exit107.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i99.i
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.ys ; 2 uses
  %i.zc = ptrtoint ptr %i.yz to i64
  %i.zd = ptrtoint ptr %i.yw to i64               ; 2 uses
  %i.ze = sub i64 %i.zc, %i.zd
  %i.zf = ashr exact i64 %i.ze, 2
  %i.zg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zf, i1 true)
  %i.zh = shl nuw nsw i64 %i.zg, 1
  %i.zi = xor i64 %i.zh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.yw, ptr nonnull %i.yz, i64 noundef %i.zi)
          to label %.noexc109.i unwind label %.thread229.i

.noexc109.i:                                      ; preds = %_ZNSt6vectorIiSaIiEEC2INSt8__detail14_Node_iteratorIiLb1ELb0EEEvEET_S6_RKS0_.exit107.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.yw, ptr nonnull %i.yz)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit111.i unwind label %.thread229.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit111.i: ; preds = %bb.dc, %.noexc109.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i103228.i = phi ptr [ %i.yz, %.noexc109.i ], [ null, %bb.dc ]
  %.sroa.13.0227.i = phi ptr [ %i.zb, %.noexc109.i ], [ null, %bb.dc ] ; 2 uses
  %.sroa.0163.0224.i = phi ptr [ %i.yw, %.noexc109.i ], [ null, %bb.dc ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !215
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21, !noalias !215
  %i.zj = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i103228.i to i64
  %i.zk = ptrtoint ptr %.sroa.0163.0224.i to i64  ; 3 uses
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.0163.0224.i, i64 %i.zl
  invoke void @_ZN3gmx22prettyPrintListAsRangeB5cxx11ENS_8ArrayRefIKiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr %.sroa.0163.0224.i, ptr %i.zm)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit111.i
  %i.zn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.44, i64 noundef 14)
          to label %.noexc115.i unwind label %bb.dj ; 6 uses

.noexc115.i:                                      ; preds = %bb.dd
  %i.zo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.zo, ptr %15, align 8, !tbaa !28, !alias.scope !230, !noalias !215
  %i.zp = load ptr, ptr %i.zn, align 8, !tbaa !33 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 16 ; 5 uses
  %i.zr = icmp eq ptr %i.zp, %i.zq
  br i1 %i.zr, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

bb.de:                                            ; preds = %.noexc115.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !29 ; 3 uses
  %i.zu = icmp ult i64 %i.zt, 16
  call void @llvm.assume(i1 %i.zu)
  %i.zv = add nuw nsw i64 %i.zt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zo, ptr noundef nonnull align 8 dereferenceable(1) %i.zq, i64 %i.zv, i1 false)
  br label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %.noexc115.i
  store ptr %i.zp, ptr %15, align 8, !tbaa !33, !alias.scope !230, !noalias !215
  %i.zw = load i64, ptr %i.zq, align 8, !tbaa !34
  store i64 %i.zw, ptr %i.zo, align 8, !tbaa !34, !alias.scope !230, !noalias !215
  %.phi.trans.insert.i113.i = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %.pre.i114.i = load i64, ptr %.phi.trans.insert.i113.i, align 8, !tbaa !29
  br label %bb.df

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i, %bb.de
  %i.zx = phi i64 [ %i.zt, %bb.de ], [ %.pre.i114.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.zx, ptr %i.zz, align 8, !tbaa !29, !alias.scope !230, !noalias !215
  store ptr %i.zq, ptr %i.zn, align 8, !tbaa !33
  store i64 0, ptr %i.zy, align 8, !tbaa !29
  store i8 0, ptr %i.zq, align 8, !tbaa !34
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !29, !noalias !215 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !29, !alias.scope !215
  %i.aad = sub i64 4611686018427387903, %i.aac
  %i.aae = icmp ult i64 %i.aad, %i.aaa
  br i1 %i.aae, label %bb.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i117.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc118.i unwind label %bb.dk

.noexc118.i:                                      ; preds = %bb.dg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i117.i: ; preds = %bb.df
  %i.aaf = load ptr, ptr %15, align 8, !tbaa !33, !noalias !215
  %i.aag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %i.aaf, i64 noundef %i.aaa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit120.i unwind label %bb.dk ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit120.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i117.i
  %i.aah = load ptr, ptr %15, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.zo
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit120.i
  %i.aaj = load i64, ptr %i.zo, align 8, !tbaa !34, !noalias !215
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit120.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i
  %i.aal = load ptr, ptr %16, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.aan = icmp eq ptr %i.aal, %i.aam
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i
  %i.aao = load i64, ptr %i.aam, align 8, !tbaa !34, !noalias !215
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aap) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !215
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !215
  %.not.i.i.i127.i = icmp eq ptr %.sroa.0163.0224.i, null
  br i1 %.not.i.i.i127.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit129.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i
  %i.aaq = ptrtoint ptr %.sroa.13.0227.i to i64
  %i.aar = sub i64 %i.aaq, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0163.0224.i, i64 noundef %i.aar) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit129.i

.thread229.i:                                     ; preds = %.noexc109.i, %_ZNSt6vectorIiSaIiEEC2INSt8__detail14_Node_iteratorIiLb1ELb0EEEvEET_S6_RKS0_.exit107.i
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.di:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit111.i
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i

bb.dj:                                            ; preds = %bb.dd
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i117.i, %bb.dg
  %i.aav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaw = load ptr, ptr %15, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.zo
  br i1 %i.aax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %bb.dk
  %i.aay = load i64, ptr %i.zo, align 8, !tbaa !34, !noalias !215
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aaz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i, %bb.dj
  %.pn44.i = phi { ptr, i32 } [ %i.aau, %bb.dj ], [ %i.aav, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i ], [ %i.aav, %bb.dk ] ; 2 uses
  %i.aba = load ptr, ptr %16, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.abc = icmp eq ptr %i.aba, %i.abb
  br i1 %i.abc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i
  %i.abd = load i64, ptr %i.abb, align 8, !tbaa !34, !noalias !215
  %i.abe = add i64 %i.abd, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abe) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i, %bb.di
  %.pn44.pn.i = phi { ptr, i32 } [ %i.aat, %bb.di ], [ %.pn44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i ], [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21, !noalias !215
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !215
  %.not.i.i.i136.i = icmp eq ptr %.sroa.0163.0224.i, null
  br i1 %.not.i.i.i136.i, label %.body.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i, %.thread229.i
  %.pre-phi.i = phi i64 [ %i.zd, %.thread229.i ], [ %i.zk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i ]
  %.pn44.pn.pn236.i = phi { ptr, i32 } [ %i.aas, %.thread229.i ], [ %.pn44.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i ]
  %.sroa.0163.0225235.i = phi ptr [ %i.yw, %.thread229.i ], [ %.sroa.0163.0224.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i ]
  %.sroa.13.0226234.i = phi ptr [ %i.zb, %.thread229.i ], [ %.sroa.13.0227.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i ]
  %i.abf = ptrtoint ptr %.sroa.13.0226234.i to i64
  %i.abg = sub i64 %i.abf, %.pre-phi.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0163.0225235.i, i64 noundef %i.abg) #26
  br label %.body.i

_ZNSt6vectorIiSaIiEED2Ev.exit129.i:               ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !215
  invoke void @_Z39messageWhenOpenMPLibraryWillSetAffinityB5cxx11v(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %17)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit129.i
  %i.abh = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.abi = load i8, ptr %i.abh, align 8, !tbaa !135, !range !44, !noalias !215, !noundef !45
  %i.abj = trunc nuw i8 %i.abi to i1
  br i1 %i.abj, label %bb.dn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.abh, align 8, !tbaa !135, !noalias !215
  %i.abk = load ptr, ptr %17, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.abm = icmp eq ptr %i.abk, %i.abl
  br i1 %i.abm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.dn
  %i.abn = load i64, ptr %i.abl, align 8, !tbaa !34, !noalias !215
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abo) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !215
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !215
  %i.abp = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !29, !alias.scope !215
  %i.abr = and i64 %i.abq, -4
  %i.abs = icmp eq i64 %i.abr, 4611686018427387900
  br i1 %i.abs, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.abt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.45, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %bb.dp ; 0 uses

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit129.i
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !215
  br label %.body.i

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i95.i, %.invoke.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.abw = load ptr, ptr %12, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aby = icmp eq ptr %i.abw, %i.abx
  br i1 %i.aby, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.abz = load i64, ptr %i.abx, align 8, !tbaa !34, !noalias !215
  %i.aca = add i64 %i.abz, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.aca) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21, !noalias !215
  br label %bb.dq

.body.i:                                          ; preds = %bb.dp, %bb.do, %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i, %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i
  %.pn49.pn.i = phi { ptr, i32 } [ %i.abu, %bb.do ], [ %.pn.pn.pn218.i, %bb.db ], [ %i.abv, %bb.dp ], [ %.pn44.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.i ], [ %.pn44.pn.pn236.i, %bb.dl ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i ] ; 2 uses
  %i.acb = load ptr, ptr %20, align 8, !tbaa !33, !alias.scope !215 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.acd = icmp eq ptr %i.acb, %i.acc
  br i1 %i.acd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i: ; preds = %.body.i
  %i.ace = load i64, ptr %i.acc, align 8, !tbaa !34, !alias.scope !215
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.acf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i, %bb.cx
  %.pn49.pn.pn.i = phi { ptr, i32 } [ %i.xx, %bb.cx ], [ %.pn49.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i ], [ %.pn49.pn.i, %.body.i ] ; 2 uses
  %i.acg = load ptr, ptr %12, align 8, !tbaa !33, !noalias !215 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aci = icmp eq ptr %i.acg, %i.ach
  br i1 %i.aci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i
  %i.acj = load i64, ptr %i.ach, align 8, !tbaa !34, !noalias !215
  %i.ack = add i64 %i.acj, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.ack) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i, %bb.cw
  %.pn49.pn.pn.pn.i = phi { ptr, i32 } [ %i.xw, %bb.cw ], [ %.pn49.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i ], [ %.pn49.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21, !noalias !215
  br label %bb.du

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i, %.noexc60.i
  %.sroa.0191.0.lcssa402.i = phi ptr [ %.sroa.0191.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i ], [ %.sroa.0191.0.lcssa401.i, %.noexc60.i ] ; 3 uses
  %.sroa.17.0.lcssa399.i = phi ptr [ %.sroa.17.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i ], [ %.sroa.17.0.lcssa398.i, %.noexc60.i ]
  %i.acl = load ptr, ptr %i.o, align 8, !tbaa !132, !noalias !215 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.acl, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dq, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.acm, %.lr.ph.i.i.i.i.i ], [ %i.acl, %bb.dq ] ; 2 uses
  %i.acm = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #26
  %.not.i.i.i.i.i = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.dq
  %i.acn = load ptr, ptr %11, align 8, !tbaa !128, !noalias !215
  %i.aco = load i64, ptr %i.n, align 8, !tbaa !129, !noalias !215
  %i.acp = shl i64 %i.aco, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.acn, i8 0, i64 %i.acp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !215
  %i.acq = load ptr, ptr %11, align 8, !tbaa !128, !noalias !215 ; 2 uses
  %i.acr = icmp eq ptr %i.acq, %i.m
  br i1 %i.acr, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.acs = load i64, ptr %i.n, align 8, !tbaa !129, !noalias !215
  %i.act = shl i64 %i.acs, 3
  call void @_ZdlPvm(ptr noundef %i.acq, i64 noundef %i.act) #26
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit.i

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit.i: ; preds = %bb.dr, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !215
  %i.acu = load ptr, ptr %i.j, align 8, !tbaa !132, !noalias !215 ; 2 uses
  %.not5.i.i.i.i150.i = icmp eq ptr %i.acu, null
  br i1 %.not5.i.i.i.i150.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154.i, label %.lr.ph.i.i.i.i151.i

.lr.ph.i.i.i.i151.i:                              ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit.i, %.lr.ph.i.i.i.i151.i
  %.06.i.i.i.i152.i = phi ptr [ %i.acv, %.lr.ph.i.i.i.i151.i ], [ %i.acu, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit.i ] ; 2 uses
  %i.acv = load ptr, ptr %.06.i.i.i.i152.i, align 8, !tbaa !133 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i152.i, i64 noundef 16) #26
  %.not.i.i.i.i153.i = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i.i153.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154.i, label %.lr.ph.i.i.i.i151.i, !llvm.loop !1

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154.i: ; preds = %.lr.ph.i.i.i.i151.i, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit.i
  %i.acw = load ptr, ptr %10, align 8, !tbaa !128, !noalias !215
  %i.acx = load i64, ptr %i.i, align 8, !tbaa !129, !noalias !215
  %i.acy = shl i64 %i.acx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.acw, i8 0, i64 %i.acy, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !215
  %i.acz = load ptr, ptr %10, align 8, !tbaa !128, !noalias !215 ; 2 uses
  %i.ada = icmp eq ptr %i.acz, %i.h
  br i1 %i.ada, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154.i
  %i.adb = load i64, ptr %i.i, align 8, !tbaa !129, !noalias !215
  %i.adc = shl i64 %i.adb, 3
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.adc) #26
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155.i

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155.i: ; preds = %bb.ds, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !215
  %.not.i.i.i156.i = icmp eq ptr %.sroa.0191.0.lcssa402.i, null
  br i1 %.not.i.i.i156.i, label %_ZL25getExternalAffinityStringB5cxx11RKN3gmx16HardwareTopologyE.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155.i
  %i.add = ptrtoint ptr %.sroa.17.0.lcssa399.i to i64
  %i.ade = ptrtoint ptr %.sroa.0191.0.lcssa402.i to i64
  %i.adf = sub i64 %i.add, %i.ade
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0.lcssa402.i, i64 noundef %i.adf) #26
  br label %_ZL25getExternalAffinityStringB5cxx11RKN3gmx16HardwareTopologyE.exit

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i, %bb.cv, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.17.3.i = phi ptr [ %.sroa.17.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i ], [ %.sroa.17.0.lcssa397.i, %bb.cv ], [ %.sroa.17.1.ph.i, %.loopexit.i ], [ %.sroa.11.0290.i, %.loopexit.split-lp.i ]
  %.sroa.0191.3.i = phi ptr [ %.sroa.0191.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i ], [ %.sroa.0191.0.lcssa400.i, %bb.cv ], [ %.sroa.0191.1.ph.i, %.loopexit.i ], [ %.sroa.0191.0291.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn54.i = phi { ptr, i32 } [ %.pn49.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i ], [ %i.xv, %bb.cv ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !215
  call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !215
  %.not.i.i.i159.i = icmp eq ptr %.sroa.0191.3.i, null
  br i1 %.not.i.i.i159.i, label %.body, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adg = ptrtoint ptr %.sroa.17.3.i to i64
  %i.adh = ptrtoint ptr %.sroa.0191.3.i to i64
  %i.adi = sub i64 %i.adg, %i.adh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.3.i, i64 noundef %i.adi) #26
  br label %.body

_ZL25getExternalAffinityStringB5cxx11RKN3gmx16HardwareTopologyE.exit: ; preds = %bb.dt, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit155.i
  %i.adj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.33, i64 noundef 19)
          to label %.noexc unwind label %bb.fa    ; 6 uses

.noexc:                                           ; preds = %_ZL25getExternalAffinityStringB5cxx11RKN3gmx16HardwareTopologyE.exit
  %i.adk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  store ptr %i.adk, ptr %19, align 8, !tbaa !28, !alias.scope !231
  %i.adl = load ptr, ptr %i.adj, align 8, !tbaa !33 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adj, i64 16 ; 5 uses
  %i.adn = icmp eq ptr %i.adl, %i.adm
  br i1 %i.adn, label %bb.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.dw:                                            ; preds = %.noexc
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !29 ; 3 uses
  %i.adq = icmp ult i64 %i.adp, 16
  call void @llvm.assume(i1 %i.adq)
  %i.adr = add nuw nsw i64 %i.adp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adk, ptr noundef nonnull align 8 dereferenceable(1) %i.adm, i64 %i.adr, i1 false)
  br label %bb.dx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.adl, ptr %19, align 8, !tbaa !33, !alias.scope !231
  %i.ads = load i64, ptr %i.adm, align 8, !tbaa !34
  store i64 %i.ads, ptr %i.adk, align 8, !tbaa !34, !alias.scope !231
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
end_hunk_0
begin_hunk_1_@_ZL12set_affinityRKN3gmx8MDLoggerERKNS_7MpiCommEiiRK20ThreadAffinityLayoutPNS_21IThreadAffinityAccessE.omp_outlined:bb.a
  %i.b = alloca [1 x ptr], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = load i32, ptr %3, align 4, !tbaa !35
  %i.d = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109
  %i.j = mul nsw i32 %i.i, %i.e
  %i.k = add nsw i32 %i.j, %i.g                   ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !136    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZL16getCoreForThreadRK20ThreadAffinityLayoutii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.k to i64                     ; 3 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.t, %i.p
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, i64 noundef %i.p, i64 noundef %i.t) #28
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i:                ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  br label %_ZL16getCoreForThreadRK20ThreadAffinityLayoutii.exit

_ZL16getCoreForThreadRK20ThreadAffinityLayoutii.exit: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i, %bb.b
  %.0.i = phi i32 [ %i.v, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !111    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %.0.i)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZL16getCoreForThreadRK20ThreadAffinityLayoutii.exit
  %i.ab = zext i1 %i.aa to i32                    ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !35
  %i.ac = load ptr, ptr @debug, align 8, !tbaa !146 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !121
  %i.af = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.48, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %.0.i, i32 noundef %i.ab) #21 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.a, %bb.f, %_ZL16getCoreForThreadRK20ThreadAffinityLayoutii.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.ah, 1
  %.015 = extractvalue { ptr, i32 } %i.ah, 0      ; 2 uses
  %i.ai = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.aj = icmp eq i32 %.0, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.p

bb.i:                                             ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %i.b, align 8
  %i.ak = load i32, ptr %0, align 4, !tbaa !35    ; 2 uses
  %i.al = call i32 @__kmpc_reduce_nowait(ptr nonnull @1, i32 %i.ak, i32 1, i64 8, ptr nonnull %i.b, ptr nonnull @_ZL12set_affinityRKN3gmx8MDLoggerERKNS_7MpiCommEiiRK20ThreadAffinityLayoutPNS_21IThreadAffinityAccessE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.al, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.h
  %i.am = tail call ptr @__cxa_begin_catch(ptr %.015) #21
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #28
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.an = load i32, ptr %5, align 4, !tbaa !35
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ap = add nsw i32 %i.ao, %i.an
  store i32 %i.ap, ptr %5, align 4, !tbaa !35
  call void @__kmpc_end_reduce_nowait(ptr nonnull @1, i32 %i.ak, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ar = atomicrmw add ptr %5, i32 %i.aq monotonic, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.o:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

bb.p:                                             ; preds = %bb.h
  tail call void @__clang_call_terminate(ptr %.015) #29
  unreachable
}

declare noundef i32 @_Z22gmx_omp_get_thread_numv() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #18

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL12set_affinityRKN3gmx8MDLoggerERKNS_7MpiCommEiiRK20ThreadAffinityLayoutPNS_21IThreadAffinityAccessE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = load i32, ptr %i.a, align 4, !tbaa !35
  %i.e = add nsw i32 %i.d, %i.c
  store i32 %i.e, ptr %i.b, align 4, !tbaa !35
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare !callback !148 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #10

declare noundef i32 @_Z11tMPI_ReducePKvPviP14tmpi_datatype_7tMPI_OpiP10tmpi_comm_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z29gmx_check_thread_affinity_setRKN3gmx8MDLoggerEP12gmx_hw_opt_tibP10tmpi_comm_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %5 = alloca %struct.cpu_set_t, align 8          ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 11 uses
  %7 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %8 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %9 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %10 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ29gmx_check_thread_affinity_setRKN3gmx8MDLoggerEP12gmx_hw_opt_tibP10tmpi_comm_ENK3$_0clEv", ptr noundef nonnull @.str.12, i32 noundef 863) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %.not24 = icmp eq i32 %i.e, 4
  br i1 %.not24, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_Z39messageWhenOpenMPLibraryWillSetAffinityB5cxx11v(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !135, !range !44, !noundef !45
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit38

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.d, align 8, !tbaa !22
  %i.j = and i32 %i.i, -2
  %switch = icmp eq i32 %i.j, 2
  br i1 %switch, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i8, ptr %i.k, align 8, !tbaa !47, !range !44, !noundef !45
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %.thread106

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread106, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %i.v = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.v, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.i
  %i.w = load ptr, ptr %6, align 8, !tbaa !33
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %i.w, i64 noundef %i.u)
          to label %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.k ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.k, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZN3gmx14LogEntryWriterD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.k
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #26
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit35

_ZN3gmx14LogEntryWriterD2Ev.exit35:               ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ak = load i8, ptr %i.f, align 8, !tbaa !135, !range !44, !noundef !45
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.l:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit35
  store i8 0, ptr %i.f, align 8, !tbaa !135
  %i.am = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !34
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.l, %_ZN3gmx14LogEntryWriterD2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.am

.thread106:                                       ; preds = %bb.h, %bb.g
  store i32 4, ptr %i.d, align 8, !tbaa !22
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pre.pre = load i8, ptr %i.f, align 8, !tbaa !135, !range !44
  %i.ar = trunc nuw i8 %.pre.pre to i1
  store i32 4, ptr %i.d, align 8, !tbaa !22
  br i1 %i.ar, label %bb.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit38

bb.m:                                             ; preds = %.thread106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  store i8 0, ptr %i.f, align 8, !tbaa !135
  %i.as = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i36: ; preds = %bb.m
  %i.av = load i64, ptr %i.at, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit38

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit38: ; preds = %bb.m, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit38, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %i.ax = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %5) #21 ; 2 uses
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %.preheader.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr @debug, align 8, !tbaa !146 ; 2 uses
  %.not18.i = icmp eq ptr %i.ay, null
  br i1 %.not18.i, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.61, i32 noundef %i.ax) #21 ; 0 uses
  br label %.sink.split.i

.preheader.i:                                     ; preds = %bb.n
  %i.ba = icmp sgt i32 %2, 0
  br i1 %i.ba, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bb = call i32 @llvm.umin.i32(i32 %2, i32 1024)
  %wide.trip.count.i = zext nneg i32 %i.bb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bc = icmp ult i32 %2, 4
  br i1 %i.bc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2044
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01421.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i ], [ %i.cj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %bb.r, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.r ] ; 3 uses
  %.01421.i.epil = phi i1 [ %.01421.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bj, %bb.r ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %bb.r ]
  br i1 %.01421.i.epil, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.epil
  %i.bd = lshr i64 %indvars.iv.i.epil, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !130
  %i.bg = and i64 %indvars.iv.i.epil, 63
  %i.bh = lshr i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.epil
  %i.bj = phi i1 [ false, %.lr.ph.i.epil ], [ %i.bi, %bb.q ] ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !258

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.r, %.preheader.i
  %.014.lcssa.i = phi i1 [ true, %.preheader.i ], [ %i.cj, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bj, %bb.r ] ; 2 uses
  %i.bk = load ptr, ptr @debug, align 8, !tbaa !146 ; 2 uses
  %.not19.i = icmp eq ptr %i.bk, null
  br i1 %.not19.i, label %bb.u, label %bb.t

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.critedge ] ; 9 uses
  %.01421.i = phi i1 [ true, %.lr.ph.preheader.i.new ], [ %i.cj, %.critedge ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.critedge ]
  br i1 %.01421.i, label %.lr.ph.i.1, label %.critedge

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.bl = lshr i64 %indvars.iv.i, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !130
  %i.bo = and i64 %indvars.iv.i, 60
  %i.bp = lshr i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i1
  br i1 %i.bq, label %.lr.ph.i.2, label %.critedge

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.br = lshr i64 %indvars.iv.i, 6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !130
  %indvars.iv.next.i = and i64 %indvars.iv.i, 60
  %i.bu = or disjoint i64 %indvars.iv.next.i, 1
  %i.bv = lshr i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %.lr.ph.i.3, label %.critedge

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bx = lshr i64 %indvars.iv.i, 6
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !130
  %indvars.iv.next.i.1 = and i64 %indvars.iv.i, 60
  %i.ca = or disjoint i64 %indvars.iv.next.i.1, 2
  %i.cb = lshr i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i1
  br i1 %i.cc, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.lr.ph.i.3
  %i.cd = lshr i64 %indvars.iv.i, 6
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !130
  %indvars.iv.next.i.2 = and i64 %indvars.iv.i, 60
  %i.cg = or disjoint i64 %indvars.iv.next.i.2, 3
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.2, %.lr.ph.i, %.lr.ph.i.1, %bb.s, %.lr.ph.i.3
  %i.cj = phi i1 [ false, %.lr.ph.i.3 ], [ %i.ci, %bb.s ], [ false, %.lr.ph.i.1 ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i.2 ] ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !259

bb.t:                                             ; preds = %._crit_edge.i
  %i.ck = select i1 %.014.lcssa.i, ptr @.str.63, ptr @.str.64
  %i.cl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.ck) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  br i1 %.014.lcssa.i, label %bb.v, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.u, %bb.p, %bb.o
  store i8 0, ptr %i.a, align 1, !tbaa !260
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %bb.u
  %i.cm = phi i8 [ 1, %bb.u ], [ 0, %.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cn = call noundef i32 @_Z16tMPI_InitializedPi(ptr noundef nonnull %i.b) ; 0 uses
  %i.co = load i32, ptr %i.b, align 4, !tbaa !35
  %.not20.i = icmp eq i32 %i.co, 0
  br i1 %.not20.i, label %_ZL25detectDefaultAffinityMaskiP10tmpi_comm_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 %i.cm, ptr %i.c, align 1, !tbaa !260
  %i.cp = load ptr, ptr @TMPI_C_BOOL, align 8, !tbaa !39
  %i.cq = call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.cp, i32 noundef 4, ptr noundef %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.pre.i = load i8, ptr %i.a, align 1, !tbaa !260, !range !44
  br label %_ZL25detectDefaultAffinityMaskiP10tmpi_comm_.exit

_ZL25detectDefaultAffinityMaskiP10tmpi_comm_.exit: ; preds = %bb.v, %bb.w
  %i.cr = phi i8 [ %.pre.i, %bb.w ], [ %i.cm, %bb.v ]
  %i.cs = trunc nuw i8 %i.cr to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %i.cs, label %bb.al, label %bb.x

bb.x:                                             ; preds = %_ZL25detectDefaultAffinityMaskiP10tmpi_comm_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !22
  switch i32 %i.cu, label %bb.ae [
    i32 3, label %bb.al
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null                 ; 2 uses
  br i1 %3, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.cw, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.cy, ptr %8, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !29
end_hunk_1
