Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/textures?download=true
inline.NumInlined: 4773
inline.NumDeleted: 1122
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4pbrt19GPUFloatPtexTexture6CreateERKNS_9TransformERKNS_26TextureParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.be = add nsw i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !51
  br label %bb.t

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.i:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !28
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.bg, %bb.i ]
  %i.bm = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !28
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bq = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.b
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !28
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.w
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.j
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !28
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.bz = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.t
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.cb = load i64, ptr %i.t, align 8, !tbaa !28
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ah
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.k
  %i.cg = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.v

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.f
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp150

select.unfold:                                    ; preds = %.noexc78, %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt19GPUFloatPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i, %_ZNSt5mutex4lockEv.exit
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::ColorEncoding") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr %3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %select.unfold
  %i.ck = load ptr, ptr %3, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, i64 noundef 8)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !667 ; 3 uses

.noexc97:                                         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.co = load i64, ptr %16, align 8, !tbaa !99
  store i64 %i.co, ptr %6, align 8, !tbaa !99
  %i.cp = load float, ptr %i.a, align 4, !tbaa !41
  invoke void @_ZN4pbrt19GPUFloatPtexTextureC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ColorEncodingEfN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6, float noundef %i.cp, ptr nonnull %3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 2 uses
  %.not.i99 = icmp eq i32 %i.cq, 0
  br i1 %.not.i99, label %_ZNSt5mutex4lockEv.exit101, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cq) #27
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.o
  unreachable

_ZNSt5mutex4lockEv.exit101:                       ; preds = %bb.n
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 16), align 8, !tbaa !97 ; 2 uses
  %.not10.i.i.i102 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i102, label %.critedge.i, label %.lr.ph.i.i.i103

.lr.ph.i.i.i103:                                  ; preds = %_ZNSt5mutex4lockEv.exit101, %.noexc114
  %.012.i.i.i104 = phi ptr [ %.1.i.i.i109, %.noexc114 ], [ %i.cr, %_ZNSt5mutex4lockEv.exit101 ] ; 3 uses
  %.0811.i.i.i105 = phi ptr [ %.19.i.i.i106, %.noexc114 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8), %_ZNSt5mutex4lockEv.exit101 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i104, i64 32
  %i.ct = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc114:                                        ; preds = %.lr.ph.i.i.i103
  %.19.i.i.i106 = select i1 %i.ct, ptr %.0811.i.i.i105, ptr %.012.i.i.i104 ; 3 uses
  %.1.in.v.i.i.i107 = select i1 %i.ct, i64 24, i64 16
  %.1.in.i.i.i108 = getelementptr inbounds nuw i8, ptr %.012.i.i.i104, i64 %.1.in.v.i.i.i107
  %.1.i.i.i109 = load ptr, ptr %.1.in.i.i.i108, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %.1.i.i.i109, null
  br i1 %.not.i.i.i110, label %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt19GPUFloatPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111, label %.lr.ph.i.i.i103, !llvm.loop !666

_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt19GPUFloatPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111: ; preds = %.noexc114
  %i.cu = icmp eq ptr %.19.i.i.i106, getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8)
  br i1 %i.cu, label %select.unfold143, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt19GPUFloatPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i106, i64 32
  %i.cw = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %i.cv)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.p
  br i1 %i.cw, label %select.unfold143, label %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116

_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116: ; preds = %.noexc115
  invoke void @_ZN4pbrt8LogFatalIJRA63_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 804, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(63) @.str.90) #27
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i103, %bb.p, %.critedge.i, %bb.r, %bb.o, %.noexc97, %bb.m, %select.unfold, %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.loopexit.split-lp150

select.unfold143:                                 ; preds = %.noexc115, %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt19GPUFloatPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 16), align 8, !tbaa !97 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %select.unfold143, %.noexc117
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.noexc117 ], [ %.pr, %select.unfold143 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.noexc117 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8), %select.unfold143 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cy = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc117:                                        ; preds = %.lr.ph.i.i.i.i
  %.19.i.i.i.i = select i1 %i.cy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cy, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !666

_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i: ; preds = %.noexc117
  %i.cz = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8)
  br i1 %i.cz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.db = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %i.da)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %bb.r
  br i1 %i.db, label %.critedge.i, label %bb.s

