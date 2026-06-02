inline.NumInlined: 14590
inline.NumDeleted: 3684
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.br, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  %.pn = phi { ptr, i32 } [ %lpad.phi141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi141, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body

.body:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %i.hm, %bb.bq ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ce

bb.bs:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit91, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %.not.i.i.i109 = icmp eq ptr %.sroa.0128.0.lcssa, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hr = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.hs = ptrtoint ptr %.sroa.0128.0.lcssa to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0.lcssa, i64 noundef %i.ht) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bs, %bb.bt
  %i.hu = load ptr, ptr %12, align 8, !tbaa !232  ; 7 uses
  %.not.i110 = icmp eq ptr %i.hu, null
  br i1 %.not.i110, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit115, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hw = atomicrmw sub ptr %i.hv, i32 1 acq_rel, align 4
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %.sink.split.i.i111, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit115

.sink.split.i.i111:                               ; preds = %bb.bu
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !17
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(64) %i.hu)
          to label %.noexc.i112 unwind label %bb.bv, !inline_history !246

.noexc.i112:                                      ; preds = %.sink.split.i.i111
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !247
  %.not.i.i113 = icmp eq ptr %i.ic, null
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !17
  %..i.i114 = select i1 %.not.i.i113, i64 8, i64 48
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %..i.i114
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(64) %i.hu)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit115 unwind label %bb.bv, !inline_history !246

bb.bv:                                            ; preds = %.noexc.i112, %.sink.split.i.i111
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit115: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bu, %.noexc.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !86 ; 2 uses
  %.not.i116 = icmp eq ptr %i.ij, null
  br i1 %.not.i116, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit115
  %i.ik = invoke noundef zeroext i1 %i.ij(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bx ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit115, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !89 ; 8 uses
  %.not.i.i117 = icmp eq ptr %i.io, null
  br i1 %.not.i.i117, label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ip, align 8, !tbaa !91
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !93
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !17
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #22, !inline_history !657
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !17
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #22, !inline_history !657
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ca:                                            ; preds = %bb.by
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i118 = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i118, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119

bb.cc:                                            ; preds = %bb.ca
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i120 = phi i32 [ %i.is, %bb.cb ], [ %i.jc, %bb.cc ]
  %i.jd = icmp eq i32 %.0.i.i.i.i120, 1
  br i1 %i.jd, label %bb.cd, label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i119, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  ret void

bb.ce:                                            ; preds = %.body, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ep, %bb.an ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.am
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ce ], [ %i.eo, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit142, %.loopexit.split-lp143, %bb.af, %bb.cf, %bb.ae
  %.sroa.17.0168 = phi ptr [ %.sroa.17.0.lcssa, %bb.af ], [ %.sroa.17.0.lcssa, %bb.ae ], [ %.sroa.17.0.lcssa, %bb.cf ], [ %.sroa.17.0176, %.loopexit142 ], [ %.sroa.17.0176, %.loopexit.split-lp143 ]
  %.sroa.0128.0158 = phi ptr [ %.sroa.0128.0.lcssa, %bb.af ], [ %.sroa.0128.0.lcssa, %bb.ae ], [ %.sroa.0128.0.lcssa, %bb.cf ], [ %.sroa.0128.0178, %.loopexit142 ], [ %.sroa.0128.0178, %.loopexit.split-lp143 ] ; 3 uses
  %.pn62 = phi { ptr, i32 } [ %i.dg, %bb.af ], [ %i.df, %bb.ae ], [ %.pn.pn.pn.pn, %bb.cf ], [ %lpad.loopexit144, %.loopexit142 ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp143 ] ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %.sroa.0128.0158, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.je = ptrtoint ptr %.sroa.17.0168 to i64
  %i.jf = ptrtoint ptr %.sroa.0128.0158 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0158, i64 noundef %i.jg) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

