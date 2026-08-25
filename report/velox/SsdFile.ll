Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SsdFile?download=true
inline.NumInlined: 4657
inline.NumDeleted: 2099
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox5cache7SsdFile5eraseENS1_15RawFileCacheKeyE:bb.a
  %i.aj = icmp eq <16 x i8> %i.ai, %i.ab
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 4095
  %i.am = zext nneg i16 %i.al to i32
  %i.an = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ap = extractelement <16 x i8> %i.ai, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc24, %.noexc22
  %.sroa.074.0 = phi i32 [ %i.am, %.noexc22 ], [ %i.as, %.noexc24 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.074.0, 0
  br i1 %.not, label %bb.c, label %.noexc24

.noexc24:                                         ; preds = %.critedge.i
  %i.aq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.074.0, i1 true)
  %i.ar = add nsw i32 %.sroa.074.0, -1
  %i.as = and i32 %i.ar, %.sroa.074.0
  %i.at = zext nneg i32 %i.aq to i64
  tail call void @llvm.assume(i1 %i.an)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.at
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !239
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !15 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !237
  %i.bb = icmp eq i64 %2, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %1, %i.bd
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.noexc56, label %.critedge.i, !prof !240, !llvm.loop !241

bb.c:                                             ; preds = %.critedge.i
  %i.bg = icmp eq i8 %i.ap, 0
  br i1 %i.bg, label %.loopexit, label %.noexc25, !prof !240

.noexc25:                                         ; preds = %bb.c
  %i.bh = add i64 %.022.i144, -1                  ; 2 uses
  %i.bi = add i64 %i.y, %.024.i143
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %.loopexit, label %.noexc22, !llvm.loop !242

bb.d:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %.noexc29
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  br label %bb.h

.noexc56:                                         ; preds = %.noexc24, %.noexc58
  %.022.i41148 = phi i64 [ %i.ce, %.noexc58 ], [ %i.ad, %.noexc24 ]
  %.024.i40147 = phi i64 [ %i.cf, %.noexc58 ], [ %i.w, %.noexc24 ] ; 2 uses
  %i.bm = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i40147, i64 range(i64 0, 256) %i.ac)
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.af, i64 %i.bm ; 3 uses
  %i.bo = load <16 x i8>, ptr %i.bn, align 16     ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bo, %i.ab
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = and i16 %i.bq, 4095
  %i.bs = zext nneg i16 %i.br to i32
  %i.bt = icmp ne ptr %i.bn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bv = extractelement <16 x i8> %i.bo, i64 15
  br label %.critedge.i43

.critedge.i43:                                    ; preds = %.noexc57, %.noexc56
  %.sroa.086.0 = phi i32 [ %i.bs, %.noexc56 ], [ %i.by, %.noexc57 ] ; 4 uses
  %.not137 = icmp eq i32 %.sroa.086.0, 0
  br i1 %.not137, label %bb.f, label %.noexc57

.noexc57:                                         ; preds = %.critedge.i43
  %i.bw = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.086.0, i1 true)
  %i.bx = add nsw i32 %.sroa.086.0, -1
  %i.by = and i32 %i.bx, %.sroa.086.0
  %i.bz = zext nneg i32 %i.bw to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.bt)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !15
  %i.cc = icmp eq i32 %i.aw, %i.cb
  br i1 %i.cc, label %.noexc29.loopexit, label %.critedge.i43, !prof !240, !llvm.loop !243

bb.f:                                             ; preds = %.critedge.i43
  %i.cd = icmp eq i8 %i.bv, 0
  br i1 %i.cd, label %.noexc29, label %.noexc58, !prof !240

.noexc58:                                         ; preds = %bb.f
  %i.ce = add i64 %.022.i41148, -1                ; 2 uses
  %i.cf = add i64 %i.y, %.024.i40147
  %.not.i42 = icmp eq i64 %i.ce, 0
  br i1 %.not.i42, label %.noexc29, label %.noexc56, !llvm.loop !244

.noexc29.loopexit:                                ; preds = %.noexc57
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bz
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc58, %bb.f, %.noexc29.loopexit
  %.sroa.088.3 = phi ptr [ %i.cg, %.noexc29.loopexit ], [ null, %bb.f ], [ null, %.noexc58 ]
  %.sroa.589.3 = phi i64 [ %i.bz, %.noexc29.loopexit ], [ 0, %bb.f ], [ 0, %.noexc58 ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %.sroa.088.3, i64 %.sroa.589.3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.loopexit unwind label %bb.e

.loopexit:                                        ; preds = %.noexc25, %bb.c, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit, %.noexc29
  %.0 = phi i1 [ false, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit ], [ true, %.noexc29 ], [ false, %bb.c ], [ false, %.noexc25 ]
  %i.ch = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %1)
          to label %_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #36
  unreachable

