Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_only?download=true
inline.NumInlined: 1260
inline.NumDeleted: 722
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10gmx_pme_ppC2EP10tmpi_comm_OSt6vectorI7PpRanksSaIS3_EE:bb.a
  %.not.i.i.i20 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull %i.cd) #14
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %.pn, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit ], [ %.pn, %bb.p ] ; 2 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEED2Ev.exit, %bb.q
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIfSaIfEED2Ev.exit23, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !95
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit23

_ZNSt6vectorIfSaIfEED2Ev.exit23:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.r
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIfSaIfEED2Ev.exit25, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit23
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !95
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit25

_ZNSt6vectorIfSaIfEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit23, %bb.s
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !94  ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIfSaIfEED2Ev.exit27, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit25
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !95
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit27

_ZNSt6vectorIfSaIfEED2Ev.exit27:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit25, %bb.t
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !96  ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i28, label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit27
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull %i.dc) #14
  br label %_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit

_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEED2Ev.exit27, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.j ], [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit27 ], [ %.pn.pn, %bb.u ] ; 2 uses
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !96  ; 2 uses
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
  %16 = alloca %"class.std::vector", align 8      ; 11 uses
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
  %i.l = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 17 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12gmx_domdec_t12mpiCommMySimEv(ptr noundef nonnull align 8 dereferenceable(1097) %1)
          to label %bb.a unwind label %bb.ak