_ZNSt6vectorIiSaIiEED2Ev.exit122:                 ; preds = %bb.ch, %bb.cg, %bb.m
  %.pn62.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %.pn62, %bb.cg ], [ %.pn62, %bb.ch ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122, %bb.l
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit122 ], [ %i.as, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !86 ; 2 uses
  %.not.i123 = icmp eq ptr %i.ji, null
  br i1 %.not.i123, label %_ZNSt14_Function_baseD2Ev.exit124, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jj = invoke noundef zeroext i1 %i.ji(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit124 unwind label %bb.ck ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit124:                ; preds = %bb.cj, %bb.ci, %bb.k
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %.pn62.pn.pn, %bb.ci ], [ %.pn62.pn.pn, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  resume { ptr, i32 } %.pn62.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readArrayVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::vector.14", align 8    ; 12 uses
  %9 = alloca [1 x %"class.std::shared_ptr.0"], align 16 ; 8 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca [1 x %"class.std::shared_ptr.3"], align 16 ; 8 uses
  %12 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %14 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %i.d = load ptr, ptr %7, align 8, !tbaa !161
  %i.e = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.d, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #22 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !164  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.j = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 0)
          to label %bb.b unwind label %bb.aq      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.n, align 8, !tbaa !84
  store <2 x ptr> %i.r, ptr %9, align 16, !tbaa !84
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc unwind label %.loopexit.loopexit ; 3 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  store ptr %i.y, ptr %8, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !90
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !89  ; 3 uses
  %i.ac = load <2 x ptr>, ptr %9, align 16, !tbaa !84
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !84
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, label %bb.f

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread: ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !32
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread184

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread184: ; preds = %bb.f
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !3
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !32
  br label %bb.g

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.aj = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !89 ; 2 uses
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread184, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread184 ], [ %.pre, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.al, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !93
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !299
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22, !inline_history !299
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i83 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.j ], [ %i.ay, %bb.k ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.l, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.ba = phi ptr [ %i.ad, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread ], [ %i.ag, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.ag, %bb.h ], [ %i.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.ag, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !89 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.f, align 8, !tbaa !84
  store <2 x ptr> %i.be, ptr %11, align 16, !tbaa !84
  %.not.i.i.i84 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i84, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i85 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i85, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bk, align 8
  %i.bl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc92 unwind label %bb.ar  ; 3 uses

.noexc92:                                         ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  store ptr %i.bl, ptr %10, align 8, !tbaa !142
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !158
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !89 ; 3 uses
  %i.bp = load <2 x ptr>, ptr %11, align 16, !tbaa !84
  store <2 x ptr> %i.bp, ptr %i.bl, align 8, !tbaa !84
  %.not.i.i.i.i.i.i.i.i.i.i89 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i89, label %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, label %bb.p

_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread: ; preds = %.noexc92
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.bm, ptr %i.bq, align 8, !tbaa !139
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %.noexc92
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq i8 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i90, label %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread187

_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread187: ; preds = %bb.p
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !3
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !139
  br label %bb.q

_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.p
  %i.bw = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert152 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre153 = load ptr, ptr %.phi.trans.insert152, align 8, !tbaa !89 ; 2 uses
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !139
  %.not.i.i93 = icmp eq ptr %.pre153, null
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readArrayVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #22, !inline_history !658
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #22, !inline_history !658
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i94 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i94, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

bb.u:                                             ; preds = %bb.s
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i96 = phi i32 [ %i.cb, %bb.t ], [ %i.cl, %bb.u ]
  %i.cm = icmp eq i32 %.0.i.i.i.i96, 1
  br i1 %i.cm, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95, %bb.v
  %i.cn = phi ptr [ %i.bq, %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread ], [ %i.bt, %_ZSt10_ConstructISt10shared_ptrIN8facebook5velox10BaseVectorEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.bt, %bb.r ], [ %i.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95 ], [ %i.bt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_111readColumnsEPNS0_15ByteInputStreamERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISB_EEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_IS8_INS0_10BaseVectorEESaISQ_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %i.i, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.w unwind label %bb.as

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !7  ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %i.cs = add i64 %i.cr, 4                        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !15
  %.not.i = icmp ugt i64 %i.cs, %i.cu
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !16
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cr
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !11
  %.0.copyload.i.i = load i32, ptr %i.cw, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.cx = load ptr, ptr %0, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i32 noundef 4)
          to label %.noexc97 unwind label %bb.at, !inline_history !333

.noexc97:                                         ; preds = %bb.y
  %i.da = load i32, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit: ; preds = %.noexc97, %bb.x
  %.0.i = phi i32 [ %.0.copyload.i.i, %bb.x ], [ %i.da, %.noexc97 ] ; 2 uses
  %i.db = icmp eq i32 %4, 0
  %i.dc = select i1 %i.db, i32 %.0.i, i32 %4      ; 3 uses
  %i.dd = add nsw i32 %i.dc, %2                   ; 3 uses
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %i.dd, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.au

bb.z:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit
  %i.dh = load ptr, ptr %10, align 8, !tbaa !142  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !89 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !84
  store <2 x ptr> %i.dl, ptr %12, align 16, !tbaa !84
  %.not.i.i.i98 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i98, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit100, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i99 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit100

bb.ac:                                            ; preds = %bb.aa
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit100

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit100: ; preds = %bb.z, %bb.ab, %bb.ac
  invoke void @_ZN8facebook5velox11ArrayVector11setElementsESt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull %12)
          to label %bb.ad unwind label %bb.av

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit100
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !89 ; 8 uses
  %.not.i.i101 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i101, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ds, align 8, !tbaa !91
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !93
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22, !inline_history !658
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22, !inline_history !658
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105

bb.ag:                                            ; preds = %bb.ae
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i102 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i102, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103

bb.ai:                                            ; preds = %bb.ag
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i104 = phi i32 [ %i.dv, %bb.ah ], [ %i.ef, %bb.ai ]
  %i.eg = icmp eq i32 %.0.i.i.i.i104, 1
  br i1 %i.eg, label %bb.aj, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105, !prof !36

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105: ; preds = %bb.ad, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i103, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !164, !noalias !659
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !662, !noalias !659
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.ei, i32 noundef %i.dd, ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.em)
          to label %.noexc107 unwind label %bb.aw

.noexc107:                                        ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !232, !noalias !659, !nonnull !58, !noundef !58 ; 2 uses
  store ptr %i.en, ptr %13, align 8, !tbaa !232, !alias.scope !659
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = atomicrmw add ptr %i.eo, i32 1 acq_rel, align 4, !noalias !659 ; 0 uses
  %.pre154 = load ptr, ptr %13, align 8, !tbaa !232 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.pre154, i64 44
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !233
  %i.es = and i8 %i.er, 2
  %.not.i108 = icmp eq i8 %i.es, 0
  br i1 %.not.i108, label %bb.al, label %bb.ak, !prof !47

bb.ak:                                            ; preds = %.noexc107
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc109 unwind label %bb.ax

.noexc109:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %.noexc107
  %i.et = getelementptr inbounds nuw i8, ptr %.pre154, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !238 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !164, !noalias !663
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !662, !noalias !663
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.ev, i32 noundef %i.dd, ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %i.ey)
          to label %.noexc111 unwind label %bb.ay