_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit:  ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i1 %.0

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.e ], [ %i.bj, %bb.d ]
  call void @_ZN8facebook5velox5cache12FileCacheKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"struct.facebook::velox::CoalesceIoStats") align 8 %0, ptr noundef nonnull align 8 dereferenceable(548) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.473", align 16 ; 7 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.462", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::function", align 8    ; 9 uses
  %11 = alloca %"class.std::function.129", align 8 ; 9 uses
  %12 = alloca %"class.facebook::velox::cache::SsdRun", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.c = load ptr, ptr %2, align 8, !tbaa !248    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !249  ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !252    ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not = icmp eq i64 %i.g, %i.n
  br i1 %.not, label %bb.e, label %bb.b, !prof !240

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !253
  store i64 %i.g, ptr %5, align 16, !tbaa !23, !alias.scope !256, !noalias !253
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.n, ptr %i.o, align 16, !tbaa !23, !alias.scope !256, !noalias !253
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.6, i64 11, i64 68, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !253
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.6) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %6, align 8, !tbaa !27     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZNSt14_Function_baseD2Ev.exit95

bb.e:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %i.j, %i.i
  br i1 %i.v, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.o
  %i.aa = udiv i64 %i.cp, %i.g
  %i.ab = icmp ult i64 %i.aa, 10000
  %i.ac = select i1 %i.ab, i32 25000, i32 50000
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ag, align 8
  store i64 %i.ad, ptr %10, align 8, !tbaa !259
  store ptr @"_ZNSt17_Function_handlerIFmiEZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.af, align 8, !tbaa !261
  store ptr @"_ZNSt17_Function_handlerIFmiEZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.ae, align 8, !tbaa !264
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ak, align 8
  store i64 %i.ah, ptr %11, align 8, !tbaa !265
  store ptr @"_ZNSt17_Function_handlerIFvRKSt6vectorIN8facebook5velox5cache8CachePinESaIS4_EEiimRKS0_IN5folly5RangeIPcEESaISC_EEEZNS3_7SsdFile4loadERKS0_INS3_6SsdPinESaISJ_EES8_E3$_1E9_M_invokeERKSt9_Any_dataS8_OiST_OmSG_", ptr %i.aj, align 8, !tbaa !266
  store ptr @"_ZNSt17_Function_handlerIFvRKSt6vectorIN8facebook5velox5cache8CachePinESaIS4_EEiimRKS0_IN5folly5RangeIPcEESaISC_EEEZNS3_7SsdFile4loadERKS0_INS3_6SsdPinESaISJ_EES8_E3$_1E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation", ptr %i.ai, align 8, !tbaa !264
  invoke void @_ZN8facebook5velox5cache8readPinsERKSt6vectorINS1_8CachePinESaIS3_EEiiSt8functionIFmiEES8_IFvS7_iimRKS2_IN5folly5RangeIPcEESaISE_EEEE(ptr dead_on_unwind writable sret(%"struct.facebook::velox::CoalesceIoStats") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ac, i32 noundef 900, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11)
          to label %bb.p unwind label %bb.u

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %i.al = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.056124 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.o ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ap = and i32 %i.ao, 8388607
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.al
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !268 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !271 ; 2 uses
  %i.av = icmp ult i32 %i.aq, %i.au
  br i1 %i.av, label %bb.h, label %bb.o, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !293
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ba = zext nneg i32 %i.aq to i64
  call void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 noundef %i.ba, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !271
  %i.bc = sext i32 %i.bb to i64
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 noundef %i.bc, i32 noundef 2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !294
  %i.bd = load ptr, ptr %8, align 8, !tbaa !27, !noalias !294
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !94, !noalias !294
  store ptr %i.bd, ptr %4, align 16, !tbaa !23, !noalias !294
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !23, !noalias !294
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = load ptr, ptr %9, align 8, !tbaa !27, !noalias !294
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !94, !noalias !294
  store ptr %i.bi, ptr %i.bh, align 16, !tbaa !23, !noalias !294
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !23, !noalias !294
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.10, i64 61, i64 221, ptr nonnull %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !294
  %i.bm = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.j
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !23
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.br = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.10) #34
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.m:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.m
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.l ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.bx, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.cd = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !23
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.n
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !23
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn64 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ci, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %_ZNSt14_Function_baseD2Ev.exit95

bb.o:                                             ; preds = %bb.g
  %i.co = zext nneg i32 %i.au to i64              ; 2 uses
  %i.cp = add i64 %.056124, %i.co                 ; 2 uses
  %i.cq = lshr i64 %.sroa.0.0.copyload.i, 49
  %i.cr = uitofp nneg i32 %i.aq to double
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.cq ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !188
  %i.cu = fadd double %i.ct, %i.cr
  store double %i.cu, ptr %i.cs, align 8, !tbaa !188
  %13 = load i64, ptr %i.y, align 8, !tbaa !297
  %i.cv = add i64 %13, 1
  store i64 %i.cv, ptr %i.y, align 8, !tbaa !297
  %14 = load i64, ptr %i.z, align 8, !tbaa !298
  %i.cw = add i64 %14, %i.co
  store i64 %i.cw, ptr %i.z, align 8, !tbaa !298
  %indvars.iv.next = add nuw i64 %i.al, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !299

