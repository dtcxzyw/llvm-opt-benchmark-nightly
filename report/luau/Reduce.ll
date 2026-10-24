Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Reduce?download=true
inline.NumInlined: 1048
inline.NumDeleted: 522
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7Reducer21deleteChildStatementsEPN4Luau12AstStatBlockEm:bb.a
  br i1 %.not.i17.i.i20.i, label %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i19.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.av) #27, !noalias !197
  br label %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i

_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i: ; preds = %bb.n, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i19.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  br label %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE9push_backERKS2_.exit24.i

_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE9push_backERKS2_.exit24.i: ; preds = %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i, %bb.j
  %.pn86 = phi ptr [ %i.be, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i ], [ %i.ao, %bb.j ]
  %.sroa.23.2 = phi ptr [ %i.bh, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i ], [ %.sroa.23.1, %bb.j ] ; 2 uses
  %i.bi = phi ptr [ %i.bh, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i ], [ %i.an, %bb.j ]
  %i.bj = phi ptr [ %i.bd, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i21.i ], [ %i.ap, %bb.j ] ; 2 uses
  %.sroa.16.1 = getelementptr inbounds nuw i8, ptr %.pn86, i64 8 ; 2 uses
  %i.bk = add i64 %.036.i, 1                      ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.bk, %.sroa.2.0.copyload71
  br i1 %exitcond49.not.i, label %_ZN7Reducer10prunedSpanEPN4Luau12AstStatBlockESt4pairImmES4_.exit, label %.lr.ph38.i, !llvm.loop !194

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPN4Luau7AstStatESaIS2_EE12_M_check_lenEmPKc.exit.i.i16.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNKSt6vectorIPN4Luau7AstStatESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.l, %bb.g
  %i.bl = phi ptr [ %i.an, %bb.l ], [ %i.p, %bb.g ]
  %i.bm = phi ptr [ %i.ap, %bb.l ], [ %i.r, %bb.g ]
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %i.bn = phi ptr [ %i.an, %.loopexit.i ], [ %i.p, %.loopexit.split-lp.loopexit.i ], [ %i.bl, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.bo = phi ptr [ %i.ap, %.loopexit.i ], [ %i.r, %.loopexit.split-lp.loopexit.i ], [ %i.bm, %.loopexit.split-lp.loopexit.split-lp.i ] ; 3 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit26.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i25.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i25.i, label %.body, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #27, !noalias !197
  br label %.body

_ZN7Reducer10prunedSpanEPN4Luau12AstStatBlockESt4pairImmES4_.exit: ; preds = %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE9push_backERKS2_.exit24.i, %._crit_edge.i
  %.sroa.16.3 = phi ptr [ %.sroa.16.0, %._crit_edge.i ], [ %.sroa.16.1, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE9push_backERKS2_.exit24.i ]
  %.sroa.23.5 = phi ptr [ %.sroa.23.0, %._crit_edge.i ], [ %.sroa.23.2, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE9push_backERKS2_.exit24.i ] ; 2 uses
  %.lcssa33.i = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.bj, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE9push_backERKS2_.exit24.i ] ; 8 uses
  %i.bs = ptrtoint ptr %.sroa.16.3 to i64
  %i.bt = ptrtoint ptr %.lcssa33.i to i64         ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 5 uses
  %i.bv = ashr exact i64 %i.bu, 3
  %.sroa.072.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !138
  %.sroa.473.0.copyload = load i64, ptr %i.b, align 8, !tbaa !25
  store ptr %.lcssa33.i, ptr %i.a, align 8, !tbaa !138
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !25
  %i.bw = invoke noundef i32 @_ZN7Reducer3runEv(ptr noundef nonnull align 8 dereferenceable(428) %0)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZN7Reducer10prunedSpanEPN4Luau12AstStatBlockESt4pairImmES4_.exit
  %.not = icmp eq i32 %i.bw, 0                    ; 2 uses
  br i1 %.not, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bx = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(428) %0, i64 noundef %i.bu)
          to label %.noexc unwind label %bb.u     ; 3 uses

