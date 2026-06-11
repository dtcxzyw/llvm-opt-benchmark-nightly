inline.NumInlined: 925
inline.NumDeleted: 531
begin_hunk_0_@_ZN8facebook5velox7process12TraceContextD2Ev:bb.a
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !75
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !75
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i8, ptr %i.bw, align 8, !range !89
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread.i.i
  %i.bz = icmp ult i64 %i.p, 256
  br i1 %i.bz, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %.noexc5.i unwind label %bb.k  ; 2 uses

.noexc5.i:                                        ; preds = %bb.e
  %i.cb = lshr i64 %i.ca, 56
  %i.cc = or i64 %i.cb, 128                       ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = or disjoint i64 %i.cd, 1
  %i.cf = trunc nuw i64 %i.cc to i8
  %i.cg = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ci = load i64, ptr %i.g, align 8, !tbaa !78
  %i.cj = and i64 %i.ci, 255                      ; 2 uses
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.noexc5.i
  %.0.i85.i.i = phi i64 [ %i.ca, %.noexc5.i ], [ %i.df, %bb.i ] ; 2 uses
  %.022.i84.i.i = phi i64 [ %i.ck, %.noexc5.i ], [ %i.de, %bb.i ]
  %i.cm = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i85.i.i, i64 range(i64 0, 256) %i.cj)
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %i.cl, i64 %i.cm ; 3 uses
  %i.co = load <16 x i8>, ptr %i.cn, align 16     ; 2 uses
  %i.cp = icmp eq <16 x i8> %i.co, %i.ch
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = and i16 %i.cq, 4095
  %i.cs = zext nneg i16 %i.cr to i32
  %i.ct = icmp ne ptr %i.cn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cv = extractelement <16 x i8> %i.co, i64 15
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.g, %bb.f
  %.sroa.020.0.i.i = phi i32 [ %i.cs, %bb.f ], [ %i.cy, %bb.g ] ; 4 uses
  %.not69.i.i = icmp eq i32 %.sroa.020.0.i.i, 0
  br i1 %.not69.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.cw = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.020.0.i.i, i1 true)
  %i.cx = add nsw i32 %.sroa.020.0.i.i, -1
  %i.cy = and i32 %i.cx, %.sroa.020.0.i.i
  %i.cz = zext nneg i32 %i.cw to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.ct)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = icmp eq i32 %i.bq, %i.db
  br i1 %i.dc, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i.loopexit, label %.critedge.i.i.i, !prof !90, !llvm.loop !91

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.dd = icmp eq i8 %i.cv, 0
  br i1 %i.dd, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.de = add i64 %.022.i84.i.i, -1               ; 2 uses
  %i.df = add i64 %i.ce, %.0.i85.i.i
  %.not.i.i4.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i4.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i, label %bb.f, !llvm.loop !92

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i.loopexit: ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cz
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i.loopexit, %bb.d
  %.sroa.519.0.i.i = phi i64 [ 0, %bb.d ], [ %i.cz, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i.loopexit ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.018.0.i.i = phi ptr [ null, %bb.d ], [ %i.dg, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i.loopexit ], [ null, %bb.h ], [ null, %bb.i ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_SC_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %.sroa.018.0.i.i, i64 %.sroa.519.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread.i.i
  %i.dh = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.di, align 8, !tbaa !49
  %i.dj = sub nsw i64 %i.dh, %.sroa.0.0.copyload.i2.i.i.i
  %i.dk = sdiv i64 %i.dj, 1000000                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !93
  %i.dn = add i64 %i.dk, %i.dm
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !93
  %i.do = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !49
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.dk)
  store i64 %.sroa.speculated.i.i, ptr %i.do, align 8, !tbaa !94
  br label %bb.l

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i, %bb.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.val.val) #3 ; 0 uses
  br label %.body

bb.l:                                             ; preds = %bb.j, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE4findINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.i
  %i.ds = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.val.val) #3 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !7  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.du, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.dv, align 8, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !13
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #3, !inline_history !95
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #3, !inline_history !95
  br label %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i3 = phi i32 [ %i.dy, %bb.p ], [ %i.ei, %bb.q ]
  %i.ej = icmp eq i32 %.0.i.i.i.i3, 1
  br i1 %i.ej, label %bb.r, label %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #3
  br label %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.ek = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.en = load i64, ptr %i.el, align 8, !tbaa !17
  %i.eo = add i64 %i.en, 1
  tail call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox7process19ThreadLocalRegistryIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_9TraceDataENS4_23HeterogeneousAccessHashISB_vEENS4_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE9ReferenceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.s:                                             ; preds = %bb.b
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.s ], [ %i.dq, %bb.k ]
  %i.eq = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.eq) #37
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #3 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox7process12TraceContext10statusLineB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %2 = alloca %"class.folly::F14FastMap", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.a = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  invoke void @_ZN8facebook5velox7process12TraceContext6statusB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastMap") align 8 %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !78
  %i.d = lshr i64 %i.c, 8                         ; 2 uses
  %.not.i.i.not = icmp eq i64 %i.d, 0
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  br i1 %.not.i.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.backedge