.critedge.i:                                      ; preds = %_ZNSt5mutex4lockEv.exit101, %.noexc118, %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i, %select.unfold143
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %.noexc118 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8), %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt19GPUFloatPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8), %select.unfold143 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, i64 8), %_ZNSt5mutex4lockEv.exit101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %15, ptr %4, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.dc = invoke ptr @_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt19GPUFloatPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tS0_IJRS9_EES0_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN4pbrtL21ptexFloatTextureCacheB5cxx11E, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.s

bb.s:                                             ; preds = %.noexc118, %.noexc119
  %.sroa.06.0.i = phi ptr [ %i.dc, %.noexc119 ], [ %.19.i.i.i.i, %.noexc118 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104
  store ptr %i.cn, ptr %i.dd, align 8, !tbaa !668
  %i.de = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %.0 = phi ptr [ %i.ba, %bb.g ], [ %i.cn, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !28
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #25
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !29 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !28
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #25
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dr = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !28
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.dw = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret ptr %.0

.loopexit.split-lp150:                            ; preds = %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn37.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp206, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #26
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp150, %bb.l
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %.loopexit.split-lp150 ], [ %i.ci, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.u ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.eb = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.v
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !28
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn37.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn37.pn.pn.pn, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.eg = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !28
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn37.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn37.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA63_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(63) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !24, !alias.scope !671
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !671
  store i8 0, ptr %i.a, align 8, !tbaa !28, !alias.scope !671
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA63_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(63) %4)
          to label %_ZN4pbrt12StringPrintfIJRA63_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !29, !alias.scope !671 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !alias.scope !671
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA63_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA63_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA63_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN4pbrt22GPUSpectrumPtexTexture6CreateERKNS_9TransformERKNS_26TextureParameterDictionaryENS_12SpectrumTypeEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !168
  %i.ay = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.h:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.g
  %.pn = phi { ptr, i32 } [ %i.az, %bb.g ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ba, %bb.h ]
  %i.bg = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.e
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !28
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bk = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.b
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !28
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.w
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.i
  %i.br = load i64, ptr %i.w, align 8, !tbaa !28
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.bt = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.t
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.bv = load i64, ptr %i.t, align 8, !tbaa !28
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ah
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.j
  %i.ca = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.u

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.f
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp150

select.unfold:                                    ; preds = %.noexc78, %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt22GPUSpectrumPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i, %_ZNSt5mutex4lockEv.exit
  %i.cd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN4pbrt13ColorEncoding3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::ColorEncoding") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr %4)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %select.unfold
  %i.ce = load ptr, ptr %4, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 40, i64 noundef 8)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !685 ; 3 uses

.noexc97:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ci = load i64, ptr %17, align 8, !tbaa !99
  store i64 %i.ci, ptr %7, align 8, !tbaa !99
  %i.cj = load float, ptr %i.a, align 4, !tbaa !41
  invoke void @_ZN4pbrt22GPUSpectrumPtexTextureC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ColorEncodingEfNS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, float noundef %i.cj, i32 noundef %2, ptr nonnull %4)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ck = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 2 uses
  %.not.i99 = icmp eq i32 %i.ck, 0
  br i1 %.not.i99, label %_ZNSt5mutex4lockEv.exit101, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ck) #27
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.n
  unreachable

_ZNSt5mutex4lockEv.exit101:                       ; preds = %bb.m
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 16), align 8, !tbaa !97 ; 2 uses
  %.not10.i.i.i102 = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i102, label %.critedge.i, label %.lr.ph.i.i.i103

.lr.ph.i.i.i103:                                  ; preds = %_ZNSt5mutex4lockEv.exit101, %.noexc114
  %.012.i.i.i104 = phi ptr [ %.1.i.i.i109, %.noexc114 ], [ %i.cl, %_ZNSt5mutex4lockEv.exit101 ] ; 3 uses
  %.0811.i.i.i105 = phi ptr [ %.19.i.i.i106, %.noexc114 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8), %_ZNSt5mutex4lockEv.exit101 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i104, i64 32
  %i.cn = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc114:                                        ; preds = %.lr.ph.i.i.i103
  %.19.i.i.i106 = select i1 %i.cn, ptr %.0811.i.i.i105, ptr %.012.i.i.i104 ; 3 uses
  %.1.in.v.i.i.i107 = select i1 %i.cn, i64 24, i64 16
  %.1.in.i.i.i108 = getelementptr inbounds nuw i8, ptr %.012.i.i.i104, i64 %.1.in.v.i.i.i107
  %.1.i.i.i109 = load ptr, ptr %.1.in.i.i.i108, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %.1.i.i.i109, null
  br i1 %.not.i.i.i110, label %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt22GPUSpectrumPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111, label %.lr.ph.i.i.i103, !llvm.loop !684