.noexc:                                           ; preds = %bb.q
  %i.by = icmp sgt i64 %i.bu, 8
  br i1 %i.by, label %bb.r, label %bb.s, !prof !87

bb.r:                                             ; preds = %.noexc
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bx, ptr align 8 %.lcssa33.i, i64 %i.bu, i1 false)
  br label %_ZN7Reducer20reallocateStatementsERKSt6vectorIPN4Luau7AstStatESaIS3_EE.exit

bb.s:                                             ; preds = %.noexc
  %i.bz = icmp eq i64 %i.bu, 8
  br i1 %i.bz, label %bb.t, label %_ZN7Reducer20reallocateStatementsERKSt6vectorIPN4Luau7AstStatESaIS3_EE.exit

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %.lcssa33.i, align 8, !tbaa !132
  store ptr %i.ca, ptr %i.bx, align 8, !tbaa !132
  br label %_ZN7Reducer20reallocateStatementsERKSt6vectorIPN4Luau7AstStatESaIS3_EE.exit

_ZN7Reducer20reallocateStatementsERKSt6vectorIPN4Luau7AstStatESaIS3_EE.exit: ; preds = %bb.t, %bb.s, %bb.r
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !137
  br label %bb.x

bb.u:                                             ; preds = %bb.q, %_ZN7Reducer10prunedSpanEPN4Luau12AstStatBlockESt4pairImmES4_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.lcssa33.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = ptrtoint ptr %.sroa.23.5 to i64
  %i.cd = sub i64 %i.cc, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa33.i, i64 noundef %i.cd) #27
  br label %.body

bb.w:                                             ; preds = %bb.p
  store ptr %.sroa.072.0.copyload, ptr %i.a, align 8, !tbaa !138
  store i64 %.sroa.473.0.copyload, ptr %i.b, align 8, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN7Reducer20reallocateStatementsERKSt6vectorIPN4Luau7AstStatESaIS3_EE.exit
  %.sroa.4.2 = phi i64 [ %.sroa.speculated, %_ZN7Reducer20reallocateStatementsERKSt6vectorIPN4Luau7AstStatESaIS3_EE.exit ], [ %.sroa.4.1121, %bb.w ] ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %.lcssa33.i, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = ptrtoint ptr %.sroa.23.5 to i64
  %i.cf = sub i64 %i.ce, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa33.i, i64 noundef %i.cf) #27
  br label %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28

_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28: ; preds = %bb.x, %bb.y
  br i1 %.not, label %.loopexit, label %bb.c