._crit_edge:                                      ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29, !alias.scope !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !35, !alias.scope !102
  store i8 0, ptr %i.h, align 8, !tbaa !17, !alias.scope !102
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103, !noalias !102 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noalias !102 ; 2 uses
  %i.n = icmp ugt ptr %i.k, %i.m
  %.08.i.i.i = select i1 %i.n, ptr %i.k, ptr %i.m ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i24 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i24, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107, !noalias !102 ; 2 uses
  %i.q = ptrtoint ptr %.08.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.s)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !32, !alias.scope !102 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.h, align 8, !tbaa !17, !alias.scope !102
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %.body

bb.e:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.backedge:                                        ; preds = %_ZNSolsEPFRSoS_E.exit, %.lr.ph
  %.pn = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.037.041, %_ZNSolsEPFRSoS_E.exit ] ; 7 uses
  %.sroa.037.041 = getelementptr inbounds i8, ptr %.pn, i64 -64 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.pn, i64 -32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !75
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %_ZNSolsEPFRSoS_E.exit

bb.g:                                             ; preds = %.backedge
  %i.ae = getelementptr inbounds i8, ptr %.pn, i64 -8
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.af = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i
  %i.ag = sdiv i64 %i.af, 1000000
  %i.ah = load ptr, ptr %.sroa.037.041, align 8, !tbaa !32
  %i.ai = getelementptr inbounds i8, ptr %.pn, i64 -56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !75
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %i.am)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.2, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %.pn, i64 -28 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !77
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %i.aq)
          to label %bb.i unwind label %.loopexit  ; 2 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %bb.i
  %i.at = getelementptr inbounds i8, ptr %.pn, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !93
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !77
  %i.aw = sext i32 %i.av to i64
  %i.ax = udiv i64 %i.au, %i.aw
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.ax)
          to label %_ZNSolsEm.exit unwind label %.loopexit ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.4, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZNSolsEm.exit
  %i.ba = getelementptr inbounds i8, ptr %.pn, i64 -16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !94
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %i.bb)
          to label %_ZNSolsEm.exit28 unwind label %.loopexit ; 2 uses

_ZNSolsEm.exit28:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.5, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZNSolsEm.exit28
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i64 noundef %i.ag)
          to label %_ZNSolsEl.exit unwind label %.loopexit ; 3 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !108 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.j:                                             ; preds = %_ZNSolsEl.exit
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEl.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !121
  %.not.i1.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 67
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.l
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !126

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc30, %bb.k
  %.0.i.i.i = phi i8 [ %i.bo, %bb.k ], [ %i.bs, %.noexc30 ]
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i8 noundef signext %.0.i.i.i)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %bb.g, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.h, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZNSolsEm.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %bb.l, %.noexc30, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc32, %.backedge
  %i.bv = icmp eq ptr %i.e, %.sroa.037.041
  br i1 %i.bv, label %._crit_edge, label %.backedge, !prof !18

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 15
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !127
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !78  ; 3 uses
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %i.cd = and i64 %i.cb, 255
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.ce, align 1
  %i.cf = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.cd
  %i.cg = xor i64 %notmask.i.i, -1
  %i.ch = lshr i64 %i.cg, 12
  %i.ci = add nuw nsw i64 %i.ch, 1
  %.not.i.i.i34 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i34, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %.pre42 = load ptr, ptr %2, align 8, !tbaa !72
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i
  %3 = phi ptr [ %4, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i ], [ %.pre42, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i = phi i64 [ %i.cp, %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.05.i.i.i ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !17
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #35
  %.pre = load ptr, ptr %2, align 8, !tbaa !72
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %4 = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %3, %.lr.ph.i.i.i ]
  %i.cp = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cp, %i.cc
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !130

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !78
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.m
  %i.cq = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.cb, %bb.m ] ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 256
  br i1 %i.cr, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.cs = and i64 %i.cq, 255                      ; 2 uses
  store i64 %i.cs, ptr %i.b, align 8, !tbaa !78
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.n, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ct = phi i64 [ %i.cq, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.cs, %bb.n ] ; 2 uses
  %i.cu = load ptr, ptr %i.bw, align 8, !tbaa !80 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %.0.copyload.i.i = load i16, ptr %i.cv, align 1
  %i.cw = zext i16 %.0.copyload.i.i to i64
  %i.cx = icmp eq i64 %i.ct, 0
  %i.cy = shl nuw nsw i64 %i.cw, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.cy
  %.neg18.i = shl i64 -64, %i.ct
  %.0.i.neg.i = select i1 %i.cx, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.bw, align 8, !tbaa !80
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %i.cz = and i64 %.0.i.neg.i, -8
  %i.da = shl nuw nsw i64 %i.cf, 6
  %i.db = mul i64 %i.da, %i.ci
  %i.dc = sub i64 %i.db, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dc) #3
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  %i.dd = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dd, ptr %1, align 8, !tbaa !14
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.df = getelementptr i8, ptr %i.dd, i64 -24
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !14
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dk, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !17
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dk, align 8, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dr) #3
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !14
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.du = getelementptr i8, ptr %i.ds, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.dx, align 8, !tbaa !131
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dy) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  ret void

