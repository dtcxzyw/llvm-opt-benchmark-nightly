Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3gmx16nbnxn_atomdata_t6ParamsC2ENS_13PinningPolicyE:_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEEC2ESt16initializer_listIfERKS3_.exit
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit

.body158:                                         ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit

.body173:                                         ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i176 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.body173
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull %i.aj) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.k, %.body173, %.body158
  %.pn = phi { ptr, i32 } [ %i.ah, %.body158 ], [ %i.ai, %.body173 ], [ %i.ai, %bb.k ] ; 2 uses
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull %i.ak) #22
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit: ; preds = %bb.l, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit, %.body143
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %.body143 ], [ %.pn, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit ], [ %.pn, %bb.l ] ; 2 uses
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit182, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.al) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit182

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit182: ; preds = %bb.m, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit, %.body128
  %.pn.pn.pn = phi { ptr, i32 } [ %i.af, %.body128 ], [ %.pn.pn, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit ], [ %.pn.pn, %bb.m ] ; 2 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit185, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit182
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull %i.am) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit185

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit185: ; preds = %bb.n, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit182, %.body113
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %.body113 ], [ %.pn.pn.pn, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit182 ], [ %.pn.pn.pn, %bb.n ] ; 2 uses
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i186, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit188, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit185
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull %i.an) #22
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit188

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit188: ; preds = %bb.o, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit185, %.body98
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %.body98 ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit185 ], [ %.pn.pn.pn.pn, %bb.o ] ; 2 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit191, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit188
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull %i.ao) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit191

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit191: ; preds = %bb.p, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit188, %.body83
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %.body83 ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit188 ], [ %.pn.pn.pn.pn.pn, %bb.p ] ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit194, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit191
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull %i.ap) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit194

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit194: ; preds = %bb.q, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit191, %.body68
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %.body68 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit191 ], [ %.pn.pn.pn.pn.pn.pn, %bb.q ] ; 2 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i195 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit197, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit194
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.aq) #22
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit197

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit197: ; preds = %bb.r, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit194, %.body54
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %.body54 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit194 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.r ] ; 2 uses
  call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #22
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit200, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit197
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %i.ar) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit200

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit200: ; preds = %bb.s, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit197, %.body
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEED2Ev.exit197 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.s ]
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit203, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit200
  call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %i.as) #22
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit203

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit203: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEED2Ev.exit200, %bb.t
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.51", align 1 ; 3 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %15 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.gmx::Allocator.11", align 4 ; 5 uses
  %18 = alloca %"class.gmx::HostAllocationPolicy", align 4 ; 5 uses
  %19 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.51", align 1 ; 3 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !113
  tail call void @_ZN3gmx16nbnxn_atomdata_t6ParamsC1ENS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 0, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 0, ptr %i.d, align 4, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %18, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.cv

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %17, ptr noundef nonnull align 4 dereferenceable(5) %18, i64 5, i1 false), !tbaa.struct !283
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEEC2ESt16initializer_listIS2_ERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr null, i64 0, ptr noundef nonnull align 4 dereferenceable(5) %17)
          to label %bb.c unwind label %bb.cv

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %19, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %bb.c
  %.sroa.075.0.copyload = load i40, ptr %19, align 8
  %.sroa.075.0.insert.ext = zext i40 %.sroa.075.0.copyload to i64
  store i64 %.sroa.075.0.insert.ext, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  invoke void @_ZN3gmx16nbnxn_atomdata_t9SimdMasksC1ENS_15NbnxmKernelTypeE(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i32 noundef %3)
          to label %bb.e unwind label %bb.cw

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.k = icmp sgt i32 %9, 1
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %i.j, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %6, align 8, !tbaa !118    ; 8 uses
  %.not.i = icmp ne i32 %5, 2                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !range !119
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond244.i = select i1 %.not.i, i1 %i.q, i1 false
  %i.r = load i32, ptr %4, align 4
  %i.s = icmp ne i32 %i.r, 2
  %or.cond246.not.i = select i1 %or.cond244.i, i1 %i.s, i1 false
  br i1 %or.cond246.not.i, label %.invoke, label %bb.f

