Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13251
inline.NumDeleted: 4924
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker14checkExprTableERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableERKSt6vectorISt4pairIPKNS_4TypeESD_ESaISE_EESt8optionalISD_E:bb.a

bb.q:                                             ; preds = %bb.p
  %.not85 = icmp eq ptr %i.cq, null
  br i1 %.not85, label %bb.r, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i104 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i32, ptr %i.cm, align 8, !tbaa !545
  %i.cs = icmp eq i32 %i.cr, 8
  br i1 %i.cs, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !538
  br label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

bb.u:                                             ; preds = %bb.bv, %bb.bu
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.v:                                             ; preds = %bb.p, %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.s, %bb.t, %bb.q, %bb.o
  %.060 = phi ptr [ %i.cm, %bb.q ], [ %i.cm, %bb.o ], [ %i.ct, %bb.t ], [ %i.cm, %bb.s ] ; 7 uses
  br i1 %.not87, label %bb.bb, label %bb.w

bb.w:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !770 ; 4 uses
  store ptr %i.w, ptr %12, align 8, !tbaa !287
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cx) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.cz, ptr %i.b, align 8, !tbaa !608
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc105 unwind label %.loopexit ; 2 uses

.noexc105:                                        ; preds = %.noexc.i
  store ptr %i.db, ptr %12, align 8, !tbaa !81
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !608
  store i64 %i.dc, ptr %i.w, align 8, !tbaa !288
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc105, %bb.y
  %i.dd = phi ptr [ %i.db, %.noexc105 ], [ %i.w, %bb.y ] ; 2 uses
  switch i64 %i.cz, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.de = load i8, ptr %i.cx, align 1, !tbaa !288
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !288
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr nonnull align 1 %i.cx, i64 %i.cz, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.df = load i64, ptr %i.b, align 8, !tbaa !608 ; 2 uses
  store i64 %i.df, ptr %i.x, align 8, !tbaa !133
  %i.dg = load ptr, ptr %12, align 8, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  store i8 0, ptr %i.dh, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !760 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.di, null
  %.pre = load ptr, ptr %12, align 8              ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab
  %i.dj = load i64, ptr %i.x, align 8, !tbaa !133 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dl) ; 2 uses
  %i.dm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.dm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81
  %i.dp = call i32 @memcmp(ptr noundef %i.do, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ac
  %i.dq = sub i64 %i.dl, %i.dj
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dr = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.dr, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.dr, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !761 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ac, !llvm.loop !16

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ds = icmp eq ptr %.19.i.i.i, %i.z
  br i1 %i.ds, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.du, i64 %i.dj) ; 2 uses
  %i.dv = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.dv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !81
  %i.dy = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.dx, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ad
  %i.dz = sub i64 %i.dj, %i.du
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dz, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.dy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ea = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i106 = select i1 %i.ea, ptr %i.z, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.ab
  %.sroa.0.0.i.i = phi ptr [ %i.z, %bb.ab ], [ %i.z, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i106, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.eb = icmp eq ptr %.pre, %i.w
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.ec = load i64, ptr %i.w, align 8, !tbaa !288
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ed) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.z
  br i1 %.not, label %bb.at, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  invoke void @_ZN4Luau8PropertyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %13, ptr noundef nonnull align 8 dereferenceable(176) %i.ee)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.ef = invoke noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176) %13)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  invoke void @_ZN4Luau11TypeChecker9tryUnify_IPKNS_4TypeEEESt6vectorINS_9TypeErrorESaIS6_EET_S9_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.264") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.060, ptr noundef %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.eg)
          to label %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit unwind label %bb.ak

_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit: ; preds = %bb.ag
  %i.eh = load ptr, ptr %14, align 8, !tbaa !536  ; 2 uses
  %i.ei = load ptr, ptr %i.aa, align 8, !tbaa !536 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit
  %i.ek = invoke noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176) %13)
          to label %24 unwind label %bb.al        ; 2 uses

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.ce

bb.aj:                                            ; preds = %bb.ae
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ak:                                            ; preds = %bb.ag, %bb.af
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.al:                                            ; preds = %bb.ah
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #35
  br label %bb.ar

24:                                               ; preds = %bb.ah
  %.pre253 = load ptr, ptr %14, align 8, !tbaa !557 ; 3 uses
  %.pre254 = load ptr, ptr %i.aa, align 8, !tbaa !548 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre253, %.pre254
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit, %24
  %i.eo = phi ptr [ %i.ek, %24 ], [ %.060, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit ]
  %i.ep = phi ptr [ %.pre253, %24 ], [ %i.eh, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit ]
  %.161 = phi ptr [ %.pre254, %24 ], [ %i.ei, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit ]
  br label %.lr.ph.i.i.i111

