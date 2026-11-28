Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gridset?download=true
inline.NumInlined: 463
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIN3gmx4GridESaIS1_EE17_M_realloc_insertIJRKNS0_12PairlistTypeERiRbRNS0_13PinningPolicyEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775584
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3gmx4GridESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN3gmx4GridESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 376                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 24530244778869084)
  %i.l = select i1 %i.j, i64 24530244778869084, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 376                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i32, ptr %2, align 4, !tbaa !19
  %i.s = load i32, ptr %3, align 4, !tbaa !16
  %i.t = load i32, ptr %5, align 4, !tbaa !21
  invoke void @_ZN3gmx4GridC1ENS_12PairlistTypeEiRKbNS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(372) %i.q, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN3gmx4GridEEE9constructIS1_JRKNS0_12PairlistTypeERiRbRNS0_13PinningPolicyEEEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN3gmx4GridEEE9constructIS1_JRKNS0_12PairlistTypeERiRbRNS0_13PinningPolicyEEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN3gmx4GridESaIS1_EE12_M_check_lenEmPKc.exit
  %i.u = tail call noundef ptr @_ZSt14__relocate_a_1IPN3gmx4GridES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 376
  %i.w = tail call noundef ptr @_ZSt14__relocate_a_1IPN3gmx4GridES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.v, ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN3gmx4GridESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsISaIN3gmx4GridEEE9constructIS1_JRKNS0_12PairlistTypeERiRbRNS0_13PinningPolicyEEEEvRS2_PT_DpOT0_.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseIN3gmx4GridESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3gmx4GridESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt16allocator_traitsISaIN3gmx4GridEEE9constructIS1_JRKNS0_12PairlistTypeERiRbRNS0_13PinningPolicyEEEEvRS2_PT_DpOT0_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !53
  store ptr %i.w, ptr %i.a, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [376 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !52
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN3gmx4GridESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #15 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ac

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN3gmx4GridC1ENS_12PairlistTypeEiRKbNS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx7GridSet17setLocalAtomOrderEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.e = load i8, ptr %i.d, align 1, !tbaa !46, !range !50, !noundef !51
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !16   ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 2)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  %i.y = mul nsw i32 %i.x, %i.v
  %i.z = sext i32 %i.y to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.z
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = sub nuw nsw i64 %i.z, %i.ah
  tail call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.ak)
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.al = icmp ugt i64 %i.ah, %i.z
  br i1 %i.al, label %bb.e, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !63
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.a, i32 %i.t)
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmx7GridSet17setLocalAtomOrderEv.omp_outlined, ptr nonnull %i.c, ptr nonnull %0)
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph29, %._crit_edge
  %i.an = phi i32 [ %i.j, %.lr.ph29 ], [ %i.ci, %._crit_edge ]
  %i.ao = phi i32 [ %i.i, %.lr.ph29 ], [ %i.cj, %._crit_edge ]
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %._crit_edge ] ; 3 uses
  %.02327 = phi i32 [ 0, %.lr.ph29 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv35
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16 ; 7 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.g
  %i.as = load i32, ptr %i.q, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv35
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = mul i32 %i.as, %i.au                    ; 2 uses
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !24  ; 8 uses
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !24  ; 8 uses
  %i.ay = sext i32 %i.av to i64                   ; 8 uses
  %i.az = sext i32 %.02327 to i64                 ; 8 uses
  %i.ba = zext nneg i32 %i.aq to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = ptrtoaddr ptr %i.ax to i64
  %i.bc = ptrtoaddr ptr %i.aw to i64
  %i.bd = shl nsw i64 %i.az, 2
  %i.be = shl nsw i64 %i.ay, 2
  %i.bf = add i64 %i.bd, %i.bb
  %i.bg = add i64 %i.be, %i.bc
  %i.bh = sub i64 %i.bg, %i.bf
  %diff.check = icmp ugt i64 %i.bh, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp ult i32 %i.aq, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.ba, 24
  %n.vec = and i64 %i.ba, 2147483616              ; 6 uses
  %i.bj = add nsw i64 %n.vec, %i.az               ; 3 uses
  %i.bk = add nsw i64 %n.vec, %i.ay               ; 2 uses
  %i.bl = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.02327, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %broadcast.splatinsert44 = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction46 = add <8 x i32> %broadcast.splat45, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [4 x i8], ptr %i.aw, i64 %i.ay
  %invariant.gep71 = getelementptr [4 x i8], ptr %i.ax, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.ind47 = phi <8 x i32> [ %induction46, %vector.ph ], [ %vec.ind.next51, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %step.add48 = add <8 x i32> %vec.ind47, splat (i32 8)
  %step.add.249 = add <8 x i32> %vec.ind47, splat (i32 16)
  %step.add.350 = add <8 x i32> %vec.ind47, splat (i32 24)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %vec.ind, ptr %gep, align 4, !tbaa !16
  store <8 x i32> %step.add, ptr %i.bm, align 4, !tbaa !16
  store <8 x i32> %step.add.2, ptr %i.bn, align 4, !tbaa !16
  store <8 x i32> %step.add.3, ptr %i.bo, align 4, !tbaa !16
  %gep72 = getelementptr [4 x i8], ptr %invariant.gep71, i64 %index ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %gep72, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %gep72, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %gep72, i64 96
  store <8 x i32> %vec.ind47, ptr %gep72, align 4, !tbaa !16
  store <8 x i32> %step.add48, ptr %i.bp, align 4, !tbaa !16
  store <8 x i32> %step.add.249, ptr %i.bq, align 4, !tbaa !16
  store <8 x i32> %step.add.350, ptr %i.br, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next51 = add <8 x i32> %vec.ind47, splat (i32 32)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bj, %vec.epilog.iter.check ], [ %i.az, %vector.main.loop.iter.check ]
  %bc.resume.val52 = phi i64 [ %i.bk, %vec.epilog.iter.check ], [ %i.ay, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ba, 2147483640            ; 5 uses
  %i.bt = add nsw i64 %n.vec53, %i.az             ; 2 uses
  %i.bu = add nsw i64 %n.vec53, %i.ay
  %i.bv = trunc nuw nsw i64 %n.vec53 to i32
  %i.bw = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert54 = insertelement <8 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat55 = shufflevector <8 x i32> %broadcast.splatinsert54, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction56 = add <8 x i32> %broadcast.splat55, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = trunc i64 %bc.resume.val52 to i32
  %broadcast.splatinsert57 = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat58 = shufflevector <8 x i32> %broadcast.splatinsert57, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction59 = add <8 x i32> %broadcast.splat58, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep73 = getelementptr [4 x i8], ptr %i.aw, i64 %i.ay
  %invariant.gep75 = getelementptr [4 x i8], ptr %i.ax, i64 %i.az
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind61 = phi <8 x i32> [ %induction56, %vec.epilog.ph ], [ %vec.ind.next64, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind62 = phi <8 x i32> [ %induction59, %vec.epilog.ph ], [ %vec.ind.next65, %vec.epilog.vector.body ] ; 2 uses
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep73, i64 %index60
  store <8 x i32> %vec.ind61, ptr %gep74, align 4, !tbaa !16
  %gep76 = getelementptr [4 x i8], ptr %invariant.gep75, i64 %index60
  store <8 x i32> %vec.ind62, ptr %gep76, align 4, !tbaa !16
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %vec.ind.next64 = add <8 x i32> %vec.ind61, splat (i32 8)
  %vec.ind.next65 = add <8 x i32> %vec.ind62, splat (i32 8)
  %i.by = icmp eq i64 %index.next63, %n.vec53
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %n.vec53, %i.ba
  br i1 %cmp.n66, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.ph = phi i64 [ %i.az, %iter.check ], [ %i.az, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ] ; 2 uses
  %.026.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ] ; 4 uses
  %i.bz = sub i32 %i.aq, %.026.ph
  %xtraiter = and i32 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv30.prol = phi i64 [ %indvars.iv.next31.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv30.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.026.prol = phi i32 [ %i.ce, %vec.epilog.scalar.ph.prol ], [ %.026.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.prol
  %i.cb = trunc nsw i64 %indvars.iv30.prol to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !16
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv30.prol
  %i.cd = trunc nsw i64 %indvars.iv.prol to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !16
  %indvars.iv.next31.prol = add nsw i64 %indvars.iv30.prol, 1 ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ce = add nuw nsw i32 %.026.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !136

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next31.lcssa70.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next31.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv30.unr = phi i64 [ %indvars.iv30.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next31.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.026.unr = phi i32 [ %.026.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ce, %vec.epilog.scalar.ph.prol ]
  %i.cf = sub i32 %.026.ph, %i.aq
  %i.cg = icmp ugt i32 %i.cf, -4
  br i1 %i.cg, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next31.lcssa = phi i64 [ %i.bt, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %indvars.iv.next31.lcssa70.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next31.3, %vec.epilog.scalar.ph ]
  %i.ch = trunc nsw i64 %indvars.iv.next31.lcssa to i32
  %.pre = load i32, ptr %i.g, align 8, !tbaa !16
  %.pre38 = load i32, ptr %i.h, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.ci = phi i32 [ %i.an, %bb.g ], [ %.pre38, %._crit_edge.loopexit ] ; 2 uses
  %i.cj = phi i32 [ %i.ao, %bb.g ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02327, %bb.g ], [ %i.ch, %._crit_edge.loopexit ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ck = mul nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next36, %i.cl
  br i1 %i.cm, label %bb.g, label %.loopexit, !llvm.loop !137

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.3, %vec.epilog.scalar.ph ], [ %indvars.iv30.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.026 = phi i32 [ %i.dd, %vec.epilog.scalar.ph ], [ %.026.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.co = trunc nsw i64 %indvars.iv30 to i32
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv30
  %i.cq = trunc nsw i64 %indvars.iv to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !16
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.cs = trunc nsw i64 %indvars.iv.next31 to i32
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next31
  %i.cu = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !16
  %indvars.iv.next31.1 = add nsw i64 %indvars.iv30, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.1
  %i.cw = trunc nsw i64 %indvars.iv.next31.1 to i32
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !16
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next31.1
  %i.cy = trunc nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !16
  %indvars.iv.next31.2 = add nsw i64 %indvars.iv30, 3 ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  %i.da = trunc nsw i64 %indvars.iv.next31.2 to i32
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !16
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next31.2
  %i.dc = trunc nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !16
  %indvars.iv.next31.3 = add nsw i64 %indvars.iv30, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %i.dd = add nuw nsw i32 %.026, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dd, %i.aq
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !138

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit
  ret void
}

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx7GridSet17setLocalAtomOrderEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %2, ptr nofree noundef readonly captures(none) %3) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !101
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.k, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.l = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !16
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !16
  %i.o = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not17 = icmp sgt i32 %i.o, %i.n
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.v = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.v, ptr %i.u, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.x = load i32, ptr %i.b, align 4, !tbaa !16
  %i.y = sext i32 %i.x to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.y
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare !callback !103 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