.invoke:                                          ; preds = %.lr.ph181, %bb.i, %bb.j, %bb.k, %bb.ck, %bb.f, %bb.e
  %i.t = phi ptr [ @.str.30, %bb.ck ], [ @.str.21, %bb.e ], [ @.str.23, %bb.f ], [ @.str.25, %bb.k ], [ @.str.25, %bb.j ], [ @.str.25, %bb.i ], [ @.str.25, %.lr.ph181 ]
  %i.u = phi ptr [ @.str.31, %bb.ck ], [ @.str.22, %bb.e ], [ @.str.24, %bb.f ], [ @.str.26, %bb.k ], [ @.str.26, %bb.j ], [ @.str.26, %bb.i ], [ @.str.26, %.lr.ph181 ]
  %i.v = phi i32 [ 682, %bb.ck ], [ 505, %bb.e ], [ 509, %bb.f ], [ 522, %bb.k ], [ 522, %bb.j ], [ 522, %bb.i ], [ 522, %.lr.ph181 ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbiENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef %i.v) #33
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %23 = ptrtoint ptr %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !118
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %23
  %i.aa = ashr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = sdiv i64 %i.aa, 2
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = call noundef double @sqrt(double noundef %i.ac) #22
  %i.ae = fptosi double %i.ad to i32              ; 12 uses
  %i.af = sext i32 %i.ae to i64                   ; 5 uses
  %i.ag = shl nsw i64 %i.af, 1
  %i.ah = mul i64 %i.ag, %i.af
  %i.ai = icmp eq i64 %i.ah, %i.aa
  br i1 %i.ai, label %bb.g, label %.invoke

bb.g:                                             ; preds = %bb.f
  br i1 %7, label %.loopexit.i, label %.preheader250.i

.preheader250.i:                                  ; preds = %bb.g
  %i.aj = shl i32 %i.ae, 1
  %i.ak = add nsw i32 %i.ae, -1
  %i.al = mul nuw nsw i32 %i.ak, %i.ae
  %i.am = sext i32 %i.al to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %exitcond.not.i179 = icmp slt i32 %i.ae, 1
  br i1 %exitcond.not.i179, label %.loopexit.i, label %.lr.ph181

bb.h:                                             ; preds = %bb.k
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph181, !llvm.loop !261

.lr.ph181:                                        ; preds = %.preheader250.i, %bb.h
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.preheader250.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i180, 1 ; 3 uses
  %i.an = trunc nsw i64 %indvars.iv.next.i to i32
  %i.ao = mul i32 %i.aj, %i.an                    ; 2 uses
  %i.ap = add i32 %i.ao, -2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !79
  %i.at = fcmp une float %i.as, 0.000000e+00
  br i1 %i.at, label %.invoke, label %bb.i

bb.i:                                             ; preds = %.lr.ph181
  %i.au = add i32 %i.ao, -1
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !79
  %i.ay = fcmp une float %i.ax, 0.000000e+00
  br i1 %i.ay, label %.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add nsw i64 %indvars.iv.i180, %i.am
  %.idx.i = shl i64 %i.az, 3
  %i.ba = getelementptr i8, ptr %i.n, i64 %.idx.i ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !79
  %i.bc = fcmp une float %i.bb, 0.000000e+00
  br i1 %i.bc, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ba, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !79
  %i.bf = fcmp une float %i.be, 0.000000e+00
  br i1 %i.bf, label %.invoke, label %bb.h, !llvm.loop !261

