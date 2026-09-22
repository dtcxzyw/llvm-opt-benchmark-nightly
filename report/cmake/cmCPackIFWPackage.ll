Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackIFWPackage?download=true
inline.NumInlined: 2154
inline.NumDeleted: 704
begin_hunk_0_@_ZN17cmCPackIFWPackage19GeneratePackageFileEv:bb.a
  br i1 %.not1155, label %._crit_edge1285, label %._crit_edge.i.i638

bb.dh:                                            ; preds = %.noexc646, %.noexc645, %.noexc644, %.noexc643, %.noexc642, %._crit_edge.i.i638
  %i.xg = landingpad { ptr, i32 }
          cleanup
  %i.xh = load ptr, ptr %76, align 8, !tbaa !21   ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.wq
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.dh
  %i.xj = load i64, ptr %i.wq, align 8, !tbaa !20
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #22
  br label %bb.is

bb.di:                                            ; preds = %._crit_edge1285
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

._crit_edge1282.thread:                           ; preds = %bb.cs, %._crit_edge1285
  %i.xm = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %.not188 = icmp eq ptr %i.xm, null
  br i1 %.not188, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %._crit_edge1282.thread
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 2240
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !19
  %i.xp = icmp eq i64 %i.xo, 0
  br i1 %i.xp, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xq = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %._crit_edge1282.thread
  %i.xr = phi i1 [ false, %bb.dj ], [ false, %._crit_edge1282.thread ], [ %i.xq, %bb.dk ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  %i.xs = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 5 uses
  store i32 0, ptr %i.xs, align 8, !tbaa !30
  %i.xt = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  store ptr null, ptr %i.xt, align 8, !tbaa !31
  %i.xu = getelementptr inbounds nuw i8, ptr %77, i64 24 ; 2 uses
  store ptr %i.xs, ptr %i.xu, align 8, !tbaa !32
  %i.xv = getelementptr inbounds nuw i8, ptr %77, i64 32
  store ptr %i.xs, ptr %i.xv, align 8, !tbaa !33
  %i.xw = getelementptr inbounds nuw i8, ptr %77, i64 40 ; 2 uses
  store i64 0, ptr %i.xw, align 8, !tbaa !34
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !32 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %.not11561286 = icmp eq ptr %i.xy, %i.xz
  br i1 %.not11561286, label %._crit_edge1290, label %.lr.ph1289

._crit_edge1290:                                  ; preds = %bb.do, %bb.dl
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !32 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %.not11571291 = icmp eq ptr %i.yb, %i.yc
  br i1 %.not11571291, label %._crit_edge1295, label %.lr.ph1294

.lr.ph1294:                                       ; preds = %._crit_edge1290
  %i.yd = getelementptr inbounds nuw i8, ptr %78, i64 40
  %i.ye = getelementptr inbounds nuw i8, ptr %78, i64 56 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  br label %bb.dq

bb.dm:                                            ; preds = %bb.dk
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

.lr.ph1289:                                       ; preds = %bb.dl, %bb.do
  %.sroa.01109.01287 = phi ptr [ %i.yn, %bb.do ], [ %i.xy, %bb.dl ] ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.01109.01287, i64 32
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !120 ; 2 uses
  %i.yj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull align 8 dereferenceable(72) %i.yi)
          to label %.noexc655 unwind label %bb.dp ; 2 uses

.noexc655:                                        ; preds = %.lr.ph1289
  %i.yk = extractvalue { ptr, ptr } %i.yj, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.yk, null
  br i1 %.not.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.noexc655
  %i.yl = extractvalue { ptr, ptr } %i.yj, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %77, ptr %23, align 8, !tbaa !533
  %i.ym = invoke ptr @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef %i.yl, ptr noundef nonnull %i.yk, ptr noundef nonnull align 8 dereferenceable(72) %i.yi, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %.noexc656 unwind label %bb.dp ; 0 uses

.noexc656:                                        ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.do

bb.do:                                            ; preds = %.noexc656, %.noexc655
  %i.yn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01109.01287) #26 ; 2 uses
  %.not1156 = icmp eq ptr %i.yn, %i.xz
  br i1 %.not1156, label %._crit_edge1290, label %.lr.ph1289

bb.dp:                                            ; preds = %bb.dn, %.lr.ph1289
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

._crit_edge1295:                                  ; preds = %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit, %._crit_edge1290
  %i.yp = load i64, ptr %i.xw, align 8, !tbaa !34
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %bb.es, label %bb.dx

bb.dq:                                            ; preds = %.lr.ph1294, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit
  %.sroa.01105.01292 = phi ptr [ %i.yb, %.lr.ph1294 ], [ %i.zg, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit ] ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.01105.01292, i64 32
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 168
  invoke void @_ZN17cmCPackIFWPackage16DependenceStructC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(32) %i.yt)
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.yu = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %.noexc662 unwind label %bb.dv ; 2 uses

.noexc662:                                        ; preds = %bb.dr
  %i.yv = extractvalue { ptr, ptr } %i.yu, 1      ; 2 uses
  %.not.i.i657 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i657, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.noexc662
  %i.yw = extractvalue { ptr, ptr } %i.yu, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %77, ptr %22, align 8, !tbaa !533
  %i.yx = invoke ptr @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef %i.yw, ptr noundef nonnull %i.yv, ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %.noexc663 unwind label %bb.dv ; 0 uses

.noexc663:                                        ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.dt

bb.dt:                                            ; preds = %.noexc663, %.noexc662
  %i.yy = load ptr, ptr %i.yd, align 8, !tbaa !21 ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.ye
  br i1 %i.yz, label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i664: ; preds = %bb.dt
  %i.za = load i64, ptr %i.ye, align 8, !tbaa !20
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zb) #23
  br label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i

_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i664
  %i.zc = load ptr, ptr %78, align 8, !tbaa !21   ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.yf
  br i1 %i.zd, label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i
  %i.ze = load i64, ptr %i.yf, align 8, !tbaa !20
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zc, i64 noundef %i.zf) #23
  br label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit

_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  %i.zg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01105.01292) #26 ; 2 uses
  %.not1157 = icmp eq ptr %i.zg, %i.yc
  br i1 %.not1157, label %._crit_edge1295, label %bb.dq

