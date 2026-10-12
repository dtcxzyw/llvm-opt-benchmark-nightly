Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Merge?download=true
inline.NumInlined: 29141
inline.NumDeleted: 10217
loop-unroll.NumCompletelyUnrolled: 85
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 346
begin_hunk_0_@_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE6parentEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !250
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #25
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !307    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !269
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools14merge_internal20ApplyTileSumToNodeOpINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEEEclERSC_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %1)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i: ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !269    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE4dataEv.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.f = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i ], [ 1, %bb.c ] ; 8 uses
  %i.h = icmp slt i32 %.sroa.0.02.i.i.i.i, 17
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = icmp sgt i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.02.i.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.j = add nsw i32 %.01.i.i.i.i.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !4902

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.k = icmp ult i32 %.sroa.0.02.i.i.i.i, 8
  br i1 %i.k, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.l = add nsw i32 %.01.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.m = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !30

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  %i.n = shl i32 %.sroa.0.02.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = tail call noundef i32 @sched_yield() #22 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %bb.e, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.n, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i, %bb.e ]
  %i.p = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i, !llvm.loop !31

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !269    ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.t = invoke noalias noundef nonnull dereferenceable(12288) ptr @_Znam(i64 noundef 12288) #26
          to label %bb.g unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.t, ptr %1, align 8, !tbaa !269
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i: ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.e release, align 4
  resume { ptr, i32 } %i.u

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i: ; preds = %bb.g, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.v = phi ptr [ %i.t, %bb.g ], [ %i.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i ]
  store atomic i8 0, ptr %i.e release, align 4
  br label %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE4dataEv.exit

_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE4dataEv.exit: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i
  %i.w = phi ptr [ %i.v, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i ], [ %i.c, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE10loadValuesEv.exit.i ] ; 5 uses
  %i.x = load double, ptr %0, align 8, !tbaa !675
  %i.y = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.h, label %.preheader

bb.h:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE4dataEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !675
  %i.ab = fcmp oeq double %i.aa, 0.000000e+00
  br i1 %i.ab, label %.split, label %.preheader

.split:                                           ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !675
  %i.ae = fcmp une double %i.ad, 0.000000e+00
  br i1 %i.ae, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h, %_ZN7openvdb5v13_04tree10LeafBufferINS0_4math4Vec3IdEELj3EE4dataEv.exit, %.split
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 12288
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound0 = icmp ult ptr %i.w, %i.ai
  %bound1 = icmp ult ptr %0, %i.ah
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %3 = load double, ptr %0, align 8, !tbaa !675, !alias.scope !4908
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %4 = load double, ptr %i.af, align 8, !tbaa !675, !alias.scope !4908
  %broadcast.splatinsert10 = insertelement <2 x double> poison, double %4, i64 0
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !675, !alias.scope !4908
  %broadcast.splatinsert12 = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat13 = shufflevector <2 x double> %broadcast.splatinsert12, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert10, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load double, ptr %i.al, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %i.ap = load double, ptr %i.an, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.au = load double, ptr %i.as, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %i.av = load double, ptr %i.at, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %i.bb = load double, ptr %i.az, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %i.bc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1
  %i.be = fadd <2 x double> %broadcast.splat13, %i.bd
  %i.bf = shufflevector <2 x double> %i.ar, <2 x double> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bg = fadd <4 x double> %i.ak, %i.bf
  %i.bh = shufflevector <2 x double> %i.be, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bg, <4 x double> %i.bh, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.al, align 8, !tbaa !675, !alias.scope !4909, !noalias !4908
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bi = icmp eq i64 %index.next, 512
  br i1 %i.bi, label %.loopexit, label %vector.body, !llvm.loop !4906

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv ; 4 uses
  %i.bk = load double, ptr %0, align 8, !tbaa !675
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !675
  %i.bm = fadd double %i.bk, %i.bl
  store double %i.bm, ptr %i.bj, align 8, !tbaa !675
  %i.bn = load double, ptr %i.af, align 8, !tbaa !675
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !675
  %i.bq = fadd double %i.bn, %i.bp
  store double %i.bq, ptr %i.bo, align 8, !tbaa !675
  %i.br = load double, ptr %i.ag, align 8, !tbaa !675
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !675
  %i.bu = fadd double %i.br, %i.bt
  store double %i.bu, ptr %i.bs, align 8, !tbaa !675
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !4907

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %.split
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !787, !range !289, !noundef !290
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, i8 -1, i64 64, i1 false), !tbaa !595
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(99344) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeINS0_4math4Vec3IdEELj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1971   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !304
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !306
  store i8 0, ptr %i.b, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #22 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !307    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !269
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !250
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #25
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !307    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !269
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE22_M_emplace_hint_uniqueIJRS5_RSE_EEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(794640) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !402
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %3, ptr %i.c, align 8, !tbaa !535
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.d, i8 0, i64 25, i1 false)
  %i.e = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeINS2_4Vec3IdEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISH_ESt4lessIS3_ESaISH_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
