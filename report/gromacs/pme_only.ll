Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_only?download=true
inline.NumInlined: 1260
inline.NumDeleted: 722
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10gmx_pme_ppC2EP10tmpi_comm_OSt6vectorI7PpRanksSaIS3_EE:bb.a
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit25

_ZNSt6vectorIfSaIfEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit23, %bb.s
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !85  ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIfSaIfEED2Ev.exit27, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit25
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit27

_ZNSt6vectorIfSaIfEED2Ev.exit27:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit25, %bb.t
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !87  ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i28, label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit27
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull %i.dc) #14
  br label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit

_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEED2Ev.exit27, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.j ], [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit27 ], [ %.pn.pn, %bb.u ] ; 2 uses
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !87  ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i29, label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit30, label %bb.v

bb.v:                                             ; preds = %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull %i.dd) #14
  br label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit30

_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit30: ; preds = %bb.v, %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %.pn.pn.pn, %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit ], [ %.pn.pn.pn, %bb.v ]
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit30
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #21
  br label %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit

_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit:           ; preds = %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit30, %bb.w
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_ZN3gmx20HostAllocationPolicyC2ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5), i32 noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z11gmx_pmeonlyPP9gmx_pme_tRK12gmx_domdec_tP6t_nrnbP13gmx_wallcycleP23gmx_walltime_accountingP10t_inputrec10PmeRunModebbbPKN3gmx19DeviceStreamManagerE(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIP9gmx_pme_tSaIS1_EE12_M_check_lenEmPKc.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %struct.gmx_pme_comm_vir_ene_t, align 4 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %12 = alloca %struct.gmx_pme_comm_n_box_t, align 8 ; 16 uses
  %13 = alloca %"class.std::optional", align 4    ; 6 uses
  %14 = alloca %"class.std::vector.97", align 8   ; 10 uses
  %i.g = alloca [3 x [3 x float]], align 16       ; 6 uses
  %15 = alloca %"class.std::unique_ptr.44", align 8 ; 10 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"class.std::unique_ptr.157", align 8 ; 9 uses
  %18 = alloca %"class.std::unique_ptr.144", align 8 ; 8 uses
  %19 = alloca %"class.gmx::StepWorkload", align 1 ; 9 uses
  %i.h = alloca [3 x i32], align 8                ; 9 uses
  %20 = alloca %struct.PmeOutput, align 8         ; 16 uses
  %21 = alloca %struct.PmeOutput, align 8         ; 5 uses
  %22 = alloca %"class.gmx::ArrayRef.292", align 8 ; 3 uses
  %23 = alloca %"class.gmx::ArrayRef.292", align 8 ; 3 uses
  %24 = alloca %"class.gmx::ArrayRef.292", align 8 ; 3 uses
  %25 = alloca %"class.gmx::ArrayRef.292", align 8 ; 3 uses
  %26 = alloca %"class.gmx::ArrayRef.292", align 8 ; 3 uses
  %27 = alloca %"class.gmx::ArrayRef.292", align 8 ; 3 uses
  %i.i = zext i1 %7 to i8
  %i.j = zext i1 %8 to i8
  %i.k = zext i1 %9 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.l = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 10 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12gmx_domdec_t12mpiCommMySimEv(ptr noundef nonnull align 8 dereferenceable(1097) %1)
          to label %bb.a unwind label %bb.ah

bb.a:                                             ; preds = %_ZNKSt6vectorIP9gmx_pme_tSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !alias.scope !201
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14, !noalias !201
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !202, !noalias !201
  invoke void @_Z15get_pme_ddranksRK12gmx_domdec_ti(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.97") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1097) %1, i32 noundef %i.r)
          to label %.noexc87 unwind label %bb.ai

.noexc87:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !204, !noalias !201 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre35.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !204, !noalias !201 ; 2 uses
  %.not31.i = icmp eq ptr %.pre.i, %.pre35.i
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i
  %.pre36.i = load ptr, ptr %14, align 8, !tbaa !206, !noalias !201
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc87
  %i.u = phi ptr [ %.pre36.i, %._crit_edge.loopexit.i ], [ %.pre.i, %.noexc87 ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !207, !noalias !201
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #21, !noalias !201
  br label %bb.i

.lr.ph.i:                                         ; preds = %.noexc87, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i
  %i.aa = phi ptr [ %i.bt, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ null, %.noexc87 ] ; 12 uses
  %i.ab = phi ptr [ %i.bu, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ null, %.noexc87 ] ; 5 uses
  %i.ac = phi ptr [ %i.bv, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ null, %.noexc87 ] ; 3 uses
  %.sroa.028.032.i = phi ptr [ %i.bw, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ %.pre.i, %.noexc87 ] ; 2 uses
  %i.ad = load i32, ptr %.sroa.028.032.i, align 4, !tbaa !79, !noalias !201 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.sroa.0.0.insert.ext.i = zext i32 %i.ad to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.ac, align 4, !tbaa !79, !noalias !201
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !73, !alias.scope !201
  br label %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.e, label %_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !201

.noexc13.i:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i12.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i.i12.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit, !noalias !201 ; 11 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %.sroa.0.0.insert.ext19.i = zext i32 %i.ad to i64
  store i64 %.sroa.0.0.insert.ext19.i, ptr %i.aq, align 4, !tbaa !79, !noalias !201
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc14.i
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.af, -8
  %i.at = sub i64 %i.as, %i.ag                    ; 3 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  %i.aw = sub i64 %i.ag, %i.ar
  %diff.check = icmp ugt i64 %i.aw, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3376 = icmp ult i64 %i.at, 120
  br i1 %min.iters.check3376, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.av, 12
  %n.vec = and i64 %i.av, 4611686018427387888     ; 4 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aa, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bb ; 4 uses
  %next.gep3377 = getelementptr i8, ptr %i.aa, i64 %i.bb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.bc = getelementptr i8, ptr %next.gep3377, i64 32
  %i.bd = getelementptr i8, ptr %next.gep3377, i64 64
  %i.be = getelementptr i8, ptr %next.gep3377, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep3377, align 4, !tbaa !79, !alias.scope !209, !noalias !201
  %wide.load3378 = load <4 x i64>, ptr %i.bc, align 4, !tbaa !79, !alias.scope !209, !noalias !201
  %wide.load3379 = load <4 x i64>, ptr %i.bd, align 4, !tbaa !79, !alias.scope !209, !noalias !201
  %wide.load3380 = load <4 x i64>, ptr %i.be, align 4, !tbaa !79, !alias.scope !209, !noalias !201
  %i.bf = getelementptr i8, ptr %next.gep, i64 32
  %i.bg = getelementptr i8, ptr %next.gep, i64 64
  %i.bh = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !79, !alias.scope !208, !noalias !201
  store <4 x i64> %wide.load3378, ptr %i.bf, align 4, !tbaa !79, !alias.scope !208, !noalias !201
  store <4 x i64> %wide.load3379, ptr %i.bg, align 4, !tbaa !79, !alias.scope !208, !noalias !201
  store <4 x i64> %wide.load3380, ptr %i.bh, align 4, !tbaa !79, !alias.scope !208, !noalias !201
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !210

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3381 = and i64 %i.av, 4611686018427387900 ; 3 uses
  %i.bj = shl i64 %n.vec3381, 3                   ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ap, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.aa, i64 %i.bj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3382 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3386, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = shl i64 %index3382, 3                   ; 2 uses
  %next.gep3383 = getelementptr i8, ptr %i.ap, i64 %i.bm
  %next.gep3384 = getelementptr i8, ptr %i.aa, i64 %i.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %wide.load3385 = load <4 x i64>, ptr %next.gep3384, align 4, !tbaa !79, !alias.scope !209, !noalias !201
  store <4 x i64> %wide.load3385, ptr %next.gep3383, align 4, !tbaa !79, !alias.scope !208, !noalias !201
  %index.next3386 = add nuw i64 %index3382, 4     ; 2 uses
  %i.bn = icmp eq i64 %index.next3386, %n.vec3381
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3387 = icmp eq i64 %i.av, %n.vec3381
  br i1 %cmp.n3387, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !tbaa !79, !alias.scope !209, !noalias !201
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 4, !tbaa !79, !alias.scope !208, !noalias !201
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !138

_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc14.i ], [ %i.bk, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ah) #21, !noalias !201
  br label %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i
  store ptr %i.ap, ptr %16, align 8, !tbaa !74, !alias.scope !201
  store ptr %i.br, ptr %i.s, align 8, !tbaa !73, !alias.scope !201
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an ; 2 uses
  store ptr %i.bs, ptr %i.t, align 8, !tbaa !69, !alias.scope !201
  br label %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i

_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i: ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.c
  %i.bt = phi ptr [ %i.ap, %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.aa, %bb.c ]
  %i.bu = phi ptr [ %i.bs, %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.ab, %bb.c ]
  %i.bv = phi ptr [ %i.br, %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.ae, %bb.c ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.028.032.i, i64 4 ; 2 uses
  %.not.i86 = icmp eq ptr %i.bw, %.pre35.i
  br i1 %.not.i86, label %._crit_edge.loopexit.i, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit3922 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e
  %lpad.loopexit.split-lp3923 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit
  %28 = phi i64 [ %i.ah, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ 9223372036854775800, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi3924 = phi { ptr, i32 } [ %lpad.loopexit3922, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp3923, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bx = load ptr, ptr %14, align 8, !tbaa !206, !noalias !201 ; 3 uses
  %.not.i.i.i15.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i15.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit16.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !207, !noalias !201
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #21, !noalias !201
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit16.i

_ZNSt6vectorIiSaIiEED2Ev.exit16.i:                ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !201
  %.not.i.i.i17.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i17.i, label %.body, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit16.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %28) #21, !noalias !201
  br label %.body

bb.i:                                             ; preds = %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !201
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.cd = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #20
          to label %.noexc88 unwind label %bb.aj  ; 18 uses

.noexc88:                                         ; preds = %bb.i
  invoke void @_ZN10gmx_pme_ppC1EP10tmpi_comm_OSt6vectorI7PpRanksSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(341) %i.cd, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.k unwind label %bb.j, !noalias !211

bb.j:                                             ; preds = %.noexc88
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 344) #21, !noalias !211
  br label %.body89

bb.k:                                             ; preds = %.noexc88
  store ptr %i.cd, ptr %15, align 8, !tbaa !91, !alias.scope !211
  %i.cf = load ptr, ptr %16, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit

_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit:           ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 336 ; 2 uses
  store i8 %i.i, ptr %i.ck, align 8, !tbaa !212
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 339 ; 2 uses
  store i8 %i.j, ptr %i.cl, align 1, !tbaa !213
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 340 ; 2 uses
  store i8 %i.k, ptr %i.cm, align 4, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  store ptr null, ptr %17, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  store ptr null, ptr %18, align 8, !tbaa !218
  %i.cn = and i32 %6, -2
  %i.co = icmp eq i32 %i.cn, 2                    ; 5 uses
  br i1 %i.co, label %bb.m, label %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %.invoke, label %bb.n

.invoke:                                          ; preds = %bb.o, %bb.m
  %i.cp = phi ptr [ @.str.3, %bb.m ], [ @.str.6, %bb.o ]
  %i.cq = phi ptr [ @.str.4, %bb.m ], [ @.str.7, %bb.o ]
  %i.cr = phi i32 [ 730, %bb.m ], [ 732, %bb.o ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_pmeonlyPP9gmx_pme_tRK12gmx_domdec_tP6t_nrnbP13gmx_wallcycleP23gmx_walltime_accountingP10t_inputrec10PmeRunModebbbPKN3gmx19DeviceStreamManagerEENK3$_0clEv", ptr noundef nonnull @.str.5, i32 noundef %i.cr) #19
          to label %.cont unwind label %bb.ap

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cs = invoke noundef zeroext i1 @_ZNK3gmx19DeviceStreamManager13streamIsValidENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2)
          to label %bb.o unwind label %bb.ap

bb.o:                                             ; preds = %bb.n
  br i1 %i.cs, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %i.ct = invoke noundef i32 @_Z22pme_get_pinning_policyv()
          to label %bb.q unwind label %bb.ap

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  invoke void @_ZN3gmx19changePinningPolicyINS_12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEEEEEvPT_NS_13PinningPolicyE(ptr noundef nonnull %i.cu, i32 noundef %i.ct)
          to label %bb.r unwind label %bb.ap

bb.r:                                             ; preds = %bb.q
  %i.cv = invoke noundef i32 @_Z22pme_get_pinning_policyv()
          to label %bb.s unwind label %bb.ap

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  invoke void @_ZN3gmx19changePinningPolicyINS_12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEEEEEvPT_NS_13PinningPolicyE(ptr noundef nonnull %i.cw, i32 noundef %i.cv)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  %i.cx = invoke noundef i32 @_Z22pme_get_pinning_policyv()
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 216
  invoke void @_ZN3gmx19changePinningPolicyISt6vectorINS_11BasicVectorIfEENS_9AllocatorIS3_NS_20HostAllocationPolicyEEEEEEvPT_NS_13PinningPolicyE(ptr noundef nonnull %i.cy, i32 noundef %i.cx)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.cz = load i8, ptr %i.ck, align 8, !tbaa !212, !range !94, !noundef !95
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.db = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.x unwind label %bb.ap

bb.x:                                             ; preds = %bb.w
  %i.dc = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %.noexc94 unwind label %bb.ap  ; 3 uses

.noexc94:                                         ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.cd, align 8, !tbaa !219, !noalias !220
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !74, !noalias !220 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !73, !noalias !220
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk
  invoke void @_ZN3gmx24PmeCoordinateReceiverGpuC1EP10tmpi_comm_RK13DeviceContextNS_8ArrayRefI7PpRanksEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.de, ptr noundef nonnull align 1 %i.db, ptr %i.df, ptr %i.dl)
          to label %_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.y, !noalias !220

bb.y:                                             ; preds = %.noexc94
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 8) #21, !noalias !220
  br label %bb.gn

_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc94
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 320 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !96 ; 3 uses
  store ptr %i.dc, ptr %i.dn, align 8, !tbaa !96
  %.not.i.i.i.i97 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i97, label %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx24PmeCoordinateReceiverGpuEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx24PmeCoordinateReceiverGpuEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN3gmx24PmeCoordinateReceiverGpuD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.do) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 8) #21
  br label %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx24PmeCoordinateReceiverGpuEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.dp = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.ap

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit
  %i.dq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %.noexc99 unwind label %bb.ap  ; 3 uses