bb.du:                                            ; preds = %bb.dq
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ds, %bb.dr
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17cmCPackIFWPackage16DependenceStructD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %78) #22
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.pn247 = phi { ptr, i32 } [ %i.zi, %bb.dv ], [ %i.zh, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.ir

bb.dx:                                            ; preds = %._crit_edge1295
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %79)
          to label %bb.dy unwind label %bb.eg

bb.dy:                                            ; preds = %bb.dx
  %i.zj = load ptr, ptr %i.xu, align 8, !tbaa !32 ; 3 uses
  br i1 %i.xr, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 32
  %i.zl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.zk, i8 noundef signext 45, i64 noundef 0) #22
  %i.zm = icmp ne i64 %i.zl, -1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %108 = phi i1 [ false, %bb.dy ], [ %i.zm, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef nonnull align 8 dereferenceable(72) %i.zn)
          to label %bb.eb unwind label %bb.eh

bb.eb:                                            ; preds = %bb.ea
  %i.zo = load ptr, ptr %80, align 8, !tbaa !21
  %i.zp = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !19
  %i.zr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %i.zo, i64 noundef %i.zq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ei ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.eb
  %i.zs = load ptr, ptr %80, align 8, !tbaa !21   ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.zu = icmp eq ptr %i.zs, %i.zt
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.zv = load i64, ptr %i.zt, align 8, !tbaa !20
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  %i.zx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.zj) #26 ; 2 uses
  %.not11581296 = icmp eq ptr %i.zx, %i.xs
  br i1 %.not11581296, label %._crit_edge.i.i682, label %.lr.ph1299

.lr.ph1299:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
  %i.zy = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.zz = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 4 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph1299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675
  %.01541298 = phi i1 [ %108, %.lr.ph1299 ], [ %110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ] ; 2 uses
  %.sroa.01097.01297 = phi ptr [ %i.zx, %.lr.ph1299 ], [ %i.aam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ] ; 3 uses
  br i1 %i.xr, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.01097.01297, i64 32
  %i.aab = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aaa, i8 noundef signext 45, i64 noundef 0) #22
  %i.aac = icmp ne i64 %i.aab, -1
  %109 = or i1 %.01541298, %i.aac
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %110 = phi i1 [ %.01541298, %bb.ec ], [ %109, %bb.ed ] ; 2 uses
  %i.aad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #22
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.01097.01297, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr noundef nonnull align 8 dereferenceable(72) %i.aae)
          to label %bb.ef unwind label %bb.ek

bb.ef:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aaf = load ptr, ptr %81, align 8, !tbaa !21
  %i.aag = load i64, ptr %i.zy, align 8, !tbaa !19
  %i.aah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %i.aaf, i64 noundef %i.aag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672 unwind label %bb.el ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672: ; preds = %bb.ef
  %i.aai = load ptr, ptr %81, align 8, !tbaa !21  ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.zz
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672
  %i.aak = load i64, ptr %i.zz, align 8, !tbaa !20
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  %i.aam = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01097.01297) #26 ; 2 uses
  %.not1158 = icmp eq ptr %i.aam, %i.xs
  br i1 %.not1158, label %._crit_edge.i.i682, label %bb.ec, !llvm.loop !455

bb.eg:                                            ; preds = %bb.dx
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eh:                                            ; preds = %bb.ea
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.ei:                                            ; preds = %bb.eb
  %i.aap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaq = load ptr, ptr %80, align 8, !tbaa !21  ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.aas = icmp eq ptr %i.aaq, %i.aar
  br i1 %i.aas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.ei
  %i.aat = load i64, ptr %i.aar, align 8, !tbaa !20
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aaq, i64 noundef %i.aau) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.eh
  %.pn189 = phi { ptr, i32 } [ %i.aao, %bb.eh ], [ %i.aap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.aap, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  br label %bb.eq

bb.ej:                                            ; preds = %bb.ee
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ek:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

bb.el:                                            ; preds = %bb.ef
  %i.aax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aay = load ptr, ptr %81, align 8, !tbaa !21  ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.zz
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679: ; preds = %bb.el
  %i.aba = load i64, ptr %i.zz, align 8, !tbaa !20
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679, %bb.ek
  %.pn194 = phi { ptr, i32 } [ %i.aaw, %bb.ek ], [ %i.aax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679 ], [ %i.aax, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  br label %bb.eq

._crit_edge.i.i682:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
  %.0154.lcssa = phi i1 [ %108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669 ], [ %110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #22
  %i.abc = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 6 uses
  store ptr %i.abc, ptr %82, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.abc, ptr noundef nonnull align 1 dereferenceable(12) @.str.72, i64 12, i1 false)
  %i.abd = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 12, ptr %i.abd, align 8, !tbaa !19
  %i.abe = getelementptr inbounds nuw i8, ptr %82, i64 28
  store i8 0, ptr %i.abe, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.abf = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 7 uses
  store ptr %i.abf, ptr %83, align 8, !tbaa !18, !alias.scope !536
  %i.abg = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 0, ptr %i.abg, align 8, !tbaa !19, !alias.scope !536
  store i8 0, ptr %i.abf, align 8, !tbaa !20, !alias.scope !536
  %i.abh = getelementptr inbounds nuw i8, ptr %79, i64 48
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !117, !noalias !536 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.abi, null
  %i.abj = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.abk = load ptr, ptr %i.abj, align 8, !noalias !536 ; 2 uses
  %i.abl = icmp ugt ptr %i.abi, %i.abk
  %.08.i.i.i = select i1 %i.abl, ptr %i.abi, ptr %i.abk ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i686 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i686, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %._crit_edge.i.i682
  %i.abm = getelementptr inbounds nuw i8, ptr %79, i64 40
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !118, !noalias !536 ; 2 uses
  %i.abo = ptrtoint ptr %.08.i.i.i to i64
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %i.abr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, i64 noundef 0, i64 noundef 0, ptr noundef %i.abn, i64 noundef %i.abq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.en ; 0 uses

bb.en:                                            ; preds = %bb.eo, %bb.em
  %i.abs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abt = load ptr, ptr %83, align 8, !tbaa !21, !alias.scope !536 ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.abf
  br i1 %i.abu, label %.body689, label %.body689.sink.split

bb.eo:                                            ; preds = %._crit_edge.i.i682
  %i.abv = getelementptr inbounds nuw i8, ptr %79, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %i.abv)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.en

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.eo, %bb.em
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %50, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %.noexc691 unwind label %bb.ep

.noexc691:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZN11cmXMLWriter10PreContentEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %.noexc692 unwind label %bb.ep

.noexc692:                                        ; preds = %.noexc691
  %i.abw = load ptr, ptr %50, align 8, !tbaa !131, !nonnull !132, !align !133
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !537
  invoke void @_ZN9cmXMLSafeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %20, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %.noexc693 unwind label %bb.ep

.noexc693:                                        ; preds = %.noexc692
  %i.abx = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN9cmXMLSafe6QuotesEb(ptr noundef nonnull align 8 dereferenceable(17) %20, i1 noundef zeroext false)
          to label %.noexc694 unwind label %bb.ep

.noexc694:                                        ; preds = %.noexc693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.abx, i64 24, i1 false), !tbaa.struct !512
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !537
  %i.aby = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9cmXMLSafe(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, ptr noundef nonnull align 8 dereferenceable(17) %21)
          to label %.noexc695 unwind label %bb.ep ; 0 uses