.noexc111:                                        ; preds = %bb.al
  %15 = load ptr, ptr %i.ex, align 8, !tbaa !232, !noalias !663 ; 3 uses
  store ptr %15, ptr %14, align 8, !tbaa !232, !alias.scope !663
  %.not.i.i110 = icmp eq ptr %15, null
  br i1 %.not.i.i110, label %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit, label %16

16:                                               ; preds = %.noexc111
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %18 = atomicrmw add ptr %17, i32 1 acq_rel, align 4, !noalias !663 ; 0 uses
  %.pre155 = load ptr, ptr %14, align 8, !tbaa !232
  br label %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit

_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit: ; preds = %16, %.noexc111
  %19 = phi ptr [ %.pre155, %16 ], [ null, %.noexc111 ] ; 9 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !233
  %i.fb = and i8 %i.fa, 2
  %.not.i112 = icmp eq i8 %i.fb, 0
  br i1 %.not.i112, label %bb.an, label %bb.am, !prof !47

bb.am:                                            ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc113 unwind label %bb.az

.noexc113:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !238
  %i.fe = load ptr, ptr %i.co, align 8, !tbaa !7  ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !11 ; 2 uses
  %i.fh = add i64 %i.fg, 4                        ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !15
  %.not.i115 = icmp ugt i64 %i.fh, %i.fj
  br i1 %.not.i115, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !16
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fg
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !11
  %.0.copyload.i.i116 = load i32, ptr %i.fl, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.fm = load ptr, ptr %0, align 8, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %.noexc118 unwind label %bb.ba, !inline_history !333

.noexc118:                                        ; preds = %bb.ap
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119: ; preds = %bb.ao, %.noexc118
  %.0.i117 = phi i32 [ %.0.copyload.i.i116, %bb.ao ], [ %i.fp, %.noexc118 ]
  %i.fq = icmp sgt i32 %i.dc, 0
  br i1 %i.fq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119
  %.not = icmp eq ptr %3, null
  %i.fr = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.dc to i64
  br label %bb.bb

._crit_edge:                                      ; preds = %bb.bh, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119
  %i.fs = invoke fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19readNullsEPNS0_15ByteInputStreamEiiPKmiRNS0_10BaseVectorE(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(94) %i.e)
          to label %bb.bj unwind label %bb.ba     ; 0 uses