.noexc99:                                         ; preds = %bb.z
  %i.dr = load ptr, ptr %i.cd, align 8, !tbaa !219, !noalias !221
  %i.ds = load ptr, ptr %i.dd, align 8, !tbaa !74, !noalias !221 ; 3 uses
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !73, !noalias !221
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dw
  invoke void @_ZN3gmx17PmeForceSenderGpuC1EP20GpuEventSynchronizerP10tmpi_comm_RK13DeviceContextNS_8ArrayRefI7PpRanksEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef null, ptr noundef %i.dr, ptr noundef nonnull align 1 %i.dp, ptr %i.ds, ptr %i.dx)
          to label %_ZSt11make_uniqueIN3gmx17PmeForceSenderGpuEJP20GpuEventSynchronizerRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaISB_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.aa, !noalias !221

bb.aa:                                            ; preds = %.noexc99
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 8) #21, !noalias !221
  br label %bb.gn

_ZSt11make_uniqueIN3gmx17PmeForceSenderGpuEJP20GpuEventSynchronizerRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaISB_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc99
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cd, i64 328 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97 ; 3 uses
  store ptr %i.dq, ptr %i.dz, align 8, !tbaa !97
  %.not.i.i.i.i102 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10unique_ptrIN3gmx17PmeForceSenderGpuESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17PmeForceSenderGpuEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx17PmeForceSenderGpuEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx17PmeForceSenderGpuEJP20GpuEventSynchronizerRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaISB_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN3gmx17PmeForceSenderGpuD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 8) #21
  br label %_ZNSt10unique_ptrIN3gmx17PmeForceSenderGpuESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17PmeForceSenderGpuESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17PmeForceSenderGpuEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx17PmeForceSenderGpuEJP20GpuEventSynchronizerRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaISB_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.eb = load i8, ptr %i.cl, align 1, !tbaa !213, !range !94, !noundef !95
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17PmeForceSenderGpuESt14default_deleteIS1_EED2Ev.exit
  %i.ed = load i8, ptr %i.cm, align 4, !tbaa !214, !range !94, !noundef !95
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ac, label %_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ef = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  %i.eg = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager6streamENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2)
          to label %bb.ae unwind label %bb.ap

bb.ae:                                            ; preds = %bb.ad
  %i.eh = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #20
          to label %.noexc105 unwind label %bb.ap ; 3 uses

.noexc105:                                        ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14, !noalias !222
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !79, !noalias !222
  store i32 %i.ej, ptr %13, align 4, !tbaa !98, !noalias !222
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i8 1, ptr %i.ek, align 4, !tbaa !224, !noalias !222
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !219, !noalias !222 ; 2 uses
  invoke void @_ZN3gmx28GpuHaloExchangeNvshmemHelperC1ERK12gmx_domdec_tRK13DeviceContextRK12DeviceStreamRKSt8optionalIiEP13gmx_wallcycleP10tmpi_comm_SH_(ptr noundef nonnull align 8 dereferenceable(184) %i.eh, ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 1 %i.ef, ptr noundef nonnull align 1 %i.eg, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef %3, ptr noundef %i.el, ptr noundef %i.el)
          to label %bb.ag unwind label %bb.af, !noalias !222