.noexc695:                                        ; preds = %.noexc694
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697 unwind label %bb.ep

_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697: ; preds = %.noexc695
  %i.abz = load ptr, ptr %83, align 8, !tbaa !21  ; 2 uses
  %i.aca = icmp eq ptr %i.abz, %i.abf
  br i1 %i.aca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697
  %i.acb = load i64, ptr %i.abf, align 8, !tbaa !20
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  %i.acd = load ptr, ptr %82, align 8, !tbaa !21  ; 2 uses
  %i.ace = icmp eq ptr %i.acd, %i.abc
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700
  %i.acf = load i64, ptr %i.abc, align 8, !tbaa !20
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.acg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  %i.ach = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ach, ptr %79, align 8, !tbaa !73
  %i.aci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.acj = getelementptr i8, ptr %i.ach, i64 -24
  %i.ack = load i64, ptr %i.acj, align 8
  %i.acl = getelementptr inbounds i8, ptr %79, i64 %i.ack
  store ptr %i.aci, ptr %i.acl, align 8, !tbaa !73
  %i.acm = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.acm, align 8, !tbaa !73
  %i.acn = getelementptr inbounds nuw i8, ptr %79, i64 80
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !21 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %79, i64 96 ; 2 uses
  %i.acq = icmp eq ptr %i.aco, %i.acp
  br i1 %i.acq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703
  %i.acr = load i64, ptr %i.acp, align 8, !tbaa !20
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acs) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.acm, align 8, !tbaa !73
  %i.act = getelementptr inbounds nuw i8, ptr %79, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.act) #22
  %i.acu = getelementptr inbounds nuw i8, ptr %79, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.acu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  br label %bb.es

bb.ep:                                            ; preds = %.noexc695, %.noexc694, %.noexc693, %.noexc692, %.noexc691, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.acv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acw = load ptr, ptr %83, align 8, !tbaa !21  ; 2 uses
  %i.acx = icmp eq ptr %i.acw, %i.abf
  br i1 %i.acx, label %.body689, label %.body689.sink.split

.body689.sink.split:                              ; preds = %bb.ep, %bb.en
  %.sink1720 = phi ptr [ %i.abt, %bb.en ], [ %i.acw, %bb.ep ]
  %.pn191.ph = phi { ptr, i32 } [ %i.abs, %bb.en ], [ %i.acv, %bb.ep ]
  %i.acy = load i64, ptr %i.abf, align 8, !tbaa !20
  %i.acz = add i64 %i.acy, 1
  call void @_ZdlPvm(ptr noundef %.sink1720, i64 noundef %i.acz) #23
  br label %.body689

.body689:                                         ; preds = %.body689.sink.split, %bb.ep, %bb.en
  %.pn191 = phi { ptr, i32 } [ %i.abs, %bb.en ], [ %i.acv, %bb.ep ], [ %.pn191.ph, %.body689.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  %i.ada = load ptr, ptr %82, align 8, !tbaa !21  ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.abc
  br i1 %i.adb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707: ; preds = %.body689
  %i.adc = load i64, ptr %i.abc, align 8, !tbaa !20
  %i.add = add i64 %i.adc, 1
  call void @_ZdlPvm(ptr noundef %i.ada, i64 noundef %i.add) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709: ; preds = %.body689, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, %bb.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678
  %.pn194.pn = phi { ptr, i32 } [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681 ], [ %i.aav, %bb.ej ], [ %.pn191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709 ], [ %.pn189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %79) #22
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.eg
  %.pn194.pn.pn = phi { ptr, i32 } [ %.pn194.pn, %bb.eq ], [ %i.aan, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  br label %bb.ir

bb.es:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %._crit_edge1295
  %.1155 = phi i1 [ false, %._crit_edge1295 ], [ %.0154.lcssa, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #22
  %i.ade = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 5 uses
  store i32 0, ptr %i.ade, align 8, !tbaa !30
  %i.adf = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  store ptr null, ptr %i.adf, align 8, !tbaa !31
  %i.adg = getelementptr inbounds nuw i8, ptr %84, i64 24 ; 2 uses
  store ptr %i.ade, ptr %i.adg, align 8, !tbaa !32
  %i.adh = getelementptr inbounds nuw i8, ptr %84, i64 32
  store ptr %i.ade, ptr %i.adh, align 8, !tbaa !33
  %i.adi = getelementptr inbounds nuw i8, ptr %84, i64 40 ; 2 uses
  store i64 0, ptr %i.adi, align 8, !tbaa !34
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !32 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %.not11591300 = icmp eq ptr %i.adk, %i.adl
  br i1 %.not11591300, label %._crit_edge1304.thread, label %.lr.ph1303

._crit_edge1304.thread:                           ; preds = %bb.es
  br i1 %.1155, label %bb.fs, label %bb.gh

._crit_edge1304:                                  ; preds = %bb.eu
  %.pre1330.a = load i64, ptr %i.adi, align 8, !tbaa !34
  %i.adm = icmp eq i64 %.pre1330.a, 0
  br i1 %i.adm, label %bb.fr, label %bb.ew

.lr.ph1303:                                       ; preds = %bb.es, %bb.eu
  %.sroa.01092.01301 = phi ptr [ %i.adt, %bb.eu ], [ %i.adk, %bb.es ] ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.01092.01301, i64 32
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !120 ; 2 uses
  %i.adp = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull align 8 dereferenceable(72) %i.ado)
          to label %.noexc715 unwind label %bb.ev ; 2 uses

.noexc715:                                        ; preds = %.lr.ph1303
  %i.adq = extractvalue { ptr, ptr } %i.adp, 1    ; 2 uses
  %.not.i.i710 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i710, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.noexc715
  %i.adr = extractvalue { ptr, ptr } %i.adp, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %84, ptr %19, align 8, !tbaa !533
  %i.ads = invoke ptr @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef %i.adr, ptr noundef nonnull %i.adq, ptr noundef nonnull align 8 dereferenceable(72) %i.ado, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %.noexc716 unwind label %bb.ev ; 0 uses

.noexc716:                                        ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc716, %.noexc715
  %i.adt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01092.01301) #26 ; 2 uses
  %.not1159 = icmp eq ptr %i.adt, %i.adl
  br i1 %.not1159, label %._crit_edge1304, label %.lr.ph1303

bb.ev:                                            ; preds = %bb.et, %.lr.ph1303
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ew:                                            ; preds = %._crit_edge1304
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %85)
          to label %bb.ex unwind label %bb.ff