bb.aq:                                            ; preds = %bb.a
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.aq ], [ %i.fu, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ci

bb.ar:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ch

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.at:                                            ; preds = %bb.y
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.au:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit100
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #22
  br label %bb.cg

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit105
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ax:                                            ; preds = %bb.ak
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ay:                                            ; preds = %bb.al
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.az:                                            ; preds = %bb.am
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ba:                                            ; preds = %bb.ap, %._crit_edge
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bb:                                            ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 5 uses
  %.057147 = phi i32 [ %.0.i117, %.lr.ph ], [ %.158, %bb.bh ] ; 3 uses
  br i1 %.not, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gf = lshr i64 %indvars.iv, 6
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !185
  %i.gi = and i64 %indvars.iv, 63
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gh, %i.gj
  %.not.i120 = icmp eq i64 %i.gk, 0
  br i1 %.not.i120, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gl = add nsw i64 %indvars.iv, %i.fr          ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.gl
  store i32 0, ptr %i.gm, align 4, !tbaa !3
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.gn = load ptr, ptr %i.co, align 8, !tbaa !7  ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !11 ; 2 uses
  %i.gq = add i64 %i.gp, 4                        ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !15
  %.not.i121 = icmp ugt i64 %i.gq, %i.gs
  br i1 %.not.i121, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !16
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gp
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !11
  %.0.copyload.i.i122 = load i32, ptr %i.gu, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.gv = load ptr, ptr %0, align 8, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %.noexc124 unwind label %bb.bi, !inline_history !333

.noexc124:                                        ; preds = %bb.bg
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125: ; preds = %.noexc124, %bb.bf
  %.0.i123 = phi i32 [ %.0.copyload.i.i122, %bb.bf ], [ %i.gy, %.noexc124 ] ; 2 uses
  %i.gz = add nsw i32 %.057147, %i.i
  %i.ha = add nsw i64 %indvars.iv, %i.fr          ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ha
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !3
  %i.hc = sub nsw i32 %.0.i123, %.057147
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125, %bb.bd
  %.sink190 = phi i64 [ %i.ha, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125 ], [ %i.gl, %bb.bd ]
  %.sink = phi i32 [ %i.hc, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125 ], [ 0, %bb.bd ]
  %.158 = phi i32 [ %.0.i123, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit125 ], [ %.057147, %bb.bd ]
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %.sink190
  store i32 %.sink, ptr %i.hd, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bb, !llvm.loop !666

bb.bi:                                            ; preds = %bb.bg
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bj:                                            ; preds = %._crit_edge
  %.not.i126 = icmp eq ptr %19, null
  br i1 %.not.i126, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hf = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.hg = atomicrmw sub ptr %i.hf, i32 1 acq_rel, align 4
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.bk
  %i.hi = load ptr, ptr %19, align 8, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %.noexc.i unwind label %bb.bl, !inline_history !246

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !247
  %.not.i.i127 = icmp eq ptr %i.hm, null
  %i.hn = load ptr, ptr %19, align 8, !tbaa !17
  %..i.i = select i1 %.not.i.i127, i64 8, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %..i.i
  %i.hp = load ptr, ptr %i.ho, align 8
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.bl, !inline_history !246

bb.bl:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.bj, %bb.bk, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.hs = load ptr, ptr %13, align 8, !tbaa !232  ; 7 uses
  %.not.i128 = icmp eq ptr %i.hs, null
  br i1 %.not.i128, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133, label %bb.bm

bb.bm:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hu = atomicrmw sub ptr %i.ht, i32 1 acq_rel, align 4
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %.sink.split.i.i129, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133

.sink.split.i.i129:                               ; preds = %bb.bm
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(64) %i.hs)
          to label %.noexc.i130 unwind label %bb.bn, !inline_history !246

.noexc.i130:                                      ; preds = %.sink.split.i.i129
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !247
  %.not.i.i131 = icmp eq ptr %i.ia, null
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !17
  %..i.i132 = select i1 %.not.i.i131, i64 8, i64 48
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %..i.i132
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(64) %i.hs)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133 unwind label %bb.bn, !inline_history !246

