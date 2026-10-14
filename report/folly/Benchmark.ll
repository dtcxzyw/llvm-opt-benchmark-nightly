Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Benchmark?download=true
inline.NumInlined: 7389
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5folly8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_m:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.c = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #42
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !6780 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  %i.h = add i64 %i.f, 1
  %i.i = select i1 %i.g, i64 %i.h, i64 4096
  %.sroa.speculated39 = call i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !105  ; 8 uses
  %i.l = icmp ult i64 %i.k, %.sroa.speculated39
  br i1 %i.l, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %.sroa.speculated39, %i.k    ; 4 uses
  %i.n = sub i64 9223372036854775807, %i.k
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #44
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.s = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !104
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %.sroa.speculated39, %i.u
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef %i.m)
          to label %.noexc23 unwind label %bb.k

.noexc23:                                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %.noexc23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.v = phi ptr [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %.noexc23 ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.m, 1
  br i1 %cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.w, align 1, !tbaa !104
  br label %.sink.split.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.m, i1 false)
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %.sroa.speculated39, %i.k
  br i1 %i.x, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g, %bb.f
  store i64 %.sroa.speculated39, ptr %i.j, align 8, !tbaa !105
  %i.y = load ptr, ptr %1, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.speculated39
  store i8 0, ptr %i.z, align 1, !tbaa !104
  %.pre = load i64, ptr %i.j, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.sink.split.i.i, %bb.h
  %i.aa = phi i64 [ %.pre, %.sink.split.i.i ], [ %i.k, %bb.h ] ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36
  %i.ae = phi i64 [ %i.aa, %.lr.ph ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36 ]
  %i.af = phi i64 [ %i.ab, %.lr.ph ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36 ] ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !103
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = sub nuw i64 %i.ae, %i.af
  %i.aj = invoke noundef i64 @_ZN5folly8readFullEiPvm(i32 noundef %0, ptr noundef nonnull %i.ah, i64 noundef %i.ai)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.not = icmp ne i64 %i.aj, -1               ; 4 uses
  br i1 %.not.not, label %bb.m, label %.loopexit

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.a, align 8, !tbaa !125
  %i.an = add i64 %i.am, %i.aj                    ; 3 uses
  store i64 %i.an, ptr %i.a, align 8, !tbaa !125
  %i.ao = load i64, ptr %i.j, align 8, !tbaa !105 ; 9 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = mul i64 %i.ao, 3
  %i.ar = lshr i64 %i.aq, 1
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %2, i64 %i.ar) ; 6 uses
  %i.as = icmp ult i64 %i.ao, %.sroa.speculated
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26, label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26: ; preds = %bb.n
  %i.at = sub nuw nsw i64 %.sroa.speculated, %i.ao ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ad
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26
  %i.aw = icmp samesign ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.aw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i26
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !104
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33
  %i.ay = phi i64 [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i33 ]
  %.not.i.i.i.i29 = icmp ugt i64 %.sroa.speculated, %i.ay
  br i1 %.not.i.i.i.i29, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ao, i64 noundef 0, ptr noundef null, i64 noundef %i.at)
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.o
  %.pre.i.i32 = load ptr, ptr %1, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30: ; preds = %.noexc35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28
  %i.az = phi ptr [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i28 ], [ %.pre.i.i32, %.noexc35 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ao ; 2 uses
  %cond.i.i.i.i31 = icmp eq i64 %i.at, 1
  br i1 %cond.i.i.i.i31, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30
  store i8 0, ptr %i.ba, align 1, !tbaa !104
  br label %.sink.split.i.i25

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i30
  call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 0, i64 %i.at, i1 false)
  br label %.sink.split.i.i25

bb.r:                                             ; preds = %bb.n
  %i.bb = icmp ult i64 %.sroa.speculated, %i.ao
  br i1 %i.bb, label %.sink.split.i.i25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36