bb.ex:                                            ; preds = %bb.ew
  %i.adv = load ptr, ptr %i.adg, align 8, !tbaa !32 ; 3 uses
  br i1 %i.xr, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 32
  %i.adx = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.adw, i8 noundef signext 45, i64 noundef 0) #22
  %i.ady = icmp ne i64 %i.adx, -1
  %111 = or i1 %.1155, %i.ady
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %112 = phi i1 [ %.1155, %bb.ex ], [ %111, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #22
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 8 dereferenceable(72) %i.adz)
          to label %bb.fa unwind label %bb.fg

bb.fa:                                            ; preds = %bb.ez
  %i.aea = load ptr, ptr %86, align 8, !tbaa !21
  %i.aeb = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !19
  %i.aed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %i.aea, i64 noundef %i.aec)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719 unwind label %bb.fh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719: ; preds = %bb.fa
  %i.aee = load ptr, ptr %86, align 8, !tbaa !21  ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.aeg = icmp eq ptr %i.aee, %i.aef
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719
  %i.aeh = load i64, ptr %i.aef, align 8, !tbaa !20
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aee, i64 noundef %i.aei) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #22
  %i.aej = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.adv) #26 ; 2 uses
  %.not11601305 = icmp eq ptr %i.aej, %i.ade
  br i1 %.not11601305, label %._crit_edge.i.i736, label %.lr.ph1308

.lr.ph1308:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %i.aek = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 4 uses
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph1308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729
  %.21561307 = phi i1 [ %112, %.lr.ph1308 ], [ %114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ] ; 2 uses
  %.sroa.01084.01306 = phi ptr [ %i.aej, %.lr.ph1308 ], [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ] ; 3 uses
  br i1 %i.xr, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.01084.01306, i64 32
  %i.aen = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aem, i8 noundef signext 45, i64 noundef 0) #22
  %i.aeo = icmp ne i64 %i.aen, -1
  %113 = or i1 %.21561307, %i.aeo
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %114 = phi i1 [ %.21561307, %bb.fb ], [ %113, %bb.fc ] ; 2 uses
  %i.aep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724 unwind label %bb.fi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724: ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #22
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.01084.01306, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr noundef nonnull align 8 dereferenceable(72) %i.aeq)
          to label %bb.fe unwind label %bb.fj

bb.fe:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724
  %i.aer = load ptr, ptr %87, align 8, !tbaa !21
  %i.aes = load i64, ptr %i.aek, align 8, !tbaa !19
  %i.aet = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %i.aer, i64 noundef %i.aes)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726 unwind label %bb.fk ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726: ; preds = %bb.fe
  %i.aeu = load ptr, ptr %87, align 8, !tbaa !21  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.ael
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726
  %i.aew = load i64, ptr %i.ael, align 8, !tbaa !20
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #22
  %i.aey = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01084.01306) #26 ; 2 uses
  %.not1160 = icmp eq ptr %i.aey, %i.ade
  br i1 %.not1160, label %._crit_edge.i.i736, label %bb.fb, !llvm.loop !462

bb.ff:                                            ; preds = %bb.ew
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fg:                                            ; preds = %bb.ez
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