.body:                                            ; preds = %bb.d, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.u, %bb.d ]
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox7process9TraceDataEvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %2) #3
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox7process12TraceContext6statusB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastMap") align 8 initializes((0, 24)) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.19", align 8     ; 4 uses
  %2 = alloca %"class.std::tuple.22", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.25", align 1     ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %i.c = load ptr, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18registryB5cxx11E, align 8, !tbaa !133 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #3 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.i, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.i: ; preds = %bb.a
  %.sroa.017.031.i = load ptr, ptr %i.c, align 8, !tbaa !136 ; 2 uses
  %i.f = icmp eq ptr %.sroa.017.031.i, %i.c
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.e) #36
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.b
  unreachable

.lr.ph.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.i, %"_ZZN8facebook5velox7process12TraceContext6statusB5cxx11EvENK3$_0clIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEEEDaRT_.exit.i"
  %.sroa.017.032.i = phi ptr [ %.sroa.017.0.i, %"_ZZN8facebook5velox7process12TraceContext6statusB5cxx11EvENK3$_0clIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEEEDaRT_.exit.i" ], [ %.sroa.017.031.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.017.032.i, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 3 uses
  %i.i = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #3 ; 2 uses
  %.not.i.i10.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i10.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.i) #36
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11.i:      ; preds = %.lr.ph.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.val8.i = load ptr, ptr %i.k, align 8          ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 56
  %.val9.i = load i64, ptr %i.l, align 8, !tbaa !78
  %i.m = lshr i64 %.val9.i, 8                     ; 2 uses
  %.not.i.i.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.not.i.i, label %"_ZZN8facebook5velox7process12TraceContext6statusB5cxx11EvENK3$_0clIN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_9TraceDataENS5_23HeterogeneousAccessHashISC_vEENS5_26HeterogeneousAccessEqualToISC_vEESaISt4pairIKSC_SD_EEEEEEDaRT_.exit.i", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11.i
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %.val8.i, i64 %i.m
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %.pn.i.i = phi ptr [ %i.n, %.lr.ph.preheader.i.i ], [ %.sroa.03.08.i.i, %bb.m ] ; 9 uses
  %.sroa.03.08.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -64 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %.pn.i.i, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3, !noalias !138
  store ptr %.sroa.03.08.i.i, ptr %2, align 8, !tbaa !63, !alias.scope !141, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3, !noalias !138
  %i.p = load ptr, ptr %.sroa.03.08.i.i, align 8, !tbaa !32 ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %.pn.i.i, i64 -56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35   ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 3 uses
  %i.t = icmp ult i64 %i.r, 17
  br i1 %i.t, label %bb.d, label %bb.h, !prof !90

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp samesign ugt i64 %i.r, 3
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = xor i64 %i.r, 4766890152743124950        ; 2 uses
  %i.w = icmp samesign ugt i64 %i.r, 7
  br i1 %i.w, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i.i: ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1
  %.0.copyload.i.i15.i.i = load i64, ptr %i.x, align 1
  br label %.noexc12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -4
  %.0.copyload.i.i16.i.i = load i32, ptr %i.p, align 1
  %i.z = zext i32 %.0.copyload.i.i16.i.i to i64
  %.0.copyload.i.i17.i.i = load i32, ptr %i.y, align 1
  %i.aa = zext i32 %.0.copyload.i.i17.i.i to i64
  br label %.noexc12.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i14.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i14.i, label %.noexc12.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.p, align 1, !tbaa !17
end_hunk_0