.lr.ph.i.i.i111:                                  ; preds = %bb.am, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fe, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i ], [ %i.ep, %bb.am ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !303
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  invoke void %i.eu(ptr noundef nonnull %i.ev)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i111
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %.lr.ph.i.i.i111
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !81 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !288
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #36
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i:  ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %i.fe, %.161
  br i1 %.not.i.i.i112, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i111, !llvm.loop !4

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %24
  %.161329 = phi ptr [ %i.eo, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ek, %24 ]
  %i.ff = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre253, %24 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i
  %i.fg = load ptr, ptr %i.ab, align 8, !tbaa !586
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #36
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.fk = load i8, ptr %i.ac, align 8, !tbaa !444, !range !104, !noundef !105
  %i.fl = trunc nuw i8 %i.fk to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !444
  br i1 %i.fl, label %bb.ap, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.ap:                                            ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit
  %i.fm = load ptr, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ae
  br i1 %i.fn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113: ; preds = %bb.ap
  %i.fo = load i64, ptr %i.ae, align 8, !tbaa !288
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit
  %i.fq = load ptr, ptr %i.af, align 8, !tbaa !762 ; 3 uses
  %i.fr = load ptr, ptr %i.ag, align 8, !tbaa !763 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fq, %i.fr
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.fq, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.fs = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !288
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fx, %i.fr
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.af, align 8, !tbaa !762
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.fy = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fq, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.fz = load ptr, ptr %i.ah, align 8, !tbaa !764
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gc) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.aq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.gd = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.aj
  br i1 %i.ge, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.gf = load i64, ptr %i.aj, align 8, !tbaa !288
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #36
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.bb

bb.ar:                                            ; preds = %bb.al, %bb.ak
  %.pn90 = phi { ptr, i32 } [ %i.en, %bb.al ], [ %i.em, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %13) #35
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aj
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %bb.ar ], [ %i.el, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.ce

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gh = load i8, ptr %i.ak, align 8, !tbaa !645, !range !104, !noundef !105
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.gj = load ptr, ptr %i.al, align 8, !tbaa !647
  %i.gk = invoke noundef zeroext i1 @_ZN4Luau11maybeStringEPKNS_4TypeE(ptr noundef %i.gj)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %i.gk, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.gl = load ptr, ptr %i.am, align 8, !tbaa !648
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  invoke void @_ZN4Luau11TypeChecker9tryUnify_IPKNS_4TypeEEESt6vectorINS_9TypeErrorESaIS6_EET_S9_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.264") align 8 %15, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.060, ptr noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gm)
          to label %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116 unwind label %bb.ay

_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116: ; preds = %bb.aw
  %i.gn = load ptr, ptr %15, align 8, !tbaa !536  ; 3 uses
  %i.go = load ptr, ptr %i.an, align 8, !tbaa !536 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %.thread, label %.lr.ph.i.i.i118

.thread:                                          ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116
  %i.gq = load ptr, ptr %i.am, align 8, !tbaa !648
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127

bb.ax:                                            ; preds = %bb.au
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ay:                                            ; preds = %bb.aw
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.ce

.lr.ph.i.i.i118:                                  ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123
  %.05.i.i.i119 = phi ptr [ %i.hh, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123 ], [ %i.gn, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116 ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 48
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !303
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !82
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 56
  invoke void %i.gx(ptr noundef nonnull %i.gy)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121 unwind label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i118
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121: ; preds = %.lr.ph.i.i.i118
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !81 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !288
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #36
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 184 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.hh, %i.go
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125, label %.lr.ph.i.i.i118, !llvm.loop !4

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123
  %.pr.i126 = load ptr, ptr %15, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127: ; preds = %.thread, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125
  %.2225 = phi ptr [ %.060, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125 ], [ %i.gq, %.thread ]
  %i.hi = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125 ], [ %i.gn, %.thread ] ; 3 uses
  %.not.i.i1.i128 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i1.i128, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127
  %i.hj = load ptr, ptr %i.ao, align 8, !tbaa !586
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #36
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130, %bb.av, %bb.at, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %.4 = phi ptr [ %.060, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit ], [ %.161329, %_ZN4Luau8PropertyD2Ev.exit ], [ %.2225, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130 ], [ %.060, %bb.av ], [ %.060, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  store ptr %i.ap, ptr %17, align 8, !tbaa !287
  store i64 0, ptr %i.aq, align 8, !tbaa !133
  store i8 0, ptr %i.ap, align 8, !tbaa !288
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, ptr noundef nonnull align 4 dereferenceable(16) %i.hn, i64 16, i1 false), !tbaa.struct !506
  store i8 1, ptr %i.ar, align 8, !tbaa !732
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  store i8 0, ptr %i.as, align 8, !tbaa !444
  store i8 0, ptr %i.at, align 8, !tbaa !732
  invoke void @_ZN4Luau8PropertyC1EPKNS_4TypeEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalINS_8LocationEERKSt6vectorIS9_SaIS9_EERKSC_IS9_ESE_(ptr noundef nonnull align 8 dereferenceable(176) %16, ptr noundef %.4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull byval(%"class.std::optional") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull byval(%"class.std::optional") align 8 %21)
          to label %bb.bc unwind label %bb.bn

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !770 ; 4 uses
  store ptr %i.au, ptr %22, align 8, !tbaa !287
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc133 unwind label %.loopexit.split-lp231

.noexc133:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.hr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hp) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.hr, ptr %i.a, align 8, !tbaa !608
  %i.hs = icmp ugt i64 %i.hr, 15
  br i1 %i.hs, label %.noexc.i132, label %._crit_edge.i.i131