bb.fh:                                            ; preds = %bb.fa
  %i.afb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afc = load ptr, ptr %86, align 8, !tbaa !21  ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.afe = icmp eq ptr %i.afc, %i.afd
  br i1 %i.afe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730: ; preds = %bb.fh
  %i.aff = load i64, ptr %i.afd, align 8, !tbaa !20
  %i.afg = add i64 %i.aff, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.afg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730, %bb.fg
  %.pn198 = phi { ptr, i32 } [ %i.afa, %bb.fg ], [ %i.afb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730 ], [ %i.afb, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #22
  br label %bb.fp

bb.fi:                                            ; preds = %bb.fd
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735

bb.fk:                                            ; preds = %bb.fe
  %i.afj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afk = load ptr, ptr %87, align 8, !tbaa !21  ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.ael
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733: ; preds = %bb.fk
  %i.afm = load i64, ptr %i.ael, align 8, !tbaa !20
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733, %bb.fj
  %.pn203 = phi { ptr, i32 } [ %i.afi, %bb.fj ], [ %i.afj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733 ], [ %i.afj, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #22
  br label %bb.fp

._crit_edge.i.i736:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %.2156.lcssa = phi i1 [ %112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #22
  %i.afo = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 6 uses
  store ptr %i.afo, ptr %88, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.afo, ptr noundef nonnull align 1 dereferenceable(12) @.str.73, i64 12, i1 false)
  %i.afp = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 12, ptr %i.afp, align 8, !tbaa !19
  %i.afq = getelementptr inbounds nuw i8, ptr %88, i64 28
  store i8 0, ptr %i.afq, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.afr = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 7 uses
  store ptr %i.afr, ptr %89, align 8, !tbaa !18, !alias.scope !540
  %i.afs = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 0, ptr %i.afs, align 8, !tbaa !19, !alias.scope !540
  store i8 0, ptr %i.afr, align 8, !tbaa !20, !alias.scope !540
  %i.aft = getelementptr inbounds nuw i8, ptr %85, i64 48
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !117, !noalias !540 ; 3 uses
  %.not.i.not.i.i740 = icmp eq ptr %i.afu, null
  %i.afv = getelementptr inbounds nuw i8, ptr %85, i64 32
  %i.afw = load ptr, ptr %i.afv, align 8, !noalias !540 ; 2 uses
  %i.afx = icmp ugt ptr %i.afu, %i.afw
  %.08.i.i.i741 = select i1 %i.afx, ptr %i.afu, ptr %i.afw ; 2 uses
  %.not5.i.i742 = icmp eq ptr %.08.i.i.i741, null
  %.not.i.i743 = select i1 %.not.i.not.i.i740, i1 true, i1 %.not5.i.i742
  br i1 %.not.i.i743, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %._crit_edge.i.i736
  %i.afy = getelementptr inbounds nuw i8, ptr %85, i64 40
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !118, !noalias !540 ; 2 uses
  %i.aga = ptrtoint ptr %.08.i.i.i741 to i64
  %i.agb = ptrtoint ptr %i.afz to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %i.agd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %89, i64 noundef 0, i64 noundef 0, ptr noundef %i.afz, i64 noundef %i.agc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749 unwind label %bb.fm ; 0 uses

bb.fm:                                            ; preds = %bb.fn, %bb.fl
  %i.age = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agf = load ptr, ptr %89, align 8, !tbaa !21, !alias.scope !540 ; 2 uses
  %i.agg = icmp eq ptr %i.agf, %i.afr
  br i1 %i.agg, label %.body747, label %.body747.sink.split

bb.fn:                                            ; preds = %._crit_edge.i.i736
  %i.agh = getelementptr inbounds nuw i8, ptr %85, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(32) %i.agh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749 unwind label %bb.fm

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749: ; preds = %bb.fn, %bb.fl
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %50, ptr noundef nonnull align 8 dereferenceable(32) %88)
          to label %.noexc750 unwind label %bb.fo

.noexc750:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749
  invoke void @_ZN11cmXMLWriter10PreContentEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %.noexc751 unwind label %bb.fo

.noexc751:                                        ; preds = %.noexc750
  %i.agi = load ptr, ptr %50, align 8, !tbaa !131, !nonnull !132, !align !133
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !541
  invoke void @_ZN9cmXMLSafeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %17, ptr noundef nonnull align 8 dereferenceable(32) %89)
          to label %.noexc752 unwind label %bb.fo

.noexc752:                                        ; preds = %.noexc751
  %i.agj = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN9cmXMLSafe6QuotesEb(ptr noundef nonnull align 8 dereferenceable(17) %17, i1 noundef zeroext false)
          to label %.noexc753 unwind label %bb.fo

.noexc753:                                        ; preds = %.noexc752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.agj, i64 24, i1 false), !tbaa.struct !512
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !541
  %i.agk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9cmXMLSafe(ptr noundef nonnull align 8 dereferenceable(8) %i.agi, ptr noundef nonnull align 8 dereferenceable(17) %18)
          to label %.noexc754 unwind label %bb.fo ; 0 uses

.noexc754:                                        ; preds = %.noexc753
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756 unwind label %bb.fo

_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756: ; preds = %.noexc754
  %i.agl = load ptr, ptr %89, align 8, !tbaa !21  ; 2 uses
  %i.agm = icmp eq ptr %i.agl, %i.afr
  br i1 %i.agm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756
  %i.agn = load i64, ptr %i.afr, align 8, !tbaa !20
  %i.ago = add i64 %i.agn, 1
  call void @_ZdlPvm(ptr noundef %i.agl, i64 noundef %i.ago) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #22
  %i.agp = load ptr, ptr %88, align 8, !tbaa !21  ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.afo
  br i1 %i.agq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759
  %i.agr = load i64, ptr %i.afo, align 8, !tbaa !20
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #22
  %i.agt = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.agt, ptr %85, align 8, !tbaa !73
  %i.agu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.agv = getelementptr i8, ptr %i.agt, i64 -24
  %i.agw = load i64, ptr %i.agv, align 8
  %i.agx = getelementptr inbounds i8, ptr %85, i64 %i.agw
  store ptr %i.agu, ptr %i.agx, align 8, !tbaa !73
  %i.agy = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.agy, align 8, !tbaa !73
  %i.agz = getelementptr inbounds nuw i8, ptr %85, i64 80
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !21 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %85, i64 96 ; 2 uses
  %i.ahc = icmp eq ptr %i.aha, %i.ahb
  br i1 %i.ahc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762
  %i.ahd = load i64, ptr %i.ahb, align 8, !tbaa !20
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahe) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.agy, align 8, !tbaa !73
  %i.ahf = getelementptr inbounds nuw i8, ptr %85, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ahf) #22
  %i.ahg = getelementptr inbounds nuw i8, ptr %85, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ahg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  br i1 %.2156.lcssa, label %bb.fs, label %bb.gh

bb.fo:                                            ; preds = %.noexc754, %.noexc753, %.noexc752, %.noexc751, %.noexc750, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749
  %i.ahh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahi = load ptr, ptr %89, align 8, !tbaa !21  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.afr
  br i1 %i.ahj, label %.body747, label %.body747.sink.split

.body747.sink.split:                              ; preds = %bb.fo, %bb.fm
  %.sink1723 = phi ptr [ %i.agf, %bb.fm ], [ %i.ahi, %bb.fo ]
  %.pn200.ph = phi { ptr, i32 } [ %i.age, %bb.fm ], [ %i.ahh, %bb.fo ]
  %i.ahk = load i64, ptr %i.afr, align 8, !tbaa !20
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %.sink1723, i64 noundef %i.ahl) #23
  br label %.body747