bb.a:                                             ; preds = %_ZNKSt6vectorIP9gmx_pme_tSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !alias.scope !108
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14, !noalias !108
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !111, !noalias !108
  invoke void @_Z15get_pme_ddranksRK12gmx_domdec_ti(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.97") align 8 %14, ptr noundef nonnull align 8 dereferenceable(1097) %1, i32 noundef %i.r)
          to label %.noexc87 unwind label %bb.al

.noexc87:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !112, !noalias !108 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre34.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112, !noalias !108 ; 2 uses
  %.not31.i = icmp eq ptr %.pre.i, %.pre34.i
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i
  %.pre35.i = load ptr, ptr %14, align 8, !tbaa !114, !noalias !108
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc87
  %i.u = phi ptr [ %.pre35.i, %._crit_edge.loopexit.i ], [ %.pre.i, %.noexc87 ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !116, !noalias !108
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #21, !noalias !108
  br label %bb.j

.lr.ph.i:                                         ; preds = %.noexc87, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i
  %i.aa = phi ptr [ %i.bs, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ null, %.noexc87 ] ; 5 uses
  %i.ab = phi ptr [ %i.bt, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ null, %.noexc87 ] ; 3 uses
  %.sroa.028.032.i = phi ptr [ %i.bu, %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i ], [ %.pre.i, %.noexc87 ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.028.032.i, align 4, !tbaa !83, !noalias !108 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.sroa.0.0.insert.ext.i = zext i32 %i.ac to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.ab, align 4, !noalias !108
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !73, !alias.scope !108
  br label %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %28 = load ptr, ptr %16, align 8, !tbaa !74, !alias.scope !108 ; 11 uses
  %i.ae = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.af = ptrtoint ptr %28 to i64                 ; 4 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !108

.noexc13.i:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i12.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i.i12.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #20
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !108 ; 10 uses

.noexc14.i:                                       ; preds = %_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %.sroa.0.0.insert.ext19.i = zext i32 %i.ac to i64
  store i64 %.sroa.0.0.insert.ext19.i, ptr %i.ap, align 4, !noalias !108
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %28, %i.aa
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc14.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = add i64 %i.ae, -8
  %i.as = sub i64 %i.ar, %i.af                    ; 3 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  %i.av = sub i64 %i.af, %i.aq
  %diff.check = icmp ugt i64 %i.av, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3376 = icmp ult i64 %i.as, 120
  br i1 %min.iters.check3376, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 4611686018427387888     ; 4 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %28, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ba ; 4 uses
  %next.gep3377 = getelementptr i8, ptr %28, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.bb = getelementptr i8, ptr %next.gep3377, i64 32
  %i.bc = getelementptr i8, ptr %next.gep3377, i64 64
  %i.bd = getelementptr i8, ptr %next.gep3377, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep3377, align 4, !alias.scope !120, !noalias !122
  %wide.load3378 = load <4 x i64>, ptr %i.bb, align 4, !alias.scope !120, !noalias !122
  %wide.load3379 = load <4 x i64>, ptr %i.bc, align 4, !alias.scope !120, !noalias !122
  %wide.load3380 = load <4 x i64>, ptr %i.bd, align 4, !alias.scope !120, !noalias !122
  %i.be = getelementptr i8, ptr %next.gep, i64 32
  %i.bf = getelementptr i8, ptr %next.gep, i64 64
  %i.bg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !117, !noalias !123
  store <4 x i64> %wide.load3378, ptr %i.be, align 4, !alias.scope !117, !noalias !123
  store <4 x i64> %wide.load3379, ptr %i.bf, align 4, !alias.scope !117, !noalias !123
  store <4 x i64> %wide.load3380, ptr %i.bg, align 4, !alias.scope !117, !noalias !123
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3382 = and i64 %i.au, 4611686018427387900 ; 3 uses
  %i.bi = shl i64 %n.vec3382, 3                   ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ao, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %28, i64 %i.bi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3383 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3387, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = shl i64 %index3383, 3                   ; 2 uses
  %next.gep3384 = getelementptr i8, ptr %i.ao, i64 %i.bl
  %next.gep3385 = getelementptr i8, ptr %28, i64 %i.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %wide.load3386 = load <4 x i64>, ptr %next.gep3385, align 4, !alias.scope !120, !noalias !122
  store <4 x i64> %wide.load3386, ptr %next.gep3384, align 4, !alias.scope !117, !noalias !123
  %index.next3387 = add nuw i64 %index3383, 4     ; 2 uses
  %i.bm = icmp eq i64 %index.next3387, %n.vec3382
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3388 = icmp eq i64 %i.au, %n.vec3382
  br i1 %cmp.n3388, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %28, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !120, !noalias !122
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !117, !noalias !123
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !129

_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.noexc14.i ], [ %i.bj, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %28, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %28, i64 noundef %i.ag) #21, !noalias !108
  br label %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorI7PpRanksSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i.i
  store ptr %i.ao, ptr %16, align 8, !tbaa !74, !alias.scope !108
  store ptr %i.bq, ptr %i.s, align 8, !tbaa !73, !alias.scope !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.br, ptr %i.t, align 8, !tbaa !69, !alias.scope !108
  br label %_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i

_ZNSt6vectorI7PpRanksSaIS0_EE9push_backEOS0_.exit.i: ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.c
  %i.bs = phi ptr [ %i.br, %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.aa, %bb.c ]
  %i.bt = phi ptr [ %i.bq, %_ZNSt6vectorI7PpRanksSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %i.ad, %bb.c ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.028.032.i, i64 4 ; 2 uses
  %.not.i86 = icmp eq ptr %i.bu, %.pre34.i
  br i1 %.not.i86, label %._crit_edge.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorI7PpRanksSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ] ; 2 uses
  %i.bv = load ptr, ptr %14, align 8, !tbaa !114, !noalias !108 ; 3 uses
  %.not.i.i.i15.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i15.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit16.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !116, !noalias !108
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #21, !noalias !108
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit16.i

_ZNSt6vectorIiSaIiEED2Ev.exit16.i:                ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !108
  %.not.i.i.i17.i = icmp eq ptr %28, null
  br i1 %.not.i.i.i17.i, label %.body, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit16.i
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !69, !alias.scope !108
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %28, i64 noundef %i.cd) #21, !noalias !108
  br label %.body

bb.j:                                             ; preds = %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14, !noalias !108
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.ce = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #20
          to label %.noexc88 unwind label %bb.am  ; 18 uses

.noexc88:                                         ; preds = %bb.j
  invoke void @_ZN10gmx_pme_ppC1EP10tmpi_comm_OSt6vectorI7PpRanksSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(341) %i.ce, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.l unwind label %bb.k, !noalias !130

bb.k:                                             ; preds = %.noexc88
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 344) #21, !noalias !130
  br label %.body89

bb.l:                                             ; preds = %.noexc88
  store ptr %i.ce, ptr %15, align 8, !tbaa !133, !alias.scope !130
  %i.cg = load ptr, ptr %16, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.t, align 8, !tbaa !69
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #21
  br label %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit

_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit:           ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 336 ; 2 uses
  store i8 %i.i, ptr %i.cl, align 8, !tbaa !135
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 339 ; 2 uses
  store i8 %i.j, ptr %i.cm, align 1, !tbaa !136
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 340 ; 2 uses
  store i8 %i.k, ptr %i.cn, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  store ptr null, ptr %17, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  store ptr null, ptr %18, align 8, !tbaa !141
  %i.co = and i32 %6, -2
  %i.cp = icmp eq i32 %i.co, 2                    ; 5 uses
  br i1 %i.cp, label %bb.n, label %_ZNSt10unique_ptrIN3gmx22StatePropagatorDataGpuESt14default_deleteIS1_EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt6vectorI7PpRanksSaIS0_EED2Ev.exit
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_pmeonlyPP9gmx_pme_tRK12gmx_domdec_tP6t_nrnbP13gmx_wallcycleP23gmx_walltime_accountingP10t_inputrec10PmeRunModebbbPKN3gmx19DeviceStreamManagerEENK3$_0clEv", ptr noundef nonnull @.str.5, i32 noundef 730) #19
          to label %.noexc92 unwind label %bb.ao

.noexc92:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cq = invoke noundef zeroext i1 @_ZNK3gmx19DeviceStreamManager13streamIsValidENS_16DeviceStreamTypeE(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2)
          to label %bb.q unwind label %bb.ap

bb.q:                                             ; preds = %bb.p
  br i1 %i.cq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_pmeonlyPP9gmx_pme_tRK12gmx_domdec_tP6t_nrnbP13gmx_wallcycleP23gmx_walltime_accountingP10t_inputrec10PmeRunModebbbPKN3gmx19DeviceStreamManagerEENK3$_0clEv", ptr noundef nonnull @.str.5, i32 noundef 732) #19
          to label %.noexc93 unwind label %bb.aq

.noexc93:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cr = invoke noundef i32 @_Z22pme_get_pinning_policyv()
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  invoke void @_ZN3gmx19changePinningPolicyINS_12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEEEEEvPT_NS_13PinningPolicyE(ptr noundef nonnull %i.cs, i32 noundef %i.cr)
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %bb.t
  %i.ct = invoke noundef i32 @_Z22pme_get_pinning_policyv()
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  invoke void @_ZN3gmx19changePinningPolicyINS_12PaddedVectorIfNS_9AllocatorIfNS_20HostAllocationPolicyEEEEEEEvPT_NS_13PinningPolicyE(ptr noundef nonnull %i.cu, i32 noundef %i.ct)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  %i.cv = invoke noundef i32 @_Z22pme_get_pinning_policyv()
          to label %bb.x unwind label %bb.ap

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 216
  invoke void @_ZN3gmx19changePinningPolicyISt6vectorINS_11BasicVectorIfEENS_9AllocatorIS3_NS_20HostAllocationPolicyEEEEEEvPT_NS_13PinningPolicyE(ptr noundef nonnull %i.cw, i32 noundef %i.cv)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.cx = load i8, ptr %i.cl, align 8, !tbaa !135, !range !144, !noundef !145
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.z, label %bb.au

bb.z:                                             ; preds = %bb.y
  %i.cz = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.da = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %.noexc94 unwind label %bb.ar  ; 3 uses

.noexc94:                                         ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.dc = load ptr, ptr %i.ce, align 8, !tbaa !146, !noalias !147
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !74, !noalias !147 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !73, !noalias !147
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.di
  invoke void @_ZN3gmx24PmeCoordinateReceiverGpuC1EP10tmpi_comm_RK13DeviceContextNS_8ArrayRefI7PpRanksEE(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef %i.dc, ptr noundef nonnull align 1 %i.cz, ptr %i.dd, ptr %i.dj)
          to label %_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ab, !noalias !147

bb.ab:                                            ; preds = %.noexc94
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 8) #21, !noalias !147
  br label %bb.hb

_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ce, i64 320 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !150 ; 3 uses
  store ptr %i.da, ptr %i.dl, align 8, !tbaa !150
  %.not.i.i.i.i97 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i97, label %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx24PmeCoordinateReceiverGpuEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx24PmeCoordinateReceiverGpuEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN3gmx24PmeCoordinateReceiverGpuD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dm) #14
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 8) #21
  br label %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx24PmeCoordinateReceiverGpuEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx24PmeCoordinateReceiverGpuEJRP10tmpi_comm_RK13DeviceContextRSt6vectorI7PpRanksSaIS9_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.dn = invoke noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ac unwind label %bb.as

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN3gmx24PmeCoordinateReceiverGpuESt14default_deleteIS1_EED2Ev.exit
  %i.do = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %.noexc99 unwind label %bb.as  ; 3 uses

.noexc99:                                         ; preds = %bb.ac
  %i.dp = load ptr, ptr %i.ce, align 8, !tbaa !146, !noalias !151
  %i.dq = load ptr, ptr %i.db, align 8, !tbaa !74, !noalias !151 ; 3 uses
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !73, !noalias !151
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
end_hunk_0
