Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ConstrainedVectorGenerator?download=true
inline.NumInlined: 25391
inline.NumDeleted: 5394
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE:bb.a
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = and i64 %i.s, 255                       ; 2 uses
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !492
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.023.i39.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.ba, %bb.i ]
  %.025.i38.i.i.i = phi i64 [ %i.y, %bb.e ], [ %i.bb, %bb.i ] ; 2 uses
  %i.ah = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i.i, i64 range(i64 0, 256) %i.ae)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ad
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = and i16 %i.an, 16383
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ar = extractelement <16 x i8> %i.al, i64 15
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.sroa.012.0.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.au, %bb.g ] ; 4 uses
  %.not.i.i.i = icmp eq i32 %.sroa.012.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.as = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i.i, i1 true)
  %i.at = add nsw i32 %.sroa.012.0.i.i.i, -1
  %i.au = and i32 %i.at, %.sroa.012.0.i.i.i
  %i.av = zext nneg i32 %i.as to i64              ; 3 uses
  call void @llvm.assume(i1 %i.aq)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !583
  %i.ay = icmp eq ptr %i.r, %i.ax
  br i1 %i.ay, label %bb.j, label %.critedge.i.i.i.i, !prof !244, !llvm.loop !43

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.az = icmp eq i8 %i.ar, 0
  br i1 %i.az, label %.loopexit131, label %bb.i, !prof !244

bb.i:                                             ; preds = %bb.h
  %i.ba = add i64 %.023.i39.i.i.i, -1             ; 2 uses
  %i.bb = add i64 %i.aa, %.025.i38.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.loopexit131, label %bb.f, !llvm.loop !44

bb.j:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr nonnull %i.bc, i64 %i.av, i64 %i.y, i64 %i.x)
          to label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit unwind label %bb.o

.loopexit131:                                     ; preds = %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %i.r, ptr %i.a, align 8, !tbaa !583
  %i.bd = invoke noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !7054
  store i64 %i.bd, ptr %7, align 16, !tbaa !237, !alias.scope !7055, !noalias !7054
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.be, align 16, !tbaa !237, !alias.scope !7055, !noalias !7054
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.183, i64 67, i64 20, ptr nonnull %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !7054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.183) #36
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.o:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.p:                                             ; preds = %.loopexit131
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn52 = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !370   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !237
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn52, %bb.r ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.body74

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !7056)
  %i.bp = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !421, !noalias !7056, !nonnull !252, !noundef !252
  store ptr null, ptr %9, align 8, !tbaa !421, !alias.scope !7056
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !453, !noalias !7056
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !7056
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !7056
  store i8 0, ptr %i.j, align 1, !tbaa !755, !noalias !7056
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.br, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.t, !noalias !7056

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.bs = load ptr, ptr %5, align 8, !tbaa !421, !noalias !7056 ; 4 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !421, !alias.scope !7056
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.pre15.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !453, !noalias !7056
  %.pre.i = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !421, !noalias !7056
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !7056
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !7056
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240, !noalias !7056
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !7056
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef %.pre.i, i64 noundef %.pre15.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge unwind label %bb.u, !noalias !7056

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %.pre = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !421 ; 3 uses
  %.pre270.a = load ptr, ptr %9, align 8, !tbaa !421 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !427 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre270.a, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !427 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !453 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0212, %.sroa.19.0211
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread

bb.t:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !7056
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !7056
  br label %.body

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  store ptr %i.bx, ptr %.sroa.12.0212, align 8, !tbaa !484
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !484
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx, align 8, !tbaa !270
  %.sroa.12.2299 = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 24
  store ptr null, ptr %9, align 8, !tbaa !421
  store ptr %.pre270.a, ptr %.sroa.0103.0210, align 8, !tbaa !421
  br label %bb.z

bb.v:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  %i.ce = ptrtoint ptr %.sroa.12.0212 to i64
  %i.cf = ptrtoint ptr %.sroa.0106.0213 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.w, label %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #36
          to label %.noexc60.a unwind label %.loopexit.split-lp

.noexc60.a:                                       ; preds = %bb.w
  unreachable