bb.bn:                                            ; preds = %.noexc.i130, %.sink.split.i.i129
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.bm, %.noexc.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.ig = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %i.ih = load ptr, ptr %i.cn, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.iz, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i ], [ %i.ig, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 4 uses
  %i.il = load atomic i64, ptr %i.ik acquire, align 8 ; 2 uses
  %i.im = icmp eq i64 %i.il, 4294967297
  %i.in = trunc i64 %i.il to i32                  ; 2 uses
  br i1 %i.im, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.ik, align 8, !tbaa !91
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store i32 0, ptr %i.io, align 4, !tbaa !93
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #22, !inline_history !667
  %i.is = load ptr, ptr %i.ij, align 8, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #22, !inline_history !667
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.iw = add nsw i32 %i.in, -1
  store i32 %i.iw, ptr %i.ik, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.ix = atomicrmw volatile add ptr %i.ik, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.in, %bb.br ], [ %i.ix, %bb.bs ]
  %i.iy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.iy, label %bb.bt, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, !prof !36

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i: ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bp, %.lr.ph.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i134 = icmp eq ptr %i.iz, %i.ih
  br i1 %.not.i.i.i134, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !215

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !142
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133
  %i.ja = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ig, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit133 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i
  %i.jb = load ptr, ptr %i.bn, align 8, !tbaa !158
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.je) #40
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jf = load ptr, ptr %8, align 8, !tbaa !35    ; 3 uses
  %i.jg = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %.not4.i.i.i135 = icmp eq ptr %i.jf, %i.jg
  br i1 %.not4.i.i.i135, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.05.i.i.i137 = phi ptr [ %i.jy, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i ], [ %i.jf, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i137, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i.i.i138, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i136
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.jj, align 8, !tbaa !91
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !93
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #22, !inline_history !298
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #22, !inline_history !298
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i139 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i.i.i.i.i139, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i140

bb.bz:                                            ; preds = %bb.bx
  %i.jw = atomicrmw volatile add ptr %i.jj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i140: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i.i.i141 = phi i32 [ %i.jm, %bb.by ], [ %i.jw, %bb.bz ]
  %i.jx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i141, 1
  br i1 %i.jx, label %bb.ca, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, !prof !36

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #22
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i140, %bb.bw, %.lr.ph.i.i.i136
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i137, i64 16 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.jy, %i.jg
  br i1 %.not.i.i.i142, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i136, !llvm.loop !97

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.pr.i143 = load ptr, ptr %8, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit
  %i.jz = phi ptr [ %.pr.i143, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.jf, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i144 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i1.i144, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ka = load ptr, ptr %i.aa, align 8, !tbaa !90
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #40
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.cc:                                            ; preds = %bb.ba, %bb.bi, %bb.az
  %.pn72.pn = phi { ptr, i32 } [ %i.gd, %bb.az ], [ %i.he, %bb.bi ], [ %i.ge, %bb.ba ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ay
  %.pn72.pn.pn = phi { ptr, i32 } [ %.pn72.pn, %bb.cc ], [ %i.gc, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ax
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn, %bb.cd ], [ %i.gb, %bb.ax ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.aw
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn, %bb.ce ], [ %i.ga, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.at, %bb.cf, %bb.av, %bb.au, %bb.as
  %.pn72.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.as ], [ %i.fx, %bb.at ], [ %.pn72.pn.pn.pn.pn, %bb.cf ], [ %i.fz, %bb.av ], [ %i.fy, %bb.au ]
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ar
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.fv, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.loopexit
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readMapVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::vector.14", align 8    ; 12 uses
  %9 = alloca [2 x %"class.std::shared_ptr.0"], align 16 ; 13 uses
  %10 = alloca %"class.std::vector", align 8      ; 14 uses
  %11 = alloca [2 x %"class.std::shared_ptr.3"], align 16 ; 12 uses
  %12 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  %14 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %15 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %i.e = load ptr, ptr %7, align 8, !tbaa !161
  %i.f = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.e, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #22 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !164  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.k = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 0)
          to label %bb.b unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.o, align 8, !tbaa !84
  store <2 x ptr> %i.t, ptr %9, align 16, !tbaa !84
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef 1)
          to label %bb.f unwind label %.loopexit.loopexit182 ; 2 uses

bb.f:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !84
  store <2 x ptr> %i.ah, ptr %i.z, align 16, !tbaa !84
  %.not.i.i.i94 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i94, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit96, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i95 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit96

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit96

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit96: ; preds = %bb.f, %bb.h, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.an, align 8
  %i.ao = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %.noexc unwind label %.loopexit.loopexit ; 6 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit96
  store ptr %i.ao, ptr %8, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !90
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !89  ; 2 uses
  %i.as = load <2 x ptr>, ptr %9, align 16, !tbaa !84
  store <2 x ptr> %i.as, ptr %i.ao, align 8, !tbaa !84
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !89 ; 3 uses
  %i.bb = load <2 x ptr>, ptr %i.z, align 16, !tbaa !84
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !84
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, label %bb.m

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !32
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread228

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread228: ; preds = %bb.m
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !3
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !32
  br label %bb.n

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.m
  %i.bk = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !89 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread228, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.bl = phi ptr [ %i.ba, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread228 ], [ %.pre, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bm, align 8, !tbaa !91
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !93
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !299
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !299
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i97 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i97, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.s, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  %i.cb = phi ptr [ %i.bd, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.thread ], [ %i.bh, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ], [ %i.bh, %bb.o ], [ %i.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.bh, %bb.s ]
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.1 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.1, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.t
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readMapVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE:bb.a
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef %i.he, i1 noundef zeroext true)
          to label %bb.bf unwind label %bb.cg

bb.bf:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119
  %i.hi = load ptr, ptr %10, align 8, !tbaa !142  ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !89 ; 2 uses
  %i.hm = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !84
  store <2 x ptr> %i.hm, ptr %12, align 16, !tbaa !84
  %.not.i.i.i120 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i120, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit122, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 3 uses
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i121 = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i121, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hp = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hq = add nsw i32 %i.hp, 1
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit122

bb.bi:                                            ; preds = %bb.bg
  %i.hr = atomicrmw volatile add ptr %i.hn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre187 = load ptr, ptr %10, align 8, !tbaa !142
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit122

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit122: ; preds = %bb.bf, %bb.bh, %bb.bi
  %i.hs = phi ptr [ %i.hi, %bb.bf ], [ %i.hi, %bb.bh ], [ %.pre187, %bb.bi ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !89 ; 2 uses
  %i.hx = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !84
  store <2 x ptr> %i.hx, ptr %13, align 16, !tbaa !84
  %.not.i.i.i123 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i123, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit125, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit122
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 3 uses
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i124 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i124, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit125

bb.bl:                                            ; preds = %bb.bj
  %i.ic = atomicrmw volatile add ptr %i.hy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit125

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit125: ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit122, %bb.bk, %bb.bl
  invoke void @_ZN8facebook5velox9MapVector16setKeysAndValuesESt10shared_ptrINS0_10BaseVectorEES4_(ptr noundef nonnull align 8 dereferenceable(161) %i.f, ptr noundef nonnull %12, ptr noundef nonnull %13)
          to label %bb.bm unwind label %bb.ch

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit125
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !89 ; 8 uses
  %.not.i.i126 = icmp eq ptr %i.id, null
  br i1 %.not.i.i126, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.if = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 4294967297
  %i.ih = trunc i64 %i.if to i32                  ; 2 uses
  br i1 %i.ig, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.ie, align 8, !tbaa !91
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.ii, align 4, !tbaa !93
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #22, !inline_history !658
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #22, !inline_history !658
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130

bb.bp:                                            ; preds = %bb.bn
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i127 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i127, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i128

bb.br:                                            ; preds = %bb.bp
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i128

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i128: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i129 = phi i32 [ %i.ih, %bb.bq ], [ %i.ir, %bb.br ]
  %i.is = icmp eq i32 %.0.i.i.i.i129, 1
  br i1 %i.is, label %bb.bs, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130, !prof !36

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i128
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130: ; preds = %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i128, %bb.bs
  %i.it = load ptr, ptr %i.hj, align 8, !tbaa !89 ; 8 uses
  %.not.i.i131 = icmp eq ptr %i.it, null
  br i1 %.not.i.i131, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 4 uses
  %i.iv = load atomic i64, ptr %i.iu acquire, align 8 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 4294967297
  %i.ix = trunc i64 %i.iv to i32                  ; 2 uses
  br i1 %i.iw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.iu, align 8, !tbaa !91
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 0, ptr %i.iy, align 4, !tbaa !93
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !17
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #22, !inline_history !658
  %i.jc = load ptr, ptr %i.it, align 8, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #22, !inline_history !658
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

bb.bv:                                            ; preds = %bb.bt
  %i.jf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i132 = icmp eq i8 %i.jf, 0
  br i1 %.not.i.i.i132, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jg = add nsw i32 %i.ix, -1
  store i32 %i.jg, ptr %i.iu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

bb.bx:                                            ; preds = %bb.bv
  %i.jh = atomicrmw volatile add ptr %i.iu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i134 = phi i32 [ %i.ix, %bb.bw ], [ %i.jh, %bb.bx ]
  %i.ji = icmp eq i32 %.0.i.i.i.i134, 1
  br i1 %i.ji, label %bb.by, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, !prof !36

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.it) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit130, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !164, !noalias !668
  %i.jl = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !662, !noalias !668
  %i.jn = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.jk, i32 noundef %i.he, ptr noundef %i.jm, ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull %i.jo)
          to label %.noexc137 unwind label %bb.ci

.noexc137:                                        ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !232, !noalias !668, !nonnull !58, !noundef !58 ; 2 uses
  store ptr %i.jp, ptr %14, align 8, !tbaa !232, !alias.scope !668
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.jr = atomicrmw add ptr %i.jq, i32 1 acq_rel, align 4, !noalias !668 ; 0 uses
  %.pre188 = load ptr, ptr %14, align 8, !tbaa !232 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.pre188, i64 44
  %i.jt = load i8, ptr %i.js, align 4, !tbaa !233
  %i.ju = and i8 %i.jt, 2
  %.not.i138 = icmp eq i8 %i.ju, 0
  br i1 %.not.i138, label %bb.ca, label %bb.bz, !prof !47

bb.bz:                                            ; preds = %.noexc137
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc139 unwind label %bb.cj

.noexc139:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %.noexc137
  %i.jv = getelementptr inbounds nuw i8, ptr %.pre188, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !238 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.jx = load i32, ptr %i.jj, align 8, !tbaa !164, !noalias !671
  %i.jy = load ptr, ptr %i.jl, align 8, !tbaa !662, !noalias !671
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  invoke void @_ZN8facebook5velox10BaseVector13resizeIndicesEiiPNS0_6memory10MemoryPoolERN5boost13intrusive_ptrINS0_6BufferEEEPPKi(i32 noundef %i.jx, i32 noundef %i.he, ptr noundef %i.jy, ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull %i.ka)
          to label %.noexc141 unwind label %bb.ck

.noexc141:                                        ; preds = %bb.ca
  %16 = load ptr, ptr %i.jz, align 8, !tbaa !232, !noalias !671 ; 3 uses
  store ptr %16, ptr %15, align 8, !tbaa !232, !alias.scope !671
  %.not.i.i140 = icmp eq ptr %16, null
  br i1 %.not.i.i140, label %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit, label %17

17:                                               ; preds = %.noexc141
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %19 = atomicrmw add ptr %18, i32 1 acq_rel, align 4, !noalias !671 ; 0 uses
  %.pre189 = load ptr, ptr %15, align 8, !tbaa !232
  br label %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit

_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit: ; preds = %17, %.noexc141
  %20 = phi ptr [ %.pre189, %17 ], [ null, %.noexc141 ] ; 9 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %20, i64 44
  %i.kc = load i8, ptr %i.kb, align 4, !tbaa !233
  %i.kd = and i8 %i.kc, 2
  %.not.i142 = icmp eq i8 %i.kd, 0
  br i1 %.not.i142, label %bb.cc, label %bb.cb, !prof !47

bb.cb:                                            ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc143 unwind label %bb.cl

.noexc143:                                        ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !238
  %i.kg = load ptr, ptr %i.fs, align 8, !tbaa !7  ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !11 ; 2 uses
  %i.kj = add i64 %i.ki, 4                        ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !15
  %.not.i145 = icmp ugt i64 %i.kj, %i.kl
  br i1 %.not.i145, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.km = load ptr, ptr %i.kg, align 8, !tbaa !16
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %i.ki
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !11
  %.0.copyload.i.i146 = load i32, ptr %i.kn, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit149

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ko = load ptr, ptr %0, align 8, !tbaa !17
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  %i.kq = load ptr, ptr %i.kp, align 8
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %.noexc148 unwind label %bb.cm, !inline_history !333

.noexc148:                                        ; preds = %bb.ce
  %i.kr = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit149

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit149: ; preds = %bb.cd, %.noexc148
  %.0.i147 = phi i32 [ %.0.copyload.i.i146, %bb.cd ], [ %i.kr, %.noexc148 ]
  %i.ks = icmp sgt i32 %i.hd, 0
  br i1 %i.ks, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit149
  %.not81 = icmp eq ptr %3, null
  %i.kt = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.hd to i64
  br label %bb.cn

._crit_edge:                                      ; preds = %bb.ct, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit149
  %i.ku = invoke fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19readNullsEPNS0_15ByteInputStreamEiiPKmiRNS0_10BaseVectorE(ptr noundef nonnull %0, i32 noundef %.0.i117, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(94) %i.f)
          to label %bb.cv unwind label %bb.cm     ; 0 uses

bb.cf:                                            ; preds = %bb.be
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.cg:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit119
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ch:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit125
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #22
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #22
  br label %bb.ds

bb.ci:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.cj:                                            ; preds = %bb.bz
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.ck:                                            ; preds = %bb.ca
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cl:                                            ; preds = %bb.cb
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cm:                                            ; preds = %bb.ce, %._crit_edge
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cn:                                            ; preds = %.lr.ph, %bb.ct
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ct ] ; 5 uses
  %.063179 = phi i32 [ %.0.i147, %.lr.ph ], [ %.1, %bb.ct ] ; 3 uses
  br i1 %.not81, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ld = lshr i64 %indvars.iv, 6
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !185
  %i.lg = and i64 %indvars.iv, 63
  %i.lh = shl nuw i64 1, %i.lg
  %i.li = and i64 %i.lf, %i.lh
  %.not.i150 = icmp eq i64 %i.li, 0
  br i1 %.not.i150, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lj = add nsw i64 %indvars.iv, %i.kt          ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.lj
  store i32 0, ptr %i.lk, align 4, !tbaa !3
  br label %bb.ct

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.ll = load ptr, ptr %i.fs, align 8, !tbaa !7  ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !11 ; 2 uses
  %i.lo = add i64 %i.ln, 4                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !15
  %.not.i151 = icmp ugt i64 %i.lo, %i.lq
  br i1 %.not.i151, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !16
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 %i.ln
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !11
  %.0.copyload.i.i152 = load i32, ptr %i.ls, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.lt = load ptr, ptr %0, align 8, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lv = load ptr, ptr %i.lu, align 8
  invoke void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %.noexc154 unwind label %bb.cu, !inline_history !333