.body:                                            ; preds = %bb.v, %bb.u, %bb.o, %.loopexit.split-lp.i
  %.pn = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.cb, %bb.v ], [ %lpad.phi.i, %bb.o ], [ %i.cb, %bb.u ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !198   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit: ; preds = %.body, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn

.thread:                                          ; preds = %bb.c, %bb.b
  %.sroa.4.1.lcssa = phi i64 [ %.sroa.4.0, %bb.b ], [ %.sroa.4.2, %bb.c ]
  %i.cl = shl i64 %.0, 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28, %.thread
  %.sroa.4.383 = phi i64 [ %.sroa.4.1.lcssa, %.thread ], [ %.sroa.4.2, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28 ] ; 2 uses
  %.176 = phi i64 [ %i.cl, %.thread ], [ %.0, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28 ] ; 2 uses
  %i.cm = phi i1 [ true, %.thread ], [ false, %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EED2Ev.exit28 ]
  %i.cn = load ptr, ptr %3, align 8, !tbaa !198   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #27
  br label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31: ; preds = %.loopexit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.cm, label %bb.ab, label %.loopexit87

bb.ab:                                            ; preds = %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !130 ; 3 uses
  %.not26 = icmp ugt i64 %.176, %i.cs
  br i1 %.not26, label %.loopexit87, label %bb.b, !llvm.loop !195

.loopexit87:                                      ; preds = %bb.ab, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31, %bb.a
  %.sroa.066.4 = phi i8 [ 0, %bb.a ], [ 0, %bb.ab ], [ 1, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31 ]
  %.sroa.4.4 = phi i64 [ %2, %bb.a ], [ %i.cs, %bb.ab ], [ %.sroa.4.383, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit31 ]
  %.fca.0.insert = insertvalue { i8, i64 } poison, i8 %.sroa.066.4, 0
  %.fca.1.insert = insertvalue { i8, i64 } %.fca.0.insert, i64 %.sroa.4.4, 1
  ret { i8, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Reducer13generateSpansEmm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.86") align 8 %0, ptr noundef nonnull align 8 dereferenceable(428) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = udiv i64 %2, %3
  %.sroa.speculated56 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit
  %4 = phi ptr [ %5, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit ], [ %i.f, %bb.d ] ; 2 uses
  %.promoted80122 = phi ptr [ %.promoted80, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit ], [ %i.e, %bb.d ]
  store ptr %4, ptr %0, align 8
  %.promoted84 = load ptr, ptr %i.d, align 8, !tbaa !140
  br label %bb.j

bb.d:                                             ; preds = %bb.c, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit
  %i.e = phi ptr [ null, %bb.c ], [ %.promoted80, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit ] ; 12 uses
  %.079 = phi i64 [ 0, %bb.c ], [ %.sroa.speculated42, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit ] ; 4 uses
  %i.f = phi ptr [ null, %bb.c ], [ %5, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit ] ; 11 uses
  %i.g = add i64 %.079, %.sroa.speculated56       ; 2 uses
  %.sroa.speculated42 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 3 uses
  %i.h = icmp eq i64 %.079, 0
  %i.i = icmp ule i64 %2, %i.g                    ; 2 uses
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.e, %i.j
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.079, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.speculated42, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !208
  br label %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775776
  br i1 %i.p, label %bb.h, label %_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.f, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.q = ashr exact i64 %i.o, 5                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743)
  %i.u = select i1 %i.s, i64 288230376151711743, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 5
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 4 uses
  store i64 0, ptr %i.x, align 8
  %.sroa.3.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.079, ptr %.sroa.3.0..sroa_idx7.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.speculated42, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx3.i, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.noexc8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !alias.scope !209
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !202

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc8 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i34.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.o) #27
  br label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !208
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !140
  br label %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit

_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit: ; preds = %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f
  %.promoted80 = phi ptr [ %i.ab, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.l, %bb.f ] ; 2 uses
  %5 = phi ptr [ %i.w, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.f, %bb.f ] ; 2 uses
  br i1 %i.i, label %.preheader, label %bb.d, !llvm.loop !203

bb.j:                                             ; preds = %.preheader, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30
  %.192 = phi i64 [ 0, %.preheader ], [ %.sroa.speculated, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30 ] ; 3 uses
  %i.ad = phi ptr [ %.promoted80122, %.preheader ], [ %i.ba, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30 ] ; 13 uses
  %i.ae = phi ptr [ %.promoted84, %.preheader ], [ %i.az, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30 ] ; 4 uses
  %i.af = phi ptr [ %4, %.preheader ], [ %i.ay, %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30 ] ; 10 uses
  %i.ag = add i64 %.192, %.sroa.speculated56      ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ag) ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.192, ptr %i.ad, align 8
  %.sroa.3.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.3.0..sroa_idx.i12, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %2, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i13, align 8
  br label %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30

bb.l:                                             ; preds = %bb.j
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775776
  br i1 %i.al, label %bb.m, label %_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i14

