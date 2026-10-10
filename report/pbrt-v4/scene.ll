Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/scene?download=true
inline.NumInlined: 8765
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt10BasicScene11CreateMediaB5cxx11Ev:bb.a
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !87 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i14 = call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cd) ; 2 uses
  %i.cg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i14, 0
  br i1 %i.cg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i15

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i15: ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !89
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.ck = call i32 @memcmp(ptr noundef %i.cj, ptr noundef %i.ci, i64 noundef %.sroa.speculated.i.i.i.i.i.i14) #32 ; 2 uses
  %.not.i.i.i.i.i.i16 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i17

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i15, %bb.q
  %i.cl = sub i64 %i.cd, %i.cf
  %spec.select7.i.i.i.i.i.i.i20 = call i64 @llvm.smax.i64(i64 %i.cl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i21 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i20, i64 2147483647)
  %.0.i6.i.i.i.i.i.i22 = trunc nsw i64 %.08.i.i.i.i.i.i.i21 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i17

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i17: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i15
  %.0.i.i.i.i.i.i18 = phi i32 [ %i.ck, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i15 ], [ %.0.i6.i.i.i.i.i.i22, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i19 ]
  %i.cm = icmp slt i32 %.0.i.i.i.i.i.i18, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i17, %bb.p
  %i.cn = phi i1 [ %i.cm, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i17 ], [ true, %bb.p ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cn, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #32
  %i.co = load i64, ptr %i.p, align 8, !tbaa !171
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.p, align 8, !tbaa !171
  br label %.noexc8

.body:                                            ; preds = %.critedge.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.cq

bb.r:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !88
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #33
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 72) #33
  br label %.noexc8

.noexc8:                                          ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.bw, %.thread.i ], [ %i.bz, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.s

bb.s:                                             ; preds = %.noexc8, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.07.0.i = phi ptr [ %.sroa.0.010.i, %.noexc8 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 64
  store i64 %i.ba, ptr %i.cw, align 8, !tbaa !354
  br label %_ZN4pbrt8AsyncJobINS_6MediumEE12TryGetResultEPSt5mutex.exit.backedge

bb.t:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.cx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.030.041) #36 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.k
  br i1 %.not, label %._crit_edge, label %bb.f

bb.u:                                             ; preds = %._crit_edge
  call void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef 847, ptr noundef nonnull @.str.101)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !168
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.cz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt8AsyncJobINS6_6MediumEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt8AsyncJobINS6_6MediumEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit: ; preds = %bb.v
  store ptr null, ptr %i.cy, align 8, !tbaa !168
  store ptr %i.k, ptr %i.i, align 8, !tbaa !169
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 720
  store ptr %i.k, ptr %i.dc, align 8, !tbaa !170
  store i64 0, ptr %i.d, align 8, !tbaa !171
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt8AsyncJobINS6_6MediumEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE5clearEv.exit, %_ZNSt5mutex4lockEv.exit
  %i.dd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #32 ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.de, align 8, !tbaa !167
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.df, align 8, !tbaa !168
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !169
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !170
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.di, align 8, !tbaa !171
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !168 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i9, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %0, ptr %3, align 8, !tbaa !426
  %i.dl = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.y
  %.0.i.i.i.i.i.i10 = phi ptr [ %i.dn, %.noexc.i.i ], [ %i.dl, %bb.y ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i10, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !430 ; 2 uses
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !987

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i10, ptr %i.dg, align 8, !tbaa !216
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.dl, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.dp, %bb.z ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !431 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.aa, label %bb.z, !llvm.loop !988

bb.aa:                                            ; preds = %bb.z
  store ptr %.0.i.i7.i.i.i.i, ptr %i.dh, align 8, !tbaa !216
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !171
  store i64 %i.dr, ptr %i.di, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  store ptr %i.dl, ptr %i.df, align 8, !tbaa !216
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.x, %bb.aa
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt10BasicScene16CreateIntegratorENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1520) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %4, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pbrt::Camera", align 8      ; 2 uses
  %7 = alloca %"class.pbrt::Sampler", align 8     ; 2 uses
  %8 = alloca %"class.pbrt::Primitive", align 8   ; 2 uses
  %9 = alloca %"class.std::vector.160", align 8   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %2, align 8, !tbaa !432
  store i64 %i.c, ptr %6, align 8, !tbaa !432
  %i.d = load i64, ptr %3, align 8, !tbaa !433
  store i64 %i.d, ptr %7, align 8, !tbaa !433
  %i.e = load i64, ptr %4, align 8, !tbaa !435
  store i64 %i.e, ptr %8, align 8, !tbaa !435
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !438  ; 3 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !439    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, !prof !227

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #35
  %.pre = load ptr, ptr %5, align 8, !tbaa !993
  %.pre4 = load ptr, ptr %i.f, align 8, !tbaa !993
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ %i.g, %bb.a ], [ %.pre4, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 7 uses
  %i.p = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN4pbrt5LightEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  store ptr %i.p, ptr %9, align 8, !tbaa !439
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !440
  %.not11.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.t = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %10 = ptrtoaddr ptr %i.p to i64
  %i.u = ptrtoaddr ptr %i.n to i64
  %i.v = add i64 %i.u, -8
  %i.w = sub i64 %i.v, %i.t                       ; 3 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.w, 24
  %11 = sub i64 %i.t, %10
  %diff.check = icmp ugt i64 %11, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i64 %i.w, 120
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 12
  %n.vec = and i64 %i.y, 4611686018427387888      ; 4 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 4 uses
  %next.gep12 = getelementptr i8, ptr %i.o, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep12, i64 32
  %i.af = getelementptr i8, ptr %next.gep12, i64 64
  %i.ag = getelementptr i8, ptr %next.gep12, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep12, align 8, !tbaa !442
  %wide.load13 = load <4 x i64>, ptr %i.ae, align 8, !tbaa !442
  %wide.load14 = load <4 x i64>, ptr %i.af, align 8, !tbaa !442
  %wide.load15 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !442
  %i.ah = getelementptr i8, ptr %next.gep, i64 32
  %i.ai = getelementptr i8, ptr %next.gep, i64 64
  %i.aj = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !442
  store <4 x i64> %wide.load13, ptr %i.ah, align 8, !tbaa !442
  store <4 x i64> %wide.load14, ptr %i.ai, align 8, !tbaa !442
  store <4 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !442
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !990

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !181

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.y, 4611686018427387900    ; 3 uses
  %i.al = shl i64 %n.vec17, 3                     ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.o, i64 %i.al
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = shl i64 %index18, 3                     ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.p, i64 %i.ao
  %next.gep20 = getelementptr i8, ptr %i.o, i64 %i.ao
  %wide.load21 = load <4 x i64>, ptr %next.gep20, align 8, !tbaa !442
  store <4 x i64> %wide.load21, ptr %next.gep19, align 8, !tbaa !442
  %index.next22 = add nuw i64 %index18, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !991

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.y, %n.vec17
  br i1 %cmp.n23, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aq = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !442
  store i64 %i.aq, ptr %.013.i.i.i.i.i, align 8, !tbaa !442
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !992

_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit:  ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.am, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8, !tbaa !438
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !303
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4pbrt10Integrator6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ParameterDictionaryENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaISG_EEPKNS_13RGBColorSpaceEPKNS_7FileLocE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(108) %i.b, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.au, ptr noundef nonnull %i.av)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  %i.aw = load ptr, ptr %9, align 8, !tbaa !439   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !440
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #33
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit:      ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIN4pbrt5LightESaIS1_EEC2ERKS3_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %9, align 8, !tbaa !439   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !440
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #33
  br label %_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit3

_ZNSt6vectorIN4pbrt5LightESaIS1_EED2Ev.exit3:     ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.bb
}

