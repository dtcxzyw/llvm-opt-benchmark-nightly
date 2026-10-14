Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEE:bb.a
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !10
  %i.iz = icmp sgt i32 %i.iy, %i.iu
  br i1 %i.iz, label %bb.ai, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEE(ptr nofree noundef writeonly captures(none) initializes((0, 36), (40, 52)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, i32 noundef %11, ptr noundef nonnull %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_Z18set_grid_alignmentPii.exit:
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.93", align 1 ; 3 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  store i32 %1, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %5, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %6, ptr %i.e, align 8, !tbaa !10
  %i.f = xor i32 %4, -1
  %i.g = add i32 %11, %i.f
  %i.h = add i32 %i.g, %7                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !10
  %i.j = xor i32 %5, -1
  %i.k = add i32 %11, %i.j
  %i.l = add i32 %i.k, %8                         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.l, ptr %i.m, align 8, !tbaa !10
  %i.n = xor i32 %6, -1
  %i.o = add i32 %11, %i.n
  %i.p = add i32 %i.o, %9                         ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.p, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.h, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.l, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.p, ptr %i.t, align 8, !tbaa !10
  %i.u = icmp ne i32 %11, 5                       ; 2 uses
  %i.v = add nsw i32 %i.p, 3
  %i.w = and i32 %i.v, -4
  %.0 = select i1 %i.u, i32 %i.p, i32 %i.w        ; 3 uses
  br i1 %10, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_Z18set_grid_alignmentPii.exit
  store i32 %.0, ptr %i.t, align 8, !tbaa !10
  br label %bb.i

bb.b:                                             ; preds = %_Z18set_grid_alignmentPii.exit
  %.not = icmp eq i32 %.0, %i.p
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(63) @.str.6, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 598) #22
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  %i.z = load ptr, ptr %13, align 8, !tbaa !156   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !157
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i32 [ %i.p, %bb.b ], [ %.0, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %11, ptr %i.af, align 4, !tbaa !278
  %i.ag = mul nsw i32 %i.l, %i.h
  %i.ah = mul nsw i32 %i.ag, %i.ae
  %i.ai = sext i32 %i.ah to i64                   ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !158
  %i.al = load ptr, ptr %12, align 8, !tbaa !119  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ai
  br i1 %i.aq, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, label %bb.j

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.i
  %i.ar = sub nuw nsw i64 %i.ai, %i.ap
  tail call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.ar)
  %.pre.pre = load ptr, ptr %12, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, %bb.i
  %.pre = phi ptr [ %.pre.pre, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit ], [ %i.al, %bb.i ]
  %i.as = ptrtoint ptr %.pre to i64               ; 2 uses
  %i.at = and i64 %i.as, 15
  %i.au = icmp eq i64 %i.at, 0
  %or.cond = select i1 %i.u, i1 true, i1 %i.au
  br i1 %or.cond, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEEENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 622) #22
  unreachable

._crit_edge:                                      ; preds = %bb.j
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !158
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.as
  %i.ay = ashr exact i64 %i.ax, 2
  %.not.i = icmp ult i64 %i.ay, %i.ai
  br i1 %.not.i, label %bb.l, label %_ZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEm.exit

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEmENKUlvE_clEv, ptr noundef nonnull @.str.20, i32 noundef 305) #22
  unreachable

_ZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEm.exit: ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %12, ptr %i.az, align 8, !tbaa !117
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ai, ptr %i.ba, align 8, !tbaa !279
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.h = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !10
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g)
  store i32 %i.j, ptr %i.b, align 4, !tbaa !10
  %i.k = load i32, ptr %i.a, align 4, !tbaa !10
  %i.l = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.l, %bb.b ] ; 4 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !10
  %i.n = sext i32 %i.m to i64
  %.not = icmp sgt i64 %indvars.iv, %i.n
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !148    ; 2 uses
  %i.p = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.q = load i64, ptr %4, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds [24 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 76 ; 2 uses
  %i.x = load <3 x i32>, ptr %i.w, align 4, !tbaa !10 ; 4 uses
  %i.y = shufflevector <3 x i32> %i.x, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %7 = load i32, ptr %i.w, align 4, !tbaa !10
  %8 = extractelement <3 x i32> %i.x, i64 1       ; 2 uses
  %i.z = extractelement <3 x i32> %i.x, i64 2     ; 2 uses
  %i.aa = mul nsw i32 %i.z, %8
  %i.ab = sdiv i32 %i.p, %i.aa                    ; 3 uses
  %i.ac = sdiv i32 %i.p, %i.z
  %i.ad = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.p, i64 1
  %i.af = shufflevector <3 x i32> %i.x, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ag = srem <2 x i32> %i.ae, %i.af             ; 4 uses
  %i.ah = load <3 x i32>, ptr %5, align 4, !tbaa !10 ; 3 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.aj = extractelement <3 x i32> %i.ah, i64 0
  %i.ak = mul nsw i32 %i.aj, %i.ab
  %i.al = sdiv i32 %i.ak, %7
  %i.am = extractelement <3 x i32> %i.ah, i64 1
  %i.an = extractelement <2 x i32> %i.ag, i64 0   ; 2 uses
  %i.ao = mul nsw i32 %i.am, %i.an
  %i.ap = sdiv i32 %i.ao, %8
  %i.aq = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.ab, i64 1
  %i.as = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x i32> %i.ar, <4 x i32> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.au = add nsw <4 x i32> %i.at, <i32 0, i32 1, i32 1, i32 1>
  %i.av = mul nsw <4 x i32> %i.ai, %i.au
  %i.aw = sdiv <4 x i32> %i.av, %i.y              ; 4 uses
  %i.ax = load i32, ptr %6, align 4, !tbaa !10
  %9 = extractelement <4 x i32> %i.aw, i64 0
  %i.ay = extractelement <4 x i32> %i.aw, i64 1
  %i.az = extractelement <4 x i32> %i.aw, i64 2
  %i.ba = extractelement <4 x i32> %i.aw, i64 3
  %i.bb = extractelement <2 x i32> %i.ag, i64 1
  invoke fastcc void @_ZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEE(ptr noundef nonnull %i.v, i32 noundef %i.ab, i32 noundef %i.an, i32 noundef %i.bb, i32 noundef %i.al, i32 noundef %i.ap, i32 noundef %9, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba, i1 noundef zeroext true, i32 noundef %i.ax, ptr noundef %i.s)
          to label %bb.c unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(63) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(63) %1) #7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %i.b, ptr %i.a, align 8, !tbaa !160
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !156
  %i.f = load i64, ptr %i.a, align 8, !tbaa !160
  store i64 %i.f, ptr %i.c, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !157
  store i8 %i.h, ptr %i.g, align 1, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !161
  %i.k = load ptr, ptr %0, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !163  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #7
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !157
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #7
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !157
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !159
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %i.d, ptr %i.a, align 8, !tbaa !160
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !156
  %i.g = load i64, ptr %i.a, align 8, !tbaa !160
  store i64 %i.g, ptr %i.b, align 8, !tbaa !157
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !157
  store i8 %i.i, ptr %i.h, align 1, !tbaa !157
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
end_hunk_0