.sink.split.i.i25:                                ; preds = %bb.r, %bb.q, %bb.p
  store i64 %.sroa.speculated, ptr %i.j, align 8, !tbaa !105
  %i.bc = load ptr, ptr %1, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.speculated
  store i8 0, ptr %i.bd, align 1, !tbaa !104
  %.pre53 = load i64, ptr %i.a, align 8, !tbaa !125
  %.pre54 = load i64, ptr %i.j, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36: ; preds = %bb.r, %.sink.split.i.i25
  %i.be = phi i64 [ %i.ao, %bb.r ], [ %.pre54, %.sink.split.i.i25 ] ; 2 uses
  %i.bf = phi i64 [ %i.an, %bb.r ], [ %.pre53, %.sink.split.i.i25 ] ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.i, label %.loopexit

bb.s:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %bb.l ], [ %i.bh, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.m, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.3 = phi i1 [ false, %bb.a ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.not.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit36 ], [ %.not.not, %bb.j ], [ %.not.not, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !125 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !105 ; 7 uses
  %i.bl = icmp ult i64 %i.bk, %i.bi
  br i1 %i.bl, label %bb.u, label %bb.z

bb.u:                                             ; preds = %.loopexit
  %i.bm = sub nuw i64 %i.bi, %i.bk                ; 4 uses
  %i.bn = sub i64 9223372036854775807, %i.bk
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #44
          to label %.noexc.i.i.i unwind label %bb.aa

.noexc.i.i.i:                                     ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bp = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.bs = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !104
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.bi, %i.bu
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bk, i64 noundef 0, ptr noundef null, i64 noundef %i.bm)
          to label %.noexc1.i.i.i unwind label %bb.aa

.noexc1.i.i.i:                                    ; preds = %bb.w
  %.pre.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %.noexc1.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.bv = phi ptr [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.noexc1.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bk ; 2 uses
  %cond.i.i.i.i.i.i.i = icmp eq i64 %i.bm, 1
  br i1 %cond.i.i.i.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i
  store i8 0, ptr %i.bw, align 1, !tbaa !104
  br label %.sink.split.i.i.i.i.i

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.bm, i1 false)
  br label %.sink.split.i.i.i.i.i

bb.z:                                             ; preds = %.loopexit
  %i.bx = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bx, label %.sink.split.i.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EED2Ev.exit

.sink.split.i.i.i.i.i:                            ; preds = %bb.z, %bb.y, %bb.x
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !105
  %i.by = load ptr, ptr %1, align 8, !tbaa !103
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bi
  store i8 0, ptr %i.bz, align 1, !tbaa !104
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.w, %bb.v
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #46
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcRT_mEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !242, !range !192, !noundef !193
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcRT_mEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6782, !nonnull !193, !align !6783
  %i.e = load i32, ptr %i.d, align 4, !tbaa !124
  %i.f = invoke noundef i32 @_ZN5folly10closeNoIntEi(i32 noundef %i.e)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcRT_mEUlvE_Lb1EE7executeEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #46
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcRT_mEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #22

declare noundef i64 @_ZN5folly8readFullEiPvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !242, !range !192, !noundef !193
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6785, !nonnull !193, !align !208 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6786, !nonnull !193, !align !208
  %i.g = load i64, ptr %i.f, align 8, !tbaa !125  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !105  ; 7 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i64 %i.g, %i.i                   ; 4 uses
  %i.l = sub i64 9223372036854775807, %i.i
  %i.m = icmp ult i64 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.140) #44
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.q = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !104
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.g, %i.s
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef %i.k)
          to label %.noexc1.i.i unwind label %bb.i

.noexc1.i.i:                                      ; preds = %bb.e
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i: ; preds = %.noexc1.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.t = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %.noexc1.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %i.k, 1
  br i1 %cond.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  store i8 0, ptr %i.u, align 1, !tbaa !104
  br label %.sink.split.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.k, i1 false)
  br label %.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.b
  %i.v = icmp ult i64 %i.g, %i.i
  br i1 %i.v, label %.sink.split.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_8readFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbiRT_mEUlvE_Lb1EE7executeEv.exit
end_hunk_0