declare void @_ZN4pbrt10Integrator6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ParameterDictionaryENS_6CameraENS_7SamplerENS_9PrimitiveESt6vectorINS_5LightESaISG_EEPKNS_13RGBColorSpaceEPKNS_7FileLocE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(108), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr nofree noundef align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicSceneC2Ev(ptr noundef nonnull align 8 dereferenceable(1520) initializes((0, 48), (112, 136), (144, 192), (256, 280), (296, 368), (376, 380), (384, 392)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.c, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.i, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.j, align 4, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.n, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !167
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.t, align 8, !tbaa !168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i8 0, i64 72, i1 false)
  store ptr %i.s, ptr %i.u, align 8, !tbaa !169
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.s, ptr %i.v, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt10BasicSceneC1EvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.z, align 8, !tbaa !422
  store ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.y, align 8, !tbaa !314
  invoke void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !314 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4pbrt9PrimitiveESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag:bb.a
  %i.fa = add i64 %i.d, %i.ez
  %i.fb = add i64 %i.fa, 8
  %i.fc = sub i64 %i.fb, %i.n
  %i.fd = getelementptr i8, ptr %i.i, i64 %i.fc
  %i.fe = getelementptr i8, ptr %1, i64 %i.ez
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  %bound0149 = icmp ult ptr %i.es, %i.ff
  %bound1150 = icmp ult ptr %1, %i.fd
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %.lr.ph.i.i.i.i.i54.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %vector.memcheck148
  %min.iters.check153 = icmp ult i64 %i.eu, 120
  br i1 %min.iters.check153, label %vec.epilog.ph173, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %i.fg = and i64 %i.ew, 12
  %n.vec155 = and i64 %i.ew, 4611686018427387888  ; 4 uses
  %i.fh = shl i64 %n.vec155, 3                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.es, i64 %i.fh
  %i.fj = getelementptr i8, ptr %1, i64 %i.fh
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph154, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.fk = shl i64 %index157, 3                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.es, i64 %i.fk ; 5 uses
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.fk ; 4 uses
  %i.fl = getelementptr i8, ptr %next.gep158, i64 32 ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep158, i64 64 ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep158, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %next.gep158, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  store <4 x i64> zeroinitializer, ptr %i.fl, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  store <4 x i64> zeroinitializer, ptr %i.fm, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  store <4 x i64> zeroinitializer, ptr %i.fn, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  %i.fo = getelementptr i8, ptr %next.gep159, i64 32
  %i.fp = getelementptr i8, ptr %next.gep159, i64 64
  %i.fq = getelementptr i8, ptr %next.gep159, i64 96
  %wide.load160 = load <4 x i64>, ptr %next.gep159, align 8, !tbaa !435, !alias.scope !2477
  %wide.load161 = load <4 x i64>, ptr %i.fo, align 8, !tbaa !435, !alias.scope !2477
  %wide.load162 = load <4 x i64>, ptr %i.fp, align 8, !tbaa !435, !alias.scope !2477
  %wide.load163 = load <4 x i64>, ptr %i.fq, align 8, !tbaa !435, !alias.scope !2477
  store <4 x i64> %wide.load160, ptr %next.gep158, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  store <4 x i64> %wide.load161, ptr %i.fl, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  store <4 x i64> %wide.load162, ptr %i.fm, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  store <4 x i64> %wide.load163, ptr %i.fn, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  %index.next164 = add nuw i64 %index157, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.fr, label %middle.block165, label %vector.body156, !llvm.loop !2451

middle.block165:                                  ; preds = %vector.body156
  %cmp.n166 = icmp eq i64 %i.ew, %n.vec155
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN4pbrt9PrimitiveES2_SaIS1_EET0_T_S5_S4_RT1_.exit59, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block165
  %min.epilog.iters.check172 = icmp eq i64 %i.fg, 0
  br i1 %min.epilog.iters.check172, label %.lr.ph.i.i.i.i.i54.preheader, label %vec.epilog.ph173, !prof !181

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check171
  %vec.epilog.resume.val167 = phi i64 [ %n.vec155, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check152 ]
  %n.vec174 = and i64 %i.ew, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec174, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.es, i64 %i.fs
  %i.fu = getelementptr i8, ptr %1, i64 %i.fs
  br label %vec.epilog.vector.body175

vec.epilog.vector.body175:                        ; preds = %vec.epilog.vector.body175, %vec.epilog.ph173
  %index176 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph173 ], [ %index.next180, %vec.epilog.vector.body175 ] ; 2 uses
  %i.fv = shl i64 %index176, 3                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.es, i64 %i.fv ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.fv
  store <4 x i64> zeroinitializer, ptr %next.gep177, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  %wide.load179 = load <4 x i64>, ptr %next.gep178, align 8, !tbaa !435, !alias.scope !2477
  store <4 x i64> %wide.load179, ptr %next.gep177, align 8, !tbaa !435, !alias.scope !2476, !noalias !2477
  %index.next180 = add nuw i64 %index176, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.fw, label %vec.epilog.middle.block181, label %vec.epilog.vector.body175, !llvm.loop !2452

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body175
  %cmp.n182 = icmp eq i64 %i.ew, %n.vec174
  br i1 %cmp.n182, label %_ZSt22__uninitialized_move_aIPN4pbrt9PrimitiveES2_SaIS1_EET0_T_S5_S4_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %iter.check169, %vector.memcheck148, %vec.epilog.iter.check171, %vec.epilog.middle.block181
  %.013.i.i.i.i.i55.ph = phi ptr [ %i.es, %iter.check169 ], [ %i.es, %vector.memcheck148 ], [ %i.fi, %vec.epilog.iter.check171 ], [ %i.ft, %vec.epilog.middle.block181 ]
  %.sroa.08.012.i.i.i.i.i56.ph = phi ptr [ %1, %iter.check169 ], [ %1, %vector.memcheck148 ], [ %i.fj, %vec.epilog.iter.check171 ], [ %i.fu, %vec.epilog.middle.block181 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader, %.lr.ph.i.i.i.i.i54
  %.013.i.i.i.i.i55 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i54 ], [ %.013.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i56 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i54 ], [ %.sroa.08.012.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader ] ; 2 uses
  store i64 0, ptr %.013.i.i.i.i.i55, align 8, !tbaa !435
  %i.fx = load i64, ptr %.sroa.08.012.i.i.i.i.i56, align 8, !tbaa !435
  store i64 %i.fx, ptr %.013.i.i.i.i.i55, align 8, !tbaa !435
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 8
  %.not.i.i.i.i.i57 = icmp eq ptr %i.fy, %i.i
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPN4pbrt9PrimitiveES2_SaIS1_EET0_T_S5_S4_RT1_.exit59, label %.lr.ph.i.i.i.i.i54, !llvm.loop !2453

_ZSt22__uninitialized_move_aIPN4pbrt9PrimitiveES2_SaIS1_EET0_T_S5_S4_RT1_.exit59: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block165, %vec.epilog.middle.block181, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ga, ptr %i.h, align 8, !tbaa !518
  %i.gb = ashr exact i64 %i.n, 3                  ; 10 uses
  %i.gc = icmp sgt i64 %i.gb, 0
  br i1 %i.gc, label %iter.check205, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

iter.check205:                                    ; preds = %_ZSt22__uninitialized_move_aIPN4pbrt9PrimitiveES2_SaIS1_EET0_T_S5_S4_RT1_.exit59
  %min.iters.check186 = icmp ult i64 %i.gb, 4
  %i.gd = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.gd, -128
  %or.cond464 = or i1 %min.iters.check186, %diff.check
  br i1 %or.cond464, label %.lr.ph.i.i.i.i.i61.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %iter.check205
  %min.iters.check188 = icmp ult i64 %i.gb, 16
  br i1 %min.iters.check188, label %vec.epilog.ph209, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %n.vec190 = and i64 %i.gb, 9223372036854775792  ; 4 uses
  %i.ge = and i64 %i.gb, 15
  %i.gf = shl i64 %n.vec190, 3                    ; 2 uses
  %i.gg = getelementptr i8, ptr %1, i64 %i.gf
  %i.gh = getelementptr i8, ptr %2, i64 %i.gf
  br label %vector.body191

vector.body191:                                   ; preds = %vector.ph189, %vector.body191
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next199, %vector.body191 ] ; 2 uses
  %i.gi = shl i64 %index192, 3                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %1, i64 %i.gi ; 4 uses
  %next.gep194 = getelementptr i8, ptr %2, i64 %i.gi ; 4 uses
  %i.gj = getelementptr i8, ptr %next.gep194, i64 32
  %i.gk = getelementptr i8, ptr %next.gep194, i64 64
  %i.gl = getelementptr i8, ptr %next.gep194, i64 96
  %wide.load195 = load <4 x i64>, ptr %next.gep194, align 8, !tbaa !435
  %wide.load196 = load <4 x i64>, ptr %i.gj, align 8, !tbaa !435
  %wide.load197 = load <4 x i64>, ptr %i.gk, align 8, !tbaa !435
  %wide.load198 = load <4 x i64>, ptr %i.gl, align 8, !tbaa !435
  %i.gm = getelementptr i8, ptr %next.gep193, i64 32
  %i.gn = getelementptr i8, ptr %next.gep193, i64 64
  %i.go = getelementptr i8, ptr %next.gep193, i64 96
  store <4 x i64> %wide.load195, ptr %next.gep193, align 8, !tbaa !435
  store <4 x i64> %wide.load196, ptr %i.gm, align 8, !tbaa !435
  store <4 x i64> %wide.load197, ptr %i.gn, align 8, !tbaa !435
  store <4 x i64> %wide.load198, ptr %i.go, align 8, !tbaa !435
  %index.next199 = add nuw i64 %index192, 16      ; 2 uses
  %i.gp = icmp eq i64 %index.next199, %n.vec190
  br i1 %i.gp, label %middle.block200, label %vector.body191, !llvm.loop !2454

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %i.gb, %n.vec190
  br i1 %cmp.n201, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %vec.epilog.iter.check207

vec.epilog.iter.check207:                         ; preds = %middle.block200
  %i.gq = and i64 %i.n, 96
  %min.epilog.iters.check208 = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check208, label %.lr.ph.i.i.i.i.i61.preheader, label %vec.epilog.ph209, !prof !181

vec.epilog.ph209:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check207
  %vec.epilog.resume.val202 = phi i64 [ %n.vec190, %vec.epilog.iter.check207 ], [ 0, %vector.main.loop.iter.check187 ]
  %n.vec210 = and i64 %i.gb, 9223372036854775804  ; 3 uses
  %i.gr = and i64 %i.gb, 3
  %i.gs = shl i64 %n.vec210, 3                    ; 2 uses
  %i.gt = getelementptr i8, ptr %1, i64 %i.gs
  %i.gu = getelementptr i8, ptr %2, i64 %i.gs
  br label %vec.epilog.vector.body211

