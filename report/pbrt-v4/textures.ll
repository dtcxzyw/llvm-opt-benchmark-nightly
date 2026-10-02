Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/textures?download=true
inline.NumInlined: 4773
inline.NumDeleted: 1122
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4pbrt16ImageTextureBaseC2ENS_16TextureMapping2DENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19MIPMapFilterOptionsENS_8WrapModeEfbNS_13ColorEncodingEN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
bb.o:                                             ; preds = %.noexc40, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bi, %.lr.ph.i.i.i29 ], [ %.1.i.i.i35, %.noexc40 ] ; 3 uses
  %.0811.i.i.i31 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrt16ImageTextureBase12textureCacheE, i64 8), %.lr.ph.i.i.i29 ], [ %.19.i.i.i32, %.noexc40 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store <4 x ptr> %i.bm, ptr %11, align 8, !tbaa !67, !alias.scope !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %i.aj, ptr %12, align 8, !tbaa !67, !alias.scope !1573
  store ptr %i.ak, ptr %i.bj, align 8, !tbaa !204, !alias.scope !1573
  store ptr %i.ai, ptr %i.bk, align 8, !tbaa !206, !alias.scope !1573
  store ptr %18, ptr %i.bl, align 8, !tbaa !208, !alias.scope !1573
  %i.bn = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc40 unwind label %.loopexit ; 2 uses

.noexc40:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.19.i.i.i32 = select i1 %i.bn, ptr %.0811.i.i.i31, ptr %.012.i.i.i30 ; 3 uses
  %.1.in.v.i.i.i33 = select i1 %i.bn, i64 24, i64 16
  %.1.in.i.i.i34 = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 %.1.in.v.i.i.i33
  %.1.i.i.i35 = load ptr, ptr %.1.in.i.i.i34, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.1.i.i.i35, null
  br i1 %.not.i.i.i36, label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i37, label %bb.o, !llvm.loop !11

_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i37: ; preds = %.noexc40
  %i.bo = icmp eq ptr %.19.i.i.i32, getelementptr inbounds nuw (i8, ptr @_ZN4pbrt16ImageTextureBase12textureCacheE, i64 8)
  br i1 %i.bo, label %select.unfold62, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i37
  %i.bp = getelementptr inbounds nuw i8, ptr %.19.i.i.i32, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.aj, ptr %9, align 8, !tbaa !67, !alias.scope !1574
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ak, ptr %i.bq, align 8, !tbaa !204, !alias.scope !1574
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ai, ptr %i.br, align 8, !tbaa !206, !alias.scope !1574
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %18, ptr %i.bs, align 8, !tbaa !208, !alias.scope !1574
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store <4 x ptr> %i.bp, ptr %10, align 8, !tbaa !67, !alias.scope !1575
  %i.bt = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %i.bt, label %select.unfold62, label %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit42

_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit42: ; preds = %.noexc41
  invoke void @_ZN4pbrt8LogFatalIJRA49_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.134, i32 noundef 548, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(49) @.str.162) #27
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit42
  unreachable

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.r:                                             ; preds = %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit42
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.thread

select.unfold62:                                  ; preds = %.noexc41, %_ZNSt11unique_lockISt5mutexE4lockEv.exit, %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i37
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN4pbrt16ImageTextureBase12textureCacheE, ptr noundef nonnull align 8 dereferenceable(56) %18)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %select.unfold62
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !1576
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.s, %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  %i.bx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4pbrt16ImageTextureBase17textureCacheMutexE) #26 ; 0 uses
  %i.by = load ptr, ptr %18, align 8, !tbaa !29   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.w
  br i1 %i.bz, label %_ZN4pbrt7TexInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !28
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZN4pbrt7TexInfoD2Ev.exit

_ZN4pbrt7TexInfoD2Ev.exit:                        ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  ret void

.thread69:                                        ; preds = %select.unfold, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit45

bb.t:                                             ; preds = %select.unfold62
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit72, %.loopexit.split-lp73, %bb.r, %bb.t
  %.pn1567 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp73 ], [ %i.bu, %bb.r ], [ %lpad.loopexit74, %.loopexit72 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4pbrt16ImageTextureBase17textureCacheMutexE) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit45