.noexc154:                                        ; preds = %bb.cs
  %i.lw = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155: ; preds = %.noexc154, %bb.cr
  %.0.i153 = phi i32 [ %.0.copyload.i.i152, %bb.cr ], [ %i.lw, %.noexc154 ] ; 2 uses
  %i.lx = add nsw i32 %.063179, %i.j
  %i.ly = add nsw i64 %indvars.iv, %i.kt          ; 2 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.ly
  store i32 %i.lx, ptr %i.lz, align 4, !tbaa !3
  %i.ma = sub nsw i32 %.0.i153, %.063179
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155, %bb.cp
  %.sink234 = phi i64 [ %i.ly, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155 ], [ %i.lj, %bb.cp ]
  %.sink = phi i32 [ %i.ma, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155 ], [ 0, %bb.cp ]
  %.1 = phi i32 [ %.0.i153, %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit155 ], [ %.063179, %bb.cp ]
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %.sink234
  store i32 %.sink, ptr %i.mb, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.cn, !llvm.loop !674

bb.cu:                                            ; preds = %bb.cs
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cv:                                            ; preds = %._crit_edge
  %.not.i156 = icmp eq ptr %20, null
  br i1 %.not.i156, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.md = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.me = atomicrmw sub ptr %i.md, i32 1 acq_rel, align 4
  %i.mf = icmp eq i32 %i.me, 1
  br i1 %i.mf, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.cw
  %i.mg = load ptr, ptr %20, align 8, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 64
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(64) %20)
          to label %.noexc.i unwind label %bb.cx, !inline_history !246

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !247
  %.not.i.i157 = icmp eq ptr %i.mk, null
  %i.ml = load ptr, ptr %20, align 8, !tbaa !17
  %..i.i = select i1 %.not.i.i157, i64 8, i64 48
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %..i.i
  %i.mn = load ptr, ptr %i.mm, align 8
  invoke void %i.mn(ptr noundef nonnull align 8 dereferenceable(64) %20)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.cx, !inline_history !246