vec.epilog.vector.body211:                        ; preds = %vec.epilog.vector.body211, %vec.epilog.ph209
  %index212 = phi i64 [ %vec.epilog.resume.val202, %vec.epilog.ph209 ], [ %index.next216, %vec.epilog.vector.body211 ] ; 2 uses
  %i.gv = shl i64 %index212, 3                    ; 2 uses
  %next.gep213 = getelementptr i8, ptr %1, i64 %i.gv
  %next.gep214 = getelementptr i8, ptr %2, i64 %i.gv
  %wide.load215 = load <4 x i64>, ptr %next.gep214, align 8, !tbaa !435
  store <4 x i64> %wide.load215, ptr %next.gep213, align 8, !tbaa !435
  %index.next216 = add nuw i64 %index212, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next216, %n.vec210
  br i1 %i.gw, label %vec.epilog.middle.block217, label %vec.epilog.vector.body211, !llvm.loop !2455

vec.epilog.middle.block217:                       ; preds = %vec.epilog.vector.body211
  %cmp.n218 = icmp eq i64 %i.gb, %n.vec210
  br i1 %cmp.n218, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i61.preheader

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %iter.check205, %vec.epilog.iter.check207, %vec.epilog.middle.block217
  %.012.i.i.i.i.i62.ph = phi i64 [ %i.gb, %iter.check205 ], [ %i.ge, %vec.epilog.iter.check207 ], [ %i.gr, %vec.epilog.middle.block217 ]
  %.0811.i.i.i.i.i63.ph = phi ptr [ %1, %iter.check205 ], [ %i.gg, %vec.epilog.iter.check207 ], [ %i.gt, %vec.epilog.middle.block217 ]
  %.0910.i.i.i.i.i64.ph = phi ptr [ %2, %iter.check205 ], [ %i.gh, %vec.epilog.iter.check207 ], [ %i.gu, %vec.epilog.middle.block217 ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.ha, %.lr.ph.i.i.i.i.i61 ], [ %.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i61 ], [ %.0811.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader ] ; 2 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i61 ], [ %.0910.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i61.preheader ] ; 2 uses
  %i.gx = load i64, ptr %.0910.i.i.i.i.i64, align 8, !tbaa !435
  store i64 %i.gx, ptr %.0811.i.i.i.i.i63, align 8, !tbaa !435
  %i.gy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 8
  %i.ha = add nsw i64 %.012.i.i.i.i.i62, -1
  %i.hb = icmp samesign ugt i64 %.012.i.i.i.i.i62, 1
  br i1 %i.hb, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !2456

bb.d:                                             ; preds = %bb.b
  %i.hc = load ptr, ptr %0, align 8, !tbaa !520   ; 9 uses
  %i.hd = ptrtoint ptr %i.hc to i64               ; 4 uses
  %i.he = sub i64 %i.k, %i.hd
  %i.hf = ashr exact i64 %i.he, 3                 ; 4 uses
  %i.hg = sub nsw i64 1152921504606846975, %i.hf
  %i.hh = icmp ult i64 %i.hg, %i.e
  br i1 %i.hh, label %bb.e, label %_ZNKSt6vectorIN4pbrt9PrimitiveESaIS1_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #34
  unreachable

_ZNKSt6vectorIN4pbrt9PrimitiveESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.e)
  %i.hi = add nsw i64 %.sroa.speculated.i, %i.hf  ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hf
  %i.hk = tail call i64 @llvm.umin.i64(i64 %i.hi, i64 1152921504606846975)
  %i.hl = select i1 %i.hj, i64 1152921504606846975, i64 %i.hk ; 3 uses
  %.not.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE11_M_allocateEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIN4pbrt9PrimitiveESaIS1_EE12_M_check_lenEmPKc.exit
  %i.hm = shl nuw nsw i64 %i.hl, 3
  %i.hn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #35
  br label %_ZNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4pbrt9PrimitiveESaIS1_EE12_M_check_lenEmPKc.exit, %bb.f
  %i.ho = phi ptr [ %i.hn, %bb.f ], [ null, %_ZNKSt6vectorIN4pbrt9PrimitiveESaIS1_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.hc, %1
  br i1 %.not13.i.i.i.i.i, label %iter.check404, label %iter.check361

iter.check361:                                    ; preds = %_ZNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE11_M_allocateEm.exit
  %4 = ptrtoaddr ptr %i.ho to i64
  %i.hp = add i64 %i.a, -8
  %i.hq = sub i64 %i.hp, %i.hd                    ; 3 uses
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 5 uses
  %min.iters.check343.a = icmp ult i64 %i.hq, 24
  %5 = sub i64 %i.hd, %4
  %diff.check342 = icmp ugt i64 %5, -128
  %or.cond465 = or i1 %min.iters.check343.a, %diff.check342
  br i1 %or.cond465, label %.lr.ph.i.i.i.i.i66.preheader, label %vector.main.loop.iter.check344

vector.main.loop.iter.check344:                   ; preds = %iter.check361
  %min.iters.check345 = icmp ult i64 %i.hq, 120
  br i1 %min.iters.check345, label %vec.epilog.ph365, label %vector.ph346

vector.ph346:                                     ; preds = %vector.main.loop.iter.check344
  %i.ht = and i64 %i.hs, 12
  %n.vec347 = and i64 %i.hs, 4611686018427387888  ; 4 uses
  %i.hu = shl i64 %n.vec347, 3                    ; 2 uses
  %i.hv = getelementptr i8, ptr %i.ho, i64 %i.hu  ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hc, i64 %i.hu
  br label %vector.body348

vector.body348:                                   ; preds = %vector.ph346, %vector.body348
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next356, %vector.body348 ] ; 2 uses
  %i.hx = shl i64 %index349, 3                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.ho, i64 %i.hx ; 4 uses
  %next.gep351 = getelementptr i8, ptr %i.hc, i64 %i.hx ; 4 uses
  %i.hy = getelementptr i8, ptr %next.gep351, i64 32
  %i.hz = getelementptr i8, ptr %next.gep351, i64 64
  %i.ia = getelementptr i8, ptr %next.gep351, i64 96
  %wide.load352.a = load <4 x i64>, ptr %next.gep351, align 8, !tbaa !435
  %wide.load353.a = load <4 x i64>, ptr %i.hy, align 8, !tbaa !435
  %wide.load354 = load <4 x i64>, ptr %i.hz, align 8, !tbaa !435
  %wide.load355 = load <4 x i64>, ptr %i.ia, align 8, !tbaa !435
  %i.ib = getelementptr i8, ptr %next.gep350, i64 32
  %i.ic = getelementptr i8, ptr %next.gep350, i64 64
  %i.id = getelementptr i8, ptr %next.gep350, i64 96
  store <4 x i64> %wide.load352.a, ptr %next.gep350, align 8, !tbaa !435
  store <4 x i64> %wide.load353.a, ptr %i.ib, align 8, !tbaa !435
  store <4 x i64> %wide.load354, ptr %i.ic, align 8, !tbaa !435
  store <4 x i64> %wide.load355, ptr %i.id, align 8, !tbaa !435
  %index.next356 = add nuw i64 %index349, 16      ; 2 uses
  %i.ie = icmp eq i64 %index.next356, %n.vec347
  br i1 %i.ie, label %middle.block357, label %vector.body348, !llvm.loop !2457

middle.block357:                                  ; preds = %vector.body348
  %cmp.n358 = icmp eq i64 %i.hs, %n.vec347
  br i1 %cmp.n358, label %iter.check404, label %vec.epilog.iter.check363

vec.epilog.iter.check363:                         ; preds = %middle.block357
  %min.epilog.iters.check364 = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check364, label %.lr.ph.i.i.i.i.i66.preheader, label %vec.epilog.ph365, !prof !181

vec.epilog.ph365:                                 ; preds = %vector.main.loop.iter.check344, %vec.epilog.iter.check363
  %vec.epilog.resume.val359 = phi i64 [ %n.vec347, %vec.epilog.iter.check363 ], [ 0, %vector.main.loop.iter.check344 ]
  %n.vec366 = and i64 %i.hs, 4611686018427387900  ; 3 uses
  %i.if = shl i64 %n.vec366, 3                    ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ho, i64 %i.if  ; 2 uses
  %i.ih = getelementptr i8, ptr %i.hc, i64 %i.if
  br label %vec.epilog.vector.body367

vec.epilog.vector.body367:                        ; preds = %vec.epilog.vector.body367, %vec.epilog.ph365
  %index368 = phi i64 [ %vec.epilog.resume.val359, %vec.epilog.ph365 ], [ %index.next372, %vec.epilog.vector.body367 ] ; 2 uses
  %i.ii = shl i64 %index368, 3                    ; 2 uses
  %next.gep369 = getelementptr i8, ptr %i.ho, i64 %i.ii
  %next.gep370 = getelementptr i8, ptr %i.hc, i64 %i.ii
  %wide.load371 = load <4 x i64>, ptr %next.gep370, align 8, !tbaa !435
  store <4 x i64> %wide.load371, ptr %next.gep369, align 8, !tbaa !435
  %index.next372 = add nuw i64 %index368, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next372, %n.vec366
  br i1 %i.ij, label %vec.epilog.middle.block373, label %vec.epilog.vector.body367, !llvm.loop !2458

vec.epilog.middle.block373:                       ; preds = %vec.epilog.vector.body367
  %cmp.n374 = icmp eq i64 %i.hs, %n.vec366
  br i1 %cmp.n374, label %iter.check404, label %.lr.ph.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i66.preheader:                     ; preds = %iter.check361, %vec.epilog.iter.check363, %vec.epilog.middle.block373
  %.015.i.i.i.i.i.ph = phi ptr [ %i.ho, %iter.check361 ], [ %i.hv, %vec.epilog.iter.check363 ], [ %i.ig, %vec.epilog.middle.block373 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.hc, %iter.check361 ], [ %i.hw, %vec.epilog.iter.check363 ], [ %i.ih, %vec.epilog.middle.block373 ]
  br label %.lr.ph.i.i.i.i.i66