.loopexit.i:                                      ; preds = %bb.h, %.preheader250.i, %bb.g
  %i.bg = load ptr, ptr @debug, align 8, !tbaa !285 ; 2 uses
  %.not206.i = icmp eq ptr %i.bg, null
  br i1 %.not206.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.bh = select i1 %7, ptr @.str.13, ptr @.str.14
  %i.bi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bg, ptr noundef nonnull @.str.12, i32 noundef %i.ae, ptr noundef nonnull %i.bh) #22 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit.i
  %i.bj = zext i1 %7 to i32
  %i.bk = add nsw i32 %i.ae, %i.bj                ; 3 uses
  store i32 %i.bk, ptr %0, align 8, !tbaa !109
  %i.bl = shl i32 %i.bk, 1                        ; 4 uses
  %i.bm = mul i32 %i.bl, %i.bk
  %i.bn = zext nneg i32 %i.bm to i64              ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !75 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !76 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2                 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bn
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = sub nuw nsw i64 %i.bn, %i.bv
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.by)
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.n
  %.pre.i = load i32, ptr %0, align 8, !tbaa !109
  %.pre284.i = shl nsw i32 %.pre.i, 1
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp ugt i64 %i.bv, %i.bn
  br i1 %i.bz, label %bb.p, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bn ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.bq, %i.ca
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %.noexc43
  %.pre-phi.i = phi i32 [ %.pre284.i, %.noexc43 ], [ %i.bl, %bb.o ], [ %i.bl, %bb.p ], [ %i.bl, %bb.q ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = sext i32 %.pre-phi.i to i64             ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !75 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !76 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2                 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.cc
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i
  %i.cm = sub nuw nsw i64 %i.cc, %i.ck
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 noundef %i.cm)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i
  %i.cn = icmp ugt i64 %i.ck, %i.cc
  br i1 %i.cn, label %bb.t, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cc ; 2 uses
  %.not.i.i217.i = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i217.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i: ; preds = %bb.r, %bb.u, %bb.t, %bb.s
  %i.cp = call ptr @getenv(ptr noundef nonnull @.str.15) #22 ; 2 uses
  %.not207.i = icmp eq ptr %i.cp, null
  br i1 %.not207.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i
  %i.cq = call double @strtod(ptr noundef nonnull captures(none) %i.cp, ptr noundef null) #22
  %i.cr = fptrunc double %i.cq to float
  %i.cs = fpext float %i.cr to double
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i
  %.0192.i = phi double [ %i.cs, %bb.v ], [ f0x3EE4F8B580000000, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i ] ; 4 uses
  %i.ct = icmp sgt i32 %i.ae, 0
  br i1 %i.ct, label %.lr.ph.i, label %.preheader249.i

.lr.ph.i:                                         ; preds = %bb.w
  %.0184215.i = shl nuw i32 %i.ae, 1
  %i.cu = add i32 %.0184215.i, 2
  %wide.trip.count275.i = zext nneg i32 %i.ae to i64
  br label %bb.x

.preheader249.i:                                  ; preds = %bb.ab, %bb.w
  %.0185.lcssa.i = phi i8 [ 1, %bb.w ], [ %.1186.i, %bb.ab ] ; 2 uses
  %i.cv = load i32, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.preheader.preheader.i, label %._crit_edge264.i

.preheader.preheader.i:                           ; preds = %.preheader249.i
  %.0182214.i = shl i32 %i.ae, 1
  %i.cx = add i32 %.0182214.i, 2
  br label %.preheader.i

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next274.i, %bb.ab ] ; 4 uses
  %.0185251.i = phi i8 [ 1, %.lr.ph.i ], [ %.1186.i, %bb.ab ]
  %i.cy = trunc nuw nsw i64 %indvars.iv273.i to i32
  %i.cz = mul i32 %i.cu, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %i.n, i64 %i.da
  %i.dc = load <2 x float>, ptr %i.db, align 4, !tbaa !79
  %i.dd = fdiv <2 x float> %i.dc, <float 6.000000e+00, float 1.200000e+01> ; 3 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0 ; 3 uses
  %i.df = fcmp ogt float %i.de, 0.000000e+00
  %i.dg = extractelement <2 x float> %i.dd, i64 1 ; 3 uses
  %i.dh = fcmp ogt float %i.dg, 0.000000e+00
  %or.cond.i = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.di = fdiv float %i.dg, %i.de
  %i.dj = call noundef float @cbrtf(float noundef %i.di) #37
  %i.dk = call noundef float @sqrtf(float noundef %i.dj) #22
end_hunk_0
begin_hunk_1_@_ZN3gmx31nbnxn_atomdata_copy_x_to_nbat_xERKNS_7GridSetENS_12AtomLocalityEPA3_KfPNS_16nbnxn_atomdata_tE.omp_outlined:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 416
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 480
  %i.iq = sext i32 %i.ah to i64
  br label %bb.n