_ZNSt11unique_lockISt5mutexED2Ev.exit45:          ; preds = %.thread, %.thread69, %bb.l
  %.pn15.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %lpad.thr_comm, %.thread69 ], [ %.pn1567, %.thread ] ; 2 uses
  %i.cd = load ptr, ptr %18, align 8, !tbaa !29   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.w
  br i1 %i.ce, label %_ZN4pbrt7TexInfoD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit45
  %i.cf = load i64, ptr %i.w, align 8, !tbaa !28
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZN4pbrt7TexInfoD2Ev.exit48

_ZN4pbrt7TexInfoD2Ev.exit48:                      ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %bb.k
  %.pn15.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %.pn15.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ %.pn15.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.g
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt7TexInfoD2Ev.exit48
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !28
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt7TexInfoD2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn15.pn.pn
}

declare noundef ptr @_ZN4pbrt6MIPMap14CreateFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19MIPMapFilterOptionsENS_8WrapModeENS_13ColorEncodingEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA49_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(49) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !24, !alias.scope !1579
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !1579
  store i8 0, ptr %i.a, align 8, !tbaa !28, !alias.scope !1579
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA49_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(49) %4)
          to label %_ZN4pbrt12StringPrintfIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !29, !alias.scope !1579 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !alias.scope !1579
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %6 = alloca %"class.std::tuple.103", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.106", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  %9 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store <4 x ptr> %i.d, ptr %4, align 8, !tbaa !67, !alias.scope !1588
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store <4 x ptr> %9, ptr %5, align 8, !tbaa !67, !alias.scope !1589
  %i.e = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.19.i.i.i = select i1 %i.e, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.e, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !11

_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.f = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.19.i.i.i, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <4 x ptr> %8, ptr %2, align 8, !tbaa !67, !alias.scope !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <4 x ptr> %i.g, ptr %3, align 8, !tbaa !67, !alias.scope !1591
  %i.h = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %i.h, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i11 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIN4pbrt7TexInfoEPNS0_6MIPMapESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %1, ptr %6, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.i = call ptr @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.sroa.06.0 = phi ptr [ %i.i, %.critedge ], [ %.19.i.i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 88
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1593, !nonnull !76, !align !1594 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1593, !nonnull !76, !align !1594 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 3 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a
  %i.m = sub i64 %i.f, %i.h
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.o = sub i64 %i.f, %i.h
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.q = icmp slt i32 %i.l, 0
  br i1 %i.q, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7:  ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.r = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.k, i64 noundef %.sroa.speculated.i.i) #26 ; 2 uses
  %.not.i.i8 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7
  %i.s = sub i64 %i.h, %i.f
  %spec.select7.i.i.i11 = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -2147483648)
  %.08.i.i.i12 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11, i64 2147483647)
  %.0.i6.i.i13 = trunc nsw i64 %.08.i.i.i12 to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10
  %.0.i.i9 = phi i32 [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7 ], [ %.0.i6.i.i13, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10 ]
  %i.t = icmp slt i32 %.0.i.i9, 0
  br i1 %i.t, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %bb.b

bb.b:                                             ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1596, !nonnull !76, !align !174 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1596, !nonnull !76, !align !174
  %.sroa.01.0.copyload.i = load i64, ptr %i.x, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload.i to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.y = bitcast i32 %.sroa.2.0.extract.trunc.i.i to float ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !1597 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ab, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp sgt i32 %i.aa, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ac, label %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.thread11.i, label %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.i

_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.i:      ; preds = %bb.c
  %i.ad = load float, ptr %i.z, align 4, !tbaa !41
  %i.ae = fcmp olt float %i.ad, %i.y
  br i1 %i.ae, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.thread11.i

_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.thread11.i: ; preds = %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.i, %bb.c
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i7.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.af = icmp slt i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i7.i
  br i1 %i.af, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.thread11.i
  %.sroa.2.0.extract.shift.i8.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i9.i = trunc nuw i64 %.sroa.2.0.extract.shift.i8.i to i32
  %i.ag = bitcast i32 %.sroa.2.0.extract.trunc.i9.i to float
  %i.ah = icmp sle i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i7.i
  %i.ai = fcmp olt float %i.y, %i.ag
  %or.cond.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit10.thread12.i