.lr.ph.i.i.i.i.i66:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader, %.lr.ph.i.i.i.i.i66
  %.015.i.i.i.i.i = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i66 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i66 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader ] ; 2 uses
  %i.ik = load i64, ptr %.01214.i.i.i.i.i, align 8, !tbaa !435
  store i64 %i.ik, ptr %.015.i.i.i.i.i, align 8, !tbaa !435
  %i.il = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.il, %1
  br i1 %.not.i.i.i.i.i67, label %iter.check404, label %.lr.ph.i.i.i.i.i66, !llvm.loop !2459

iter.check404:                                    ; preds = %.lr.ph.i.i.i.i.i66, %middle.block357, %vec.epilog.middle.block373, %_ZNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i68 = phi ptr [ %i.ho, %_ZNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE11_M_allocateEm.exit ], [ %i.ig, %vec.epilog.middle.block373 ], [ %i.hv, %middle.block357 ], [ %i.im, %.lr.ph.i.i.i.i.i66 ] ; 8 uses
  %i.in = add i64 %i.b, -8
  %i.io = sub i64 %i.in, %i.c                     ; 3 uses
  %i.ip = lshr i64 %i.io, 3
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 5 uses
  %min.iters.check382 = icmp ult i64 %i.io, 24
  br i1 %min.iters.check382, label %.lr.ph.i.i.i.i70.preheader, label %vector.memcheck383

vector.memcheck383:                               ; preds = %iter.check404
  %i.ir = add i64 %i.b, -8
  %i.is = sub i64 %i.ir, %i.c
  %i.it = and i64 %i.is, -8
  %i.iu = add i64 %i.it, 8                        ; 2 uses
  %i.iv = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.iu
  %i.iw = getelementptr i8, ptr %2, i64 %i.iu
  %bound0384 = icmp ult ptr %.0.lcssa.i.i.i.i.i68, %i.iw
  %bound1385 = icmp ult ptr %2, %i.iv
  %found.conflict386 = and i1 %bound0384, %bound1385
  br i1 %found.conflict386, label %.lr.ph.i.i.i.i70.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck383
  %min.iters.check388 = icmp ult i64 %i.io, 120
  br i1 %min.iters.check388, label %vec.epilog.ph408, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.ix = and i64 %i.iq, 12
  %n.vec390 = and i64 %i.iq, 4611686018427387888  ; 4 uses
  %i.iy = shl i64 %n.vec390, 3                    ; 2 uses
  %i.iz = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.iy ; 2 uses
  %i.ja = getelementptr i8, ptr %2, i64 %i.iy
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next399, %vector.body391 ] ; 2 uses
  %i.jb = shl i64 %index392, 3                    ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.jb ; 5 uses
  %next.gep394 = getelementptr i8, ptr %2, i64 %i.jb ; 4 uses
  %i.jc = getelementptr i8, ptr %next.gep393, i64 32 ; 2 uses
  %i.jd = getelementptr i8, ptr %next.gep393, i64 64 ; 2 uses
  %i.je = getelementptr i8, ptr %next.gep393, i64 96 ; 2 uses
  store <4 x i64> zeroinitializer, ptr %next.gep393, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  store <4 x i64> zeroinitializer, ptr %i.jc, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  store <4 x i64> zeroinitializer, ptr %i.jd, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  store <4 x i64> zeroinitializer, ptr %i.je, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  %i.jf = getelementptr i8, ptr %next.gep394, i64 32
  %i.jg = getelementptr i8, ptr %next.gep394, i64 64
  %i.jh = getelementptr i8, ptr %next.gep394, i64 96
  %wide.load395.a = load <4 x i64>, ptr %next.gep394, align 8, !tbaa !435, !alias.scope !2479
  %wide.load396.a = load <4 x i64>, ptr %i.jf, align 8, !tbaa !435, !alias.scope !2479
  %wide.load397 = load <4 x i64>, ptr %i.jg, align 8, !tbaa !435, !alias.scope !2479
  %wide.load398 = load <4 x i64>, ptr %i.jh, align 8, !tbaa !435, !alias.scope !2479
  store <4 x i64> %wide.load395.a, ptr %next.gep393, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  store <4 x i64> %wide.load396.a, ptr %i.jc, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  store <4 x i64> %wide.load397, ptr %i.jd, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  store <4 x i64> %wide.load398, ptr %i.je, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  %index.next399 = add nuw i64 %index392, 16      ; 2 uses
  %i.ji = icmp eq i64 %index.next399, %n.vec390
  br i1 %i.ji, label %middle.block400, label %vector.body391, !llvm.loop !2463

middle.block400:                                  ; preds = %vector.body391
  %cmp.n401 = icmp eq i64 %i.iq, %n.vec390
  br i1 %cmp.n401, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit75, label %vec.epilog.iter.check406

vec.epilog.iter.check406:                         ; preds = %middle.block400
  %min.epilog.iters.check407 = icmp eq i64 %i.ix, 0
  br i1 %min.epilog.iters.check407, label %.lr.ph.i.i.i.i70.preheader, label %vec.epilog.ph408, !prof !181