bb.af:                                            ; preds = %.noexc105
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14, !noalias !222
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 184) #21, !noalias !222
  br label %bb.gn

bb.ag:                                            ; preds = %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14, !noalias !222
  store ptr %i.eh, ptr %18, align 8, !tbaa !99
  br label %_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit

bb.ah:                                            ; preds = %_ZNKSt6vectorIP9gmx_pme_tSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP9gmx_pme_tSaIS1_EED2Ev.exit197

bb.ai:                                            ; preds = %bb.a
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.body89:                                          ; preds = %bb.j, %bb.aj
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.ep, %bb.aj ], [ %i.ce, %bb.j ] ; 2 uses
  %i.eq = load ptr, ptr %16, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i110, label %.body, label %bb.ak

bb.ak:                                            ; preds = %.body89
  %i.er = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #21
  br label %.body

.body:                                            ; preds = %bb.ak, %.body89, %bb.ai, %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit16.i
  %.pn = phi { ptr, i32 } [ %lpad.phi3924, %_ZNSt6vectorIiSaIiEED2Ev.exit16.i ], [ %i.eo, %bb.ai ], [ %lpad.phi3924, %bb.h ], [ %eh.lpad-body90, %.body89 ], [ %eh.lpad-body90, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %_ZNSt6vectorIP9gmx_pme_tSaIS1_EED2Ev.exit197

_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ag, %bb.ab
  %i.ev = load ptr, ptr %i.dd, align 8, !tbaa !74 ; 3 uses
  %i.ew = load ptr, ptr %i.dg, align 8, !tbaa !73
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !291
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 392
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !293 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ev, ptr %i.ff, align 8
  %.sroa.4322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fa, ptr %.sroa.4322.0..sroa_idx, align 8
  %i.fg = load ptr, ptr %i.cd, align 8, !tbaa !67
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !291
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 392
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !293
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  store ptr %i.fg, ptr %i.fk, align 8, !tbaa !303
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN3gmx17PmeForceSenderGpuESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN3gmx28GpuHaloExchangeNvshmemHelperESt14default_deleteIS1_EED2Ev.exit, %bb.v
  %i.fl = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager6streamENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.fm = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %.noexc112 unwind label %bb.ap ; 3 uses

.noexc112:                                        ; preds = %bb.an
  invoke void @_ZN3gmx22StatePropagatorDataGpuC1EPK12DeviceStreamRK13DeviceContext18GpuApiCallBehavioribP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull %i.fl, ptr noundef nonnull align 1 %i.fm, i32 noundef 1, i32 noundef 0, i1 noundef zeroext %8, ptr noundef %3)
          to label %_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJPK12DeviceStreamRK13DeviceContext18GpuApiCallBehavioriRbRP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ao, !noalias !304

bb.ao:                                            ; preds = %.noexc112
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 8) #21, !noalias !304
  br label %bb.gn

_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJPK12DeviceStreamRK13DeviceContext18GpuApiCallBehavioriRbRP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc112
  store ptr %i.fn, ptr %17, align 8, !tbaa !101
  br label %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit

bb.ap:                                            ; preds = %.invoke, %bb.al, %bb.am, %bb.ac, %bb.ad, %bb.ae, %bb.w, %bb.x, %bb.n, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit, %bb.z, %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit, %bb.an
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN3gmx22StatePropagatorDataGpuEJPK12DeviceStreamRK13DeviceContext18GpuApiCallBehavioriRbRP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit
  invoke void @_Z10clear_nrnbP6t_nrnb(ptr noundef %2)
          to label %bb.aq unwind label %bb.ap

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %19, i8 0, i64 19, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %19, i64 5
  store i8 1, ptr %i.fq, align 1, !tbaa !306
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 13 uses
  %i.fs = load ptr, ptr @TMPI_BYTE, align 8, !tbaa !308 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.fx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 84
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.gb = icmp eq ptr %3, null                    ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 2624 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 2584 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 2592 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 2608 ; 10 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 2612 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 2616 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 3 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.gr = select i1 %i.co, i32 19, i32 18         ; 3 uses
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.gs ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.hd = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 68 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %20, i64 60 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %20, i64 100
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 92
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.gj, %bb.aq
  %.sroa.24.0 = phi ptr [ %i.n, %bb.aq ], [ %.sroa.24.3450469490, %bb.gj ]
  %.sroa.14.0 = phi ptr [ %i.n, %bb.aq ], [ %.sroa.14.2452468491, %bb.gj ]
  %.sroa.0333.0 = phi ptr [ %i.m, %bb.aq ], [ %.sroa.0333.3453467493, %bb.gj ]
  %.0382 = phi i32 [ 0, %bb.aq ], [ %.6388430449470488, %bb.gj ]
  %.0379 = phi i32 [ 0, %bb.aq ], [ %.6431448471487, %bb.gj ]
  %.0376 = phi float [ 0.000000e+00, %bb.aq ], [ %.2378432447472486, %bb.gj ]
  %.0373 = phi float [ 0.000000e+00, %bb.aq ], [ %.2375433446473485, %bb.gj ]
  %.058 = phi ptr [ %i.l, %bb.aq ], [ %.2455466494, %bb.gj ]
  %.057 = phi i1 [ false, %bb.aq ], [ true, %bb.gj ]
  br label %bb.as