_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit10.thread12.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1599, !nonnull !76, !align !1594
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1599, !nonnull !76, !align !1594
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !99 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !99 ; 2 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit10.thread12.i
  %i.aq = icmp ult i64 %i.ao, %i.an
  br i1 %i.aq, label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %0, align 8, !tbaa !1601, !nonnull !76, !align !174
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !101
  %i.at = load ptr, ptr %1, align 8, !tbaa !1601, !nonnull !76, !align !174
  %i.au = load i32, ptr %i.at, align 4, !tbaa !101
  %i.av = icmp slt i32 %i.as, %i.au
  br label %_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit

_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm1ELm4EE6__lessERKSJ_SM_.exit: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16, %bb.f, %bb.e, %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit10.thread12.i, %bb.d, %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.thread11.i, %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.i, %bb.b, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aw = phi i1 [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14 ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ true, %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.i ], [ false, %bb.d ], [ true, %bb.b ], [ %i.av, %bb.f ], [ true, %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit10.thread12.i ], [ false, %bb.e ], [ false, %_ZNK4pbrt19MIPMapFilterOptionsltES0_.exit.thread11.i ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16 ]
  ret i1 %i.aw
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA49_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(49) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #26
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #26
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #26
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.z
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !24, !alias.scope !1612
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !27, !alias.scope !1612
  store i8 0, ptr %i.j, align 8, !tbaa !28, !alias.scope !1612
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !180, !noalias !1612 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1612 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA49_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %i.da = load ptr, ptr %7, align 8, !tbaa !29, !alias.scope !1614 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body41, label %.body41.sink.split

_ZN4pbrt6detail9formatOneIRA49_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %bb.u
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !27 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !27
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43

bb.x:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA49_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #27
          to label %.noexc44 unwind label %bb.y

.noexc44:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43: ; preds = %_ZN4pbrt6detail9formatOneIRA49_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !29
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46 unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %i.dj = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !28
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43, %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body41, label %.body41.sink.split

.body41.sink.split:                               ; preds = %bb.y, %bb.w
  %.sink88 = phi ptr [ %i.da, %bb.w ], [ %i.do, %bb.y ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %i.dn, %bb.y ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !28
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink88, i64 noundef %i.dr) #25
  br label %.body41