.noexc.i132:                                      ; preds = %bb.be
  %i.ht = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc134 unwind label %.loopexit230 ; 2 uses

.noexc134:                                        ; preds = %.noexc.i132
  store ptr %i.ht, ptr %22, align 8, !tbaa !81
  %i.hu = load i64, ptr %i.a, align 8, !tbaa !608
  store i64 %i.hu, ptr %i.au, align 8, !tbaa !288
  br label %._crit_edge.i.i131

._crit_edge.i.i131:                               ; preds = %.noexc134, %bb.be
  %i.hv = phi ptr [ %i.ht, %.noexc134 ], [ %i.au, %bb.be ] ; 2 uses
  switch i64 %i.hr, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i131
  %i.hw = load i8, ptr %i.hp, align 1, !tbaa !288
  store i8 %i.hw, ptr %i.hv, align 1, !tbaa !288
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i131
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hv, ptr nonnull align 1 %i.hp, i64 %i.hr, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i131
  %i.hx = load i64, ptr %i.a, align 8, !tbaa !608 ; 2 uses
  store i64 %i.hx, ptr %i.av, align 8, !tbaa !133
  %i.hy = load ptr, ptr %22, align 8, !tbaa !81
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  store i8 0, ptr %i.hz, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ia = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.ib = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.ia, ptr noundef nonnull align 8 dereferenceable(176) %16) #35 ; 0 uses
  %i.ic = load ptr, ptr %22, align 8, !tbaa !81   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.au
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.bi
  %i.ie = load i64, ptr %i.au, align 8, !tbaa !288
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  %i.ig = load i8, ptr %i.aw, align 8, !tbaa !444, !range !104, !noundef !105
  %i.ih = trunc nuw i8 %i.ig to i1
  store i8 0, ptr %i.aw, align 8, !tbaa !444
  br i1 %i.ih, label %bb.bj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ay
  br i1 %i.ij, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i154: ; preds = %bb.bj
  %i.ik = load i64, ptr %i.ay, align 8, !tbaa !288
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.im = load ptr, ptr %i.az, align 8, !tbaa !762 ; 3 uses
  %i.in = load ptr, ptr %i.ba, align 8, !tbaa !763 ; 2 uses
  %.not4.i.i.i.i140 = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i.i140, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148, label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144
  %.05.i.i.i.i142 = phi ptr [ %i.it, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144 ], [ %i.im, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139 ] ; 3 uses
  %i.io = load ptr, ptr %.05.i.i.i.i142, align 8, !tbaa !81 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i142, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i143: ; preds = %.lr.ph.i.i.i.i141
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !288
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144: ; preds = %.lr.ph.i.i.i.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i143
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i142, i64 32 ; 2 uses
  %.not.i.i.i.i145 = icmp eq ptr %i.it, %i.in
  br i1 %.not.i.i.i.i145, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146, label %.lr.ph.i.i.i.i141, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144
  %.pr.i.i147 = load ptr, ptr %i.az, align 8, !tbaa !762
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139
  %i.iu = phi ptr [ %.pr.i.i147, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146 ], [ %i.im, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139 ] ; 3 uses
  %.not.i.i1.i.i149 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i1.i.i149, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148
  %i.iv = load ptr, ptr %i.bb, align 8, !tbaa !764
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iy) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150: ; preds = %bb.bk, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148
  %i.iz = load ptr, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.bd
  br i1 %i.ja, label %_ZN4Luau8PropertyD2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150
  %i.jb = load i64, ptr %i.bd, align 8, !tbaa !288
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #36
  br label %_ZN4Luau8PropertyD2Ev.exit156

_ZN4Luau8PropertyD2Ev.exit156:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151
  %i.jd = load i8, ptr %i.as, align 8, !tbaa !444, !range !104, !noundef !105
  %i.je = trunc nuw i8 %i.jd to i1
  store i8 0, ptr %i.as, align 8, !tbaa !444
  br i1 %i.je, label %bb.bl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bl:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit156
  %i.jf = load ptr, ptr %20, align 8, !tbaa !81   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.be
  br i1 %i.jg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bl
  %i.jh = load i64, ptr %i.be, align 8, !tbaa !288
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bl, %_ZN4Luau8PropertyD2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %i.jj = load ptr, ptr %19, align 8, !tbaa !762  ; 3 uses
  %i.jk = load ptr, ptr %i.bf, align 8, !tbaa !763 ; 2 uses
  %.not4.i.i.i157 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not4.i.i.i157, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i159 = phi ptr [ %i.jq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jj, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.jl = load ptr, ptr %.05.i.i.i159, align 8, !tbaa !81 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i160: ; preds = %.lr.ph.i.i.i158
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !288
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i160
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 32 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.jq, %i.jk
  br i1 %.not.i.i.i161, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i158, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i162 = load ptr, ptr %19, align 8, !tbaa !762
end_hunk_0