bb.as:                                            ; preds = %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit, %bb.ar
  %.sroa.24.1 = phi ptr [ %.sroa.24.0, %bb.ar ], [ %.sroa.24.3, %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit ] ; 11 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0, %bb.ar ], [ %.sroa.14.2, %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit ] ; 9 uses
  %.sroa.0333.1 = phi ptr [ %.sroa.0333.0, %bb.ar ], [ %.sroa.0333.3, %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit ] ; 14 uses
  %.1383 = phi i32 [ %.0382, %bb.ar ], [ %.5387, %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit ]
  %.1380 = phi i32 [ %.0379, %bb.ar ], [ %.5, %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit ]
  %.159 = phi ptr [ %.058, %bb.ar ], [ %.2, %_ZL22reset_pmeonly_countersP13gmx_wallcycleP23gmx_walltime_accountingP6t_nrnblb.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.hp = load ptr, ptr %15, align 8, !tbaa !91   ; 46 uses
  %i.hq = load ptr, ptr %17, align 8, !tbaa !101  ; 3 uses
  %i.hr = load ptr, ptr %18, align 8, !tbaa !99
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 336 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 337
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 338
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 272 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 296 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 40 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 48 ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 56 ; 7 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 72 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 80 ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hp, i64 88 ; 8 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hp, i64 96 ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 112 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 120 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 128 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hp, i64 144 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 152 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hp, i64 168 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 176 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hp, i64 192 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 200 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hp, i64 224 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hp, i64 232 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hp, i64 216 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hp, i64 248 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hp, i64 64 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hp, i64 104 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hp, i64 136 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hp, i64 160 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hp, i64 184 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hp, i64 208 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hp, i64 240 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hp, i64 256 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hp, i64 264 ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %.noexc151, %bb.as
  %.2384 = phi i32 [ %.1383, %bb.as ], [ %.5387, %.noexc151 ] ; 3 uses
  %.2381 = phi i32 [ %.1380, %bb.as ], [ %.5, %.noexc151 ] ; 3 uses
  %.0146.i = phi i1 [ false, %bb.as ], [ %.1147365.i, %.noexc151 ] ; 2 uses
  %.0141.i = phi i32 [ 0, %bb.as ], [ %.6367.i, %.noexc151 ] ; 2 uses
  %i.jd = phi <2 x float> [ zeroinitializer, %bb.as ], [ %i.km, %.noexc151 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store i32 0, ptr %i.fr, align 8, !tbaa !310
  %i.je = load i32, ptr %i.hs, align 8, !tbaa !72
  %i.jf = load ptr, ptr %i.hp, align 8, !tbaa !67
  %i.jg = invoke noundef i32 @_Z9tMPI_RecvPviP14tmpi_datatype_iiP10tmpi_comm_P12tmpi_status_(ptr noundef nonnull %12, i32 noundef 96, ptr noundef %i.fs, i32 noundef %i.je, i32 noundef 18, ptr noundef %i.jf, ptr noundef null)
          to label %.noexc124 unwind label %.loopexit.split-lp512.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc124:                                        ; preds = %bb.at
  %i.jh = load i64, ptr %i.ft, align 8, !tbaa !311
  %i.ji = load ptr, ptr @debug, align 8, !tbaa !313 ; 2 uses
  %.not.i117 = icmp eq ptr %i.ji, null
  br i1 %.not.i117, label %bb.av, label %bb.au
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm:bb.a

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ax = load float, ptr %.0911.i.i.i, align 4, !tbaa !103, !alias.scope !390
  store float %i.ax, ptr %.012.i.i.i, align 4, !tbaa !103, !alias.scope !389
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ay, %i.c
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !388

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.d, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.d) #14
  br label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, %bb.f
  store ptr %i.v, ptr %i.a, align 8, !tbaa !87
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %1
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !106
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !107
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS4_EEmRKf(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 22 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not65 = icmp ult i64 %i.i, %2
  br i1 %.not65, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load float, ptr %3, align 4, !tbaa !103  ; 9 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.g, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp ugt i64 %i.m, %2
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -4                          ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %.neg ; 6 uses
  %.not13.i.i = icmp eq i64 %.neg, 0
  br i1 %.not13.i.i, label %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %iter.check225

iter.check225:                                    ; preds = %bb.d
  %i.p = add i64 %2, 4611686018427387903
  %i.q = and i64 %i.p, 4611686018427387903        ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 5 uses
  %min.iters.check209 = icmp samesign ult i64 %i.q, 7
  br i1 %min.iters.check209, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check210

vector.main.loop.iter.check210:                   ; preds = %iter.check225
  %min.iters.check211 = icmp samesign ult i64 %i.q, 31
  br i1 %min.iters.check211, label %vec.epilog.ph229, label %vector.ph212

vector.ph212:                                     ; preds = %vector.main.loop.iter.check210
  %i.s = and i64 %i.r, 24
  %n.vec213 = and i64 %i.r, 9223372036854775776   ; 4 uses
  %i.t = shl i64 %n.vec213, 2                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 %i.t
  %i.v = getelementptr i8, ptr %i.o, i64 %i.t
  br label %vector.body214

vector.body214:                                   ; preds = %vector.ph212, %vector.body214
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next222, %vector.body214 ] ; 2 uses
  %i.w = shl i64 %index215, 2                     ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.e, i64 %i.w ; 4 uses
  %next.gep217 = getelementptr i8, ptr %i.o, i64 %i.w ; 4 uses
  %i.x = getelementptr i8, ptr %next.gep217, i64 32
  %i.y = getelementptr i8, ptr %next.gep217, i64 64
  %i.z = getelementptr i8, ptr %next.gep217, i64 96
  %wide.load218 = load <8 x float>, ptr %next.gep217, align 4, !tbaa !103
  %wide.load219 = load <8 x float>, ptr %i.x, align 4, !tbaa !103
  %wide.load220 = load <8 x float>, ptr %i.y, align 4, !tbaa !103
  %wide.load221 = load <8 x float>, ptr %i.z, align 4, !tbaa !103
  %i.aa = getelementptr i8, ptr %next.gep216, i64 32
  %i.ab = getelementptr i8, ptr %next.gep216, i64 64
  %i.ac = getelementptr i8, ptr %next.gep216, i64 96
  store <8 x float> %wide.load218, ptr %next.gep216, align 4, !tbaa !103
  store <8 x float> %wide.load219, ptr %i.aa, align 4, !tbaa !103
  store <8 x float> %wide.load220, ptr %i.ab, align 4, !tbaa !103
  store <8 x float> %wide.load221, ptr %i.ac, align 4, !tbaa !103
  %index.next222 = add nuw i64 %index215, 32      ; 2 uses
  %i.ad = icmp eq i64 %index.next222, %n.vec213
  br i1 %i.ad, label %middle.block223, label %vector.body214, !llvm.loop !391

middle.block223:                                  ; preds = %vector.body214
  %cmp.n224 = icmp eq i64 %i.r, %n.vec213
  br i1 %cmp.n224, label %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %vec.epilog.iter.check226

vec.epilog.iter.check226:                         ; preds = %middle.block223
  %min.epilog.iters.check228 = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check228, label %.lr.ph.i.i.preheader, label %vec.epilog.ph229, !prof !105

vec.epilog.ph229:                                 ; preds = %vector.main.loop.iter.check210, %vec.epilog.iter.check226
  %vec.epilog.resume.val230 = phi i64 [ %n.vec213, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check210 ]
  %n.vec231 = and i64 %i.r, 9223372036854775800   ; 3 uses
  %i.ae = shl i64 %n.vec231, 2                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.ae
  br label %vec.epilog.vector.body232

vec.epilog.vector.body232:                        ; preds = %vec.epilog.vector.body232, %vec.epilog.ph229
  %index233 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph229 ], [ %index.next237, %vec.epilog.vector.body232 ] ; 2 uses
  %i.ah = shl i64 %index233, 2                    ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.e, i64 %i.ah
  %next.gep235 = getelementptr i8, ptr %i.o, i64 %i.ah
  %wide.load236 = load <8 x float>, ptr %next.gep235, align 4, !tbaa !103
  store <8 x float> %wide.load236, ptr %next.gep234, align 4, !tbaa !103
  %index.next237 = add nuw i64 %index233, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.ai, label %vec.epilog.middle.block238, label %vec.epilog.vector.body232, !llvm.loop !392

vec.epilog.middle.block238:                       ; preds = %vec.epilog.vector.body232
  %cmp.n239 = icmp eq i64 %i.r, %n.vec231
  br i1 %cmp.n239, label %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check225, %vec.epilog.iter.check226, %vec.epilog.middle.block238
  %.015.i.i.ph = phi ptr [ %i.e, %iter.check225 ], [ %i.u, %vec.epilog.iter.check226 ], [ %i.af, %vec.epilog.middle.block238 ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.o, %iter.check225 ], [ %i.v, %vec.epilog.iter.check226 ], [ %i.ag, %vec.epilog.middle.block238 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aj = load float, ptr %.sroa.010.014.i.i, align 4, !tbaa !103
  store float %i.aj, ptr %.015.i.i, align 4, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i, label %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !393

_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block223, %vec.epilog.middle.block238, %bb.d
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2
  store ptr %i.am, ptr %i.d, align 8, !tbaa !106
  %i.an = ptrtoint ptr %i.o to i64
  %i.ao = sub i64 %i.an, %i.k                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.e, label %bb.f, !prof !119

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %1, i64 %i.ao, i1 false)
  br label %iter.check255

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit
  %i.at = icmp eq i64 %i.ao, 4
  br i1 %i.at, label %bb.g, label %iter.check255

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.av = load float, ptr %1, align 4, !tbaa !103
  store float %i.av, ptr %i.au, align 4, !tbaa !103
  br label %iter.check255

iter.check255:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ax = add nsw i64 %.idx, -4                   ; 3 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 5 uses
  %min.iters.check242 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check242, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check243

vector.main.loop.iter.check243:                   ; preds = %iter.check255
  %min.iters.check244 = icmp ult i64 %i.ax, 124
  br i1 %min.iters.check244, label %vec.epilog.ph259, label %vector.ph245

vector.ph245:                                     ; preds = %vector.main.loop.iter.check243
  %i.ba = and i64 %i.az, 24
  %n.vec246 = and i64 %i.az, 9223372036854775776  ; 4 uses
  %i.bb = shl nuw i64 %n.vec246, 2
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %broadcast.splatinsert247 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat248 = shufflevector <8 x float> %broadcast.splatinsert247, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph245, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph245 ], [ %index.next252, %vector.body249 ] ; 2 uses
  %i.bd = shl i64 %index250, 2
  %next.gep251 = getelementptr i8, ptr %1, i64 %i.bd ; 4 uses
  %i.be = getelementptr i8, ptr %next.gep251, i64 32
  %i.bf = getelementptr i8, ptr %next.gep251, i64 64
  %i.bg = getelementptr i8, ptr %next.gep251, i64 96
  store <8 x float> %broadcast.splat248, ptr %next.gep251, align 4, !tbaa !103
  store <8 x float> %broadcast.splat248, ptr %i.be, align 4, !tbaa !103
  store <8 x float> %broadcast.splat248, ptr %i.bf, align 4, !tbaa !103
  store <8 x float> %broadcast.splat248, ptr %i.bg, align 4, !tbaa !103
  %index.next252 = add nuw i64 %index250, 32      ; 2 uses
  %i.bh = icmp eq i64 %index.next252, %n.vec246
  br i1 %i.bh, label %middle.block253, label %vector.body249, !llvm.loop !394

middle.block253:                                  ; preds = %vector.body249
  %cmp.n254 = icmp eq i64 %i.az, %n.vec246
  br i1 %cmp.n254, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %vec.epilog.iter.check256

vec.epilog.iter.check256:                         ; preds = %middle.block253
  %min.epilog.iters.check258 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check258, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph259, !prof !105

vec.epilog.ph259:                                 ; preds = %vector.main.loop.iter.check243, %vec.epilog.iter.check256
  %vec.epilog.resume.val260 = phi i64 [ %n.vec246, %vec.epilog.iter.check256 ], [ 0, %vector.main.loop.iter.check243 ]
  %n.vec261 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.bi = shl nuw i64 %n.vec261, 2
  %i.bj = getelementptr i8, ptr %1, i64 %i.bi
  %broadcast.splatinsert262 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat263 = shufflevector <8 x float> %broadcast.splatinsert262, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph259
  %index265 = phi i64 [ %vec.epilog.resume.val260, %vec.epilog.ph259 ], [ %index.next267, %vec.epilog.vector.body264 ] ; 2 uses
  %i.bk = shl i64 %index265, 2
  %next.gep266 = getelementptr i8, ptr %1, i64 %i.bk
  store <8 x float> %broadcast.splat263, ptr %next.gep266, align 4, !tbaa !103
  %index.next267 = add nuw i64 %index265, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next267, %n.vec261
  br i1 %i.bl, label %vec.epilog.middle.block268, label %vec.epilog.vector.body264, !llvm.loop !395