bb.n:                                             ; preds = %.noexc54, %.lr.ph.i50
  %indvars.iv.i51 = phi i64 [ %i.iq, %.lr.ph.i50 ], [ %indvars.iv.next.i52, %.noexc54 ] ; 3 uses
  %i.ir = load ptr, ptr %i.ik, align 8, !tbaa !111
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i51
  %i.it = load i32, ptr %i.is, align 4, !tbaa !93 ; 2 uses
  %i.iu = load i32, ptr %i.il, align 4, !tbaa !185
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !111
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i51
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !93
  %i.iy = add nsw i32 %i.ix, %i.iu
  %i.iz = load i32, ptr %i.in, align 4, !tbaa !187
  %i.ja = mul nsw i32 %i.iy, %i.iz                ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.jb
  %i.jd = load i32, ptr %i.io, align 8, !tbaa !129
  %i.je = load ptr, ptr %i.ip, align 8, !tbaa !76
  invoke void @_ZN3gmx22copy_rvec_to_nbat_realEPKiiiPA3_KfiPfi(ptr noundef readonly %i.jc, i32 noundef %i.it, i32 noundef %i.it, ptr noundef readonly %i.ii, i32 noundef %i.jd, ptr noundef %i.je, i32 noundef %i.ja)
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %bb.n
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %i.jf = trunc nsw i64 %indvars.iv.next.i52 to i32
  %.not.i53 = icmp eq i32 %i.ak, %i.jf
  br i1 %.not.i53, label %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit, label %bb.n

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.o

_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit: ; preds = %.noexc54, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us26.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us22.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us18.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i, %bb.m, %_ZN3gmx5RangeIiEC2Eii.exit, %.lr.ph.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jg = trunc nsw i64 %indvars.iv.next to i32
  %.not60 = icmp eq i32 %i.t, %i.jg
  br i1 %.not60, label %._crit_edge.loopexit, label %bb.c

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn.pn.pn, 1
  %.240 = extractvalue { ptr, i32 } %.pn.pn.pn, 0 ; 2 uses
  %i.jh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #22
  %i.ji = icmp eq i32 %.2, %i.jh
  br i1 %i.ji, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.jj = call ptr @__cxa_begin_catch(ptr %.240) #22
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.jj) #33
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

._crit_edge71:                                    ; preds = %._crit_edge, %.lr.ph70, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge71, %bb.a
  ret void

bb.s:                                             ; preds = %bb.p
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #34
  unreachable

bb.t:                                             ; preds = %bb.o
  call void @__clang_call_terminate(ptr %.240) #34
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx30nbnxn_atomdata_x_to_nbat_x_gpuERKNS_7GridSetENS_12AtomLocalityEPNS_8NbnxmGpuEPvP20GpuEventSynchronizer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val14 = load i32, ptr %i.b, align 8
  switch i32 %1, label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.c = sext i32 %.val14 to i64
  %.not.i.i5.i = icmp eq ptr %.val, null
  %i.d = getelementptr inbounds nuw [376 x i8], ptr %.val, i64 %i.c
  %spec.select.i.i6.i = select i1 %.not.i.i5.i, ptr null, ptr %i.d
  %i.e = ptrtoint ptr %spec.select.i.i6.i to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.0.in.i = sdiv exact i64 %i.g, 376
  %.0.i = trunc i64 %.0.in.i to i32
  %.not.i.i = icmp sgt i32 %.04.i, %.0.i
  br i1 %.not.i.i, label %bb.d, label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.35, i32 noundef 111) #33
  unreachable