_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ci = sdiv exact i64 %i.cg, 24                ; 2 uses
  %mul2.i.i.i = shl nsw i64 %i.ci, 1
  %10 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.cj = icmp ult i64 %10, %i.ci
  %i.ck = call i64 @llvm.umin.i64(i64 %10, i64 384307168202282325)
  %i.cl = select i1 %i.cj, i64 384307168202282325, i64 %i.ck ; 2 uses
  %i.cm = mul nuw nsw i64 %i.cl, 24
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #39
          to label %.noexc61 unwind label %.loopexit133 ; 5 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cg ; 4 uses
  store ptr %i.bx, ptr %i.co, align 8, !tbaa !484
  %.sroa.6.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx93, align 8, !tbaa !484
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !270
  %i.cp = icmp sgt i64 %i.cg, 0
  br i1 %i.cp, label %bb.x, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %.sroa.0106.0213, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.x, %.noexc61
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0106.0213, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0213, i64 noundef %i.cg) #37
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i, %bb.y
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cl ; 2 uses
  %.pre271.a = load ptr, ptr %9, align 8, !tbaa !421
  %.pre272.a = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !421 ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  store ptr null, ptr %9, align 8, !tbaa !421
  store ptr %.pre271.a, ptr %.sroa.0103.0210, align 8, !tbaa !421
  %.not.i.i62 = icmp eq ptr %.pre272.a, null
  br i1 %.not.i.i62, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit
  %.sroa.12.2305.a = phi ptr [ %.sroa.12.2299, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread ], [ %.sroa.12.2, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.sroa.0106.6303 = phi ptr [ %.sroa.0106.0213, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread ], [ %i.cn, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.sroa.19.6301.a = phi ptr [ %.sroa.19.0211, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread ], [ %i.cq, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.cr = phi ptr [ %.pre, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread ], [ %.pre272.a, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = atomicrmw sub ptr %i.cs, i32 1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.z
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !240
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %i.cr)
          to label %.noexc.i.i unwind label %bb.aa, !inline_history !10

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !450
  %.not.i.i.i64 = icmp eq ptr %i.cz, null
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !240
  %..i.i.i = select i1 %.not.i.i.i64, i64 8, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %..i.i.i
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %i.cr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.aa, !inline_history !10

bb.aa:                                            ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #38
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit, %bb.z, %.noexc.i.i
  %.sroa.12.2306 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ], [ %.sroa.12.2305.a, %bb.z ], [ %.sroa.12.2305.a, %.noexc.i.i ]
  %.sroa.0106.6304 = phi ptr [ %i.cn, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ], [ %.sroa.0106.6303, %bb.z ], [ %.sroa.0106.6303, %.noexc.i.i ] ; 3 uses
  %.sroa.19.6302 = phi ptr [ %i.cq, %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit ], [ %.sroa.19.6301.a, %bb.z ], [ %.sroa.19.6301.a, %.noexc.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.df = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !421 ; 2 uses
  store ptr %i.df, ptr %i.b, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !7057
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dg) ; 2 uses
  %i.di = lshr i64 %i.dh, 24
  %i.dj = or i64 %i.di, 128
  %i.dk = add i64 %i.dh, %i.dg
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.357") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 %i.dk, i64 %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.dl = load i8, ptr %i.k, align 8, !tbaa !325, !range !251, !noalias !7058, !noundef !252
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !7057
  %i.dm = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %i.dm, label %bb.ag, label %bb.ac, !prof !244

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolEE18veloxCheckFailArgs_1) #36
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

.loopexit133:                                     ; preds = %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.body

bb.af:                                            ; preds = %bb.ac
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr %9, align 8, !tbaa !421   ; 7 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 acq_rel, align 4
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.ah
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !240
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %i.dp)
          to label %.noexc.i unwind label %bb.ai, !inline_history !10

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !450
  %.not.i.i66 = icmp eq ptr %i.dx, null
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !240
  %..i.i = select i1 %.not.i.i66, i64 8, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %..i.i
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(64) %i.dp)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.ai, !inline_history !10

bb.ai:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #38
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.ag, %bb.ah, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.aj

.body:                                            ; preds = %bb.ae, %bb.af, %.loopexit.split-lp, %.loopexit133, %bb.t, %bb.u
  %.sroa.19.2 = phi ptr [ %.sroa.19.0211, %bb.t ], [ %.sroa.19.0211, %bb.u ], [ %.sroa.19.6302, %bb.ae ], [ %.sroa.19.6302, %bb.af ], [ %.sroa.12.0212, %.loopexit133 ], [ %.sroa.12.0212, %.loopexit.split-lp ]
  %.sroa.0106.2 = phi ptr [ %.sroa.0106.0213, %bb.t ], [ %.sroa.0106.0213, %bb.u ], [ %.sroa.0106.6304, %bb.ae ], [ %.sroa.0106.6304, %bb.af ], [ %.sroa.0106.0213, %.loopexit133 ], [ %.sroa.0106.0213, %.loopexit.split-lp ]
  %.pn49.pn = phi { ptr, i32 } [ %i.cc, %bb.t ], [ %i.cd, %bb.u ], [ %i.dn, %bb.ae ], [ %i.do, %bb.af ], [ %lpad.loopexit, %.loopexit133 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.body74

bb.aj:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.c
  %.sroa.19.3 = phi ptr [ %.sroa.19.0211, %bb.c ], [ %.sroa.19.6302, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ] ; 6 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0212, %bb.c ], [ %.sroa.12.2306, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ] ; 5 uses
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.0213, %bb.c ], [ %.sroa.0106.6304, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit ] ; 14 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0103.0210, i64 8 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.f
  br i1 %i.ee, label %._crit_edge, label %bb.b

bb.ak:                                            ; preds = %._crit_edge
  %i.ef = ptrtoint ptr %.sroa.12.1 to i64
  %i.eg = ptrtoint ptr %.sroa.0106.3 to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = sdiv exact i64 %i.eh, 24
  %i.ej = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = shl nuw nsw i64 %i.ej, 1
  %i.el = xor i64 %i.ek, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_(ptr %.sroa.0106.3, ptr %.sroa.12.1, i64 noundef %i.el)
          to label %.noexc67 unwind label %bb.am

.noexc67:                                         ; preds = %bb.ak
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_(ptr %.sroa.0106.3, ptr %.sroa.12.1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SH_E_EvT_SJ_T0_.exit unwind label %bb.am

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SH_E_EvT_SJ_T0_.exit: ; preds = %.noexc67
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !421 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 44
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !426
  %i.eq = and i8 %i.ep, 2
  %.not.i69 = icmp eq i8 %i.eq, 0
end_hunk_0