_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt22GPUSpectrumPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111: ; preds = %.noexc114
  %i.co = icmp eq ptr %.19.i.i.i106, getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8)
  br i1 %i.co, label %select.unfold143, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt22GPUSpectrumPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i106, i64 32
  %i.cq = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.cp)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.o
  br i1 %i.cq, label %select.unfold143, label %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116

_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116: ; preds = %.noexc115
  invoke void @_ZN4pbrt8LogFatalIJRA69_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 871, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(69) @.str.93) #27
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i103, %bb.o, %.critedge.i, %bb.q, %bb.n, %.noexc97, %bb.l, %select.unfold, %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit116
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.loopexit.split-lp150

select.unfold143:                                 ; preds = %.noexc115, %_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt22GPUSpectrumPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS9_.exit.i.i111
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 16), align 8, !tbaa !97 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %select.unfold143, %.noexc117
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.noexc117 ], [ %.pr, %select.unfold143 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.noexc117 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8), %select.unfold143 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cs = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc117:                                        ; preds = %.lr.ph.i.i.i.i
  %.19.i.i.i.i = select i1 %i.cs, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !684

_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i: ; preds = %.noexc117
  %i.ct = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8)
  br i1 %i.ct, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cv = invoke noundef zeroext i1 @_ZNSt15__tuple_compareISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEES7_Lm0ELm3EE6__lessERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.cu)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %bb.q
  br i1 %i.cv, label %.critedge.i, label %bb.r

.critedge.i:                                      ; preds = %_ZNSt5mutex4lockEv.exit101, %.noexc118, %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i, %select.unfold143
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %.noexc118 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8), %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE11lower_boundERSE_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8), %select.unfold143 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, i64 8), %_ZNSt5mutex4lockEv.exit101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %16, ptr %5, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.cw = invoke ptr @_ZNSt8_Rb_treeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEESt4pairIKS7_PN4pbrt22GPUSpectrumPtexTextureEESt10_Select1stISD_ESt4lessIS7_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tS0_IJRS9_EES0_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN4pbrtL24ptexSpectrumTextureCacheB5cxx11E, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.r

bb.r:                                             ; preds = %.noexc118, %.noexc119
  %.sroa.06.0.i = phi ptr [ %i.cw, %.noexc119 ], [ %.19.i.i.i.i, %.noexc118 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 104
  store ptr %i.ch, ptr %i.cx, align 8, !tbaa !686
  %i.cy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN4pbrtL14ptexCacheMutexE) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit, %bb.r
  %.0 = phi ptr [ %i.ch, %bb.r ], [ %i.ax, %_ZNSt3mapISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_fEEPN4pbrt22GPUSpectrumPtexTextureESt4lessIS7_ESaISt4pairIKS7_SA_EEE4findERSE_.exit ]
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !28
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #25
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !28
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #25
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dl = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dq = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !28
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %.0

.loopexit.split-lp150:                            ; preds = %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn37.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp206, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_fEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #26
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp150, %bb.k
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %.loopexit.split-lp150 ], [ %i.cc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.t ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dv = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.u
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !28
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn37.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn37.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn37.pn.pn.pn, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ea = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !28
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn37.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn37.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA69_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(69) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !24, !alias.scope !689
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !689
  store i8 0, ptr %i.a, align 8, !tbaa !28, !alias.scope !689
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA69_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(69) %4)
          to label %_ZN4pbrt12StringPrintfIJRA69_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !29, !alias.scope !689 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !alias.scope !689
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA69_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA69_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA69_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
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
define dso_local void @_ZNK4pbrt22GPUSpectrumPtexTexture8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24, !alias.scope !692
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27, !alias.scope !692
  store i8 0, ptr %i.b, align 8, !tbaa !28, !alias.scope !692
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_12SpectrumTypeEJRKN4pstd6vectorINS_3RGBENS5_3pmr21polymorphic_allocatorIS7_EEEEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_12SpectrumTypeERKN4pstd6vectorINS_3RGBENS4_3pmr21polymorphic_allocatorIS6_EEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !692 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28, !alias.scope !692
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
end_hunk_1