_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv(ptr noundef nonnull align 8 dereferenceable(656) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 144
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !93
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.b, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv.omp_outlined, ptr nonnull %i.a, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3) #26 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.132", align 16  ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [128 x ptr], align 16             ; 22 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !93     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.h, ptr %i.b, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !93
  %i.i = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !93
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !93
  %i.l = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %.not68 = icmp sgt i32 %i.l, %i.k
  br i1 %.not68, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 632
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 468
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 600
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.r = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph71, %._crit_edge67
  %i.s = phi i32 [ %i.k, %.lr.ph71 ], [ %i.ak, %._crit_edge67 ]
  %indvars.iv = phi i64 [ %i.r, %.lr.ph71 ], [ %indvars.iv.next, %._crit_edge67 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !131  ; 4 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.w, %i.v
  %i.y = ashr exact i64 %i.x, 4                   ; 2 uses
  %i.z = mul i64 %i.y, %indvars.iv
  %i.aa = load i32, ptr %2, align 4, !tbaa !93
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = udiv i64 %i.z, %i.ab                    ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = mul i64 %i.y, %indvars.iv.next
  %i.af = udiv i64 %i.ae, %i.ab                   ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.c
  %sext = shl i64 %i.ac, 32
  %i.ai = ashr exact i64 %sext, 32
  %sext84 = shl i64 %i.af, 32
  %i.aj = ashr exact i64 %sext84, 32
  br label %.lr.ph66

._crit_edge67.loopexit:                           ; preds = %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !93
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit, %bb.c
  %i.ak = phi i32 [ %.pre, %._crit_edge67.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.al = sext i32 %i.ak to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %bb.c, label %._crit_edge72

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit
  %indvars.iv75 = phi i64 [ %i.ai, %.lr.ph66.preheader ], [ %indvars.iv.next76, %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit ] ; 5 uses
  %i.am = load i32, ptr %i.o, align 4, !tbaa !86  ; 4 uses
  %indvars.iv75.tr = trunc nsw i64 %indvars.iv75 to i32
  %i.an = shl nsw i32 %indvars.iv75.tr, 4
  %i.ao = mul nsw i32 %i.am, %i.an                ; 6 uses
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 3 uses
  %indvars.iv.next76.tr = trunc nsw i64 %indvars.iv.next76 to i32
  %i.ap = shl nsw i32 %indvars.iv.next76.tr, 4
  %i.aq = mul nsw i32 %i.am, %i.ap                ; 4 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !138 ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 144
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph66
  %i.ax = udiv exact i64 %i.av, 144
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv75
  %i.az = load <2 x i64>, ptr %i.ay, align 8
  %i.ba = call i64 @llvm.umax.i64(i64 %i.ax, i64 2)
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f
  %i.bb = icmp sgt i32 %.1, 0
  br i1 %i.bb, label %bb.g, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.04262 = phi i64 [ 1, %.lr.ph ], [ %i.br, %bb.f ] ; 3 uses
  %.04361 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.bc = trunc i64 %.04262 to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x i64> %i.az, ptr %4, align 16
  %i.bd = sdiv i32 %i.bc, 64
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !101
  %i.bh = srem i32 %i.bc, 64
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bg, %i.bj
  %.not57 = icmp eq i64 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.not57, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %.04262
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !76
  %i.bo = add nsw i32 %.04361, 1
  %i.bp = sext i32 %.04361 to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %i.bo, %bb.e ], [ %.04361, %bb.d ] ; 7 uses
  %i.br = add nuw nsw i64 %.04262, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.ba
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !384

bb.g:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !76 ; 3 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv75
  %.sroa.01.0.copyload = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.sroa.01.0.copyload, 1
  %.not55 = icmp eq i64 %i.bv, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.bw = icmp sgt i32 %i.am, 0                   ; 2 uses
  br i1 %.not55, label %.preheader49.i, label %.preheader.i

.preheader49.i:                                   ; preds = %bb.g
  br i1 %i.bw, label %.lr.ph54.i, label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit

.lr.ph54.i:                                       ; preds = %.preheader49.i
  %i.bx = load ptr, ptr %i.e, align 16, !tbaa !92, !alias.scope !396, !noalias !395 ; 2 uses
  %.not56 = icmp eq i32 %.1, 1
  %i.by = sext i32 %i.ao to i64                   ; 2 uses
  br i1 %.not56, label %.lr.ph54.split.preheader.i, label %.lr.ph.us.preheader.i

.lr.ph54.split.preheader.i:                       ; preds = %.lr.ph54.i
  %i.bz = shl nsw i64 %i.by, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.bt, i64 %i.bz
  %scevgep61.i = getelementptr i8, ptr %i.bx, i64 %i.bz
  %i.ca = add i32 %i.ao, 16
  %smax.i = call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.ca)
  %i.cb = xor i32 %i.ao, -1
  %i.cc = add i32 %smax.i, %i.cb
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 6
  %i.cg = add nuw nsw i64 %i.cf, 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 64 dereferenceable(1) %scevgep61.i, i64 %i.cg, i1 false), !tbaa !99, !noalias !396
  br label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph54.i
  %i.ch = sext i32 %i.aq to i64
  %wide.trip.count.i = zext nneg i32 %.1 to i64
  %i.ci = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter95 = and i64 %i.ci, 7                  ; 3 uses
  %i.cj = add nsw i32 %.1, -2
  %i.ck = icmp ult i32 %i.cj, 7
  %unroll_iter100 = and i64 %i.ci, -8
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  %lcmp.mod99 = icmp ne i64 %xtraiter95, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv64.i = phi i64 [ %i.by, %.lr.ph.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.i ] ; 12 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv64.i
  %.val42.us.i = load <16 x float>, ptr %i.cl, align 64, !tbaa !99, !noalias !397 ; 2 uses
  br i1 %i.ck, label %.epil.preheader94, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 9 uses
  %.sroa.045.151.us.i = phi <16 x float> [ %i.dy, %.lr.ph.us.i.new ], [ %.val42.us.i, %.lr.ph.us.i ]
  %niter101 = phi i64 [ %niter101.next.7, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %indvars.iv64.i
  %.val.us.i = load <16 x float>, ptr %i.co, align 64, !tbaa !99, !noalias !397
  %i.cp = fadd <16 x float> %.sroa.045.151.us.i, %.val.us.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv64.i
  %.val.us.i.1 = load <16 x float>, ptr %i.ct, align 64, !tbaa !99, !noalias !397
  %i.cu = fadd <16 x float> %i.cp, %.val.us.i.1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %indvars.iv64.i
  %.val.us.i.2 = load <16 x float>, ptr %i.cy, align 64, !tbaa !99, !noalias !397
  %i.cz = fadd <16 x float> %i.cu, %.val.us.i.2
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %indvars.iv64.i
  %.val.us.i.3 = load <16 x float>, ptr %i.dd, align 64, !tbaa !99, !noalias !397
  %i.de = fadd <16 x float> %i.cz, %.val.us.i.3
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv64.i
  %.val.us.i.4 = load <16 x float>, ptr %i.di, align 64, !tbaa !99, !noalias !397
  %i.dj = fadd <16 x float> %i.de, %.val.us.i.4
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %indvars.iv64.i
  %.val.us.i.5 = load <16 x float>, ptr %i.dn, align 64, !tbaa !99, !noalias !397
  %i.do = fadd <16 x float> %i.dj, %.val.us.i.5
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %indvars.iv64.i
  %.val.us.i.6 = load <16 x float>, ptr %i.ds, align 64, !tbaa !99, !noalias !397
  %i.dt = fadd <16 x float> %i.do, %.val.us.i.6
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !92, !alias.scope !396, !noalias !395
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %indvars.iv64.i
  %.val.us.i.7 = load <16 x float>, ptr %i.dx, align 64, !tbaa !99, !noalias !397
  %i.dy = fadd <16 x float> %i.dt, %.val.us.i.7   ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3gmx16nbnxn_atomdata_t12reduceForcesENS_12AtomLocalityERKNS_7GridSetENS_8ArrayRefINS_11BasicVectorIfEEEE.omp_outlined:bb.a
  br i1 %i.yy, label %bb.l, label %bb.p

_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit: ; preds = %.lr.ph.i68.prol.loopexit, %.lr.ph.i68, %.lr.ph9.i74, %.lr.ph.i59.prol.loopexit, %.lr.ph.i59, %.lr.ph9.i, %.lr.ph.i45.prol.loopexit, %.lr.ph.i45, %.lr.ph5.i52.prol.loopexit, %.lr.ph5.i52, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph5.i.prol.loopexit, %.lr.ph5.i, %middle.block, %.preheader1.i72, %.preheader2.i65, %.preheader1.i63, %.preheader2.i, %.preheader.i49, %.preheader1.i42, %.preheader.i, %.preheader1.i
  %exitcond.not = icmp eq i32 %.0106, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.yz = call ptr @__cxa_begin_catch(ptr %.136) #22
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.yz) #33
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