.body747:                                         ; preds = %.body747.sink.split, %bb.fo, %bb.fm
  %.pn200 = phi { ptr, i32 } [ %i.age, %bb.fm ], [ %i.ahh, %bb.fo ], [ %.pn200.ph, %.body747.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #22
  %i.ahm = load ptr, ptr %88, align 8, !tbaa !21  ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, %i.afo
  br i1 %i.ahn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %.body747
  %i.aho = load i64, ptr %i.afo, align 8, !tbaa !20
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %.body747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #22
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, %bb.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732
  %.pn203.pn = phi { ptr, i32 } [ %.pn203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %i.afh, %bb.fi ], [ %.pn200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771 ], [ %.pn198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %85) #22
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ff
  %.pn203.pn.pn = phi { ptr, i32 } [ %.pn203.pn, %bb.fp ], [ %i.aez, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  br label %bb.iq

bb.fr:                                            ; preds = %._crit_edge1304
  br i1 %.1155, label %bb.fs, label %bb.gh

bb.fs:                                            ; preds = %._crit_edge1304.thread, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765, %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %90)
          to label %bb.ft unwind label %bb.gb

bb.ft:                                            ; preds = %bb.fs
  %i.ahq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull @.str.74, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773 unwind label %bb.gc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773: ; preds = %bb.ft
  %i.ahr = load ptr, ptr %i.iy, align 8, !tbaa !21
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !19
  %i.ahu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %i.ahr, i64 noundef %i.aht)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775 unwind label %bb.gc ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, ptr noundef nonnull @.str.75, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777 unwind label %bb.gc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775
  %i.ahw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, ptr noundef nonnull @.str.76, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779 unwind label %bb.gc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777
  %i.ahx = load ptr, ptr %0, align 8, !tbaa !63   ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2232
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !21
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2240
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !19
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahu, ptr noundef %i.ahz, i64 noundef %i.aib)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781 unwind label %bb.gc ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !73
  %i.aie = getelementptr i8, ptr %i.aid, i64 -24
  %i.aif = load i64, ptr %i.aie, align 8
  %i.aig = getelementptr inbounds i8, ptr %i.aic, i64 %i.aif
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 240
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i1061 = icmp eq ptr %i.aii, null
  br i1 %.not.i.i.i1061, label %bb.fu, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.fu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc1062 unwind label %bb.gc

.noexc1062:                                       ; preds = %bb.fu
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 56
  %i.aik = load i8, ptr %i.aij, align 8, !tbaa !95
  %.not.i1.i.i = icmp eq i8 %i.aik, 0
  br i1 %.not.i1.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aii, i64 67
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !20
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.fw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aii)
          to label %.noexc1063 unwind label %bb.gc

.noexc1063:                                       ; preds = %bb.fw
  %i.ain = load ptr, ptr %i.aii, align 8, !tbaa !73
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 48
  %i.aip = load ptr, ptr %i.aio, align 8
  %i.aiq = invoke noundef signext i8 %i.aip(ptr noundef nonnull align 8 dereferenceable(570) %i.aii, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.gc, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc1063, %bb.fv
  %.0.i.i.i = phi i8 [ %i.aim, %bb.fv ], [ %i.aiq, %.noexc1063 ]
  %i.air = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aic, i8 noundef signext %.0.i.i.i)
          to label %.noexc1065 unwind label %bb.gc

.noexc1065:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ais = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.air)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.gc ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc1065
  %i.ait = load ptr, ptr %0, align 8, !tbaa !63   ; 2 uses
  %.not207 = icmp eq ptr %i.ait, null
  br i1 %.not207, label %bb.ge, label %bb.fx

bb.fx:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 336
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.aiw = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 7 uses
  store ptr %i.aiw, ptr %91, align 8, !tbaa !18, !alias.scope !544
  %i.aix = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i64 0, ptr %i.aix, align 8, !tbaa !19, !alias.scope !544
  store i8 0, ptr %i.aiw, align 8, !tbaa !20, !alias.scope !544
  %i.aiy = getelementptr inbounds nuw i8, ptr %90, i64 48
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !117, !noalias !544 ; 3 uses
  %.not.i.not.i.i783 = icmp eq ptr %i.aiz, null
  %i.aja = getelementptr inbounds nuw i8, ptr %90, i64 32
  %i.ajb = load ptr, ptr %i.aja, align 8, !noalias !544 ; 2 uses
  %i.ajc = icmp ugt ptr %i.aiz, %i.ajb
  %.08.i.i.i784 = select i1 %i.ajc, ptr %i.aiz, ptr %i.ajb ; 2 uses
  %.not5.i.i785 = icmp eq ptr %.08.i.i.i784, null
  %.not.i.i786 = select i1 %.not.i.not.i.i783, i1 true, i1 %.not5.i.i785
  br i1 %.not.i.i786, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ajd = getelementptr inbounds nuw i8, ptr %90, i64 40
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !118, !noalias !544 ; 2 uses
  %i.ajf = ptrtoint ptr %.08.i.i.i784 to i64
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  %i.aji = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %91, i64 noundef 0, i64 noundef 0, ptr noundef %i.aje, i64 noundef %i.ajh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792 unwind label %bb.fz ; 0 uses

bb.fz:                                            ; preds = %bb.ga, %bb.fy
  %i.ajj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajk = load ptr, ptr %91, align 8, !tbaa !21, !alias.scope !544 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajk, %i.aiw
  br i1 %i.ajl, label %.body790, label %.body790.sink.split

bb.ga:                                            ; preds = %bb.fx
  %i.ajm = getelementptr inbounds nuw i8, ptr %90, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %i.ajm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792 unwind label %bb.fz

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792: ; preds = %bb.ga, %bb.fy
  %i.ajn = load ptr, ptr %91, align 8, !tbaa !21  ; 2 uses
  %i.ajo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajn) #26
  invoke void @_ZN10cmCPackLog3LogEiPKciS1_m(ptr noundef nonnull align 8 dereferenceable(232) %i.aiv, i32 noundef 8, ptr noundef nonnull @.str.23, i32 noundef 693, ptr noundef nonnull %i.ajn, i64 noundef %i.ajo)
          to label %_ZN10cmCPackLog3LogEiPKciS1_.exit unwind label %bb.gd