vec.epilog.ph408:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check406
  %vec.epilog.resume.val402 = phi i64 [ %n.vec390, %vec.epilog.iter.check406 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec409 = and i64 %i.iq, 4611686018427387900  ; 3 uses
  %i.jj = shl i64 %n.vec409, 3                    ; 2 uses
  %i.jk = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %2, i64 %i.jj
  br label %vec.epilog.vector.body410

vec.epilog.vector.body410:                        ; preds = %vec.epilog.vector.body410, %vec.epilog.ph408
  %index411 = phi i64 [ %vec.epilog.resume.val402, %vec.epilog.ph408 ], [ %index.next415, %vec.epilog.vector.body410 ] ; 2 uses
  %i.jm = shl i64 %index411, 3                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.jm ; 2 uses
  %next.gep413 = getelementptr i8, ptr %2, i64 %i.jm
  store <4 x i64> zeroinitializer, ptr %next.gep412, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  %wide.load414 = load <4 x i64>, ptr %next.gep413, align 8, !tbaa !435, !alias.scope !2479
  store <4 x i64> %wide.load414, ptr %next.gep412, align 8, !tbaa !435, !alias.scope !2478, !noalias !2479
  %index.next415 = add nuw i64 %index411, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next415, %n.vec409
  br i1 %i.jn, label %vec.epilog.middle.block416, label %vec.epilog.vector.body410, !llvm.loop !2464

vec.epilog.middle.block416:                       ; preds = %vec.epilog.vector.body410
  %cmp.n417 = icmp eq i64 %i.iq, %n.vec409
  br i1 %cmp.n417, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70.preheader

.lr.ph.i.i.i.i70.preheader:                       ; preds = %iter.check404, %vector.memcheck383, %vec.epilog.iter.check406, %vec.epilog.middle.block416
  %.013.i.i.i.i71.ph = phi ptr [ %.0.lcssa.i.i.i.i.i68, %iter.check404 ], [ %.0.lcssa.i.i.i.i.i68, %vector.memcheck383 ], [ %i.iz, %vec.epilog.iter.check406 ], [ %i.jk, %vec.epilog.middle.block416 ]
  %.sroa.08.012.i.i.i.i72.ph = phi ptr [ %2, %iter.check404 ], [ %2, %vector.memcheck383 ], [ %i.ja, %vec.epilog.iter.check406 ], [ %i.jl, %vec.epilog.middle.block416 ]
  br label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70
  %.013.i.i.i.i71 = phi ptr [ %i.jq, %.lr.ph.i.i.i.i70 ], [ %.013.i.i.i.i71.ph, %.lr.ph.i.i.i.i70.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i72 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i72.ph, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  store i64 0, ptr %.013.i.i.i.i71, align 8, !tbaa !435
  %i.jo = load i64, ptr %.sroa.08.012.i.i.i.i72, align 8, !tbaa !435
  store i64 %i.jo, ptr %.013.i.i.i.i71, align 8, !tbaa !435
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i72, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i71, i64 8 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.jp, %3
  br i1 %.not.i.i.i.i73, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70, !llvm.loop !2465

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit75: ; preds = %.lr.ph.i.i.i.i70, %vec.epilog.middle.block416, %middle.block400
  %.lcssa124 = phi ptr [ %i.jk, %vec.epilog.middle.block416 ], [ %i.iz, %middle.block400 ], [ %i.jq, %.lr.ph.i.i.i.i70 ] ; 9 uses
  %.not13.i.i.i.i.i76 = icmp eq ptr %1, %i.i
  br i1 %.not13.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt9PrimitiveES2_SaIS1_EET0_T_S5_S4_RT1_.exit82, label %iter.check447

iter.check447:                                    ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN4pbrt9PrimitiveESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit75
  %i.jr = add i64 %i.k, -8
  %i.js = sub i64 %i.jr, %i.a                     ; 3 uses
  %i.jt = lshr i64 %i.js, 3
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 5 uses
end_hunk_1
begin_hunk_2_@llvm.fma.v2f32
!792 = distinct !{null}
!793 = distinct !{!793, !81, !179, !180}
!794 = distinct !{!794, !81, !179, !180}
!795 = distinct !{!795, !182}
!796 = distinct !{!796, !81, !179}
!797 = !{!791}
!798 = !{!346, !346, i64 0}
!799 = distinct !{!799, i1 false, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi"}
!800 = distinct !{!800, !799, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi: argument 0"}
!801 = distinct !{!801, i1 false, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi"}
!802 = distinct !{!802, !801, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi: argument 0"}
!803 = !{!800}
!804 = !{!802}
!805 = distinct !{!805, !81, !179, !180}
!806 = distinct !{!806, !81, !179, !180}
!807 = distinct !{!807, !182}
!808 = distinct !{!808, !81, !179}
!809 = distinct !{!809, i1 false, !"_ZN4pbrt12StringPrintfIJRA12_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!810 = distinct !{!810, !809, !"_ZN4pbrt12StringPrintfIJRA12_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!811 = !{!810}
!812 = distinct !{!812, i1 false, !"_ZSt4bindIRZN4pbrt10BasicScene8AddLightENS0_16LightSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_"}
!813 = distinct !{!813, !812, !"_ZSt4bindIRZN4pbrt10BasicScene8AddLightENS0_16LightSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_: argument 0"}
!814 = !{!813}
!815 = !{i64 0, i64 16, !88}
!816 = !{!287, !286, i64 8}
!817 = !{!287, !286, i64 16}
!818 = !{!287, !286, i64 0}
!819 = distinct !{!819, !81, !179, !180}
!820 = distinct !{!820, !81, !179, !180}
!821 = distinct !{!821, !182}
!822 = distinct !{!822, !81, !179}
!823 = distinct !{!823, !81, !179, !180}
!824 = distinct !{!824, !81, !179, !180}
!825 = distinct !{!825, !182}
!826 = distinct !{!826, !81, !179}
!827 = distinct !{!827, !81, !179, !180}
!828 = distinct !{!828, !81, !179, !180}
!829 = distinct !{!829, !182}
!830 = distinct !{!830, !81, !179}
!831 = distinct !{!831, i1 false, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi"}
!832 = distinct !{!832, !831, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi: argument 0"}
!833 = !{!832}
!834 = distinct !{!834, i1 false, !"_ZN4pbrt12StringPrintfIJRA6_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!835 = distinct !{!835, !834, !"_ZN4pbrt12StringPrintfIJRA6_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!836 = !{!835}
!837 = distinct !{!837, !81, !179, !180}
!838 = distinct !{!838, !81, !179, !180}
!839 = distinct !{!839, !182}
!840 = distinct !{!840, !81, !179}
!841 = distinct !{!841, !81, !179, !180}
!842 = distinct !{!842, !81, !179, !180}
!843 = distinct !{!843, !182}
!844 = distinct !{!844, !81, !179}
!845 = distinct !{!845, i1 false, !"_ZSt19__relocate_object_aISt4pairIcN4pbrt7FileLocEES3_SaIS3_EEvPT_PT0_RT1_"}
!846 = distinct !{!846, !845, !"_ZSt19__relocate_object_aISt4pairIcN4pbrt7FileLocEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!847 = distinct !{!847, !845, !"_ZSt19__relocate_object_aISt4pairIcN4pbrt7FileLocEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!848 = !{!847, !846}
!849 = distinct !{!849, i1 false, !"_ZN4pbrt12StringPrintfIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!850 = distinct !{!850, !849, !"_ZN4pbrt12StringPrintfIJRA10_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!851 = !{!850}
!852 = distinct !{!852, i1 false, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi"}
!853 = distinct !{!853, !852, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi: argument 0"}
!854 = distinct !{!854, i1 false, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi"}
!855 = distinct !{!855, !854, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi: argument 0"}
!856 = distinct !{!856, i1 false, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_"}
!857 = distinct !{!857, !856, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!858 = distinct !{!858, !856, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!859 = distinct !{!859, i1 false, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi"}
!860 = distinct !{!860, !859, !"_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEi: argument 0"}
!861 = distinct !{!861, i1 false, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_"}
!862 = distinct !{!862, !861, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!863 = distinct !{!863, !861, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!864 = !{!853}
!865 = !{!855}
!866 = !{i64 0, i64 8, !198, i64 8, i64 8, !201, i64 16, i64 4, !202, i64 20, i64 4, !202, i64 24, i64 8, !392, i64 32, i64 8, !178}
!867 = !{!858, !857}
!868 = !{!860}
!869 = !{!863, !862}
!870 = distinct !{!870, !81}
!871 = distinct !{!871, i1 false, !"_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!872 = distinct !{!872, !871, !"_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!873 = !{!872}
!874 = distinct !{!874, i1 false, !"_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!875 = distinct !{!875, !874, !"_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!876 = !{!875}
!877 = distinct !{!877, !81}
!878 = distinct !{!878, !81}
!879 = distinct !{!879, !81}
!880 = distinct !{!880, i1 false, !"_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!881 = distinct !{!881, !880, !"_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!882 = !{!881}
!883 = distinct !{!883, i1 false, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!884 = distinct !{!884, !883, !"_ZN4pbrt12normalizeArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!885 = distinct !{!885, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!886 = distinct !{!886, !885, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!887 = distinct !{null}
!888 = !{!884}
!889 = !{!399, !97, i64 5}
!890 = !{!399, !97, i64 7}
!891 = !{!399, !97, i64 6}
!892 = !{!886}
!893 = !{!399, !398, i64 16}
!894 = !{!399, !57, i64 0}
!895 = !{!399, !97, i64 9}
!896 = !{!"_ZTSN4pstd8optionalIiEE", !56, i64 0, !97, i64 4}
!897 = !{!"_ZTSN4pstd8optionalIN4pbrt7Bounds2IfEEEE", !56, i64 0, !97, i64 16}
!898 = !{!"_ZTSN4pstd8optionalIN4pbrt7Bounds2IiEEEE", !56, i64 0, !97, i64 16}
!899 = !{!"_ZTSN4pstd8optionalIN4pbrt6Point2IiEEEE", !56, i64 0, !97, i64 8}
!900 = !{!"_ZTSN4pbrt11PBRTOptionsE", !399, i64 0, !57, i64 20, !304, i64 24, !86, i64 32, !97, i64 64, !97, i64 65, !97, i64 66, !97, i64 67, !896, i64 68, !896, i64 76, !97, i64 84, !97, i64 85, !86, i64 88, !86, i64 120, !86, i64 152, !86, i64 184, !86, i64 216, !897, i64 248, !898, i64 268, !899, i64 288, !99, i64 300}
!901 = !{!900, !97, i64 66}
!902 = !{!399, !97, i64 11}
!903 = distinct !{!903, i1 false, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_"}
!904 = distinct !{!904, !903, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_: argument 0"}
!905 = !{!904}
!906 = distinct !{!906, i1 false, !"_ZZN4pbrt17BasicSceneBuilder9TransformEPfNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_"}
!907 = distinct !{!907, !906, !"_ZZN4pbrt17BasicSceneBuilder9TransformEPfNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_: argument 0"}
!908 = !{!907}
!909 = distinct !{!909, i1 false, !"_ZZN4pbrt17BasicSceneBuilder15ConcatTransformEPfNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_"}
!910 = distinct !{!910, !909, !"_ZZN4pbrt17BasicSceneBuilder15ConcatTransformEPfNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_: argument 0"}
!911 = distinct !{!911, i1 false, !"_ZN4pbrt9TransposeERKNS_9TransformE"}
!912 = distinct !{!912, !911, !"_ZN4pbrt9TransposeERKNS_9TransformE: argument 0"}
!913 = !{!910}
!914 = !{!912}
!915 = distinct !{!915, i1 false, !"_ZZN4pbrt17BasicSceneBuilder6RotateEffffNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_"}
!916 = distinct !{!916, !915, !"_ZZN4pbrt17BasicSceneBuilder6RotateEffffNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_: argument 0"}
!917 = distinct !{!917, i1 false, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE"}
!918 = distinct !{!918, !917, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0"}
!919 = distinct !{!919, i1 false, !"_ZN4pbrt6RotateEffNS_7Vector3IfEE"}
!920 = distinct !{!920, !919, !"_ZN4pbrt6RotateEffNS_7Vector3IfEE: argument 0"}
!921 = distinct !{!921, !917, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0:It1"}
!922 = !{!916}
!923 = !{!918}
!924 = !{!918, !916}
!925 = !{!920, !918}
!926 = !{!921}
!927 = !{!921, !916}
!928 = !{!920, !921}
!929 = distinct !{!929, i1 false, !"_ZZN4pbrt17BasicSceneBuilder5ScaleEfffNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_"}
!930 = distinct !{!930, !929, !"_ZZN4pbrt17BasicSceneBuilder5ScaleEfffNS_7FileLocEENK3$_0clINS_9TransformEEEDaT_: argument 0"}
!931 = !{!930}
!932 = distinct !{!932, i1 false, !"_ZN4pbrt12StringPrintfIJRA5_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!933 = distinct !{!933, !932, !"_ZN4pbrt12StringPrintfIJRA5_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!934 = !{!933}
!935 = distinct !{!935, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!936 = distinct !{!936, !935, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!937 = distinct !{!937, i1 false, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_"}
!938 = distinct !{!938, !937, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_: argument 0"}
!939 = distinct !{!939, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!940 = distinct !{!940, !939, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!941 = distinct !{!941, i1 false, !"_ZSt4bindIRZN4pbrt10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0JRS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESD_JDpT0_EE4typeEOSD_DpOSE_"}
!942 = distinct !{!942, !941, !"_ZSt4bindIRZN4pbrt10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0JRS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESD_JDpT0_EE4typeEOSD_DpOSE_: argument 0"}
!943 = !{!936}
!944 = !{!938}
!945 = !{!940}
!946 = !{!942}
!947 = !{!410, !410, i64 0}
!948 = distinct !{!948, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!949 = distinct !{!949, !948, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!950 = distinct !{!950, i1 false, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_"}
!951 = distinct !{!951, !950, !"_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_: argument 0"}
!952 = distinct !{!952, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!953 = distinct !{!953, !952, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!954 = distinct !{!954, i1 false, !"_ZSt4bindIRZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0JRS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESD_JDpT0_EE4typeEOSD_DpOSE_"}
!955 = distinct !{!955, !954, !"_ZSt4bindIRZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0JRS8_EENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESD_JDpT0_EE4typeEOSD_DpOSE_: argument 0"}
!956 = !{!949}
!957 = !{!951}
!958 = !{!953}
!959 = !{!955}
!960 = !{!417, !417, i64 0}
!961 = distinct !{!961, i1 false, !"_ZN4pbrt12StringPrintfIJRA9_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!962 = distinct !{!962, !961, !"_ZN4pbrt12StringPrintfIJRA9_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!963 = !{!962}
!964 = distinct !{!964, i1 false, !"_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!965 = distinct !{!965, !964, !"_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!966 = !{!965}
!967 = distinct !{!967, i1 false, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!968 = distinct !{!968, !967, !"_ZSt9make_pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!969 = !{!968}
!970 = distinct !{!970, i1 false, !"_ZN4pbrt12StringPrintfIJRA14_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!971 = distinct !{!971, !970, !"_ZN4pbrt12StringPrintfIJRA14_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!972 = !{!971}
!973 = distinct !{!973, i1 false, !"_ZN4pbrt12StringPrintfIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!974 = distinct !{!974, !973, !"_ZN4pbrt12StringPrintfIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!975 = !{!974}
!976 = distinct !{null}
!977 = distinct !{!977, !81}
!978 = distinct !{!978, !81}
!979 = !{!"_ZTSN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEE", !56, i64 0, !97, i64 16}
!980 = !{!979, !97, i64 16}
!981 = distinct !{!981, i1 false, !"_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_"}
!982 = distinct !{!982, !981, !"_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_: argument 0"}
!983 = !{!982}
!984 = distinct !{!984, i1 false, !"_ZN4pbrt8AsyncJobINS_6MediumEE12TryGetResultEPSt5mutex"}
!985 = distinct !{!985, !984, !"_ZN4pbrt8AsyncJobINS_6MediumEE12TryGetResultEPSt5mutex: argument 0"}
!986 = distinct !{!986, !81}
!987 = distinct !{!987, !81}
!988 = distinct !{!988, !81}
!989 = !{!985}
!990 = distinct !{!990, !81, !179, !180}
!991 = distinct !{!991, !81, !179, !180}
!992 = distinct !{!992, !81, !179}
!993 = !{!436, !436, i64 0}
!994 = !{!250, !249, i64 16}
!995 = distinct !{!995, i1 false, !"_ZSt4bindIRZN4pbrt10BasicScene22startLoadingNormalMapsERKNS0_19ParameterDictionaryEE3$_0JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_"}
!996 = distinct !{!996, !995, !"_ZSt4bindIRZN4pbrt10BasicScene22startLoadingNormalMapsERKNS0_19ParameterDictionaryEE3$_0JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_: argument 0"}
!997 = !{!996}
!998 = !{!450, !450, i64 0}
!999 = distinct !{!999, !81}
!1000 = distinct !{!1000, !81}
!1001 = distinct !{!1001, !81, !179, !180}
!1002 = distinct !{!1002, !81, !179, !180}
!1003 = distinct !{!1003, !182}
!1004 = distinct !{!1004, !81, !179}
!1005 = distinct !{!1005, !81, !179, !180}
!1006 = distinct !{!1006, !81, !179, !180}
!1007 = distinct !{!1007, !182}
!1008 = distinct !{!1008, !81, !179}
!1009 = distinct !{!1009, !81}
!1010 = distinct !{!1010, i1 false, !"_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!1011 = distinct !{!1011, !1010, !"_ZN4pbrt12StringPrintfIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!1012 = distinct !{!1012, !81, !179, !180}
!1013 = distinct !{!1013, !81, !179, !180}
!1014 = distinct !{!1014, !81, !179}
!1015 = distinct !{!1015, !81, !179, !180}
!1016 = distinct !{!1016, !81, !179, !180}
!1017 = distinct !{!1017, !81, !179}
!1018 = !{!1011}
!1019 = !{!459, !458, i64 16}
!1020 = !{!194, !194, i64 0}
!1021 = distinct !{!1021, i1 false, !"_ZN4pbrt12StringPrintfIJRA47_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1022 = distinct !{!1022, !1021, !"_ZN4pbrt12StringPrintfIJRA47_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1023 = !{!1022}
!1024 = distinct !{!1024, i1 false, !"_ZN4pbrt12StringPrintfIJRA40_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1025 = distinct !{!1025, !1024, !"_ZN4pbrt12StringPrintfIJRA40_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1026 = !{!1025}
!1027 = distinct !{!1027, i1 false, !"_ZN4pbrt8AsyncJobINS_12FloatTextureEE9GetResultEv"}
!1028 = distinct !{!1028, !1027, !"_ZN4pbrt8AsyncJobINS_12FloatTextureEE9GetResultEv: argument 0"}
!1029 = distinct !{!1029, i1 false, !"_ZN4pbrt8AsyncJobINS_15SpectrumTextureEE9GetResultEv"}
!1030 = distinct !{!1030, !1029, !"_ZN4pbrt8AsyncJobINS_15SpectrumTextureEE9GetResultEv: argument 0"}
!1031 = !{!1028}
!1032 = !{!1030}
!1033 = !{!291, !291, i64 0}
!1034 = distinct !{!1034, i1 false, !"_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!1035 = distinct !{!1035, !1034, !"_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!1036 = !{!1035}
!1037 = distinct !{!1037, !81}
!1038 = distinct !{!1038, !81}
!1039 = distinct !{!1039, !81}
!1040 = distinct !{!1040, i1 false, !"_ZZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEEENK3$_1clERKNS_19ParameterDictionaryEPKNS_7FileLocE"}
!1041 = distinct !{!1041, !1040, !"_ZZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEEENK3$_1clERKNS_19ParameterDictionaryEPKNS_7FileLocE: argument 0"}
!1042 = distinct !{!1042, i1 false, !"_ZZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7FileLocE"}
!1043 = distinct !{!1043, !1042, !"_ZZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7FileLocE: argument 0"}
!1044 = distinct !{!1044, i1 false, !"_ZZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7FileLocE"}
!1045 = distinct !{!1045, !1044, !"_ZZN4pbrt10BasicScene12CreateLightsERKNS_13NamedTexturesEPSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7FileLocE: argument 0"}
!1046 = distinct !{!1046, !81, !179, !180}
!1047 = distinct !{!1047, !81, !179, !180}
!1048 = distinct !{!1048, !81, !179}
!1049 = distinct !{null}
!1050 = distinct !{!1050, i1 false, !"LVerDomain"}
!1051 = distinct !{!1051, !1050}
!1052 = distinct !{!1052, !1050}
!1053 = distinct !{!1053, !81, !179, !180}
!1054 = distinct !{!1054, !81, !179, !180}
!1055 = distinct !{!1055, !182}
!1056 = distinct !{!1056, !81, !179}
!1057 = distinct !{!1057, !81}
!1058 = distinct !{!1058, i1 false, !"_ZN4pbrt8AsyncJobINS_5LightEE9GetResultEv"}
!1059 = distinct !{!1059, !1058, !"_ZN4pbrt8AsyncJobINS_5LightEE9GetResultEv: argument 0"}
!1060 = distinct !{!1060, !81, !179, !180}
!1061 = distinct !{!1061, !81, !179, !180}
!1062 = distinct !{!1062, !81, !179}
!1063 = !{!1041}
!1064 = !{!1043}
!1065 = !{!1045}
!1066 = !{!487, !65, i64 16}
!1067 = !{!487, !65, i64 24}
!1068 = !{!486, !61, i64 0}
!1069 = !{!1051}
!1070 = !{!1052}
!1071 = !{!489, !489, i64 0}
!1072 = !{!286, !286, i64 0}
!1073 = !{!1059}
!1074 = distinct !{!1074, i1 false, !"_ZN4pbrt12StringPrintfIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1075 = distinct !{!1075, !1074, !"_ZN4pbrt12StringPrintfIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1076 = !{!1075}
!1077 = distinct !{!1077, i1 false, !"_ZN4pbrt12StringPrintfIJRA17_KcS3_S3_RiS3_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1078 = distinct !{!1078, !1077, !"_ZN4pbrt12StringPrintfIJRA17_KcS3_S3_RiS3_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1079 = !{!1078}
!1080 = distinct !{!1080, !81}
!1081 = !{!492, !57, i64 0}
!1082 = distinct !{!1082, i1 false, !"_ZSt19__relocate_object_aISt17_Rb_tree_iteratorISt4pairIKN4pbrt14InternedStringEPNS2_29InstanceDefinitionSceneEntityEEES8_SaIS8_EEvPT_PT0_RT1_"}
!1083 = distinct !{!1083, !1082, !"_ZSt19__relocate_object_aISt17_Rb_tree_iteratorISt4pairIKN4pbrt14InternedStringEPNS2_29InstanceDefinitionSceneEntityEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!1084 = distinct !{!1084, !1082, !"_ZSt19__relocate_object_aISt17_Rb_tree_iteratorISt4pairIKN4pbrt14InternedStringEPNS2_29InstanceDefinitionSceneEntityEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!1085 = distinct !{!1085, !81, !179, !180}
!1086 = distinct !{!1086, !81, !179, !180}
!1087 = distinct !{!1087, !81, !179}
!1088 = distinct !{!1088, !81}
!1089 = distinct !{!1089, !81, !179, !180}
!1090 = distinct !{!1090, !81, !179, !180}
!1091 = distinct !{!1091, !81, !179}
!1092 = distinct !{!1092, !81, !179, !180}
!1093 = distinct !{!1093, !81, !179, !180}
!1094 = distinct !{!1094, !81, !179}
!1095 = !{!"p1 _ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt6MediumESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !60, i64 0}
!1096 = !{!1095, !1095, i64 0}
!1097 = !{!498, !498, i64 0}
!1098 = !{!499, !499, i64 0}
!1099 = !{!500, !500, i64 0}
!1100 = !{!504, !503, i64 8}
!1101 = !{!1083}
!1102 = !{!1084}
!1103 = !{!504, !503, i64 16}
!1104 = !{!"_ZTSN4pbrt19InstanceSceneEntityE", !159, i64 0, !96, i64 8, !391, i64 32, !177, i64 40}
!1105 = !{!1104, !177, i64 40}
!1106 = !{!"_ZTSN4pbrt9PrimitiveE", !434, i64 0}
!1107 = !{!"_ZTSN4pbrt20TransformedPrimitiveE", !1106, i64 0, !177, i64 8}
!1108 = !{!1107, !177, i64 8}
!1109 = !{!1104, !391, i64 32}
!1110 = distinct !{!1110, i1 false, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE"}
!1111 = distinct !{!1111, !1110, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE: argument 0"}
!1112 = distinct !{!1112, i1 false, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE"}
!1113 = distinct !{!1113, !1112, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE: argument 0"}
!1114 = distinct !{!1114, !81}
!1115 = distinct !{!1115, !81, !179, !180}
!1116 = distinct !{!1116, !81, !179, !180}
!1117 = distinct !{!1117, !81, !179}
!1118 = distinct !{!1118, !81, !179, !180}
!1119 = distinct !{!1119, !81, !179, !180}
!1120 = distinct !{!1120, !81, !179}
!1121 = distinct !{!1121, !81}
!1122 = distinct !{!1122, !81}
!1123 = !{!"_ZTSZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEE3$_0", !494, i64 0, !496, i64 8, !60, i64 16, !498, i64 24, !499, i64 32, !60, i64 40, !500, i64 48}
!1124 = !{!1123, !60, i64 16}
!1125 = !{!1123, !498, i64 24}
!1126 = !{!1123, !499, i64 32}
!1127 = !{!1123, !60, i64 40}
!1128 = !{!1111}
!1129 = !{!1113}
!1130 = !{!1123, !500, i64 48}
!1131 = distinct !{!1131, i1 false, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE"}
!1132 = distinct !{!1132, !1131, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE: argument 0"}
!1133 = distinct !{!1133, i1 false, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE"}
!1134 = distinct !{!1134, !1133, !"_ZZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEENK3$_2clERSU_PKNS_7FileLocE: argument 0"}
!1135 = distinct !{!1135, !81, !179, !180}
!1136 = distinct !{!1136, !81, !179, !180}
!1137 = distinct !{!1137, !81, !179}
!1138 = distinct !{!1138, !81, !179, !180}
!1139 = distinct !{!1139, !81, !179, !180}
!1140 = distinct !{!1140, !81, !179}
!1141 = distinct !{!1141, !81, !179, !180}
!1142 = distinct !{!1142, !81, !179, !180}
!1143 = distinct !{!1143, !81, !179}
!1144 = !{!"_ZTSZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEE3$_4", !494, i64 0, !496, i64 8, !60, i64 16, !498, i64 24, !499, i64 32, !60, i64 40}
!1145 = !{!1144, !494, i64 0}
!1146 = !{!1144, !496, i64 8}
!1147 = !{!1144, !60, i64 16}
!1148 = !{!1144, !498, i64 24}
!1149 = !{!1144, !499, i64 32}
!1150 = !{!1144, !60, i64 40}
!1151 = !{!1132}
!1152 = !{!1134}
!1153 = distinct !{!1153, i1 false, !"_ZN4pbrt12StringPrintfIJRKNS_14InternedStringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!1154 = distinct !{!1154, !1153, !"_ZN4pbrt12StringPrintfIJRKNS_14InternedStringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!1155 = !{!1154}
!1156 = distinct !{!1156, !81, !179, !180}
!1157 = distinct !{!1157, !81, !179, !180}
!1158 = distinct !{!1158, !182}
!1159 = distinct !{!1159, !81, !179}
!1160 = distinct !{!1160, !81, !179, !180}
!1161 = distinct !{!1161, !81, !179, !180}
!1162 = distinct !{!1162, !182}
!1163 = distinct !{!1163, !81, !179}
!1164 = distinct !{!1164, !81, !179, !180}
!1165 = distinct !{!1165, !81, !179, !180}
!1166 = distinct !{!1166, !182}
!1167 = distinct !{!1167, !81, !179}
!1168 = !{!91, !91, i64 0}
!1169 = distinct !{!1169, !81}
!1170 = distinct !{!1170, !81}
!1171 = distinct !{!1171, i1 false, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!1172 = distinct !{!1172, !1171, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!1173 = distinct !{!1173, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1174 = distinct !{!1174, !1173, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1175 = distinct !{!1175, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1176 = distinct !{!1176, !1175, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1177 = distinct !{!1177, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!1178 = distinct !{!1178, !1177, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!1179 = distinct !{!1179, i1 false, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!1180 = distinct !{!1180, !1179, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!1181 = !{!1172}
!1182 = !{!1174}
!1183 = !{!1176}
!1184 = !{!1176, !1174}
!1185 = !{!1178}
!1186 = !{!1180}
!1187 = distinct !{!1187, i1 false, !"_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!1188 = distinct !{!1188, !1187, !"_ZN4pbrt12StringPrintfIJRA4_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!1189 = !{!1188}
!1190 = distinct !{!1190, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1191 = distinct !{!1191, !1190, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1192 = distinct !{!1192, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
end_hunk_2
begin_hunk_3_@llvm.fma.v2f32
!2259 = distinct !{!2259, !2258, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2260 = distinct !{!2260, i1 false, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!2261 = distinct !{!2261, !2260, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!2262 = !{!2253}
!2263 = !{!2255}
!2264 = !{!2257}
!2265 = !{!2257, !2255}
!2266 = !{!2259}
!2267 = !{!2261}
!2268 = distinct !{!2268, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2269 = distinct !{!2269, !2268, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2270 = distinct !{!2270, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2271 = distinct !{!2271, !2270, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2272 = distinct !{!2272, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2273 = distinct !{!2273, !2272, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2274 = distinct !{!2274, i1 false, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!2275 = distinct !{!2275, !2274, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!2276 = !{!2269}
!2277 = !{!2271}
!2278 = !{!2271, !2269}
!2279 = !{!2273}
!2280 = !{!2275}
!2281 = !{!594, !594, i64 0}
!2282 = distinct !{!2282, !81}
!2283 = distinct !{!2283, !81}
!2284 = distinct !{!2284, !81}
!2285 = distinct !{!2285, !81}
!2286 = !{!279, !278, i64 0}
!2287 = distinct !{!2287, !81, !179, !180}
!2288 = distinct !{!2288, !81, !179, !180}
!2289 = distinct !{!2289, !182}
!2290 = distinct !{!2290, !81, !179}
!2291 = distinct !{!2291, !81, !179, !180}
!2292 = distinct !{!2292, !81, !179, !180}
!2293 = distinct !{!2293, !182}
!2294 = distinct !{!2294, !81, !179}
!2295 = distinct !{null}
!2296 = distinct !{!2296, !81, !179, !180}
!2297 = distinct !{!2297, !81, !179, !180}
!2298 = distinct !{!2298, !182}
!2299 = distinct !{!2299, !81, !179}
!2300 = distinct !{!2300, !81, !179, !180}
!2301 = distinct !{!2301, !81, !179, !180}
!2302 = distinct !{!2302, !182}
!2303 = distinct !{!2303, !81, !179}
!2304 = distinct !{!2304, !81}
!2305 = !{!598, !598, i64 0}
!2306 = distinct !{!2306, !81}
!2307 = distinct !{!2307, !81}
!2308 = !{!292, !291, i64 0}
!2309 = distinct !{!2309, !81, !179, !180}
!2310 = distinct !{!2310, !81, !179, !180}
!2311 = distinct !{!2311, !182}
!2312 = distinct !{!2312, !81, !179}
!2313 = distinct !{!2313, !81, !179, !180}
!2314 = distinct !{!2314, !81, !179, !180}
!2315 = distinct !{!2315, !182}
!2316 = distinct !{!2316, !81, !179}
!2317 = !{!602, !602, i64 0}
!2318 = distinct !{!2318, !81}
!2319 = !{!606, !606, i64 0}
!2320 = distinct !{!2320, !81}
!2321 = distinct !{!2321, !81}
!2322 = distinct !{!2322, i1 false, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_"}
!2323 = distinct !{!2323, !2322, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2324 = distinct !{!2324, !2322, !"_ZSt19__relocate_object_aIN4pbrt19InstanceSceneEntityES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2325 = distinct !{!2325, !81}
!2326 = !{!2324, !2323}
!2327 = distinct !{!2327, i1 false, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_"}
!2328 = distinct !{!2328, !2327, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_: argument 0"}
!2329 = distinct !{!2329, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2330 = distinct !{!2330, !2329, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2331 = distinct !{!2331, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2332 = distinct !{!2332, !2331, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2333 = distinct !{!2333, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2334 = distinct !{!2334, !2333, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2335 = distinct !{!2335, i1 false, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_"}
!2336 = distinct !{!2336, !2335, !"_ZN4pbrt6detail9formatOneImEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS4_: argument 0"}
!2337 = !{!2328}
!2338 = !{!2330}
!2339 = !{!2332}
!2340 = !{!2332, !2330}
!2341 = !{!2334}
!2342 = !{!2336}
!2343 = !{!612, !612, i64 0}
!2344 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt5ImageEE", !86, i64 0, !455, i64 32}
!2345 = !{!2344, !455, i64 32}
!2346 = distinct !{!2346, !81}
!2347 = distinct !{!2347, !81}
!2348 = distinct !{!2348, !81}
!2349 = distinct !{!2349, !81}
!2350 = distinct !{!2350, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2351 = distinct !{!2351, !2350, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2352 = distinct !{!2352, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2353 = distinct !{!2353, !2352, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2354 = distinct !{!2354, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2355 = distinct !{!2355, !2354, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2356 = distinct !{!2356, i1 false, !"_ZN4pbrt6detail9formatOneIRA40_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!2357 = distinct !{!2357, !2356, !"_ZN4pbrt6detail9formatOneIRA40_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!2358 = !{!2351}
!2359 = !{!2353}
!2360 = !{!2353, !2351}
!2361 = !{!2355}
!2362 = !{!2357}
!2363 = !{!616, !616, i64 0}
!2364 = distinct !{!2364, !81}
!2365 = !{!620, !620, i64 0}
!2366 = distinct !{!2366, !81}
!2367 = distinct !{!2367, !81}
!2368 = distinct !{!2368, !81}
!2369 = distinct !{!2369, !81}
!2370 = !{!624, !624, i64 0}
!2371 = distinct !{!2371, !81}
!2372 = distinct !{!2372, !81}
!2373 = distinct !{!2373, !81}
!2374 = distinct !{!2374, !81}
!2375 = distinct !{!2375, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2376 = distinct !{!2376, !2375, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2377 = distinct !{!2377, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2378 = distinct !{!2378, !2377, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2379 = distinct !{!2379, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2380 = distinct !{!2380, !2379, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2381 = distinct !{!2381, i1 false, !"_ZN4pbrt6detail9formatOneIRA58_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!2382 = distinct !{!2382, !2381, !"_ZN4pbrt6detail9formatOneIRA58_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!2383 = !{!2376}
!2384 = !{!2378}
!2385 = !{!2378, !2376}
!2386 = !{!2380}
!2387 = !{!2382}
!2388 = distinct !{!2388, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2389 = distinct !{!2389, !2388, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2390 = distinct !{!2390, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2391 = distinct !{!2391, !2390, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2392 = distinct !{!2392, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2393 = distinct !{!2393, !2392, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2394 = distinct !{!2394, i1 false, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!2395 = distinct !{!2395, !2394, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!2396 = !{!2389}
!2397 = !{!2391}
!2398 = !{!2391, !2389}
!2399 = !{!2393}
!2400 = !{!2395}
!2401 = distinct !{!2401, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2402 = distinct !{!2402, !2401, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2403 = distinct !{!2403, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2404 = distinct !{!2404, !2403, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2405 = distinct !{!2405, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2406 = distinct !{!2406, !2405, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2407 = distinct !{!2407, i1 false, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!2408 = distinct !{!2408, !2407, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!2409 = !{!2402}
!2410 = !{!2404}
!2411 = !{!2404, !2402}
!2412 = !{!2406}
!2413 = !{!2408}
!2414 = distinct !{!2414, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2415 = distinct !{!2415, !2414, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2416 = distinct !{!2416, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2417 = distinct !{!2417, !2416, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2418 = distinct !{!2418, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2419 = distinct !{!2419, !2418, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2420 = distinct !{!2420, i1 false, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!2421 = distinct !{!2421, !2420, !"_ZN4pbrt6detail9formatOneIRA17_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!2422 = !{!2415}
!2423 = !{!2417}
!2424 = !{!2417, !2415}
!2425 = !{!2419}
!2426 = !{!2421}
!2427 = distinct !{!2427, !81}
!2428 = distinct !{!2428, !81}
!2429 = distinct !{!2429, !81}
!2430 = distinct !{!2430, i1 false, !"LVerDomain"}
!2431 = distinct !{!2431, !2430}
!2432 = distinct !{!2432, !2430}
!2433 = distinct !{!2433, !81, !179, !180}
!2434 = distinct !{!2434, !81, !179, !180}
!2435 = distinct !{!2435, !81, !179}
!2436 = distinct !{!2436, !81, !179, !180}
!2437 = distinct !{!2437, !81, !179, !180}
!2438 = distinct !{!2438, !81, !179}
!2439 = distinct !{!2439, !81, !179, !180}
!2440 = distinct !{!2440, !81, !179, !180}
!2441 = distinct !{!2441, !81, !179}
!2442 = distinct !{!2442, i1 false, !"LVerDomain"}
!2443 = distinct !{!2443, !2442}
!2444 = distinct !{!2444, !2442}
!2445 = distinct !{!2445, !81, !179, !180}
!2446 = distinct !{!2446, !81, !179, !180}
!2447 = distinct !{!2447, !81, !179}
!2448 = distinct !{!2448, i1 false, !"LVerDomain"}
!2449 = distinct !{!2449, !2448}
!2450 = distinct !{!2450, !2448}
!2451 = distinct !{!2451, !81, !179, !180}
!2452 = distinct !{!2452, !81, !179, !180}
!2453 = distinct !{!2453, !81, !179}
!2454 = distinct !{!2454, !81, !179, !180}
!2455 = distinct !{!2455, !81, !179, !180}
!2456 = distinct !{!2456, !81, !179}
!2457 = distinct !{!2457, !81, !179, !180}
!2458 = distinct !{!2458, !81, !179, !180}
!2459 = distinct !{!2459, !81, !179}
!2460 = distinct !{!2460, i1 false, !"LVerDomain"}
!2461 = distinct !{!2461, !2460}
!2462 = distinct !{!2462, !2460}
!2463 = distinct !{!2463, !81, !179, !180}
!2464 = distinct !{!2464, !81, !179, !180}
!2465 = distinct !{!2465, !81, !179}
!2466 = distinct !{!2466, i1 false, !"LVerDomain"}
!2467 = distinct !{!2467, !2466}
!2468 = distinct !{!2468, !2466}
!2469 = distinct !{!2469, !81, !179, !180}
!2470 = distinct !{!2470, !81, !179, !180}
!2471 = distinct !{!2471, !81, !179}
!2472 = !{!2431}
!2473 = !{!2432}
!2474 = !{!2443}
!2475 = !{!2444}
!2476 = !{!2449}
!2477 = !{!2450}
!2478 = !{!2461}
!2479 = !{!2462}
!2480 = !{!2467}
!2481 = !{!2468}
!2482 = distinct !{!2482, !81, !179, !180}
!2483 = distinct !{!2483, !81, !179, !180}
!2484 = distinct !{!2484, !81, !179}
!2485 = !{!"_ZTSZN4pbrt10BasicScene15CreateAggregateERKNS_13NamedTexturesERKSt3mapIiPN4pstd6vectorINS_5LightENS5_3pmr21polymorphic_allocatorIS7_EEEESt4lessIiESaISt4pairIKiSC_EEERKS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6MediumESD_ISR_ESaISF_IKSR_SS_EEERKS4_ISR_NS_8MaterialEST_SaISF_ISU_S10_EEERKSt6vectorIS10_SaIS10_EEE3$_1", !506, i64 0, !60, i64 8, !60, i64 16, !323, i64 24, !509, i64 32}
!2486 = !{!2485, !506, i64 0}
!2487 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKN4pbrt14InternedStringEPNS1_29InstanceDefinitionSceneEntityEEE", !119, i64 0}
!2488 = !{!2487, !119, i64 0}
!2489 = !{!2485, !60, i64 8}
!2490 = !{!2485, !60, i64 16}
!2491 = !{!2485, !323, i64 24}
!2492 = !{!2485, !509, i64 32}
!2493 = !{i64 0, i64 8, !507, i64 8, i64 8, !443, i64 16, i64 8, !443, i64 24, i64 8, !508, i64 32, i64 8, !510}
!2494 = distinct !{!2494, !81}
!2495 = distinct !{!2495, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!2496 = distinct !{!2496, !2495, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2497 = distinct !{!2497, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!2498 = distinct !{!2498, !2497, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!2499 = distinct !{!2499, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!2500 = distinct !{!2500, !2499, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!2501 = !{!2496}
!2502 = !{!2498}
!2503 = !{!2498, !2496}
!2504 = !{!2500}
!2505 = distinct !{null}
!2506 = distinct !{!2506, !81, !179, !180}
!2507 = distinct !{!2507, !81, !179, !180}
!2508 = distinct !{!2508, !182}
!2509 = distinct !{!2509, !81, !179}
end_hunk_3