.body41:                                          ; preds = %.body41.sink.split, %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %i.dn, %bb.y ], [ %.pn.ph, %.body41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ab

.invoke:                                          ; preds = %bb.a, %bb.s, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.s ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.143, %bb.c ], [ @.str.144, %bb.s ], [ @.str.142, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #27
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !68
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.aa unwind label %bb.b

bb.aa:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.aa
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !28
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.ab:                                            ; preds = %.body41, %bb.r, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.r ], [ %.pn, %.body41 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ab
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !28
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple.84", align 8     ; 7 uses
  %6 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %7 = alloca %"struct.std::_Rb_tree<pbrt::TexInfo, std::pair<const pbrt::TexInfo, pbrt::MIPMap *>, std::_Select1st<std::pair<const pbrt::TexInfo, pbrt::MIPMap *>>, std::less<pbrt::TexInfo>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %0, ptr %7, align 8, !tbaa !1619
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30 ; 10 uses
  tail call void @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !216
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.l, ptr %5, align 8, !tbaa !67, !alias.scope !1620
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !204, !alias.scope !1620
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.j, ptr %i.n, align 8, !tbaa !206, !alias.scope !1620
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.c, ptr %i.o, align 8, !tbaa !208, !alias.scope !1620
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store <4 x ptr> %i.i, ptr %6, align 8, !tbaa !67, !alias.scope !1621
  %i.p = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread

.thread:                                          ; preds = %bb.c, %.noexc
  %i.q = phi i1 [ %i.p, %.noexc ], [ true, %bb.c ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !217
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !217
  br label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #25
  br label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i

_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #25
  br label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %6 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %7 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %8 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %9 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %10 = alloca %"class.std::tuple.84", align 8    ; 4 uses
  %11 = alloca %"class.std::tuple.84", align 8    ; 4 uses
  %12 = alloca %"class.std::tuple.84", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !217
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  store <4 x ptr> %i.g, ptr %11, align 8, !tbaa !67, !alias.scope !1642
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %13 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  store <4 x ptr> %13, ptr %12, align 8, !tbaa !67, !alias.scope !1643
  %i.h = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !144
  br label %bb.p

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.j = call { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %14 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  %15 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  %16 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  store <4 x ptr> %16, ptr %9, align 8, !tbaa !67, !alias.scope !1644
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store <4 x ptr> %i.m, ptr %10, align 8, !tbaa !67, !alias.scope !1645
  %i.n = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %i.n, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144  ; 3 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  store <4 x ptr> %i.s, ptr %7, align 8, !tbaa !67, !alias.scope !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store <4 x ptr> %14, ptr %8, align 8, !tbaa !67, !alias.scope !1647
  %i.t = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175
  %i.w = icmp eq ptr %i.v, null                   ; 2 uses
  %spec.select = select i1 %i.w, ptr null, ptr %1
  %spec.select31 = select i1 %i.w, ptr %i.r, ptr %1
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.x = call { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.x, 0
  %i.z = extractvalue { ptr, ptr } %i.x, 1
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  %17 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store <4 x ptr> %17, ptr %5, align 8, !tbaa !67, !alias.scope !1648
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store <4 x ptr> %i.aa, ptr %6, align 8, !tbaa !67, !alias.scope !1649
  %i.ab = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.ab, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !144 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <4 x ptr> %15, ptr %3, align 8, !tbaa !67, !alias.scope !1650
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  store <4 x ptr> %i.ag, ptr %4, align 8, !tbaa !67, !alias.scope !1651
  %i.ah = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !175
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  %spec.select32 = select i1 %i.ak, ptr null, ptr %i.af
  %spec.select33 = select i1 %i.ak, ptr %1, ptr %i.af
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.al = call { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.i, %bb.k, %bb.o, %bb.l, %bb.j, %bb.g, %bb.e, %bb.d
  %.sroa.030.2 = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ], [ %spec.select, %bb.i ], [ %spec.select32, %bb.n ], [ %i.y, %bb.j ], [ %i.p, %bb.g ], [ %1, %bb.k ], [ %i.am, %bb.o ], [ null, %bb.l ]
  %.sroa.12.2 = phi ptr [ %i.l, %bb.e ], [ %i.i, %bb.d ], [ %spec.select31, %bb.i ], [ %spec.select33, %bb.n ], [ %i.z, %bb.j ], [ %i.p, %bb.g ], [ null, %bb.k ], [ %i.an, %bb.o ], [ %i.ad, %bb.l ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.030.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit

_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !212
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !24
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.h, ptr %i.a, align 8, !tbaa !51
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !29
  %i.k = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.k, ptr %i.e, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.m, ptr %i.l, align 1, !tbaa !28
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 96) #25
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.x, align 8, !tbaa !99
  %i.z = load i64, ptr %i.y, align 8, !tbaa !99
  store i64 %i.z, ptr %i.x, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.aa, align 8, !tbaa !210
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt7TexInfoESt4pairIKS1_PNS0_6MIPMapEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.84", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02022 = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %.not23 = icmp eq ptr %.02022, null
  br i1 %.not23, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02024 = phi ptr [ %.02022, %.lr.ph ], [ %.020, %bb.b ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02024, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store <4 x ptr> %6, ptr %4, align 8, !tbaa !67, !alias.scope !1661
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store <4 x ptr> %i.c, ptr %5, align 8, !tbaa !67, !alias.scope !1662
  %i.d = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.in.v = select i1 %i.d, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02024, i64 %.in.v
  %.020 = load ptr, ptr %.in, align 8, !tbaa !144 ; 2 uses
  %.not = icmp eq ptr %.020, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1656

._crit_edge:                                      ; preds = %bb.b
  br i1 %i.d, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.019.lcssa29 = phi ptr [ %.02024, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = icmp eq ptr %.019.lcssa29, %i.f
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.h = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.019.lcssa28 = phi ptr [ %.019.lcssa29, %bb.c ], [ %.02024, %._crit_edge ]
  %.sroa.05.0 = phi ptr [ %i.h, %bb.c ], [ %.02024, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0, <4 x i64> <i64 72, i64 80, i64 64, i64 32>
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <4 x ptr> %i.i, ptr %2, align 8, !tbaa !67, !alias.scope !1663
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %7 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> <i64 40, i64 48, i64 32, i64 0>
  store <4 x ptr> %7, ptr %3, align 8, !tbaa !67, !alias.scope !1664
  %i.j = call noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pbrt19MIPMapFilterOptionsERKNS9_13ColorEncodingERKNS9_8WrapModeEEESJ_Lm0ELm4EE6__lessERKSJ_SM_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %spec.select = select i1 %i.j, ptr null, ptr %.sroa.05.0
  %spec.select21 = select i1 %i.j, ptr %.019.lcssa28, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.thread
  %.sroa.018.0 = phi ptr [ %spec.select, %bb.d ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select21, %bb.d ], [ %.019.lcssa29, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt20SpectrumImageTextureEJRNS5_16TextureMapping2DERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS5_19MIPMapFilterOptionsERNS5_8WrapModeERfRbRNS5_13ColorEncodingERNS5_12SpectrumTypeERS3_EEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.pbrt::TextureMapping2D", align 8 ; 2 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !36
  store i64 %i.b, ptr %11, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.c, ptr %12, align 8, !tbaa !24
  %i.d = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !51
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %12, align 8, !tbaa !29
  %i.i = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.i, ptr %i.c, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !27
  %i.n = load ptr, ptr %12, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.sroa.01.0.copyload = load i64, ptr %4, align 4
  %i.p = load i32, ptr %5, align 4, !tbaa !101
  %i.q = load float, ptr %6, align 4, !tbaa !41
  %i.r = load i8, ptr %7, align 1, !tbaa !102, !range !75, !noundef !76
  %i.s = load i64, ptr %8, align 8, !tbaa !99
  store i64 %i.s, ptr %13, align 8, !tbaa !99
  %i.t = trunc nuw i8 %i.r to i1
  %i.u = load i32, ptr %9, align 4, !tbaa !100
  %.sroa.0.0.copyload = load ptr, ptr %10, align 8, !tbaa !103
  %i.v = ptrtoint ptr %.sroa.0.0.copyload to i64
  invoke void @_ZN4pbrt20SpectrumImageTextureC2ENS_16TextureMapping2DENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19MIPMapFilterOptionsENS_8WrapModeEfbNS_13ColorEncodingENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr nofree noundef nonnull align 8 dereferenceable(32) %12, i64 %.sroa.01.0.copyload, i32 noundef %i.p, float noundef %i.q, i1 noundef zeroext %i.t, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i32 noundef %i.u, i64 %i.v)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %12, align 8, !tbaa !29    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.c, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt20SpectrumImageTextureC2ENS_16TextureMapping2DENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19MIPMapFilterOptionsENS_8WrapModeEfbNS_13ColorEncodingENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dereferenceable(32) %2, i64 %3, i32 noundef %4, float noundef %5, i1 noundef zeroext %6, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %7, i32 noundef %8, i64 %9) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.pbrt::TextureMapping2D", align 8 ; 2 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !36
  store i64 %i.b, ptr %10, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.c, ptr %11, align 8, !tbaa !24
  %i.d = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !51
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %11, align 8, !tbaa !29
  %i.i = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.i, ptr %i.c, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !27
  %i.n = load ptr, ptr %11, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = load i64, ptr %7, align 8, !tbaa !99
  store i64 %i.p, ptr %12, align 8, !tbaa !99
  invoke void @_ZN4pbrt16ImageTextureBaseC2ENS_16TextureMapping2DENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19MIPMapFilterOptionsENS_8WrapModeEfbNS_13ColorEncodingEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, i64 %3, i32 noundef %4, float noundef %5, i1 noundef zeroext %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %12, i64 %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %11, align 8, !tbaa !29    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %8, ptr %i.u, align 8, !tbaa !84
  ret void

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %11, align 8, !tbaa !29    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.y = load i64, ptr %i.c, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
end_hunk_1