._crit_edge:                                      ; preds = %_ZN3gmxL18addNbatFXYZToFPartILi3EEEvRKNS_23nbnxn_atomdata_output_tEiiPKiNS_8ArrayRefINS_11BasicVectorIfEEEE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.o:                                             ; preds = %bb.l
  %i.za = landingpad { ptr, i32 }
          catch ptr null
  %i.zb = extractvalue { ptr, i32 } %i.za, 0
  call void @__clang_call_terminate(ptr %i.zb) #34
  unreachable

bb.p:                                             ; preds = %bb.k
  call void @__clang_call_terminate(ptr %.136) #34
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx40nbnxn_atomdata_add_nbat_fshift_to_fshiftERKNS_16nbnxn_atomdata_tENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0, ptr nofree captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 3 uses
  %.not24 = icmp eq ptr %i.b, %i.d
  br i1 %.not24, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %bb.a, %.preheader.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.4, %.preheader.us ], [ 0, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 3 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !79
  %i.g = fadd <2 x float> %i.f, zeroinitializer
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !79
  %i.j = fadd float %i.i, 0.000000e+00
  store <2 x float> %i.g, ptr %i.e, align 4
  store float %i.j, ptr %i.h, align 4, !tbaa !99
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !79
  %i.n = fadd <2 x float> %i.m, zeroinitializer
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !79
  %i.q = fadd float %i.p, 0.000000e+00
  store <2 x float> %i.n, ptr %i.l, align 4
  store float %i.q, ptr %i.o, align 4, !tbaa !99
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !79
  %i.u = fadd <2 x float> %i.t, zeroinitializer
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !79
  %i.x = fadd float %i.w, 0.000000e+00
  store <2 x float> %i.u, ptr %i.s, align 4
  store float %i.x, ptr %i.v, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.z, align 4, !tbaa !79
  %i.ab = fadd <2 x float> %i.aa, zeroinitializer
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 44 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !79
  %i.ae = fadd float %i.ad, 0.000000e+00
  store <2 x float> %i.ab, ptr %i.z, align 4
  store float %i.ae, ptr %i.ac, align 4, !tbaa !99
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !79
  %i.ai = fadd <2 x float> %i.ah, zeroinitializer
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !79
  %i.al = fadd float %i.ak, 0.000000e+00
  store <2 x float> %i.ai, ptr %i.ag, align 4
  store float %i.al, ptr %i.aj, align 4, !tbaa !99
  %indvars.iv.next39.4 = add nuw nsw i64 %indvars.iv38, 5 ; 2 uses
  %exitcond41.not.4 = icmp eq i64 %indvars.iv.next39.4, 45
  br i1 %exitcond41.not.4, label %.split33.us, label %.preheader.us, !llvm.loop !422

.preheader:                                       ; preds = %bb.a, %._crit_edge.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %._crit_edge.1 ], [ 0, %bb.a ] ; 5 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  br label %bb.c