_ZN10cmCPackLog3LogEiPKciS1_.exit:                ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792
  %i.ajp = load ptr, ptr %91, align 8, !tbaa !21  ; 2 uses
  %i.ajq = icmp eq ptr %i.ajp, %i.aiw
  br i1 %i.ajq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit
  %i.ajr = load i64, ptr %i.aiw, align 8, !tbaa !20
  %i.ajs = add i64 %i.ajr, 1
  call void @_ZdlPvm(ptr noundef %i.ajp, i64 noundef %i.ajs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  br label %bb.ge

bb.gb:                                            ; preds = %bb.fs
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gc:                                            ; preds = %.noexc1065, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1063, %bb.fw, %bb.fu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773, %bb.ft
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.gd:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792
  %i.ajv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajw = load ptr, ptr %91, align 8, !tbaa !21  ; 2 uses
  %i.ajx = icmp eq ptr %i.ajw, %i.aiw
  br i1 %i.ajx, label %.body790, label %.body790.sink.split

.body790.sink.split:                              ; preds = %bb.gd, %bb.fz
  %.sink1726 = phi ptr [ %i.ajk, %bb.fz ], [ %i.ajw, %bb.gd ]
  %.pn208.ph = phi { ptr, i32 } [ %i.ajj, %bb.fz ], [ %i.ajv, %bb.gd ]
  %i.ajy = load i64, ptr %i.aiw, align 8, !tbaa !20
  %i.ajz = add i64 %i.ajy, 1
  call void @_ZdlPvm(ptr noundef %.sink1726, i64 noundef %i.ajz) #23
  br label %.body790

.body790:                                         ; preds = %.body790.sink.split, %bb.gd, %bb.fz
  %.pn208 = phi { ptr, i32 } [ %i.ajj, %bb.fz ], [ %i.ajv, %bb.gd ], [ %.pn208.ph, %.body790.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  br label %bb.gf

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, %_ZNSolsEPFRSoS_E.exit
  %i.aka = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aka, ptr %90, align 8, !tbaa !73
  %i.akb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.akc = getelementptr i8, ptr %i.aka, i64 -24
  %i.akd = load i64, ptr %i.akc, align 8
  %i.ake = getelementptr inbounds i8, ptr %90, i64 %i.akd
  store ptr %i.akb, ptr %i.ake, align 8, !tbaa !73
  %i.akf = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.akf, align 8, !tbaa !73
  %i.akg = getelementptr inbounds nuw i8, ptr %90, i64 80
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !21 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %90, i64 96 ; 2 uses
  %i.akj = icmp eq ptr %i.akh, %i.aki
  br i1 %i.akj, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i800: ; preds = %bb.ge
  %i.akk = load i64, ptr %i.aki, align 8, !tbaa !20
  %i.akl = add i64 %i.akk, 1
  call void @_ZdlPvm(ptr noundef %i.akh, i64 noundef %i.akl) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i800
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.akf, align 8, !tbaa !73
  %i.akm = getelementptr inbounds nuw i8, ptr %90, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.akm) #22
  %i.akn = getelementptr inbounds nuw i8, ptr %90, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.akn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  br label %bb.gh

bb.gf:                                            ; preds = %.body790, %bb.gc
  %.pn208.pn = phi { ptr, i32 } [ %.pn208, %.body790 ], [ %i.aju, %bb.gc ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %90) #22
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gb
  %.pn208.pn.pn = phi { ptr, i32 } [ %.pn208.pn, %bb.gf ], [ %i.ajt, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  br label %bb.iq

bb.gh:                                            ; preds = %._crit_edge1304.thread, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802, %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #22
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !61 ; 3 uses
  %i.akr = load ptr, ptr %i.ako, align 8, !tbaa !60 ; 3 uses
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = sub i64 %i.aks, %i.akt                 ; 4 uses
  %.not.i.i.i.i803 = icmp eq ptr %i.akq, %i.akr
  br i1 %.not.i.i.i.i803, label %.noexc809, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.akv = icmp ugt i64 %i.aku, 9223372036854775776
  br i1 %i.akv, label %.noexc.i.i807, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804, !prof !523

.noexc.i.i807:                                    ; preds = %bb.gi
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc808 unwind label %bb.gl

.noexc808:                                        ; preds = %.noexc.i.i807
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804: ; preds = %bb.gi
  %i.akw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aku) #27
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge unwind label %bb.gl

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804
  %.pre1331 = load ptr, ptr %i.ako, align 8, !tbaa !65
  %.pre1332 = load ptr, ptr %i.akp, align 8, !tbaa !65
  br label %.noexc809

.noexc809:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge, %bb.gh
  %i.akx = phi ptr [ %i.akq, %bb.gh ], [ %.pre1332, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge ]
  %i.aky = phi ptr [ %i.akr, %bb.gh ], [ %.pre1331, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge ]
  %i.akz = phi ptr [ null, %bb.gh ], [ %i.akw, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge ] ; 8 uses
  store ptr %i.akz, ptr %92, align 8, !tbaa !60
  %i.ala = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.aku
  %i.alc = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  store ptr %i.alb, ptr %i.alc, align 8, !tbaa !121
  %i.ald = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aky, ptr %i.akx, ptr noundef %i.akz)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812 unwind label %bb.gj ; 3 uses

bb.gj:                                            ; preds = %.noexc809
  %i.ale = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i805 = icmp eq ptr %i.akz, null
  br i1 %.not.i.i.i805, label %.body810, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.akz, i64 noundef %i.aku) #23
  br label %.body810

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812: ; preds = %.noexc809
  store ptr %i.ald, ptr %i.ala, align 8, !tbaa !61
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = ptrtoint ptr %i.akz to i64
  %i.alh = sub i64 %i.alf, %i.alg
  %i.ali = icmp ugt i64 %i.alh, 32
  br i1 %i.ali, label %.lr.ph1311, label %._crit_edge1312