bb.cx:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.mo = landingpad { ptr, i32 }
          catch ptr null
  %i.mp = extractvalue { ptr, i32 } %i.mo, 0
  call void @__clang_call_terminate(ptr %i.mp) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.cv, %bb.cw, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.mq = load ptr, ptr %14, align 8, !tbaa !232  ; 7 uses
  %.not.i158 = icmp eq ptr %i.mq, null
  br i1 %.not.i158, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163, label %bb.cy

bb.cy:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.ms = atomicrmw sub ptr %i.mr, i32 1 acq_rel, align 4
  %i.mt = icmp eq i32 %i.ms, 1
  br i1 %i.mt, label %.sink.split.i.i159, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163

.sink.split.i.i159:                               ; preds = %bb.cy
  %i.mu = load ptr, ptr %i.mq, align 8, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  %i.mw = load ptr, ptr %i.mv, align 8
  invoke void %i.mw(ptr noundef nonnull align 8 dereferenceable(64) %i.mq)
          to label %.noexc.i160 unwind label %bb.cz, !inline_history !246

.noexc.i160:                                      ; preds = %.sink.split.i.i159
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !247
  %.not.i.i161 = icmp eq ptr %i.my, null
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !17
  %..i.i162 = select i1 %.not.i.i161, i64 8, i64 48
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %..i.i162
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(64) %i.mq)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163 unwind label %bb.cz, !inline_history !246