.split33.us:                                      ; preds = %._crit_edge, %.preheader.us
  ret void

._crit_edge:                                      ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !79
  %i.ao = fadd <2 x float> %i.bn, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !79
  %i.ar = fadd float %i.bq, %i.aq
  store <2 x float> %i.ao, ptr %i.am, align 4
  store float %i.ar, ptr %i.ap, align 4, !tbaa !99
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 44
  br i1 %exitcond.not, label %.split33.us, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.1
  %.sroa.10.028.1 = phi float [ 0.000000e+00, %.preheader.1 ], [ %i.ba, %bb.b ]
  %.sroa.014.027.1 = phi ptr [ %i.b, %.preheader.1 ], [ %i.bb, %bb.b ] ; 2 uses
  %i.as = phi <2 x float> [ zeroinitializer, %.preheader.1 ], [ %i.ax, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.027.1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.1 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !79
  %i.ax = fadd <2 x float> %i.as, %i.aw           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !79
  %i.ba = fadd float %.sroa.10.028.1, %i.az       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.027.1, i64 144 ; 2 uses
  %.not.1 = icmp eq ptr %i.bb, %i.d
  br i1 %.not.1, label %._crit_edge.1, label %bb.b

._crit_edge.1:                                    ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next ; 3 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !79
  %i.be = fadd <2 x float> %i.ax, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !79
  %i.bh = fadd float %i.ba, %i.bg
  store <2 x float> %i.be, ptr %i.bc, align 4
  store float %i.bh, ptr %i.bf, align 4, !tbaa !99
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

bb.c:                                             ; preds = %.preheader, %bb.c
  %.sroa.10.028 = phi float [ 0.000000e+00, %.preheader ], [ %i.bq, %bb.c ]
  %.sroa.014.027 = phi ptr [ %i.b, %.preheader ], [ %i.br, %bb.c ] ; 2 uses
  %i.bi = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.bn, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !79
  %i.bn = fadd <2 x float> %i.bi, %i.bm           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !79
  %i.bq = fadd float %.sroa.10.028, %i.bp         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 144 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx16nbnxn_atomdata_t16clearForceBufferEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #24 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.132", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load i8, ptr %i.a, align 8, !tbaa !116, !range !119, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.i = sext i32 %1 to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.n = srem i32 %1, 64
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = sdiv i32 %1, 64
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  store i64 %i.p, ptr %i.s, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.u, %i.t
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = load <2 x i64>, ptr %2, align 16         ; 5 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.y = icmp ult i64 %i.w, 4
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.w, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bi, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.z = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.010.i
  %i.aa = load <2 x i64>, ptr %i.z, align 8
  %i.ab = and <2 x i64> %i.aa, %i.x
  %i.ac = icmp eq <2 x i64> %i.ab, zeroinitializer ; 2 uses
  %i.ad = extractelement <2 x i1> %i.ac, i64 0
  %i.ae = extractelement <2 x i1> %i.ac, i64 1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i: ; preds = %bb.c
  %.idx.i = mul i64 %.010.i, 192
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.ag, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i, %bb.c
  %i.ah = or disjoint i64 %.010.i, 1              ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load <2 x i64>, ptr %i.ai, align 8
  %i.ak = and <2 x i64> %i.aj, %i.x
  %i.al = icmp eq <2 x i64> %i.ak, zeroinitializer ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %i.an = extractelement <2 x i1> %i.al, i64 1
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.e, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.1

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.1: ; preds = %bb.d
  %.idx.i.1 = mul i64 %i.ah, 192
  %i.ap = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.ap, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.1, %bb.d
  %i.aq = or disjoint i64 %.010.i, 2              ; 2 uses
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.aq
  %i.as = load <2 x i64>, ptr %i.ar, align 8
  %i.at = and <2 x i64> %i.as, %i.x
  %i.au = icmp eq <2 x i64> %i.at, zeroinitializer ; 2 uses
  %i.av = extractelement <2 x i1> %i.au, i64 0
  %i.aw = extractelement <2 x i1> %i.au, i64 1
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %bb.f, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.2

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.2: ; preds = %bb.e
  %.idx.i.2 = mul i64 %i.aq, 192
  %i.ay = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.ay, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.2, %bb.e
  %i.az = or disjoint i64 %.010.i, 3              ; 2 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.az
  %i.bb = load <2 x i64>, ptr %i.ba, align 8
  %i.bc = and <2 x i64> %i.bb, %i.x
  %i.bd = icmp eq <2 x i64> %i.bc, zeroinitializer ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %i.bf = extractelement <2 x i1> %i.bd, i64 1
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.g, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.3

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.3: ; preds = %bb.f
  %.idx.i.3 = mul i64 %i.az, 192
  %i.bh = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bh, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.3, %bb.f
  %i.bi = add nuw i64 %.010.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !423

_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bi, %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.epil.preheader
  %.010.i.epil = phi i64 [ %.010.i.epil.init, %.epil.preheader ], [ %i.br, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.010.i.epil
  %i.bk = load <2 x i64>, ptr %i.bj, align 8
  %i.bl = and <2 x i64> %i.bk, %i.x
  %i.bm = icmp eq <2 x i64> %i.bl, zeroinitializer ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bm, i64 0
  %i.bo = extractelement <2 x i1> %i.bm, i64 1
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.i, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.epil

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.epil: ; preds = %bb.h
  %.idx.i.epil = mul i64 %.010.i.epil, 192
  %i.bq = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.bq, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.epil, %bb.h
  %i.br = add nuw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit, label %bb.h, !llvm.loop !424

_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit: ; preds = %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa, %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit

bb.j:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bt = sext i32 %1 to i64
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !138
  %i.bv = getelementptr inbounds nuw [144 x i8], ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !76 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !75 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not5.i.i.i.i, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.j
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoaddr ptr %i.bx to i64
  %reass.sub = sub i64 %i.ca, %i.cb
  %i.cc = and i64 %reass.sub, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.cc, i1 false), !tbaa !79
  br label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit:   ; preds = %.lr.ph.i.i.i.preheader.i, %bb.j, %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold noreturn }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
end_hunk_2