.lr.ph1311:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812
  %i.alj = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 7 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 4 uses
  %i.all = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.alm = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 7 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.alo = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 4 uses
  br label %bb.gm

._crit_edge1312:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812
  %i.alp = phi ptr [ %i.ald, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812 ], [ %i.ano, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ] ; 2 uses
  %i.alq = phi ptr [ %i.akz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812 ], [ %i.anc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ] ; 3 uses
  %i.alr = icmp eq ptr %i.alq, %i.alp
  br i1 %i.alr, label %bb.hg, label %._crit_edge.i.i851

bb.gl:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804, %.noexc.i.i807
  %i.als = landingpad { ptr, i32 }
          cleanup
  br label %.body810

bb.gm:                                            ; preds = %.lr.ph1311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841
  %i.alt = phi ptr [ %i.akz, %.lr.ph1311 ], [ %i.anc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ]
  %.01531310 = phi i64 [ 1, %.lr.ph1311 ], [ %i.ann, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #22
  %i.alu = getelementptr inbounds nuw [32 x i8], ptr %i.alt, i64 %.01531310
  invoke void @_ZN5cmsys11SystemTools15GetFilenameNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %93, ptr noundef nonnull align 8 dereferenceable(32) %i.alu)
          to label %bb.gn unwind label %bb.gu

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.alv = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !545
  %i.alw = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !545 ; 3 uses
  store ptr %i.alj, ptr %95, align 8, !tbaa !18, !alias.scope !546
  store i64 0, ptr %i.alk, align 8, !tbaa !19, !alias.scope !546
  store i8 0, ptr %i.alj, align 8, !tbaa !20, !alias.scope !546
  %i.alx = add i64 %i.alw, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %95, i64 noundef %i.alx)
          to label %bb.go unwind label %.loopexit1163

bb.go:                                            ; preds = %bb.gn
  %i.aly = load i64, ptr %i.alk, align 8, !tbaa !19, !alias.scope !546
  %i.alz = sub i64 4611686018427387903, %i.aly
  %i.ama = icmp ult i64 %i.alz, %i.alw
  br i1 %i.ama, label %.invoke.i.i819, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816: ; preds = %bb.go
  %i.amb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef %i.alv, i64 noundef %i.alw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817 unwind label %.loopexit1163 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816
  %i.amc = load i64, ptr %i.alk, align 8, !tbaa !19, !alias.scope !546
  %i.amd = add i64 %i.amc, -4611686018427387898
  %i.ame = icmp ult i64 %i.amd, 6
  br i1 %i.ame, label %.invoke.i.i819, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818

.invoke.i.i819:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817, %bb.go
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.cont.i.i820 unwind label %.loopexit.split-lp1164

.cont.i.i820:                                     ; preds = %.invoke.i.i819
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817
  %i.amf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull @.str.64, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823 unwind label %.loopexit1163 ; 0 uses

.loopexit1163:                                    ; preds = %bb.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818
  %lpad.loopexit1165 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit.split-lp1164:                           ; preds = %.invoke.i.i819
  %lpad.loopexit.split-lp1166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %.loopexit.split-lp1164, %.loopexit1163
  %lpad.phi1167 = phi { ptr, i32 } [ %lpad.loopexit1165, %.loopexit1163 ], [ %lpad.loopexit.split-lp1166, %.loopexit.split-lp1164 ] ; 2 uses
  %i.amg = load ptr, ptr %95, align 8, !tbaa !21, !alias.scope !546 ; 2 uses
  %i.amh = icmp eq ptr %i.amg, %i.alj
  br i1 %i.amh, label %.body821, label %.body821.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.ami = load i64, ptr %i.all, align 8, !tbaa !19, !noalias !547 ; 2 uses
  %i.amj = load i64, ptr %i.alk, align 8, !tbaa !19, !noalias !547
  %i.amk = sub i64 4611686018427387903, %i.amj
  %i.aml = icmp ult i64 %i.amk, %i.ami
  br i1 %i.aml, label %bb.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i824

bb.gq:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc828 unwind label %.loopexit.split-lp1169

.noexc828:                                        ; preds = %bb.gq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i824: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823
  %i.amm = load ptr, ptr %93, align 8, !tbaa !21, !noalias !547
  %i.amn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef %i.amm, i64 noundef %i.ami)
          to label %.noexc829 unwind label %.loopexit1168 ; 6 uses

.noexc829:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i824
  store ptr %i.alm, ptr %94, align 8, !tbaa !18, !alias.scope !547
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !21 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 16 ; 5 uses
  %i.amq = icmp eq ptr %i.amo, %i.amp
  br i1 %i.amq, label %bb.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825

bb.gr:                                            ; preds = %.noexc829
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !19 ; 3 uses
  %i.amt = icmp ult i64 %i.ams, 16
  call void @llvm.assume(i1 %i.amt)
  %i.amu = add nuw nsw i64 %i.ams, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.alm, ptr noundef nonnull align 8 dereferenceable(1) %i.amp, i64 %i.amu, i1 false)
  br label %bb.gs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825: ; preds = %.noexc829
  store ptr %i.amo, ptr %94, align 8, !tbaa !21, !alias.scope !547
  %i.amv = load i64, ptr %i.amp, align 8, !tbaa !20
  store i64 %i.amv, ptr %i.alm, align 8, !tbaa !20, !alias.scope !547
  %.phi.trans.insert.i826 = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %.pre.i827 = load i64, ptr %.phi.trans.insert.i826, align 8, !tbaa !19
  br label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825, %bb.gr
  %i.amw = phi i64 [ %i.ams, %bb.gr ], [ %.pre.i827, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825 ]
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  store i64 %i.amw, ptr %i.aln, align 8, !tbaa !19, !alias.scope !547
  store ptr %i.amp, ptr %i.amn, align 8, !tbaa !21
  store i64 0, ptr %i.amx, align 8, !tbaa !19
  store i8 0, ptr %i.amp, align 8, !tbaa !20
  %i.amy = load ptr, ptr %95, align 8, !tbaa !21  ; 2 uses
  %i.amz = icmp eq ptr %i.amy, %i.alj
  br i1 %i.amz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831

end_hunk_0