vec.epilog.middle.block268:                       ; preds = %vec.epilog.vector.body264
  %cmp.n269 = icmp eq i64 %i.az, %n.vec261
  br i1 %cmp.n269, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check255, %vec.epilog.iter.check256, %vec.epilog.middle.block268
  %.07.i.i.i.ph = phi ptr [ %1, %iter.check255 ], [ %i.bc, %vec.epilog.iter.check256 ], [ %i.bj, %vec.epilog.middle.block268 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.j, ptr %.07.i.i.i, align 4, !tbaa !103
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !396

bb.h:                                             ; preds = %bb.c
  %i.bn = sub nuw i64 %2, %i.m                    ; 11 uses
  %.not8.i = icmp eq i64 %i.bn, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.bn, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %i.bn, 32
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bn, 24
  %n.vec = and i64 %i.bn, -32                     ; 4 uses
  %i.bp = shl i64 %n.vec, 2
  %i.bq = getelementptr i8, ptr %i.e, i64 %i.bp   ; 2 uses
  %i.br = and i64 %i.bn, 31
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.bs ; 4 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 32
  %i.bu = getelementptr i8, ptr %next.gep, i64 64
  %i.bv = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !103
  store <8 x float> %broadcast.splat, ptr %i.bt, align 4, !tbaa !103
  store <8 x float> %broadcast.splat, ptr %i.bu, align 4, !tbaa !103
  store <8 x float> %broadcast.splat, ptr %i.bv, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.bn, -8                   ; 3 uses
  %i.bx = shl i64 %n.vec138, 2
  %i.by = getelementptr i8, ptr %i.e, i64 %i.bx   ; 2 uses
  %i.bz = and i64 %i.bn, 7
  %broadcast.splatinsert139 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat140 = shufflevector <8 x float> %broadcast.splatinsert139, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next143, %vec.epilog.vector.body ] ; 2 uses
  %i.ca = shl i64 %index141, 2
  %next.gep142 = getelementptr i8, ptr %i.e, i64 %i.ca
  store <8 x float> %broadcast.splat140, ptr %next.gep142, align 4, !tbaa !103
  %index.next143 = add nuw i64 %index141, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !398

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %i.bn, %n.vec138
  br i1 %cmp.n144, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i.ph = phi ptr [ %i.e, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.079.i.ph = phi i64 [ %i.bn, %iter.check ], [ %i.br, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.010.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.079.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader ]
  store float %i.j, ptr %.010.i, align 4, !tbaa !103
  %i.cc = add i64 %.079.i, -1                     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !399

_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.0.lcssa.i = phi ptr [ %i.e, %bb.h ], [ %i.by, %vec.epilog.middle.block ], [ %i.bq, %middle.block ], [ %i.cd, %.lr.ph.i ] ; 8 uses
  %.not13.i.i68 = icmp eq ptr %1, %i.e
  br i1 %.not13.i.i68, label %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit74.thread, label %iter.check163

iter.check163:                                    ; preds = %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit
  %.0.lcssa.i147 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ce = add i64 %i.g, -4
  %i.cf = sub i64 %i.ce, %i.k                     ; 3 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 5 uses
  %min.iters.check148 = icmp ult i64 %i.cf, 28
  %i.ci = sub i64 %i.k, %.0.lcssa.i147
  %diff.check = icmp ugt i64 %i.ci, -128
  %or.cond = select i1 %min.iters.check148, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i69.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check163
  %min.iters.check150 = icmp ult i64 %i.cf, 124
  br i1 %min.iters.check150, label %vec.epilog.ph167, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.cj = and i64 %i.ch, 24
  %n.vec152 = and i64 %i.ch, 9223372036854775776  ; 4 uses
  %i.ck = shl i64 %n.vec152, 2                    ; 2 uses
  %i.cl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %1, i64 %i.ck
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body153 ] ; 2 uses
  %i.cn = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cn ; 4 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %i.cn ; 4 uses
  %i.co = getelementptr i8, ptr %next.gep156, i64 32
  %i.cp = getelementptr i8, ptr %next.gep156, i64 64
  %i.cq = getelementptr i8, ptr %next.gep156, i64 96
  %wide.load = load <8 x float>, ptr %next.gep156, align 4, !tbaa !103
  %wide.load157 = load <8 x float>, ptr %i.co, align 4, !tbaa !103
  %wide.load158 = load <8 x float>, ptr %i.cp, align 4, !tbaa !103
  %wide.load159 = load <8 x float>, ptr %i.cq, align 4, !tbaa !103
  %i.cr = getelementptr i8, ptr %next.gep155, i64 32
  %i.cs = getelementptr i8, ptr %next.gep155, i64 64
  %i.ct = getelementptr i8, ptr %next.gep155, i64 96
  store <8 x float> %wide.load, ptr %next.gep155, align 4, !tbaa !103
  store <8 x float> %wide.load157, ptr %i.cr, align 4, !tbaa !103
  store <8 x float> %wide.load158, ptr %i.cs, align 4, !tbaa !103
  store <8 x float> %wide.load159, ptr %i.ct, align 4, !tbaa !103
  %index.next160 = add nuw i64 %index154, 32      ; 2 uses
  %i.cu = icmp eq i64 %index.next160, %n.vec152
  br i1 %i.cu, label %middle.block161, label %vector.body153, !llvm.loop !400

middle.block161:                                  ; preds = %vector.body153
  %cmp.n162 = icmp eq i64 %i.ch, %n.vec152
  br i1 %cmp.n162, label %iter.check193, label %vec.epilog.iter.check164

vec.epilog.iter.check164:                         ; preds = %middle.block161
  %min.epilog.iters.check166 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check166, label %.lr.ph.i.i69.preheader, label %vec.epilog.ph167, !prof !105

vec.epilog.ph167:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check164
  %vec.epilog.resume.val168 = phi i64 [ %n.vec152, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec169 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.cv = shl i64 %n.vec169, 2                    ; 2 uses
  %i.cw = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cv
  %i.cx = getelementptr i8, ptr %1, i64 %i.cv
  br label %vec.epilog.vector.body170

vec.epilog.vector.body170:                        ; preds = %vec.epilog.vector.body170, %vec.epilog.ph167
  %index171 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph167 ], [ %index.next175, %vec.epilog.vector.body170 ] ; 2 uses
  %i.cy = shl i64 %index171, 2                    ; 2 uses
  %next.gep172 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cy
  %next.gep173 = getelementptr i8, ptr %1, i64 %i.cy
  %wide.load174 = load <8 x float>, ptr %next.gep173, align 4, !tbaa !103
  store <8 x float> %wide.load174, ptr %next.gep172, align 4, !tbaa !103
  %index.next175 = add nuw i64 %index171, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.cz, label %vec.epilog.middle.block176, label %vec.epilog.vector.body170, !llvm.loop !401

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body170
  %cmp.n177 = icmp eq i64 %i.ch, %n.vec169
  br i1 %cmp.n177, label %iter.check193, label %.lr.ph.i.i69.preheader