bb.m:                                             ; preds = %bb.l
  store ptr %i.ad, ptr %i.c, align 8
  store ptr %i.ae, ptr %i.d, align 8
  store ptr %i.af, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #25
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i14: ; preds = %bb.l
  %i.am = ashr exact i64 %i.ak, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i15, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 288230376151711743)
  %i.aq = select i1 %i.ao, i64 288230376151711743, i64 %i.ap ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.ar = shl nuw nsw i64 %i.aq, 5
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #26
          to label %.noexc29 unwind label %.loopexit71 ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 4 uses
  store i64 %.192, ptr %i.at, align 8
  %.sroa.3.0..sroa_idx7.i17 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.3.0..sroa_idx7.i17, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %2, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx3.i18 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx3.i18, align 8
  %.not10.i.i.i.i.i.i19 = icmp eq ptr %i.af, %i.ad
  br i1 %.not10.i.i.i.i.i.i19, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i24, label %.lr.ph.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i20:                             ; preds = %.noexc29, %.lr.ph.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i21 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i20 ], [ %i.as, %.noexc29 ] ; 2 uses
  %.0911.i.i.i.i.i.i22 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i20 ], [ %i.af, %.noexc29 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i22, i64 32, i1 false), !alias.scope !210
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i22, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i21, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i.i.i.i.i23, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i24, label %.lr.ph.i.i.i.i.i.i20, !llvm.loop !202

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i20, %.noexc29
  %.0.lcssa.i.i.i.i.i.i25 = phi ptr [ %i.as, %.noexc29 ], [ %i.aw, %.lr.ph.i.i.i.i.i.i20 ]
  %.not.i34.i.i.i26 = icmp eq ptr %i.af, null
  br i1 %.not.i34.i.i.i26, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #27
  br label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27: ; preds = %bb.n, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i.i24
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.aq
  br label %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30

_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30: ; preds = %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27, %bb.k
  %i.ay = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27 ], [ %i.af, %bb.k ] ; 2 uses
  %i.az = phi ptr [ %i.ax, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27 ], [ %i.ae, %bb.k ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i25.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i25, %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE17_M_realloc_insertIJRS1_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i27 ], [ %i.ad, %bb.k ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i25.pn, i64 32 ; 2 uses
  %i.bb = icmp ult i64 %i.ag, %2
  br i1 %i.bb, label %bb.j, label %.loopexit, !llvm.loop !207

.loopexit71:                                      ; preds = %_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.c, align 8
  store ptr %i.ae, ptr %i.d, align 8
  store ptr %i.af, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorISt4pairIS0_ImmES1_ESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.m
  %i.bc = phi ptr [ %i.e, %bb.h ], [ %i.ad, %bb.m ]
  %i.bd = phi ptr [ %i.f, %bb.h ], [ %i.af, %bb.m ]
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit71
  %i.be = phi ptr [ %i.ad, %.loopexit71 ], [ %i.e, %.loopexit.split-lp.loopexit ], [ %i.bc, %.loopexit.split-lp.loopexit.split-lp ]
  %i.bf = phi ptr [ %i.af, %.loopexit71 ], [ %i.f, %.loopexit.split-lp.loopexit ], [ %i.bd, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit71 ], [ %lpad.loopexit72, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit

_ZNSt6vectorISt4pairIS0_ImmES1_ESaIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.o
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %_ZZN7Reducer13generateSpansEmmENKUlSt4pairImmES1_E_clES1_S1_.exit30
  store ptr %i.ba, ptr %i.c, align 8
  store ptr %i.az, ptr %i.d, align 8
  store ptr %i.ay, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.b
  ret void
}

declare noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7Reducer27tryPromotingChildStatementsEPN4Luau12AstStatBlockEm(ptr noundef nonnull align 8 dereferenceable(428) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i:
  %3 = alloca %"class.std::vector.96", align 8    ; 16 uses
  %4 = alloca %"class.std::vector.96", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %i.d, 3                 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN4Luau7AstStatESaIS2_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !142
  br label %bb.c

_ZNSt12_Vector_baseIPN4Luau7AstStatESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN4Luau7AstStatESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #26 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !142
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.b, label %bb.a, !prof !211

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIPN4Luau7AstStatESaIS2_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIPN4Luau7AstStatESaIS2_EE11_M_allocateEm.exit.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !132
  store ptr %i.j, ptr %i.g, align 8, !tbaa !132
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.thread.i.i
  %i.k = phi ptr [ %i.g, %bb.a ], [ null, %.thread.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %.pre.i.i = phi ptr [ %i.h, %bb.a ], [ %i.e, %.thread.i.i ], [ %i.h, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %.pre.i.i, ptr %i.l, align 8, !tbaa !144
  %i.m = ptrtoint ptr %.pre.i.i to i64            ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.p
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.119, i64 noundef %2, i64 noundef %i.p) #25
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds [8 x i8], ptr %i.k, i64 %2 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
end_hunk_0