bb.p:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %i.ai, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.p, %bb.q
  %i.db = load ptr, ptr %i.ae, align 8, !tbaa !264 ; 2 uses
  %.not.i90 = icmp eq ptr %i.db, null
  br i1 %.not.i90, label %_ZNSt14_Function_baseD2Ev.exit91, label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit91 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit91:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.s
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.dg = load ptr, ptr %2, align 8, !tbaa !248   ; 2 uses
  %.not127 = icmp eq ptr %i.df, %i.dg
  br i1 %.not127, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit91
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.z

bb.u:                                             ; preds = %._crit_edge
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %i.ai, align 8, !tbaa !264 ; 2 uses
  %.not.i92 = icmp eq ptr %i.di, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = invoke noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit93 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit93:                 ; preds = %bb.u, %bb.v
  %i.dm = load ptr, ptr %i.ae, align 8, !tbaa !264 ; 2 uses
  %.not.i94 = icmp eq ptr %i.dm, null
  br i1 %.not.i94, label %_ZNSt14_Function_baseD2Ev.exit95, label %bb.x

bb.x:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit93
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit95 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #36
  unreachable

bb.z:                                             ; preds = %.lr.ph126, %bb.z
  %indvars.iv133 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next134, %bb.z ] ; 5 uses
  %i.dq = phi ptr [ %i.dg, %.lr.ph126 ], [ %i.eh, %bb.z ]
  %i.dr = load ptr, ptr %3, align 8, !tbaa !252
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv133
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !268 ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %indvars.iv133
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.dv, align 8, !tbaa !14
  %i.dw = lshr i64 %.sroa.0.0.copyload.i96, 23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 152
  store ptr %1, ptr %i.dx, align 8, !tbaa !300
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 160
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !301
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 168
  store atomic i8 0, ptr %i.dz seq_cst, align 8
  %i.ea = load ptr, ptr %3, align 8, !tbaa !252
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv133
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ed = load ptr, ptr %2, align 8, !tbaa !248
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv133 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.copyload.i101 = load i64, ptr %i.ef, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.2.0.copyload.i103 = load i32, ptr %.sroa.2.0..sroa_idx.i102, align 8, !tbaa !15
  store i64 %.sroa.0.0.copyload.i101, ptr %12, align 8
  store i32 %.sroa.2.0.copyload.i103, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunE(ptr noundef nonnull align 8 dereferenceable(548) %1, ptr noundef nonnull align 8 dereferenceable(169) %i.ec, ptr noundef nonnull align 8 dereferenceable(12) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.eh = load ptr, ptr %2, align 8, !tbaa !248   ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 24
  %i.em = icmp ugt i64 %i.el, %indvars.iv.next134
  br i1 %i.em, label %bb.z, label %.loopexit, !llvm.loop !302

.loopexit:                                        ; preds = %bb.z, %_ZNSt14_Function_baseD2Ev.exit91, %bb.f
  ret void

_ZNSt14_Function_baseD2Ev.exit95:                 ; preds = %bb.x, %_ZNSt14_Function_baseD2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.dh, %_ZNSt14_Function_baseD2Ev.exit93 ], [ %i.dh, %bb.x ]
  resume { ptr, i32 } %.pn67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN8facebook5velox5cache8readPinsERKSt6vectorINS1_8CachePinESaIS3_EEiiSt8functionIFmiEES8_IFvS7_iimRKS2_IN5folly5RangeIPcEESaISE_EEEE(ptr dead_on_unwind writable sret(%"struct.facebook::velox::CoalesceIoStats") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(169) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.539", align 16 ; 7 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.b = load i8, ptr %i.a, align 2, !tbaa !107, !range !90, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit52

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !31
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 8388607
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !271
  %.not = icmp eq i32 %i.g, %i.i
  br i1 %.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !303
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !303
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.o = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #33
  %i.p = sdiv i64 %i.o, 1000000                   ; 2 uses
  %invariant.op = add nsw i64 %i.p, -1000
  %i.q = load atomic i64, ptr @_ZZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunEE11FB_LEM_hist acquire, align 8 ; 2 uses
  %i.r = icmp sgt i64 %i.q, %invariant.op
  br i1 %i.r, label %.loopexit52, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.s = cmpxchg ptr @_ZZN8facebook5velox5cache7SsdFile19maybeVerifyChecksumERKNS1_19AsyncDataCacheEntryERKNS1_6SsdRunEE11FB_LEM_hist, i64 %i.q, i64 %i.p seq_cst seq_cst, align 8
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.d, label %.loopexit52

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.3, i32 noundef 966, i32 noundef 1)
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.91, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.92, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load i64, ptr %2, align 8, !tbaa !31
  %i.y = and i64 %i.x, 8388607
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.z)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.93, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.h ; 0 uses

end_hunk_0