.lr.ph.i.i69.preheader:                           ; preds = %iter.check163, %vec.epilog.iter.check164, %vec.epilog.middle.block176
  %.015.i.i70.ph = phi ptr [ %.0.lcssa.i, %iter.check163 ], [ %i.cl, %vec.epilog.iter.check164 ], [ %i.cw, %vec.epilog.middle.block176 ]
  %.sroa.010.014.i.i71.ph = phi ptr [ %1, %iter.check163 ], [ %i.cm, %vec.epilog.iter.check164 ], [ %i.cx, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i69

_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit74.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.l
  store ptr %i.da, ptr %i.d, align 8, !tbaa !106
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

.lr.ph.i.i69:                                     ; preds = %.lr.ph.i.i69.preheader, %.lr.ph.i.i69
  %.015.i.i70 = phi ptr [ %i.dd, %.lr.ph.i.i69 ], [ %.015.i.i70.ph, %.lr.ph.i.i69.preheader ] ; 2 uses
  %.sroa.010.014.i.i71 = phi ptr [ %i.dc, %.lr.ph.i.i69 ], [ %.sroa.010.014.i.i71.ph, %.lr.ph.i.i69.preheader ] ; 2 uses
  %i.db = load float, ptr %.sroa.010.014.i.i71, align 4, !tbaa !103
  store float %i.db, ptr %.015.i.i70, align 4, !tbaa !103
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i71, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.015.i.i70, i64 4
  %.not.i.i72 = icmp eq ptr %i.dc, %i.e
  br i1 %.not.i.i72, label %iter.check193, label %.lr.ph.i.i69, !llvm.loop !402

iter.check193:                                    ; preds = %.lr.ph.i.i69, %vec.epilog.middle.block176, %middle.block161
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.l
  store ptr %i.de, ptr %i.d, align 8, !tbaa !106
  %i.df = add i64 %i.g, -4
  %i.dg = sub i64 %i.df, %i.k                     ; 3 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 5 uses
  %min.iters.check180 = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check180, label %.lr.ph.i.i.i76.preheader, label %vector.main.loop.iter.check181

vector.main.loop.iter.check181:                   ; preds = %iter.check193
  %min.iters.check182 = icmp ult i64 %i.dg, 124
  br i1 %min.iters.check182, label %vec.epilog.ph197, label %vector.ph183

vector.ph183:                                     ; preds = %vector.main.loop.iter.check181
  %i.dj = and i64 %i.di, 24
  %n.vec184 = and i64 %i.di, 9223372036854775776  ; 4 uses
  %i.dk = shl i64 %n.vec184, 2
  %i.dl = getelementptr i8, ptr %1, i64 %i.dk
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.ph183, %vector.body187
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body187 ] ; 2 uses
  %i.dm = shl i64 %index188, 2
  %next.gep189 = getelementptr i8, ptr %1, i64 %i.dm ; 4 uses
  %i.dn = getelementptr i8, ptr %next.gep189, i64 32
  %i.do = getelementptr i8, ptr %next.gep189, i64 64
  %i.dp = getelementptr i8, ptr %next.gep189, i64 96
  store <8 x float> %broadcast.splat186, ptr %next.gep189, align 4, !tbaa !103
  store <8 x float> %broadcast.splat186, ptr %i.dn, align 4, !tbaa !103
  store <8 x float> %broadcast.splat186, ptr %i.do, align 4, !tbaa !103
  store <8 x float> %broadcast.splat186, ptr %i.dp, align 4, !tbaa !103
  %index.next190 = add nuw i64 %index188, 32      ; 2 uses
  %i.dq = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.dq, label %middle.block191, label %vector.body187, !llvm.loop !403

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %i.di, %n.vec184
  br i1 %cmp.n192, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block191
  %min.epilog.iters.check196 = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check196, label %.lr.ph.i.i.i76.preheader, label %vec.epilog.ph197, !prof !105

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check181, %vec.epilog.iter.check194
  %vec.epilog.resume.val198 = phi i64 [ %n.vec184, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check181 ]
  %n.vec199 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dr = shl i64 %n.vec199, 2
  %i.ds = getelementptr i8, ptr %1, i64 %i.dr
  %broadcast.splatinsert200 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat201 = shufflevector <8 x float> %broadcast.splatinsert200, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph197
  %index203 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph197 ], [ %index.next205, %vec.epilog.vector.body202 ] ; 2 uses
  %i.dt = shl i64 %index203, 2
  %next.gep204 = getelementptr i8, ptr %1, i64 %i.dt
  store <8 x float> %broadcast.splat201, ptr %next.gep204, align 4, !tbaa !103
  %index.next205 = add nuw i64 %index203, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next205, %n.vec199
  br i1 %i.du, label %vec.epilog.middle.block206, label %vec.epilog.vector.body202, !llvm.loop !404

vec.epilog.middle.block206:                       ; preds = %vec.epilog.vector.body202
  %cmp.n207 = icmp eq i64 %i.di, %n.vec199
  br i1 %cmp.n207, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i76.preheader

.lr.ph.i.i.i76.preheader:                         ; preds = %iter.check193, %vec.epilog.iter.check194, %vec.epilog.middle.block206
  %.07.i.i.i77.ph = phi ptr [ %1, %iter.check193 ], [ %i.dl, %vec.epilog.iter.check194 ], [ %i.ds, %vec.epilog.middle.block206 ]
  br label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i76.preheader, %.lr.ph.i.i.i76
  %.07.i.i.i77 = phi ptr [ %i.dv, %.lr.ph.i.i.i76 ], [ %.07.i.i.i77.ph, %.lr.ph.i.i.i76.preheader ] ; 2 uses
  store float %i.j, ptr %.07.i.i.i77, align 4, !tbaa !103
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.dv, %i.e
  br i1 %.not.i.i.i78, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i76, !llvm.loop !405

bb.i:                                             ; preds = %bb.b
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !87  ; 9 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 4 uses
  %i.dy = sub i64 %i.g, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2                 ; 4 uses
  %i.ea = sub nsw i64 2305843009213693951, %i.dz
  %i.eb = icmp ult i64 %i.ea, %2
  br i1 %i.eb, label %bb.j, label %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.i
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %2)
  %i.ec = add nsw i64 %.sroa.speculated.i, %i.dz  ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.dz
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 2305843009213693951)
  %i.ef = select i1 %i.ed, i64 2305843009213693951, i64 %i.ee ; 3 uses
  %i.eg = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.eh = sub i64 %i.eg, %i.dx
  %.not.i80 = icmp eq i64 %i.ef, 0
  br i1 %.not.i80, label %iter.check284, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.ei = shl nuw nsw i64 %i.ef, 2
  %i.ej = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ei) #14 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.l, label %iter.check284