bb.cz:                                            ; preds = %.noexc.i160, %.sink.split.i.i159
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.cy, %.noexc.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.ne = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %i.nf = load ptr, ptr %i.fa, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ne, %i.nf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nx, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i ], [ %i.ne, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163 ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 4 uses
  %i.nj = load atomic i64, ptr %i.ni acquire, align 8 ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 4294967297
  %i.nl = trunc i64 %i.nj to i32                  ; 2 uses
  br i1 %i.nk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.ni, align 8, !tbaa !91
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 0, ptr %i.nm, align 4, !tbaa !93
  %i.nn = load ptr, ptr %i.nh, align 8, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #22, !inline_history !667
  %i.nq = load ptr, ptr %i.nh, align 8, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #22, !inline_history !667
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.nt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nu = add nsw i32 %i.nl, -1
  store i32 %i.nu, ptr %i.ni, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.nv = atomicrmw volatile add ptr %i.ni, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nl, %bb.dd ], [ %i.nv, %bb.de ]
  %i.nw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.nw, label %bb.df, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, !prof !36

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i: ; preds = %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.db, %.lr.ph.i.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.nx, %i.nf
  br i1 %.not.i.i.i164, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !215

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !142
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163
  %i.ny = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ne, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit163 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i
  %i.nz = load ptr, ptr %i.dp, align 8, !tbaa !158
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.ny to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.oc) #40
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.od = load ptr, ptr %8, align 8, !tbaa !35    ; 3 uses
  %i.oe = load ptr, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %.not4.i.i.i165 = icmp eq ptr %i.od, %i.oe
  br i1 %.not4.i.i.i165, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i166

.lr.ph.i.i.i166:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.05.i.i.i167 = phi ptr [ %i.ow, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i ], [ %i.od, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i.i.i167, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i.i.i.i.i168 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i.i.i.i168, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i.i.i166
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 4 uses
  %i.oi = load atomic i64, ptr %i.oh acquire, align 8 ; 2 uses
  %i.oj = icmp eq i64 %i.oi, 4294967297
  %i.ok = trunc i64 %i.oi to i32                  ; 2 uses
  br i1 %i.oj, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.oh, align 8, !tbaa !91
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 0, ptr %i.ol, align 4, !tbaa !93
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !17
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #22, !inline_history !298
  %i.op = load ptr, ptr %i.og, align 8, !tbaa !17
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #22, !inline_history !298
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.os = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i169 = icmp eq i8 %i.os, 0
  br i1 %.not.i.i.i.i.i.i.i.i169, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ot = add nsw i32 %i.ok, -1
  store i32 %i.ot, ptr %i.oh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i170

bb.dl:                                            ; preds = %bb.dj
  %i.ou = atomicrmw volatile add ptr %i.oh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i170

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i170: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i.i.i.i171 = phi i32 [ %i.ok, %bb.dk ], [ %i.ou, %bb.dl ]
  %i.ov = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i171, 1
  br i1 %i.ov, label %bb.dm, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, !prof !36

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i170
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.og) #22
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i: ; preds = %bb.dm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i170, %bb.di, %.lr.ph.i.i.i166
  %i.ow = getelementptr inbounds nuw i8, ptr %.05.i.i.i167, i64 16 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.ow, %i.oe
  br i1 %.not.i.i.i172, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i166, !llvm.loop !97

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.pr.i173 = load ptr, ptr %8, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit
  %i.ox = phi ptr [ %.pr.i173, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.od, %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i174 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i1.i174, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i
  %i.oy = load ptr, ptr %i.aq, align 8, !tbaa !90
end_hunk_2