bb.l:                                             ; preds = %bb.k
  %i.el = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.el, align 8, !tbaa !112
  tail call void @__cxa_throw(ptr nonnull %i.el, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

iter.check284:                                    ; preds = %bb.k, %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.em = phi ptr [ null, %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit ], [ %i.ej, %bb.k ] ; 10 uses
  %i.en = ptrtoaddr ptr %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eh ; 5 uses
  %.pre.i83 = load float, ptr %3, align 4, !tbaa !103 ; 3 uses
  %min.iters.check271 = icmp samesign ult i64 %2, 8
  br i1 %min.iters.check271, label %.lr.ph.i84.preheader, label %vector.main.loop.iter.check272

vector.main.loop.iter.check272:                   ; preds = %iter.check284
  %min.iters.check273 = icmp samesign ult i64 %2, 32
  br i1 %min.iters.check273, label %vec.epilog.ph288, label %vector.ph274

vector.ph274:                                     ; preds = %vector.main.loop.iter.check272
  %i.ep = and i64 %2, 24
  %n.vec275 = and i64 %2, -32                     ; 4 uses
  %i.eq = shl nuw i64 %n.vec275, 2
  %i.er = getelementptr i8, ptr %i.eo, i64 %i.eq
  %i.es = and i64 %2, 31
  %broadcast.splatinsert276 = insertelement <8 x float> poison, float %.pre.i83, i64 0
  %broadcast.splat277 = shufflevector <8 x float> %broadcast.splatinsert276, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.ph274, %vector.body278
  %index279 = phi i64 [ 0, %vector.ph274 ], [ %index.next281, %vector.body278 ] ; 2 uses
  %i.et = shl i64 %index279, 2
  %next.gep280 = getelementptr i8, ptr %i.eo, i64 %i.et ; 4 uses
  %i.eu = getelementptr i8, ptr %next.gep280, i64 32
  %i.ev = getelementptr i8, ptr %next.gep280, i64 64
  %i.ew = getelementptr i8, ptr %next.gep280, i64 96
  store <8 x float> %broadcast.splat277, ptr %next.gep280, align 4, !tbaa !103
  store <8 x float> %broadcast.splat277, ptr %i.eu, align 4, !tbaa !103
  store <8 x float> %broadcast.splat277, ptr %i.ev, align 4, !tbaa !103
  store <8 x float> %broadcast.splat277, ptr %i.ew, align 4, !tbaa !103
  %index.next281 = add nuw i64 %index279, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.ex, label %middle.block282, label %vector.body278, !llvm.loop !406

middle.block282:                                  ; preds = %vector.body278
  %cmp.n283 = icmp eq i64 %2, %n.vec275
  br i1 %cmp.n283, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block282
  %min.epilog.iters.check287 = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check287, label %.lr.ph.i84.preheader, label %vec.epilog.ph288, !prof !105

vec.epilog.ph288:                                 ; preds = %vector.main.loop.iter.check272, %vec.epilog.iter.check285
  %vec.epilog.resume.val289 = phi i64 [ %n.vec275, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check272 ]
  %n.vec290 = and i64 %2, -8                      ; 3 uses
  %i.ey = shl nuw i64 %n.vec290, 2
  %i.ez = getelementptr i8, ptr %i.eo, i64 %i.ey
  %i.fa = and i64 %2, 7
  %broadcast.splatinsert291 = insertelement <8 x float> poison, float %.pre.i83, i64 0
  %broadcast.splat292 = shufflevector <8 x float> %broadcast.splatinsert291, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body293

vec.epilog.vector.body293:                        ; preds = %vec.epilog.vector.body293, %vec.epilog.ph288
  %index294 = phi i64 [ %vec.epilog.resume.val289, %vec.epilog.ph288 ], [ %index.next296, %vec.epilog.vector.body293 ] ; 2 uses
  %i.fb = shl i64 %index294, 2
  %next.gep295 = getelementptr i8, ptr %i.eo, i64 %i.fb
  store <8 x float> %broadcast.splat292, ptr %next.gep295, align 4, !tbaa !103
  %index.next296 = add nuw i64 %index294, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next296, %n.vec290
  br i1 %i.fc, label %vec.epilog.middle.block297, label %vec.epilog.vector.body293, !llvm.loop !407

vec.epilog.middle.block297:                       ; preds = %vec.epilog.vector.body293
  %cmp.n298 = icmp eq i64 %2, %n.vec290
  br i1 %cmp.n298, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %iter.check284, %vec.epilog.iter.check285, %vec.epilog.middle.block297
  %.010.i85.ph = phi ptr [ %i.eo, %iter.check284 ], [ %i.er, %vec.epilog.iter.check285 ], [ %i.ez, %vec.epilog.middle.block297 ]
  %.079.i86.ph = phi i64 [ %2, %iter.check284 ], [ %i.es, %vec.epilog.iter.check285 ], [ %i.fa, %vec.epilog.middle.block297 ]
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.preheader, %.lr.ph.i84
  %.010.i85 = phi ptr [ %i.fe, %.lr.ph.i84 ], [ %.010.i85.ph, %.lr.ph.i84.preheader ] ; 2 uses
  %.079.i86 = phi i64 [ %i.fd, %.lr.ph.i84 ], [ %.079.i86.ph, %.lr.ph.i84.preheader ]
  store float %.pre.i83, ptr %.010.i85, align 4, !tbaa !103
  %i.fd = add i64 %.079.i86, -1                   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i85, i64 4
  %.not.i87 = icmp eq i64 %i.fd, 0
  br i1 %.not.i87, label %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89, label %.lr.ph.i84, !llvm.loop !408

_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89: ; preds = %.lr.ph.i84, %vec.epilog.middle.block297, %middle.block282
  %.not13.i.i90 = icmp eq ptr %i.dw, %1
  br i1 %.not13.i.i90, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %iter.check321

iter.check321:                                    ; preds = %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89
  %i.ff = add i64 %i.eg, -4
  %i.fg = sub i64 %i.ff, %i.dx                    ; 3 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 5 uses
  %min.iters.check303 = icmp ult i64 %i.fg, 28
  %i.fj = sub i64 %i.dx, %i.en
  %diff.check305 = icmp ugt i64 %i.fj, -128
  %or.cond377 = or i1 %min.iters.check303, %diff.check305
  br i1 %or.cond377, label %.lr.ph.i.i91.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %iter.check321
  %min.iters.check307 = icmp ult i64 %i.fg, 124
  br i1 %min.iters.check307, label %vec.epilog.ph325, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.fk = and i64 %i.fi, 24
  %n.vec309 = and i64 %i.fi, 9223372036854775776  ; 4 uses
  %i.fl = shl i64 %n.vec309, 2                    ; 2 uses
  %i.fm = getelementptr i8, ptr %i.em, i64 %i.fl  ; 2 uses
  %i.fn = getelementptr i8, ptr %i.dw, i64 %i.fl
  br label %vector.body310

vector.body310:                                   ; preds = %vector.ph308, %vector.body310
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next318, %vector.body310 ] ; 2 uses
  %i.fo = shl i64 %index311, 2                    ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.em, i64 %i.fo ; 4 uses
  %next.gep313 = getelementptr i8, ptr %i.dw, i64 %i.fo ; 4 uses
  %i.fp = getelementptr i8, ptr %next.gep313, i64 32
  %i.fq = getelementptr i8, ptr %next.gep313, i64 64
  %i.fr = getelementptr i8, ptr %next.gep313, i64 96
  %wide.load314 = load <8 x float>, ptr %next.gep313, align 4, !tbaa !103
  %wide.load315 = load <8 x float>, ptr %i.fp, align 4, !tbaa !103
  %wide.load316 = load <8 x float>, ptr %i.fq, align 4, !tbaa !103
  %wide.load317 = load <8 x float>, ptr %i.fr, align 4, !tbaa !103
  %i.fs = getelementptr i8, ptr %next.gep312, i64 32
  %i.ft = getelementptr i8, ptr %next.gep312, i64 64
  %i.fu = getelementptr i8, ptr %next.gep312, i64 96
  store <8 x float> %wide.load314, ptr %next.gep312, align 4, !tbaa !103
  store <8 x float> %wide.load315, ptr %i.fs, align 4, !tbaa !103
  store <8 x float> %wide.load316, ptr %i.ft, align 4, !tbaa !103
  store <8 x float> %wide.load317, ptr %i.fu, align 4, !tbaa !103
  %index.next318 = add nuw i64 %index311, 32      ; 2 uses
  %i.fv = icmp eq i64 %index.next318, %n.vec309
  br i1 %i.fv, label %middle.block319, label %vector.body310, !llvm.loop !409

middle.block319:                                  ; preds = %vector.body310
  %cmp.n320 = icmp eq i64 %i.fi, %n.vec309
  br i1 %cmp.n320, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block319
  %min.epilog.iters.check324 = icmp eq i64 %i.fk, 0
  br i1 %min.epilog.iters.check324, label %.lr.ph.i.i91.preheader, label %vec.epilog.ph325, !prof !105

vec.epilog.ph325:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check322
  %vec.epilog.resume.val326 = phi i64 [ %n.vec309, %vec.epilog.iter.check322 ], [ 0, %vector.main.loop.iter.check306 ]
  %n.vec327 = and i64 %i.fi, 9223372036854775800  ; 3 uses
  %i.fw = shl i64 %n.vec327, 2                    ; 2 uses
  %i.fx = getelementptr i8, ptr %i.em, i64 %i.fw  ; 2 uses
  %i.fy = getelementptr i8, ptr %i.dw, i64 %i.fw
  br label %vec.epilog.vector.body328

vec.epilog.vector.body328:                        ; preds = %vec.epilog.vector.body328, %vec.epilog.ph325
  %index329 = phi i64 [ %vec.epilog.resume.val326, %vec.epilog.ph325 ], [ %index.next333, %vec.epilog.vector.body328 ] ; 2 uses
  %i.fz = shl i64 %index329, 2                    ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.em, i64 %i.fz
  %next.gep331 = getelementptr i8, ptr %i.dw, i64 %i.fz
  %wide.load332 = load <8 x float>, ptr %next.gep331, align 4, !tbaa !103
  store <8 x float> %wide.load332, ptr %next.gep330, align 4, !tbaa !103
  %index.next333 = add nuw i64 %index329, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.ga, label %vec.epilog.middle.block334, label %vec.epilog.vector.body328, !llvm.loop !410

vec.epilog.middle.block334:                       ; preds = %vec.epilog.vector.body328
  %cmp.n335 = icmp eq i64 %i.fi, %n.vec327
  br i1 %cmp.n335, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i91.preheader

.lr.ph.i.i91.preheader:                           ; preds = %iter.check321, %vec.epilog.iter.check322, %vec.epilog.middle.block334
  %.015.i.i92.ph = phi ptr [ %i.em, %iter.check321 ], [ %i.fm, %vec.epilog.iter.check322 ], [ %i.fx, %vec.epilog.middle.block334 ]
  %.sroa.010.014.i.i93.ph = phi ptr [ %i.dw, %iter.check321 ], [ %i.fn, %vec.epilog.iter.check322 ], [ %i.fy, %vec.epilog.middle.block334 ]
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.preheader, %.lr.ph.i.i91
  %.015.i.i92 = phi ptr [ %i.gd, %.lr.ph.i.i91 ], [ %.015.i.i92.ph, %.lr.ph.i.i91.preheader ] ; 2 uses
  %.sroa.010.014.i.i93 = phi ptr [ %i.gc, %.lr.ph.i.i91 ], [ %.sroa.010.014.i.i93.ph, %.lr.ph.i.i91.preheader ] ; 2 uses
  %i.gb = load float, ptr %.sroa.010.014.i.i93, align 4, !tbaa !103
  store float %i.gb, ptr %.015.i.i92, align 4, !tbaa !103
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i93, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.015.i.i92, i64 4 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.gc, %1
  br i1 %.not.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i91, !llvm.loop !411

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i91, %middle.block319, %vec.epilog.middle.block334, %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89
  %.0.lcssa.i.i95 = phi ptr [ %i.em, %_ZSt24__uninitialized_fill_n_aIPfmfN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RKT1_RT2_.exit89 ], [ %i.fx, %vec.epilog.middle.block334 ], [ %i.fm, %middle.block319 ], [ %i.gd, %.lr.ph.i.i91 ] ; 2 uses
  %.0.lcssa.i.i95341 = ptrtoaddr ptr %.0.lcssa.i.i95 to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i95, i64 %2 ; 7 uses
  %.not13.i.i96 = icmp eq ptr %1, %i.e
  br i1 %.not13.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102, label %iter.check360

iter.check360:                                    ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit
  %i.gf = add i64 %i.g, -4
  %i.gg = sub i64 %i.gf, %i.eg                    ; 3 uses
  %i.gh = lshr i64 %i.gg, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 5 uses
  %min.iters.check342 = icmp ult i64 %i.gg, 28
  br i1 %min.iters.check342, label %.lr.ph.i.i97.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %iter.check360
  %i.gj = shl nuw i64 %2, 2
  %i.gk = add i64 %i.gj, %.0.lcssa.i.i95341
  %i.gl = sub i64 %i.eg, %i.gk
  %diff.check344 = icmp ugt i64 %i.gl, -128
  br i1 %diff.check344, label %.lr.ph.i.i97.preheader, label %vector.main.loop.iter.check345

vector.main.loop.iter.check345:                   ; preds = %vector.memcheck343
  %min.iters.check346 = icmp ult i64 %i.gg, 124
  br i1 %min.iters.check346, label %vec.epilog.ph364, label %vector.ph347

vector.ph347:                                     ; preds = %vector.main.loop.iter.check345
  %i.gm = and i64 %i.gi, 24
  %n.vec348 = and i64 %i.gi, 9223372036854775776  ; 4 uses
  %i.gn = shl i64 %n.vec348, 2                    ; 2 uses
  %i.go = getelementptr i8, ptr %i.ge, i64 %i.gn  ; 2 uses
  %i.gp = getelementptr i8, ptr %1, i64 %i.gn
  br label %vector.body349

vector.body349:                                   ; preds = %vector.ph347, %vector.body349
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next357, %vector.body349 ] ; 2 uses
  %i.gq = shl i64 %index350, 2                    ; 2 uses
  %next.gep351 = getelementptr i8, ptr %i.ge, i64 %i.gq ; 4 uses
  %next.gep352 = getelementptr i8, ptr %1, i64 %i.gq ; 4 uses
  %i.gr = getelementptr i8, ptr %next.gep352, i64 32
  %i.gs = getelementptr i8, ptr %next.gep352, i64 64
  %i.gt = getelementptr i8, ptr %next.gep352, i64 96
  %wide.load353 = load <8 x float>, ptr %next.gep352, align 4, !tbaa !103
  %wide.load354 = load <8 x float>, ptr %i.gr, align 4, !tbaa !103
  %wide.load355 = load <8 x float>, ptr %i.gs, align 4, !tbaa !103
  %wide.load356 = load <8 x float>, ptr %i.gt, align 4, !tbaa !103
  %i.gu = getelementptr i8, ptr %next.gep351, i64 32
  %i.gv = getelementptr i8, ptr %next.gep351, i64 64
  %i.gw = getelementptr i8, ptr %next.gep351, i64 96
  store <8 x float> %wide.load353, ptr %next.gep351, align 4, !tbaa !103
  store <8 x float> %wide.load354, ptr %i.gu, align 4, !tbaa !103
  store <8 x float> %wide.load355, ptr %i.gv, align 4, !tbaa !103
  store <8 x float> %wide.load356, ptr %i.gw, align 4, !tbaa !103
  %index.next357 = add nuw i64 %index350, 32      ; 2 uses
  %i.gx = icmp eq i64 %index.next357, %n.vec348
  br i1 %i.gx, label %middle.block358, label %vector.body349, !llvm.loop !412

middle.block358:                                  ; preds = %vector.body349
  %cmp.n359 = icmp eq i64 %i.gi, %n.vec348
  br i1 %cmp.n359, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102, label %vec.epilog.iter.check361

vec.epilog.iter.check361:                         ; preds = %middle.block358
  %min.epilog.iters.check363 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check363, label %.lr.ph.i.i97.preheader, label %vec.epilog.ph364, !prof !105

vec.epilog.ph364:                                 ; preds = %vector.main.loop.iter.check345, %vec.epilog.iter.check361
  %vec.epilog.resume.val365 = phi i64 [ %n.vec348, %vec.epilog.iter.check361 ], [ 0, %vector.main.loop.iter.check345 ]
  %n.vec366 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gy = shl i64 %n.vec366, 2                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ge, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %1, i64 %i.gy
  br label %vec.epilog.vector.body367

vec.epilog.vector.body367:                        ; preds = %vec.epilog.vector.body367, %vec.epilog.ph364
  %index368 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph364 ], [ %index.next372, %vec.epilog.vector.body367 ] ; 2 uses
  %i.hb = shl i64 %index368, 2                    ; 2 uses
  %next.gep369 = getelementptr i8, ptr %i.ge, i64 %i.hb
  %next.gep370 = getelementptr i8, ptr %1, i64 %i.hb
  %wide.load371 = load <8 x float>, ptr %next.gep370, align 4, !tbaa !103
  store <8 x float> %wide.load371, ptr %next.gep369, align 4, !tbaa !103
  %index.next372 = add nuw i64 %index368, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next372, %n.vec366
  br i1 %i.hc, label %vec.epilog.middle.block373, label %vec.epilog.vector.body367, !llvm.loop !413

vec.epilog.middle.block373:                       ; preds = %vec.epilog.vector.body367
  %cmp.n374 = icmp eq i64 %i.gi, %n.vec366
  br i1 %cmp.n374, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %iter.check360, %vector.memcheck343, %vec.epilog.iter.check361, %vec.epilog.middle.block373
  %.015.i.i98.ph = phi ptr [ %i.ge, %iter.check360 ], [ %i.ge, %vector.memcheck343 ], [ %i.go, %vec.epilog.iter.check361 ], [ %i.gz, %vec.epilog.middle.block373 ]
  %.sroa.010.014.i.i99.ph = phi ptr [ %1, %iter.check360 ], [ %1, %vector.memcheck343 ], [ %i.gp, %vec.epilog.iter.check361 ], [ %i.ha, %vec.epilog.middle.block373 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader, %.lr.ph.i.i97
  %.015.i.i98 = phi ptr [ %i.hf, %.lr.ph.i.i97 ], [ %.015.i.i98.ph, %.lr.ph.i.i97.preheader ] ; 2 uses
  %.sroa.010.014.i.i99 = phi ptr [ %i.he, %.lr.ph.i.i97 ], [ %.sroa.010.014.i.i99.ph, %.lr.ph.i.i97.preheader ] ; 2 uses
  %i.hd = load float, ptr %.sroa.010.014.i.i99, align 4, !tbaa !103
  store float %i.hd, ptr %.015.i.i98, align 4, !tbaa !103
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i99, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.015.i.i98, i64 4 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.he, %i.e
  br i1 %.not.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102, label %.lr.ph.i.i97, !llvm.loop !414

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102: ; preds = %.lr.ph.i.i97, %middle.block358, %vec.epilog.middle.block373, %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i101 = phi ptr [ %i.ge, %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit ], [ %i.gz, %vec.epilog.middle.block373 ], [ %i.go, %middle.block358 ], [ %i.hf, %.lr.ph.i.i97 ]
  %.not.i103 = icmp eq ptr %i.dw, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dw) #14
  br label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit102, %bb.m
  store ptr %i.em, ptr %i.a, align 8, !tbaa !87
  store ptr %.0.lcssa.i.i101, ptr %i.d, align 8, !tbaa !106
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ef
  store ptr %i.hg, ptr %i.b, align 8, !tbaa !107
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i76, %.lr.ph.i.i.i, %middle.block191, %vec.epilog.middle.block206, %middle.block253, %vec.epilog.middle.block268, %_ZSt22__uninitialized_move_aIPfS0_N3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET0_T_S6_S5_RT1_.exit74.thread, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEEC2EOS6_RKS5_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(5) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 4
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.c = load i32, ptr %2, align 4, !tbaa !118
  %i.d = icmp eq i32 %i.c, %.sroa.0.0.extract.trunc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !117
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  store ptr %i.i, ptr %i.f, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p) #14 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !112
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.b, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !110
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !117  ; 3 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !117  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not12.i.i, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %.sroa.010.013.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.w, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.014.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.013.i.i, i64 12, i1 false), !tbaa.struct !113
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 12 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i14, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !415

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !84
  br label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit.loopexit, %bb.f
  %i.aa = phi ptr [ %i.w, %bb.f ], [ %.pre, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit.loopexit ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.q, %bb.f ], [ %i.z, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit.loopexit ]
  store ptr %.0.lcssa.i.i, ptr %i.t, align 8, !tbaa !109
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !109
  %.not.i.i15 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i15, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !109
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE5clearEv.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !84  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i16, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit, label %bb.i

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE5clearEv.exit: ; preds = %bb.g, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS4_NS2_9AllocatorIS4_NS2_20HostAllocationPolicyEEEEEES5_S9_ET0_T_SD_SC_RT1_.exit, %bb.c, %bb.b
  ret void
end_hunk_1
