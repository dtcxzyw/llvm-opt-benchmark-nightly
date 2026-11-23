Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgpMJJHpo27b_12typst_bundle:bb.a
  store ptr %.val.i, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 2072 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !19 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit.thread.i
  %i.l = add nuw i64 %i.j, 1
  store i64 %i.l, ptr %i.i, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.e, label %bb.u

bb.c:                                             ; preds = %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit.thread.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #46
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECsgpMJJHpo27b_12typst_bundle(ptr nonnull align 128 %.val.i) #49
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !19, !noundef !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = or i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 2176
  %i.u = cmpxchg ptr %i.t, i64 0, i64 %i.s seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 2088 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !19 ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  %i.y = and i64 %i.w, 127
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.u, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.o, align 8, !nonnull !19, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  invoke void @_RNvMs5_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.u unwind label %bb.d

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.q, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ak, %bb.q ], [ %i.ak, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %_RNvYNCNKNvNtCsazW1U07H1KN_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgpMJJHpo27b_12typst_bundle.exit.i
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvNtCsazW1U07H1KN_15crossbeam_epoch7default9collector()
  %i.ae = tail call noundef ptr @_RNvMs1_NtCsazW1U07H1KN_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2072 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !19 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.ai = add nuw i64 %i.ag, 1
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %bb.m, label %bb.r

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #46
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECsgpMJJHpo27b_12typst_bundle(ptr nonnull align 128 %i.ae) #49
          to label %.body.i unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !19, !noundef !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8
  %i.ap = or i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 2088 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !19 ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = and i64 %i.at, 127
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.r, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.al, align 8, !nonnull !19, !noundef !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  invoke void @_RNvMs5_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.r unwind label %bb.l

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ba = load i64, ptr %i.af, align 8, !noundef !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !19 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.ba, 0
  %i.bf = icmp eq i64 %i.bc, 1
  %or.cond.i.i.i.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i.i, label %bb.q, label %common.resume, !prof !25

bb.q:                                             ; preds = %.body.i
  invoke void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
          to label %common.resume unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %i.af, align 8, !noundef !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !19 ; 2 uses
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i64 %i.bg, 0
  %i.bl = icmp eq i64 %i.bi, 1
  %or.cond.i.i.i3.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i3.i, label %bb.s, label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsgpMJJHpo27b_12typst_bundle.exit, !prof !25

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
  br label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsgpMJJHpo27b_12typst_bundle.exit

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsgpMJJHpo27b_12typst_bundle.exit

_RNCINvNtCsazW1U07H1KN_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.s, %bb.r, %bb.u
  %.sroa.0.0 = phi ptr [ %.val.i, %bb.u ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterTB2x_B3D_EEEEB54_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsgpMJJHpo27b_12typst_bundle(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %1, align 8, !range !39, !noundef !19 ; 2 uses
  %.not = icmp eq i64 %i.b, -2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2983, !nonnull !19, !noundef !19 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2983, !nonnull !19, !noundef !19
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !2983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  %.val.i.i.i.i = load i128, ptr %i.e, align 16, !alias.scope !2984, !noalias !2985, !noundef !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !2989, !noalias !2985, !noundef !19
  %.not.i.i.i.i.i.i = icmp slt i8 %i.l, 0
  %.val.i.i.i.i.i.i = load ptr, ptr %i.j, align 16, !alias.scope !2990, !noalias !2985 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val10.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !2990, !noalias !2985
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvYTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !2991
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %_RNvYTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i.i.i.i) #46
  unreachable

_RNvYTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i128 %.val.i.i.i.i, ptr %i.q, align 16, !alias.scope !2992
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.val.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !2992
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val10.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2992
  br label %_RNvYNvYINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB3q_5slice4iter4IterTB1w_B2C_EEEENtNtNtB3o_6traits8iterator8Iterator4nextINtNtNtB3q_3ops8function6FnOnceTQB5_EE9call_onceCsgpMJJHpo27b_12typst_bundle.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2995, !noundef !19 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !alias.scope !2997, !noundef !19 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i16 %i.w, 0
  %.promoted.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !2997 ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted13.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2997
  br label %bb.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  store ptr %i.ac, ptr %i.x, align 8, !alias.scope !2997
  store ptr %i.ab, ptr %i.u, align 8, !alias.scope !2997
  br label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %i.y = phi ptr [ %.promoted13.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.i ] ; 2 uses
  %i.z = phi ptr [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.i ]
  %.val9.i.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !2998
  %i.aa = icmp sgt <16 x i8> %.val9.i.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -512 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.aa to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %._crit_edge.i.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %i.ad = phi ptr [ %i.ab, %._crit_edge.i.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.h ]
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.w, %bb.h ] ; 3 uses
  %i.ae = add i16 %.lcssa.i.i.i.i.i, -1
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = and i16 %i.ae, %.lcssa.i.i.i.i.i
  store i16 %i.ah, ptr %i.v, align 8, !alias.scope !2997
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = add i64 %i.s, -1
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !2995
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -32
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.am, ptr noundef nonnull align 16 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !2995
  br label %_RNvYNvYINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB3q_5slice4iter4IterTB1w_B2C_EEEENtNtNtB3o_6traits8iterator8Iterator4nextINtNtNtB3q_3ops8function6FnOnceTQB5_EE9call_onceCsgpMJJHpo27b_12typst_bundle.exit

_RNvYNvYINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB3q_5slice4iter4IterTB1w_B2C_EEEENtNtNtB3o_6traits8iterator8Iterator4nextINtNtNtB3q_3ops8function6FnOnceTQB5_EE9call_onceCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvYTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  store i128 1, ptr %i.a, align 16, !alias.scope !2999
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  store i128 0, ptr %0, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %_RNvYNvYINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtB3q_5slice4iter4IterTB1w_B2C_EEEENtNtNtB3o_6traits8iterator8Iterator4nextINtNtNtB3q_3ops8function6FnOnceTQB5_EE9call_onceCsgpMJJHpo27b_12typst_bundle.exit, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.c, %bb.g
  store i128 0, ptr %i.a, align 16, !alias.scope !2999
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsj9ySjdMHKcw_6either6EitherINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterTB2o_B3u_EEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(64) %1)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  store i64 -2, ptr %1, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 16 dereferenceable(48) %i.a) #49
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  store i64 -2, ptr %1, align 8
  br label %bb.l

bb.p:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.q:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.an
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0INtNtB2d_3vec3VecBZ_EEB31_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 500000)
  %..i11 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.c) ; 2 uses
  %..i12 = tail call noundef i64 @llvm.umax.i64(i64 %..i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %..i11, 256        ; 3 uses
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.c

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %..i12, 4                ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !3004
  %i.f = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 8, 17) 16) #48, !noalias !3004 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.e) #46
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit13, label %bb.f

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 256, %bb.a ], [ %..i12, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB2Y_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 16 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.d
  %i.j = shl nuw nsw i64 %..i12, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #48
  br label %bb.e

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit13, %bb.b
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit13: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %..i12, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #48
  br label %bb.f
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB37_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 72057594037927936) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB37_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB37_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB37_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !19, !align !36, !noundef !19
  %.sroa.0.0.val15 = load i128, ptr %.sroa.0.0, align 16 ; 4 uses
  %.sroa.04.0.val16 = load i128, ptr %.sroa.04.0, align 16 ; 4 uses
  %.val2.i = load ptr, ptr %.val14, align 8, !nonnull !19, !align !36, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3077, !noundef !19
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i, i64 56
  %i.r = trunc i128 %.sroa.0.0.val15 to i64
  %i.s = mul i64 %i.r, -1065810590584100411
end_hunk_0
begin_hunk_1_@_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerNtCsgpMJJHpo27b_12typst_bundle5ChildEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultNtB1G_4ItemINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEENtNtB4N_6engine4SinkEENCINvMB5H_NtB5H_6Engine11parallelizeINtNtCs1xwejQucwHj_5alloc3vec3VecB1E_EINtNtB6E_9into_iter8IntoIterB1E_EB1E_B3n_NCNCNvB1G_11bundle_impl00E0EEB1G_:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.458.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.559.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.761.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.862.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.sroa.963.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 57
  %.sroa.1064.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.671.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.631.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.429.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.530.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %.sroa.476.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 5 uses
  %.sroa.476.0..sroa_idx77.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 15 ; 2 uses
  %.sroa.496.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4229.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.476.0..sroa_idx79.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 15 ; 2 uses
  %.sroa.4237.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4126.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 5 uses
  %.sroa.4126.0..sroa_idx127.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 15 ; 2 uses
  %.sroa.4245.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4126.0..sroa_idx129.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 15 ; 2 uses
  %.sroa.4253.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6170.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.1054.0..sroa_idx55.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.648.0..sroa_idx49.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.851.0..sroa_idx52.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.429.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.530.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.631.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %.sroa.631.sroa.5.0..sroa.631.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.437.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.1012.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  br label %_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBP_.exit.i.i.i.i

_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBP_.exit.i.i.i.i: ; preds = %bb.ee, %_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBP_.exit.i.lr.ph.i.i.i
  %.sroa.8.0.i.i = phi i64 [ 0, %_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBP_.exit.i.lr.ph.i.i.i ], [ %i.ma, %bb.ee ] ; 5 uses
  %.sroa.0.023165.i.i.i = phi ptr [ %5, %_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBP_.exit.i.lr.ph.i.i.i ], [ %i.dk, %bb.ee ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.023165.i.i.i, i64 80 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %.sroa.0.023165.i.i.i, align 16, !alias.scope !4214, !noalias !4215 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023165.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !alias.scope !4214, !noalias !4215 ; 17 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023165.i.i.i, i64 48
  %.sroa.6.sroa.6.0.copyload.i.i.i.i = load i128, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 16, !alias.scope !4214, !noalias !4215 ; 2 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023165.i.i.i, i64 64
  %.sroa.6.sroa.7.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 16, !alias.scope !4214, !noalias !4215 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainNtCsgpMJJHpo27b_12typst_bundle5ChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBP_.exit.i.i.i.i
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023165.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.69.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !4216
  call void @llvm.experimental.noalias.scope.decl(metadata !4217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4218
  invoke void @_RNvMs0_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.as)
          to label %.noexc.i.i.i unwind label %.thread31.i.i.i, !noalias !4219

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.dl = load ptr, ptr %i.bh, align 8, !alias.scope !4217, !noalias !4220, !nonnull !19, !align !36, !noundef !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i64 40, i1 false), !noalias !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.dm = load ptr, ptr %i.bk, align 8, !alias.scope !4217, !noalias !4220, !nonnull !19, !align !36, !noundef !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, i64 40, i1 false), !noalias !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.dn = load ptr, ptr %i.bl, align 8, !alias.scope !4217, !noalias !4220, !nonnull !19, !align !36, !noundef !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false), !noalias !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4218
  %i.do = load ptr, ptr %i.bm, align 8, !alias.scope !4217, !noalias !4220, !nonnull !19, !align !36, !noundef !19
  invoke void @_RNvXs4_NtCsdaEETE4DqmE_13typst_library6engineNtB5_5RouteNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.an, ptr noundef nonnull align 8 %i.do)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4218

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i, %bb.m, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dr, %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp843.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.dw, %.body.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.fb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i ], [ %i.lu, %bb.dw ], [ %lpad.loopexit.split-lp843.a, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library6engine4SinkECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(96) %i.as) #49
          to label %.thread.i.i.i unwind label %bb.dx, !noalias !4218

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.dp = load ptr, ptr %i.bn, align 8, !alias.scope !4217, !noalias !4220, !nonnull !19, !align !63, !noundef !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !4218
  store ptr %i.dp, ptr %i.bo, align 8, !noalias !4218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !4218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !noalias !4218
  store ptr %i.as, ptr %i.br, align 8, !noalias !4218
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false), !noalias !4218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4221)
  switch i64 %.sroa.0.0.copyload1.i.i.i.i, label %default.unreachable56.i.i.i.i.i.i.i [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable56.i.i.i.i.i.i.i:              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.dq = load i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, align 16, !range !49, !noalias !4222, !noundef !19
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ds = load ptr, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, align 8, !noalias !4222, !nonnull !19, !noundef !19 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 112 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 127
  %i.dv = load i8, ptr %i.du, align 1, !noalias !4222, !noundef !19
  %.not99.i.i.i.i.i.i.i = icmp sgt i8 %i.dv, -1
  %i.dw = getelementptr i8, ptr %i.ds, i64 120    ; 2 uses
  br i1 %.not99.i.i.i.i.i.i.i, label %bb.o, label %bb.q

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.69.i.i.i.i, i64 24, i1 false), !noalias !4224
  %i.dx = load ptr, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, align 8, !noalias !4222, !nonnull !19, !noundef !19 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 232 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 247
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !4222, !noundef !19
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.ea, -1
  %i.eb = getelementptr i8, ptr %i.dx, i64 240    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.ab

bb.l:                                             ; preds = %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 16
  %i.ed = load i128, ptr %i.ec, align 16, !noalias !4222, !noundef !19
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 32
  %i.ef = load i64, ptr %i.ee, align 16, !noalias !4222
  %.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 40
  %i.eg = load i64, ptr %.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4222
  %i.eh = inttoptr i64 %i.ef to ptr
  %i.ei = inttoptr i64 %i.eg to ptr
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4223
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 8
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4218

.noexc.i.i.i.i.i.i:                               ; preds = %bb.m
  %.sroa.035.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !4223
  %.sroa.437.0.copyload.i.i.i.i.i.i.i = load i128, ptr %.sroa.437.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4223
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.l
  %.sroa.9.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.l ], [ %.sroa.035.0.copyload.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ]
  %.sroa.145.0.i.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.l ], [ undef, %.noexc.i.i.i.i.i.i ]
  %.sroa.12.0.i.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.l ], [ undef, %.noexc.i.i.i.i.i.i ]
  %.sroa.104.0.i.i.i.i.i.i.i = phi i128 [ %i.ed, %bb.l ], [ %.sroa.437.0.copyload.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ]
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %.noexc.i.i.i.i.i.i ]
  %.sroa.5.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 1
  %.sroa.5.0.i.i.i.i.i.i.i = load i8, ptr %.sroa.5.0.in.i.i.i.i.i.i.i, align 1, !range !49, !noalias !4222, !noundef !19
  %.sroa.73.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 2
  %.sroa.73.0.i.i.i.i.i.i.i = load i8, ptr %.sroa.73.0.in.i.i.i.i.i.i.i, align 2, !range !49, !noalias !4222, !noundef !19
  br label %bb.dy

bb.o:                                             ; preds = %bb.j
  %.val110.i.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !4222, !nonnull !19, !noundef !19 ; 5 uses
  %.val111.i.i.i.i.i.i.i = load i64, ptr %i.dw, align 8, !noalias !4222 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val110.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds i8, ptr %.val110.i.i.i.i.i.i.i, i64 -16
  %i.el = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8, !noalias !4222
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %.invoke.i.i.i.i.i.i, label %._RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit_crit_edge.i.i.i.i.i.i.i, !prof !22

._RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, align 8, !noalias !4222
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.j
  %.sroa.059.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.dt, align 1, !noalias !4222
  %.sroa.460.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dw, align 1, !noalias !4222
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %._RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit_crit_edge.i.i.i.i.i.i.i, %bb.o
  %i.en = phi ptr [ %i.ds, %bb.q ], [ %i.ds, %bb.o ], [ %.pre.i.i.i.i.i.i.i, %._RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.549.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.460.0.copyload.i.i.i.i.i.i.i, %bb.q ], [ %.val111.i.i.i.i.i.i.i, %bb.o ], [ %.val111.i.i.i.i.i.i.i, %._RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit_crit_edge.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.047.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.059.0.copyload.i.i.i.i.i.i.i, %bb.q ], [ %.val110.i.i.i.i.i.i.i, %bb.o ], [ %.val110.i.i.i.i.i.i.i, %._RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.eo = ptrtoint ptr %.sroa.047.0.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4223
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 96 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 16, !noalias !4222, !nonnull !19, !noundef !19
  %i.er = atomicrmw add ptr %i.eq, i64 1 monotonic, align 8, !noalias !4222
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  %i.eu = load ptr, ptr %i.ep, align 16, !noalias !4222, !nonnull !19, !noundef !19 ; 3 uses
  %i.ev = load ptr, ptr %i.et, align 8, !noalias !4222, !nonnull !19, !align !36, !noundef !19 ; 2 uses
  store ptr %i.eu, ptr %i.am, align 8, !noalias !4223
  store ptr %i.ev, ptr %i.dj, align 8, !noalias !4223
  %i.ew = load ptr, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, align 8, !noalias !4222, !nonnull !19, !noundef !19 ; 2 uses
  %i.ex = load i128, ptr %i.ew, align 16, !range !20, !noalias !4222, !noundef !19
  %i.ey = trunc nuw i128 %i.ex to i1
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !21

bb.s:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i128, ptr %i.ez, align 16, !noalias !4222
  %.sroa.5.9.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.549.0.i.i.i.i.i.i.i, 8
  %.sroa.5.9.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.5.9.extract.shift.i.i.i.i.i.i.i to i8
  %.sroa.5.10.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.549.0.i.i.i.i.i.i.i, 16
  %.sroa.5.10.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.5.10.extract.shift.i.i.i.i.i.i.i to i8
  %.sroa.5.11.extract.shift.i.i.i.i.i.i.i = and i64 %.sroa.549.0.i.i.i.i.i.i.i, -16777216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4223
  br label %bb.dy

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #46
          to label %bb.x unwind label %bb.v, !noalias !4222

bb.v:                                             ; preds = %bb.u
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = atomicrmw add ptr %i.eu, i64 -1 release, align 8, !noalias !4225
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_EE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i unwind label %bb.y, !noalias !4222

bb.x:                                             ; preds = %bb.du, %bb.u
  unreachable

bb.y:                                             ; preds = %bb.dw, %bb.dv, %.body.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, %bb.w
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4222
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.sroa.5.15.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.549.0.i.i.i.i.i.i.i, 56
  %.sroa.5.15.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.5.15.extract.shift.i.i.i.i.i.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.047.0.i.i.i.i.i.i.i, i8 %.sroa.5.15.extract.trunc.i.i.i.i.i.i.i) #49
          to label %.body.i.i.i.i.i.i unwind label %bb.y, !noalias !4222

bb.z:                                             ; preds = %bb.k
  %.val108.i.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !noalias !4222, !nonnull !19, !noundef !19 ; 5 uses
  %.val109.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !4222 ; 2 uses
  %.not.i.i112.i.i.i.i.i.i.i = icmp eq ptr %.val108.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i112.i.i.i.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit113.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds i8, ptr %.val108.i.i.i.i.i.i.i, i64 -16
  %i.fg = atomicrmw add ptr %i.ff, i64 1 monotonic, align 8, !noalias !4222
  %i.fh = icmp slt i64 %i.fg, 0
  br i1 %i.fh, label %.invoke.i.i.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit113.i.i.i.i.i.i.i, !prof !22

.invoke.i.i.i.i.i.i:                              ; preds = %bb.aa, %bb.p
  %i.fi = phi ptr [ %.val110.i.i.i.i.i.i.i, %bb.p ], [ %.val108.i.i.i.i.i.i.i, %bb.aa ]
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %i.fi) #46
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.ab:                                            ; preds = %bb.k
  %.sroa.086.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.dy, align 1, !noalias !4222
  %.sroa.487.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 1, !noalias !4222
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit113.i.i.i.i.i.i.i

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit113.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.073.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.086.0.copyload.i.i.i.i.i.i.i, %bb.ab ], [ %.val108.i.i.i.i.i.i.i, %bb.z ], [ %.val108.i.i.i.i.i.i.i, %bb.aa ] ; 7 uses
  %.sroa.575.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.487.0.copyload.i.i.i.i.i.i.i, %bb.ab ], [ %.val109.i.i.i.i.i.i.i, %bb.z ], [ %.val109.i.i.i.i.i.i.i, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4223
  call void @llvm.experimental.noalias.scope.decl(metadata !4226)
  call void @llvm.experimental.noalias.scope.decl(metadata !4227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !4229
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library5model8documentINtNtNtNtB6_11foundations7content6packed6PackedNtB2_12DocumentElemE16determine_format(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.6.sroa.0.0.copyload.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc115.i.i.i.i.i.i.i unwind label %.loopexit.split-lp46.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4222

.noexc115.i.i.i.i.i.i.i:                          ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit113.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4228
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !range !60, !alias.scope !4227, !noalias !4222, !noundef !19 ; 3 uses
  %i.fl = load ptr, ptr %i.ai, align 8, !noalias !4228, !noundef !19 ; 10 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bi, label %bb.ac

bb.ac:                                            ; preds = %.noexc115.i.i.i.i.i.i.i
  %i.fm = load i64, ptr %i.bt, align 8, !noalias !4228, !noundef !19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4228
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fl, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -16
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8, !noalias !4230
  %i.fp = icmp eq i64 %i.fo, 1
  %i.fq = zext i1 %i.fp to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.fq, %bb.ad ], [ 1, %bb.ac ] ; 2 uses
  store ptr %i.fl, ptr %i.j, align 8, !noalias !4228
  store i64 %i.fm, ptr %i.bu, align 8, !noalias !4228
  store i8 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bv, align 8, !noalias !4228
  store i64 0, ptr %i.bw, align 8, !noalias !4228
  store i64 %i.fm, ptr %i.bx, align 8, !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4228
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.af, !prof !22

bb.ae:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #46
          to label %bb.ag unwind label %.body.thread8.i.i.i.i.i.i.i.i.i, !noalias !4231

bb.af:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i
  store i64 1, ptr %i.bw, align 8, !noalias !4228
  %i.fr = trunc nuw i8 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.fr, label %bb.ai, label %bb.ah

.body.thread8.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.al, %bb.ae
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 15
  %i.ft = load i8, ptr %i.fs, align 1, !noalias !4231, !noundef !19
  %.not.i.i114.i.i.i.i.i.i.i = icmp sgt i8 %i.ft, -1
  %i.fu = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  br i1 %.not.i.i114.i.i.i.i.i.i.i, label %bb.aj, label %bb.am

bb.ai:                                            ; preds = %bb.af
  %.sroa.013.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fl, align 8, !noalias !4231
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.515.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4231
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fl, align 8, !noalias !4231, !nonnull !19, !noundef !19 ; 5 uses
  %.val27.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !noalias !4231 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 -16
  %i.fw = atomicrmw add ptr %i.fv, i64 1 monotonic, align 8, !noalias !4231
  %i.fx = icmp slt i64 %i.fw, 0
  br i1 %i.fx, label %bb.al, label %bb.an, !prof !22

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i) #46
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.body.thread8.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ah
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fl, align 1, !noalias !4231
  %.sroa.420.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 1, !noalias !4231
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.aj, %bb.ai
  %.sroa.515.0.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.515.0.copyload.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.420.0.copyload.i.i.i.i.i.i.i.i.i, %bb.am ], [ %.val27.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %.val27.i.i.i.i.i.i.i.i.i, %bb.aj ]
  %.sroa.013.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.copyload.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.019.0.copyload.i.i.i.i.i.i.i.i.i, %bb.am ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.aj ]
  store ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !4228
  store i64 %.sroa.515.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4228
  call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  call void @llvm.experimental.noalias.scope.decl(metadata !4233)
  %i.fy = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.fk)
          to label %bb.aq unwind label %bb.ap, !noalias !4234 ; 2 uses

bb.ao:                                            ; preds = %bb.ap
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4234
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.l) #49
          to label %.body.thread.i.i.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !4235

bb.aq:                                            ; preds = %bb.an
  %i.gb = extractvalue { i64, i64 } %i.fy, 1
  %i.gc = extractvalue { i64, i64 } %i.fy, 0
  store i8 0, ptr %i.by, align 8, !alias.scope !4232, !noalias !4228
  store i64 %i.gc, ptr %i.k, align 8, !alias.scope !4232, !noalias !4228
  store i64 %i.gb, ptr %i.bz, align 8, !alias.scope !4232, !noalias !4228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l, i64 16, i1 false), !alias.scope !4236, !noalias !4228
  store ptr inttoptr (i64 16 to ptr), ptr %i.cb, align 8, !alias.scope !4232, !noalias !4228
  store i64 0, ptr %i.cc, align 8, !alias.scope !4232, !noalias !4228
  store ptr inttoptr (i64 16 to ptr), ptr %i.cd, align 8, !alias.scope !4232, !noalias !4228
  store i64 0, ptr %i.ce, align 8, !alias.scope !4232, !noalias !4228
  call void @llvm.experimental.noalias.scope.decl(metadata !4237)
  call void @llvm.experimental.noalias.scope.decl(metadata !4238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !4228
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !4239, !noundef !19 ; 2 uses
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !4239, !noundef !19 ; 2 uses
  %.not.i.i28.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i28.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.av

bb.ar:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bf, %.body.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gd, %bb.ar ], [ %i.ht, %bb.bf ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.k) #49
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bg, !noalias !4240

bb.as:                                            ; preds = %bb.av, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !4228
  %i.ge = load i64, ptr %i.ci, align 8, !alias.scope !4241, !noalias !4239, !noundef !19 ; 5 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !4241, !noalias !4239 ; 4 uses
  %i.gf = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.ge
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.as
  %i.gg = load i8, ptr %i.cj, align 8, !range !49, !alias.scope !4241, !noalias !4242, !noundef !19
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = load ptr, ptr %i.g, align 8, !alias.scope !4241, !noalias !4242, !nonnull !19, !noundef !19 ; 2 uses
  %i.gj = load i64, ptr %i.ck, align 8, !noalias !4239
  br i1 %i.gh, label %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !4243, !noalias !4228
  %.val.i.us.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !4243, !noalias !4228
  br label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.au, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.us.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %bb.au ], [ %.val.i.us.pre.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gk = phi i64 [ %i.gu, %bb.au ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gl = phi i64 [ %i.gm, %bb.au ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  call void @llvm.experimental.noalias.scope.decl(metadata !4245)
  %i.gm = add nuw i64 %i.gl, 1                    ; 3 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gl ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !noalias !4246 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.5.0.copyload3.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4246 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4247)
  %.not.i.i.us.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.us.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.us.i.i.i.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i
  %i.go = getelementptr i8, ptr %.val.i.us.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  %.val.i.i.us.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.go, align 8, !noalias !4248, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.us.i.i.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.02.0.i.i.us.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.us.i.i.i.i.i.i.i.i.i.i.i, %bb.at ], [ 0, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.gp = icmp eq i64 %i.gk, %.sroa.02.0.i.i.us.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = zext i1 %i.gp to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cd, i64 noundef %i.gq)
          to label %bb.au unwind label %.split.us.i.i.i.i.i.i.i.i.i.i.i, !noalias !4249, !inline_history !8

bb.au:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.us.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = load ptr, ptr %i.cd, align 8, !alias.scope !4243, !noalias !4228, !nonnull !19, !noundef !19 ; 2 uses
  %i.gs = load i64, ptr %i.ce, align 8, !alias.scope !4243, !noalias !4228, !noundef !19 ; 2 uses
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %i.gs ; 4 uses
  store i64 1, ptr %i.gt, align 8, !noalias !4250
  %.sroa.412.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4250
  %.sroa.513.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store ptr %.sroa.0.0.copyload1.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4250
  %.sroa.714.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store i64 %.sroa.5.0.copyload3.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.714.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4250
  %i.gu = add i64 %i.gs, 1                        ; 2 uses
  store i64 %i.gu, ptr %i.ce, align 8, !alias.scope !4243, !noalias !4228
  %exitcond46.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, %i.ge
  br i1 %exitcond46.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.us.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %bb.aq
  %i.gw = sub i64 %.val4.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cd, i64 noundef %i.gw)
          to label %bb.as unwind label %bb.bf, !noalias !4251

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.bd
  %i.gx = phi i64 [ %i.gy, %bb.bd ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  call void @llvm.experimental.noalias.scope.decl(metadata !4245)
  %i.gy = add nuw i64 %i.gx, 1                    ; 4 uses
  %i.gz = icmp ult i64 %i.gx, %i.gj
  call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 15
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !4255, !noalias !4256, !noundef !19
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.hc, 0
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ha, align 8, !alias.scope !4257, !noalias !4256 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hd, align 8, !alias.scope !4257, !noalias !4256 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.he = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.hf = atomicrmw add ptr %i.he, i64 1 monotonic, align 8, !noalias !4258
  %i.hg = icmp slt i64 %i.hf, 0
  br i1 %i.hg, label %bb.ax, label %bb.az, !prof !22

bb.ax:                                            ; preds = %bb.aw
  store i64 %i.gy, ptr %i.ch, align 8, !noalias !4239
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #46
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ay

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ba, %bb.ay
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hh, %bb.ay ], [ %.us-phi31.i.i.i.i.i.i.i.i.i.i.i, %bb.ba ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !4259

bb.az:                                            ; preds = %bb.aw, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4247)
  %i.hi = load i64, ptr %i.ce, align 8, !alias.scope !4243, !noalias !4228, !noundef !19
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !4243, !noalias !4228, !nonnull !19, !noundef !19 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gy, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi29.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload3.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi30.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  %.us-phi31.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hj, %.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gv, %.split.us.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.us-phi.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ch, align 8, !noalias !4239
  %.sroa.714.31.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.us-phi29.i.i.i.i.i.i.i.i.i.i.i, 56
  %.sroa.714.31.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.714.31.extract.shift.i.i.i.i.i.i.i.i.i.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsgpMJJHpo27b_12typst_bundle(ptr %.us-phi30.i.i.i.i.i.i.i.i.i.i.i, i8 %.sroa.714.31.extract.trunc.i.i.i.i.i.i.i.i.i.i.i) #49
          to label %.body.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !4248, !inline_history !8

bb.bb:                                            ; preds = %bb.az
  %i.hk = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hk, align 8, !noalias !4248, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.az
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ], [ 0, %bb.az ]
  %i.hl = icmp eq i64 %i.hi, %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = zext i1 %i.hl to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cd, i64 noundef %i.hm)
          to label %bb.bd unwind label %.split.i.i.i.i.i.i.i.i.i.i.i, !noalias !4249, !inline_history !8

bb.bc:                                            ; preds = %bb.ba
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4248, !inline_history !8
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.au, %bb.as
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %bb.as ], [ %i.ge, %bb.au ], [ %i.ge, %bb.bd ]
  store i64 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ch, align 8, !noalias !4239
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB9_5model8document14DocumentFormatNtB7_12HintedStringEINtB7_2AtB1j_E2at0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !4260

bb.bd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = load ptr, ptr %i.cd, align 8, !alias.scope !4243, !noalias !4228, !nonnull !19, !noundef !19
  %i.hp = load i64, ptr %i.ce, align 8, !alias.scope !4243, !noalias !4228, !noundef !19 ; 2 uses
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.ho, i64 %i.hp ; 4 uses
  store i64 1, ptr %i.hq, align 8, !noalias !4250
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4250
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4250
  %.sroa.714.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  store i64 %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.714.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4250
  %i.hr = add i64 %i.hp, 1
  store i64 %i.hr, ptr %i.ce, align 8, !alias.scope !4243, !noalias !4228
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gy, %i.ge
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bf, %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4259
  unreachable

bb.bf:                                            ; preds = %bb.av
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !4259

bb.bg:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4260
  unreachable

.body.thread.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ap, %.body.thread8.i.i.i.i.i.i.i.i.i
  %eh.lpad-body4.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i, %.body.thread8.i.i.i.i.i.i.i.i.i ], [ %i.ga, %bb.ap ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j) #49
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bh, !noalias !4231

bb.bh:                                            ; preds = %.body.thread.i.i.i.i.i.i.i.i.i
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4231
  unreachable

_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB9_5model8document14DocumentFormatNtB7_12HintedStringEINtB7_2AtB1j_E2at0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENvMs2_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB23_7SpannedB1x_NtB23_8DiagSpanE8detachedENtNtNtB9_6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4228
  %i.hw = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.i)
          to label %.noexc116.i.i.i.i.i.i.i unwind label %.loopexit.split-lp46.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4222 ; 2 uses

.noexc116.i.i.i.i.i.i.i:                          ; preds = %_RNCNvXsa_NtCsdaEETE4DqmE_13typst_library4diagINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB9_5model8document14DocumentFormatNtB7_12HintedStringEINtB7_2AtB1j_E2at0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4228
  %i.hx = extractvalue { ptr, i64 } %i.hw, 0
  %i.hy = extractvalue { ptr, i64 } %i.hw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4228
  br label %bb.dp

bb.bi:                                            ; preds = %.noexc115.i.i.i.i.i.i.i
  %i.hz = load i8, ptr %i.bt, align 8, !range !40, !noalias !4228, !noundef !19 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4228
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4231
  %i.ia = call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #48, !noalias !4231 ; 3 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.invoke.i.i.i.i.i.i.i, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i.i.i, !prof !22

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.bi
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #46
          to label %.cont.i.i.i.i.i.i.i unwind label %.loopexit.split-lp46.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4222

.cont.i.i.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i.i.i
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bi
  %i.ic = icmp eq i8 %i.hz, -1                    ; 2 uses
  %..i.i.i.i.i.i.i = zext i1 %i.ic to i8
  store i8 %..i.i.i.i.i.i.i, ptr %i.ia, align 1, !noalias !4231
  store i128 0, ptr %i.ah, align 16, !noalias !4228
  store i64 3, ptr %i.cl, align 16, !noalias !4228
  store ptr %i.ia, ptr %.sroa.458.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4228
  store <2 x ptr> <ptr @82, ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7target_1__NtB9_10TargetElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE>, ptr %.sroa.559.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !4228
  store i64 1, ptr %.sroa.761.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !4228
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4228
  store i8 0, ptr %.sroa.963.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !4228
  store i8 0, ptr %.sroa.1064.0..sroa_idx.i.i.i.i.i.i.i.i, align 2, !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4228
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !4228
  store i64 1, ptr %i.cm, align 8, !noalias !4228
  store ptr %i.al, ptr %i.cn, align 8, !noalias !4228
  br i1 %i.ic, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i.i.i
  %i.id = load ptr, ptr %i.bo, align 8, !alias.scope !4261, !noalias !4218, !nonnull !19, !align !63, !noundef !19
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 216
  %i.if = invoke noundef zeroext i1 @_RNvMs0_CsdaEETE4DqmE_13typst_libraryNtB5_8Features10is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ie, i8 noundef 0)
          to label %bb.cq unwind label %bb.bl, !noalias !4231

bb.bk:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4228
  %i.ig = load ptr, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, align 8, !alias.scope !4227, !noalias !4222, !nonnull !19, !noundef !19
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 208
  invoke void @_RNvNtCs7tN9tvpkfrg_12typst_layout5pages26layout_document_for_bundle(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ih, i128 noundef %.sroa.6.sroa.6.0.copyload.i.i.i.i, ptr noundef align 16 %.sroa.6.sroa.7.0.copyload.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.bm unwind label %bb.bl, !noalias !4231

.body181.i.i.i.i.i.i.i.i:                         ; preds = %bb.dn, %.body211.i.i.i.i.i.i.i.i, %bb.cw, %bb.ct, %.thread258.i.i.i.i.i.i.i.i, %bb.br, %bb.bl
  %.pn179.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.is, %bb.br ], [ %.pn177.i.i.i.i.i.i.i.i, %.body211.i.i.i.i.i.i.i.i ], [ %i.jv, %bb.ct ], [ %.pn175257.i.i.i.i.i.i.i.i, %.thread258.i.i.i.i.i.i.i.i ], [ %i.jy, %bb.cw ], [ %i.ii, %bb.bl ], [ %i.lb, %bb.dn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 16 dereferenceable(128) %i.ah) #49
          to label %.body.i.i.i.i.i.i.i unwind label %bb.cm, !noalias !4231

bb.bl:                                            ; preds = %bb.dh, %bb.cs, %bb.bk, %bb.bj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body181.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ij = load i64, ptr %i.ae, align 8, !range !31, !noalias !4228, !noundef !19 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 2
  %i.il = load ptr, ptr %i.co, align 8, !noalias !4228 ; 2 uses
  %i.im = load i64, ptr %i.cp, align 8, !noalias !4228 ; 2 uses
  br i1 %i.ik, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4228
  br label %bb.cp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.631.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.671.0..sroa_idx.i.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4228
  store i64 %i.ij, ptr %i.af, align 8, !noalias !4228
  store ptr %i.il, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4228
  store i64 %i.im, ptr %.sroa.530.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4228
  %i.in = load i64, ptr %i.cq, align 8, !noalias !4228, !noundef !19 ; 2 uses
  store i64 %i.in, ptr %i.ad, align 8, !noalias !4228
  %i.io = icmp eq i64 %i.in, 1
  %i.ip = icmp eq i8 %i.hz, 0
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ip, %i.io
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.cl, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull align 8 dereferenceable(144) %i.af, i64 144, i1 false), !noalias !4228
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4262
  %i.iq = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !4262 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.bq, label %bb.cn, !prof !22

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #46
          to label %.noexc184.i.i.i.i.i.i.i.i unwind label %bb.br, !noalias !4231

.noexc184.i.i.i.i.i.i.i.i:                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.v) #49
          to label %.body181.i.i.i.i.i.i.i.i unwind label %bb.bs, !noalias !4231

bb.bs:                                            ; preds = %bb.br
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4231
  unreachable

bb.bt:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.z, i8 0, i64 15, i1 false), !noalias !4228
  store i8 -128, ptr %.sroa.476.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !4228
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 39)
          to label %bb.bv unwind label %bb.bu, !noalias !4231

bb.bu:                                            ; preds = %bb.bt
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #49
          to label %.thread258.i.i.i.i.i.i.i.i unwind label %bb.cm, !noalias !4231

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4228
  call void @llvm.experimental.noalias.scope.decl(metadata !4263)
  call void @llvm.experimental.noalias.scope.decl(metadata !4264)
  %i.iv = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.fk)
          to label %bb.bz unwind label %bb.bx, !noalias !4265 ; 2 uses

bb.bw:                                            ; preds = %bb.bx
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4265
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.aa) #49
          to label %.thread258.i.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !4266
end_hunk_1
begin_hunk_2_@_RNCNvCsgpMJJHpo27b_12typst_bundle11bundle_impl0B3_:bb.a
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.063.091.i32.i.i.i)
          to label %bb.ig unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10377

.body.i37.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ij, %bb.ii
  %eh.lpad-body.i38.i.i.i = phi { ptr, i32 } [ %i.aqv, %bb.ij ], [ %i.aqv, %bb.ii ], [ %lpad.loopexit.split-lp1322, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  call void @llvm.experimental.noalias.scope.decl(metadata !10407)
  call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  call void @llvm.experimental.noalias.scope.decl(metadata !10410)
  %i.apm = load i64, ptr %i.xz, align 8, !alias.scope !10411, !noalias !10376, !noundef !19 ; 3 uses
  %i.apn = icmp eq i64 %i.apm, 0
  br i1 %i.apn, label %.body.thread.i103, label %bb.id

bb.id:                                            ; preds = %.body.i37.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10412)
  %i.apo = load i64, ptr %i.xy, align 8, !alias.scope !10413, !noalias !10376, !noundef !19 ; 2 uses
  %i.app = icmp eq i64 %i.apo, 0
  br i1 %i.app, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i49.i51.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.apq = load ptr, ptr %i.t, align 8, !alias.scope !10413, !noalias !10376, !nonnull !19, !noundef !19 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i37.i39.i.i.i = load <16 x i8>, ptr %i.apq, align 16, !noalias !10414
  %i.apr = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i37.i39.i.i.i, splat (i8 -1)
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apq, i64 16
  %i.apt = bitcast <16 x i1> %i.apr to i16
  br label %bb.if

bb.if:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i, %bb.ie
  %.sroa.06.017.i.i.i.i.i.i.i38.i40.i.i.i = phi ptr [ %i.apq, %bb.ie ], [ %.sroa.06.1.i.i.i.i.i.i.i45.i47.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i39.i41.i.i.i = phi ptr [ %i.aps, %bb.ie ], [ %.sroa.6.1.i.i.i.i.i.i.i44.i46.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i40.i42.i.i.i = phi i16 [ %i.apt, %bb.ie ], [ %i.aqc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i41.i43.i.i.i = phi i64 [ %i.apo, %bb.ie ], [ %i.aqf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i42.i44.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i40.i42.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i42.i44.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i43.i45.i.i.i

.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i:               ; preds = %bb.if, %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i
  %i.apu = phi ptr [ %i.apy, %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i39.i41.i.i.i, %bb.if ] ; 2 uses
  %i.apv = phi ptr [ %i.apx, %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i38.i40.i.i.i, %bb.if ]
  %.val9.i.i.i.i.i.i.i.i53.i56.i.i.i = load <16 x i8>, ptr %i.apu, align 16, !noalias !10415
  %i.apw = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i53.i56.i.i.i, splat (i8 -1)
  %i.apx = getelementptr inbounds i8, ptr %i.apv, i64 -768 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i54.i57.i.i.i = bitcast <16 x i1> %i.apw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i55.i58.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i54.i57.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i55.i58.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i43.i45.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i43.i45.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i, %bb.if
  %.sroa.6.1.i.i.i.i.i.i.i44.i46.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i39.i41.i.i.i, %bb.if ], [ %i.apy, %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i45.i47.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i38.i40.i.i.i, %bb.if ], [ %i.apx, %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i46.i48.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i40.i42.i.i.i, %bb.if ], [ %.cast.i.i.i.i.i.i.i.i54.i57.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i52.i55.i.i.i ] ; 3 uses
  %i.apz = add i16 %.lcssa.i.i.i.i.i.i.i.i46.i48.i.i.i, -1
  %i.aqa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i46.i48.i.i.i, i1 true)
  %i.aqb = zext nneg i16 %i.aqa to i64
  %i.aqc = and i16 %i.apz, %.lcssa.i.i.i.i.i.i.i.i46.i48.i.i.i
  %i.aqd = sub nsw i64 0, %i.aqb
  %i.aqe = getelementptr inbounds [48 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i45.i47.i.i.i, i64 %i.aqd ; 2 uses
  %i.aqf = add i64 %.sroa.108.014.i.i.i.i.i.i.i41.i43.i.i.i, -1 ; 2 uses
  %i.aqg = getelementptr i8, ptr %i.aqe, i64 -16
  %.val5.i.i.i.i.i.i.i47.i49.i.i.i = load i64, ptr %i.aqg, align 16, !alias.scope !10416, !noalias !10417, !noundef !19 ; 2 uses
  %i.aqh = icmp ugt i64 %.val5.i.i.i.i.i.i.i47.i49.i.i.i, 1
  br i1 %i.aqh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i50.i53.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i50.i53.i.i.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i43.i45.i.i.i
  %i.aqi = getelementptr i8, ptr %i.aqe, i64 -32
  %.val.i.i.i.i.i.i.i51.i54.i.i.i = load ptr, ptr %i.aqi, align 16, !noalias !10417, !nonnull !19, !noundef !19
  %i.aqj = shl nuw i64 %.val5.i.i.i.i.i.i.i47.i49.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i51.i54.i.i.i, i64 noundef %i.aqj, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !10418
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i.i50.i53.i.i.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEE9next_implKb0_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i43.i45.i.i.i
  %i.aqk = icmp eq i64 %i.aqf, 0
  br i1 %i.aqk, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i49.i51.i.i.i, label %bb.if

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i49.i51.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i48.i50.i.i.i, %bb.id
  %i.aql = mul i64 %i.apm, 48                     ; 2 uses
  %i.aqm = add i64 %i.aql, 48                     ; 2 uses
  %i.aqn = add i64 %i.apm, 17
  %i.aqo = add i64 %i.aqn, %i.aqm                 ; 4 uses
  %i.aqp = icmp uge i64 %i.aqo, %i.aqm
  %i.aqq = icmp ult i64 %i.aqo, 9223372036854775793
  call void @llvm.assume(i1 %i.aqp)
  call void @llvm.assume(i1 %i.aqq)
  %i.aqr = icmp eq i64 %i.aqo, 0
  br i1 %i.aqr, label %.body.thread.i103, label %common.resume.sink.split.i.i.i

bb.ig:                                            ; preds = %bb.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !10376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10376
  store i64 %i.acz, ptr %i.xx, align 8, !noalias !10376
  call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  %i.aqs = load i64, ptr %.sroa.7.0..sroa_idx.i.i100, align 8, !alias.scope !10421, !noalias !10272, !noundef !19 ; 3 uses
  %i.aqt = load i64, ptr %i.xw, align 8, !range !37, !alias.scope !10421, !noalias !10272, !noundef !19
  %i.aqu = icmp eq i64 %i.aqs, %i.aqt
  br i1 %i.aqu, label %bb.ih, label %bb.il

bb.ih:                                            ; preds = %bb.ig
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB27_3num7nonzero7NonZerojEEEE8grow_oneCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.xw)
          to label %bb.il unwind label %bb.ii, !noalias !10422

bb.ii:                                            ; preds = %bb.ih
  %i.aqv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqw = load ptr, ptr %i.s, align 16, !alias.scope !10423, !noalias !10376, !noundef !19
  %.not.i.i.i110.i.i.i = icmp eq ptr %i.aqw, null
  br i1 %.not.i.i.i110.i.i.i, label %.body.i37.i.i.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %i.s)
          to label %.body.i37.i.i.i unwind label %bb.ik, !noalias !10424

bb.ik:                                            ; preds = %bb.ij
  %i.aqx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10424
  unreachable

bb.il:                                            ; preds = %bb.ih, %bb.ig
  %i.aqy = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !10421, !noalias !10272, !nonnull !19, !noundef !19
  %i.aqz = getelementptr inbounds nuw [32 x i8], ptr %i.aqy, i64 %i.aqs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aqz, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !10424
  %i.ara = add i64 %i.aqs, 1
  store i64 %i.ara, ptr %.sroa.7.0..sroa_idx.i.i100, align 8, !alias.scope !10421, !noalias !10272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10376
  %i.arb = getelementptr inbounds i8, ptr %i.apb, i64 -8
  %i.arc = load i64, ptr %i.arb, align 8, !noalias !10377, !noundef !19
  invoke fastcc void @_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_8MultiMapjNtNtB7_8location8LocationE6insertCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t, i64 noundef %i.arc, i128 noundef %i.alp)
          to label %bb.hs unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10377

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getjECsgpMJJHpo27b_12typst_bundle.exit.thread.i102.i.i.i: ; preds = %.lr.ph.i.i.i75.i.i.i
  %i.ard = getelementptr inbounds i8, ptr %i.anu, i64 -32 ; 2 uses
  %i.are = getelementptr inbounds i8, ptr %i.anu, i64 -16
  %i.arf = load i64, ptr %i.are, align 16, !alias.scope !10425, !noalias !10377, !noundef !19 ; 2 uses
  %i.arg = icmp ugt i64 %i.arf, 1                 ; 2 uses
  %i.arh = load ptr, ptr %i.ard, align 16, !alias.scope !10425, !noalias !10377, !nonnull !19
  %i.ari = getelementptr inbounds i8, ptr %i.anu, i64 -24
  %i.arj = load i64, ptr %i.ari, align 8, !alias.scope !10425, !noalias !10377
  %.sink11.i.i.i.i103.i.i.i = select i1 %i.arg, ptr %i.arh, ptr %i.ard ; 2 uses
  %.sink10.i.i.i.i104.i.i.i = select i1 %i.arg, i64 %i.arj, i64 %i.arf ; 2 uses
  %i.ark = icmp eq i64 %.sink10.i.i.i.i104.i.i.i, 0
  br i1 %i.ark, label %.loopexit.i81.i.i.i, label %.lr.ph.preheader.i105.i.i.i

.lr.ph.preheader.i105.i.i.i:                      ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_ENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getjECsgpMJJHpo27b_12typst_bundle.exit.thread.i102.i.i.i
  %i.arl = shl nuw nsw i64 %.sink10.i.i.i.i104.i.i.i, 4
  %i.arm = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i103.i.i.i, i64 %i.arl
  %.pre106.i106.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i100, align 8, !alias.scope !10426, !noalias !10272
  br label %.lr.ph.i107.i.i.i

.lr.ph.i107.i.i.i:                                ; preds = %bb.in, %.lr.ph.preheader.i105.i.i.i
  %i.arn = phi i64 [ %i.aru, %bb.in ], [ %.pre106.i106.i.i.i, %.lr.ph.preheader.i105.i.i.i ] ; 3 uses
  %.sroa.49.089.i108.i.i.i = phi ptr [ %i.aro, %bb.in ], [ %i.arm, %.lr.ph.preheader.i105.i.i.i ]
  %i.aro = getelementptr inbounds i8, ptr %.sroa.49.089.i108.i.i.i, i64 -16 ; 3 uses
  %i.arp = load i128, ptr %i.aro, align 16, !noalias !10377, !noundef !19
  call void @llvm.experimental.noalias.scope.decl(metadata !10427)
  %i.arq = load i64, ptr %i.xw, align 8, !range !37, !alias.scope !10426, !noalias !10272, !noundef !19
  %i.arr = icmp eq i64 %i.arn, %i.arq
  br i1 %i.arr, label %bb.im, label %bb.in

bb.im:                                            ; preds = %.lr.ph.i107.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB27_3num7nonzero7NonZerojEEEE8grow_oneCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.xw)
          to label %bb.in unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !10428

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEECsgpMJJHpo27b_12typst_bundle.exit.i59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i35.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hq, %bb.ic, %bb.il, %bb.im, %._crit_edge.i82.i.i.i, %select.unfold.invoke.i34.i.i.i
  %lpad.loopexit.split-lp1322 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i37.i.i.i

bb.in:                                            ; preds = %bb.im, %.lr.ph.i107.i.i.i
  %i.ars = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !10426, !noalias !10272, !nonnull !19, !noundef !19
  %i.art = getelementptr inbounds nuw [32 x i8], ptr %i.ars, i64 %i.arn ; 2 uses
  store ptr null, ptr %i.art, align 16, !noalias !10429
  %.sroa.4105.0..sroa_idx.i109.i.i.i = getelementptr inbounds nuw i8, ptr %i.art, i64 16
  store i128 %i.arp, ptr %.sroa.4105.0..sroa_idx.i109.i.i.i, align 16, !noalias !10429
  %i.aru = add i64 %i.arn, 1                      ; 2 uses
  store i64 %i.aru, ptr %.sroa.7.0..sroa_idx.i.i100, align 8, !alias.scope !10426, !noalias !10272
  %i.arv = icmp eq ptr %.sink11.i.i.i.i103.i.i.i, %i.aro
  br i1 %i.arv, label %.loopexit.i81.i.i.i, label %.lr.ph.i107.i.i.i

_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position13PagedPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3L_25BundleIntrospectorBuilder17discover_document0EB3N_.exit.i.i.i: ; preds = %bb.hp, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_EEECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i95.i.i.i, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10376
  %i.arw = load ptr, ptr %i.akr, align 8, !noalias !10315, !nonnull !19, !noundef !19
  %i.arx = atomicrmw add ptr %i.arw, i64 1 monotonic, align 8, !noalias !10315
  %i.ary = icmp slt i64 %i.arx, 0
  br i1 %i.ary, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position13PagedPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3L_25BundleIntrospectorBuilder17discover_document0EB3N_.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.ip:                                            ; preds = %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position13PagedPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3L_25BundleIntrospectorBuilder17discover_document0EB3N_.exit.i.i.i, %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position12HtmlPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3K_25BundleIntrospectorBuilder17discover_documents_0EB3M_.exit.i.i.i
  %.sink228.in.i.i.i = phi ptr [ %i.akr, %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position13PagedPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3L_25BundleIntrospectorBuilder17discover_document0EB3N_.exit.i.i.i ], [ %i.ade, %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position12HtmlPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3K_25BundleIntrospectorBuilder17discover_documents_0EB3M_.exit.i.i.i ]
  %i.arz = phi i64 [ 0, %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position13PagedPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3L_25BundleIntrospectorBuilder17discover_document0EB3N_.exit.i.i.i ], [ 1, %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position12HtmlPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3K_25BundleIntrospectorBuilder17discover_documents_0EB3M_.exit.i.i.i ] ; 2 uses
  %.sink228.i.i.i = load ptr, ptr %.sink228.in.i.i.i, align 8, !noalias !10315, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %.sink228.i.i.i, ptr %i.yd, align 8, !noalias !10313
  store i64 %i.arz, ptr %i.y, align 8, !noalias !10313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10313
  %i.asa = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.i, i64 63
  %i.asb = load i8, ptr %i.asa, align 1, !alias.scope !10430, !noundef !19
  %.not.i.i.i106 = icmp slt i8 %i.asb, 0
  %i.asc = getelementptr inbounds nuw i8, ptr %.sroa.0.0124.i, i64 56
  %.val.i.i.i121 = load ptr, ptr %i.act, align 16, !alias.scope !10430 ; 4 uses
  %.val28.i.i.i = load i64, ptr %i.asc, align 8, !alias.scope !10430
  %.not.i.i.i2.i.i = icmp eq ptr %.val.i.i.i121, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i106, i1 true, i1 %.not.i.i.i2.i.i
  br i1 %or.cond, label %bb.it, label %bb.ir

bb.iq:                                            ; preds = %_RINvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB6_26ElementIntrospectorBuilderINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1J_3num7nonzero7NonZerojEEE17discover_elementsNtNtB8_8position12HtmlPositionNCNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB3K_25BundleIntrospectorBuilder17discover_documents_0EB3M_.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.ir:                                            ; preds = %bb.ip
  %i.asd = getelementptr inbounds i8, ptr %.val.i.i.i121, i64 -16
  %i.ase = atomicrmw add ptr %i.asd, i64 1 monotonic, align 8, !noalias !10315
  %i.asf = icmp slt i64 %i.ase, 0
  br i1 %i.asf, label %bb.is, label %bb.it, !prof !22

bb.is:                                            ; preds = %bb.ir
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i121) #46
          to label %.noexc.i.i.i unwind label %bb.ix

.noexc.i.i.i:                                     ; preds = %bb.is
  unreachable

bb.it:                                            ; preds = %bb.ip, %bb.ir
  store ptr %.val.i.i.i121, ptr %i.ye, align 16, !noalias !10313
  store i64 %.val28.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !10313
  store i64 %i.arz, ptr %i.x, align 16, !noalias !10313
  store ptr %.sink228.i.i.i, ptr %i.yf, align 8, !noalias !10313
  store i128 %i.acw, ptr %i.yg, align 16, !noalias !10313
  call void @llvm.experimental.noalias.scope.decl(metadata !10431)
  %i.asg = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !10432, !noalias !10272, !noundef !19 ; 3 uses
  %i.ash = load i64, ptr %i.aa, align 8, !range !37, !alias.scope !10432, !noalias !10272, !noundef !19
  %i.asi = icmp eq i64 %i.asg, %i.ash
  br i1 %i.asi, label %bb.iu, label %_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder17discover_document.exit.i.i

bb.iu:                                            ; preds = %bb.it
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEE8grow_oneB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.aa)
          to label %_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder17discover_document.exit.i.i unwind label %bb.iv, !noalias !10433

bb.iv:                                            ; preds = %bb.iu
  %i.asj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationEEB1u_(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.x) #49
          to label %.body.thread.i103 unwind label %bb.iw, !noalias !10434

bb.iw:                                            ; preds = %bb.iv
  %i.ask = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10434
  unreachable

bb.ix:                                            ; preds = %bb.is
  %i.asl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgpMJJHpo27b_12typst_bundle10introspect17ChildIntrospectorEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.y) #49
          to label %.body.thread.i103 unwind label %bb.iy, !noalias !10315

bb.iy:                                            ; preds = %bb.ix
  %i.asm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10315
  unreachable

_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder17discover_document.exit.i.i: ; preds = %bb.iu, %bb.it
  %i.asn = load ptr, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !alias.scope !10432, !noalias !10272, !nonnull !19, !noundef !19
  %i.aso = getelementptr inbounds nuw [48 x i8], ptr %i.asn, i64 %i.asg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aso, ptr noundef nonnull align 16 dereferenceable(48) %i.x, i64 48, i1 false), !noalias !10434
  %i.asp = add i64 %i.asg, 1
  store i64 %i.asp, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !10432, !noalias !10272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10313
  br label %_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder13discover_item.exit.i

._crit_edge.loopexit.i:                           ; preds = %_RNvMs3_NtCsgpMJJHpo27b_12typst_bundle10introspectNtB5_25BundleIntrospectorBuilder13discover_item.exit.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.aa, align 8, !noalias !10272
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !noalias !10272
  %.sroa.7.0.copyload.pre.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !10272
  br label %._crit_edge.i107

._crit_edge.i107:                                 ; preds = %._crit_edge.loopexit.i, %.noexc127
  %.sroa.7.0.copyload.i = phi i64 [ %.sroa.7.0.copyload.pre.i, %._crit_edge.loopexit.i ], [ 0, %.noexc127 ] ; 5 uses
  %.sroa.6.0.copyload.i = phi ptr [ %.sroa.6.0.copyload.pre.i, %._crit_edge.loopexit.i ], [ inttoptr (i64 16 to ptr), %.noexc127 ] ; 6 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.pre.i, %._crit_edge.loopexit.i ], [ 0, %.noexc127 ] ; 5 uses
  %.sroa.8.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.8.0..sroa_idx.i108, i64 208, i1 false), !noalias !10272
  call void @llvm.experimental.noalias.scope.decl(metadata !10436)
  call void @llvm.experimental.noalias.scope.decl(metadata !10437)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  call void @llvm.experimental.noalias.scope.decl(metadata !10439)
  %i.asq = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.ass = load i64, ptr %i.asr, align 8, !alias.scope !10439, !noalias !10435, !noundef !19 ; 3 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 3 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 4 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.asw = load i64, ptr %i.asv, align 8, !alias.scope !10440, !noalias !10435, !noundef !19
  %i.asx = icmp ugt i64 %i.ass, %i.asw
  br i1 %i.asx, label %bb.iz, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i, !prof !22

bb.iz:                                            ; preds = %._crit_edge.i107
  %i.asy = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ast, i64 noundef %i.ass, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.asu, i1 noundef zeroext true) #51
          to label %.noexc.i.i20.i unwind label %bb.jh, !noalias !10441 ; 0 uses

.noexc.i.i20.i:                                   ; preds = %bb.iz
  %.pre.i.i.i = load i64, ptr %i.asr, align 8, !alias.scope !10439, !noalias !10435
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.ja:                                            ; preds = %bb.jm, %bb.jh
  %.pn25.i.i.i = phi { ptr, i32 } [ %i.atp, %bb.jh ], [ %.pn23.i.i.i, %bb.jm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10442)
  %i.asz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i28.i.i = load ptr, ptr %i.asz, align 8, !alias.scope !10442, !noalias !10443, !nonnull !19, !noundef !19 ; 4 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i29.i.i = load i64, ptr %i.ata, align 8, !alias.scope !10442, !noalias !10443, !noundef !19 ; 4 uses
  %i.atb = icmp eq i64 %.val1.i29.i.i, 0
  br i1 %i.atb, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_INtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB24_3num7nonzero7NonZerojEEEEENtNtNtB24_3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i35.i.i, label %.lr.ph1243

bb.jb:                                            ; preds = %.lr.ph1243
  %i.atc = icmp eq i64 %i.ate, %.val1.i29.i.i
  br i1 %i.atc, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_INtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB24_3num7nonzero7NonZerojEEEEENtNtNtB24_3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i35.i.i, label %.lr.ph1243

.lr.ph1243:                                       ; preds = %bb.ja, %bb.jb
  %.sroa.0.0.i.i.i30.i.i1242 = phi i64 [ %i.ate, %bb.jb ], [ 0, %bb.ja ] ; 2 uses
  %i.atd = getelementptr inbounds nuw [24 x i8], ptr %.val.i28.i.i, i64 %.sroa.0.0.i.i.i30.i.i1242
  %i.ate = add nuw nsw i64 %.sroa.0.0.i.i.i30.i.i1242, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.atd)
          to label %bb.jb unwind label %bb.jd, !noalias !10444

bb.jc:                                            ; preds = %.lr.ph1245
  %i.atf = add nuw nsw i64 %.sroa.0.1.i.i.i31.i.i1244, 1 ; 2 uses
  %i.atg = icmp eq i64 %i.atf, %.val1.i29.i.i
  br i1 %i.atg, label %.body.i32.i.i, label %.lr.ph1245

bb.jd:                                            ; preds = %.lr.ph1243
  %i.ath = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ati = icmp eq i64 %i.ate, %.val1.i29.i.i
  br i1 %i.ati, label %.body.i32.i.i, label %.lr.ph1245

.lr.ph1245:                                       ; preds = %bb.jd, %bb.jc
  %.sroa.0.1.i.i.i31.i.i1244 = phi i64 [ %i.atf, %bb.jc ], [ %i.ate, %bb.jd ] ; 2 uses
  %i.atj = getelementptr inbounds nuw [24 x i8], ptr %.val.i28.i.i, i64 %.sroa.0.1.i.i.i31.i.i1244
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.atj) #49
          to label %bb.jc unwind label %bb.je, !noalias !10444

bb.je:                                            ; preds = %.lr.ph1245
  %i.atk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !10445
  unreachable

.body.i32.i.i:                                    ; preds = %bb.jc, %bb.jd
  %.val4.i33.i.i = load i64, ptr %i.q, align 8, !range !37, !alias.scope !10442, !noalias !10443, !noundef !19 ; 2 uses
  %i.atl = icmp eq i64 %.val4.i33.i.i, 0
  br i1 %i.atl, label %.body37.i.i, label %bb.jf

bb.jf:                                            ; preds = %.body.i32.i.i
  %i.atm = mul nuw i64 %.val4.i33.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i28.i.i, i64 noundef %i.atm, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !10444
  br label %.body37.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_INtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB24_3num7nonzero7NonZerojEEEEENtNtNtB24_3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i35.i.i: ; preds = %bb.jb, %bb.ja
  %.val2.i36.i.i = load i64, ptr %i.q, align 8, !range !37, !alias.scope !10442, !noalias !10443, !noundef !19 ; 2 uses
  %i.atn = icmp eq i64 %.val2.i36.i.i, 0
  br i1 %i.atn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_INtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i, label %bb.jg

bb.jg:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_INtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB24_3num7nonzero7NonZerojEEEEENtNtNtB24_3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i35.i.i
  %i.ato = mul nuw i64 %.val2.i36.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i28.i.i, i64 noundef %i.ato, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !10444
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_INtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i

bb.jh:                                            ; preds = %bb.jk, %bb.iz
  %i.atp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %.noexc.i.i20.i, %._crit_edge.i107
  %i.atq = phi i64 [ %.pre.i.i.i, %.noexc.i.i20.i ], [ %i.ass, %._crit_edge.i107 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10446
  %i.atr = shl i64 %i.atq, 5                      ; 4 uses
  %i.ats = icmp ugt i64 %i.atq, 576460752303423487
  %.not.i.i.i.i109 = icmp ugt i64 %i.atr, 9223372036854775800
  %or.cond.i.i.i.i110 = or i1 %i.ats, %.not.i.i.i.i109
  br i1 %or.cond.i.i.i.i110, label %bb.jk, label %bb.ji, !prof !28

bb.ji:                                            ; preds = %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.att = icmp eq i64 %i.atr, 0
  br i1 %i.att, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.ji
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !10447
  %i.atu = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.atr, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !10447 ; 2 uses
  %i.atv = icmp eq ptr %i.atu, null
  br i1 %i.atv, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.atw = ptrtoint ptr %i.atu to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.jk:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1W_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.atr) #46
          to label %bb.ke unwind label %bb.jh, !noalias !10441

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.jj, %bb.ji
  %.sroa.10.0.i.i.i = phi i64 [ %i.atw, %bb.jj ], [ 8, %bb.ji ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.atq, %bb.jj ], [ 0, %bb.ji ] ; 2 uses
  %i.atx = inttoptr i64 %.sroa.10.0.i.i.i to ptr
  %i.aty = icmp samesign ule i64 %i.atq, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.aty)
  store i64 %.sroa.4.0.i.i.i, ptr %i.p, align 8, !noalias !10446
  %i.atz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.atx, ptr %i.atz, align 8, !noalias !10446
  %i.aua = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.aua, align 8, !noalias !10446
  %i.aub = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.aud = load ptr, ptr %i.auc, align 8, !alias.scope !10439, !noalias !10435, !nonnull !19, !noundef !19 ; 4 uses
  %i.aue = load i64, ptr %i.aub, align 8, !range !37, !alias.scope !10439, !noalias !10435, !noundef !19
  %i.auf = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.aug = load i64, ptr %i.auf, align 8, !alias.scope !10439, !noalias !10435, !noundef !19 ; 3 uses
  store i64 0, ptr %i.aub, align 8, !alias.scope !10439, !noalias !10435
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle:bb.a
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB2i_19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEE5querys2_0EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(80) %i.v) #49
          to label %.body8.i unwind label %bb.cn, !noalias !12333

.loopexit.split-lp.loopexit.split-lp.i231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc7.i.i
  %lpad.loopexit.split-lp2077 = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

.body8.i:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.co, %.body.i.i
  %eh.lpad-body9.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.co ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp2077, %.loopexit.split-lp.loopexit.split-lp.i231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val.i225 = load ptr, ptr %i.x, align 8, !noalias !12330, !nonnull !19, !noundef !19
  %.val3.i = load i64, ptr %i.qt, align 8, !noalias !12330
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i225, i64 %.val3.i) #49
          to label %common.resume unwind label %bb.cp, !noalias !12330

bb.cp:                                            ; preds = %.thread.i, %.body8.i
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12330
  unreachable

.thread.i:                                        ; preds = %bb.ca
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB2i_19ElementIntrospectorINtNtB4_6option6OptionINtNtNtB4_3num7nonzero7NonZerojEEE5querys2_0EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(80) %i.y) #49
          to label %common.resume unwind label %bb.cp, !noalias !12330

_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys2_0EECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.noexc7.i234, %.noexc.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12333
  %i.rs = load ptr, ptr %i.x, align 8, !noalias !12330, !nonnull !19, !noundef !19
  %i.rt = load i64, ptr %i.qt, align 8, !noalias !12330, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12330
  br label %bb.da

bb.cq:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !nonnull !19, !noundef !19
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rx = load i64, ptr %i.rw, align 16, !noundef !19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12344
  %i.ry = shl nuw nsw i64 %i.rx, 4                ; 2 uses
  %i.rz = icmp eq i64 %i.rx, 0
  br i1 %i.rz, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i.thread: ; preds = %bb.cq
  store i64 %i.rx, ptr %i.d, align 8, !noalias !12344
  %i.sa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.sa, align 8, !noalias !12344
  %i.sb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.sb, align 8, !noalias !12344
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorINtNtB3j_6option6OptionINtNtNtB3j_3num7nonzero7NonZerojEEE5querys3_0EE9from_iterCsgpMJJHpo27b_12typst_bundle.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.cq
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !12345, !inline_history !11980
  %i.sc = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ry, i64 noundef range(i64 8, 17) 8) #48, !noalias !12345, !inline_history !11980 ; 3 uses
  %i.sd = icmp eq ptr %i.sc, null
  br i1 %i.sd, label %bb.cr, label %.preheader.i.preheader

bb.cr:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ry) #46, !noalias !12344, !inline_history !11980
  unreachable

.preheader.i.preheader:                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.rx, ptr %i.d, align 8, !noalias !12344
  %i.se = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.sc, ptr %i.se, align 8, !noalias !12344
  %i.sf = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12346)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.cs
  %.sroa.6.0.i = phi i64 [ %i.sm, %bb.cs ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.sg = getelementptr inbounds nuw [64 x i8], ptr %i.rv, i64 %.sroa.6.0.i
  %i.sh = invoke fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.sg)
          to label %bb.cs unwind label %.body1249, !noalias !12347, !inline_history !11984 ; 2 uses

bb.cs:                                            ; preds = %.preheader.i
  %i.si = extractvalue { ptr, i64 } %i.sh, 0
  %i.sj = extractvalue { ptr, i64 } %i.sh, 1
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.sc, i64 %.sroa.6.0.i ; 2 uses
  store ptr %i.si, ptr %i.sk, align 8, !noalias !12348
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i64 %i.sj, ptr %i.sl, align 8, !noalias !12348
  %i.sm = add nuw i64 %.sroa.6.0.i, 1             ; 2 uses
  %i.sn = icmp eq i64 %i.sm, %i.rx
  br i1 %i.sn, label %bb.ct, label %.preheader.i

bb.ct:                                            ; preds = %bb.cs
  store i64 %i.rx, ptr %i.sf, align 8, !alias.scope !12346, !noalias !12349
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorINtNtB3j_6option6OptionINtNtNtB3j_3num7nonzero7NonZerojEEE5querys3_0EE9from_iterCsgpMJJHpo27b_12typst_bundle.exit

.body1249:                                        ; preds = %.preheader.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.0.i, ptr %i.sf, align 8, !alias.scope !12346, !noalias !12349
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #49
          to label %common.resume unwind label %bb.cu, !noalias !12344, !inline_history !11980

bb.cu:                                            ; preds = %.body1249
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12344, !inline_history !11980
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorINtNtB3j_6option6OptionINtNtNtB3j_3num7nonzero7NonZerojEEE5querys3_0EE9from_iterCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgpMJJHpo27b_12typst_bundle.exit.i.thread, %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !12350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8, !nonnull !19, !noundef !19 ; 9 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !noundef !19 ; 6 uses
  switch i64 %i.st, label %bb.cv [
    i64 0, label %.thread606
    i64 1, label %.thread610
  ]

bb.cv:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorINtNtB3j_6option6OptionINtNtNtB3j_3num7nonzero7NonZerojEEE5querys3_0EE9from_iterCsgpMJJHpo27b_12typst_bundle.exit
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !12351, !noalias !12352, !noundef !19 ; 2 uses
  %i.sw = add i64 %i.st, 1152921504606846975      ; 4 uses
  %i.sx = and i64 %i.sw, 1152921504606846975
  %xtraiter = and i64 %i.sw, 1
  %i.sy = icmp eq i64 %i.sx, 1
  br i1 %i.sy, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.cv
  %unroll_iter = and i64 %i.sw, 1152921504606846974
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.new
  %.sroa.025.0.i.i = phi i64 [ %i.sv, %.new ], [ %.sroa.025.0.copyload26.sroa.speculated.i.i.1, %bb.cw ] ; 2 uses
  %.sroa.627.0.i.i = phi i64 [ 0, %.new ], [ %.sroa.627.0.copyload28.sroa.speculated.i.i.1, %bb.cw ]
  %.sroa.0.0.i.i.i.in.i.i = phi i64 [ 0, %.new ], [ %.sroa.0.0.i.i.i.i.i.1, %bb.cw ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.cw ]
  %.sroa.0.0.i.i.i.i.i = or disjoint i64 %.sroa.0.0.i.i.i.in.i.i, 1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %.sroa.0.0.i.i.i.in.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !alias.scope !12353, !noalias !12354, !noundef !19 ; 2 uses
  %i.tc = icmp ult i64 %i.tb, %.sroa.025.0.i.i
  %.sroa.025.0.copyload26.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.tb, i64 %.sroa.025.0.i.i) ; 2 uses
  %.sroa.627.0.copyload28.sroa.speculated.i.i = select i1 %i.tc, i64 %.sroa.0.0.i.i.i.i.i, i64 %.sroa.627.0.i.i
  %.sroa.0.0.i.i.i.i.i.1 = add nuw i64 %.sroa.0.0.i.i.i.in.i.i, 2 ; 3 uses
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %.sroa.0.0.i.i.i.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tf = load i64, ptr %i.te, align 8, !alias.scope !12353, !noalias !12354, !noundef !19 ; 2 uses
  %i.tg = icmp ult i64 %i.tf, %.sroa.025.0.copyload26.sroa.speculated.i.i
  %.sroa.025.0.copyload26.sroa.speculated.i.i.1 = call i64 @llvm.umin.i64(i64 %i.tf, i64 %.sroa.025.0.copyload26.sroa.speculated.i.i) ; 2 uses
  %.sroa.627.0.copyload28.sroa.speculated.i.i.1 = select i1 %i.tg, i64 %.sroa.0.0.i.i.i.i.i.1, i64 %.sroa.627.0.copyload28.sroa.speculated.i.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread610.loopexit.unr-lcssa, label %bb.cw

bb.cx:                                            ; preds = %bb.b
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !nonnull !19, !noundef !19
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.tj) ; 2 uses
  %i.tl = extractvalue { ptr, i64 } %i.tk, 0      ; 9 uses
  %i.tm = extractvalue { ptr, i64 } %i.tk, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.to = load ptr, ptr %i.tn, align 16, !nonnull !19, !noundef !19
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  invoke fastcc void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE11query_firstCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.tp)
          to label %bb.eo unwind label %bb.en

bb.cy:                                            ; preds = %bb.b
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !nonnull !19, !noundef !19
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ts) ; 2 uses
  %i.tu = extractvalue { ptr, i64 } %i.tt, 0      ; 8 uses
  %i.tv = extractvalue { ptr, i64 } %i.tt, 1      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tx = load ptr, ptr %i.tw, align 16, !nonnull !19, !noundef !19
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  invoke fastcc void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE11query_firstCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ty)
          to label %bb.fh unwind label %bb.fg

bb.cz:                                            ; preds = %bb.b
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !nonnull !19, !noundef !19
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.uc = call fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ub) ; 2 uses
  %i.ud = extractvalue { ptr, i64 } %i.uc, 0      ; 11 uses
  %i.ue = extractvalue { ptr, i64 } %i.uc, 1      ; 16 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ug = load ptr, ptr %i.uf, align 16, !nonnull !19, !noundef !19
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = invoke fastcc { ptr, i64 } @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.uh)
          to label %bb.ga unwind label %bb.fz     ; 2 uses

bb.da:                                            ; preds = %bb.hl, %bb.fx, %bb.fe, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit277, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys2_0EECsgpMJJHpo27b_12typst_bundle.exit, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECsgpMJJHpo27b_12typst_bundle.exit, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtB34_6filter6FilterINtNtB34_3map3MapINtNtNtB1U_5slice4iter4IterTBI_INtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEEENCNvMs0_NtNtBO_13introspection12introspectorINtB5L_19ElementIntrospectorB4G_E3all0ENCNvB5H_5query0EEECsgpMJJHpo27b_12typst_bundle.exit
  %.sroa.14.0 = phi i64 [ %i.bi, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtB34_6filter6FilterINtNtB34_3map3MapINtNtNtB1U_5slice4iter4IterTBI_INtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEEENCNvMs0_NtNtBO_13introspection12introspectorINtB5L_19ElementIntrospectorB4G_E3all0ENCNvB5H_5query0EEECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.vg, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.fy, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.agi, %bb.hl ], [ %i.rt, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys2_0EECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.vs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit277 ], [ %.sroa.10509.3, %bb.fe ], [ %.sroa.10517.3, %bb.fx ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.bh, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtB34_6filter6FilterINtNtB34_3map3MapINtNtNtB1U_5slice4iter4IterTBI_INtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEEENCNvMs0_NtNtBO_13introspection12introspectorINtB5L_19ElementIntrospectorB4G_E3all0ENCNvB5H_5query0EEECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.vh, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.fz, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtB1U_5slice4iter4IterjENCNvMs0_NtNtBO_13introspection12introspectorINtB42_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys_0EECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.agh, %bb.hl ], [ %i.rs, %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtNtB1S_8adapters3map3MapINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3set8IntoIterjENCNvMs0_NtNtBO_13introspection12introspectorINtB4A_19ElementIntrospectorINtNtB1U_6option6OptionINtNtNtB1U_3num7nonzero7NonZerojEEE5querys2_0EECsgpMJJHpo27b_12typst_bundle.exit ], [ %i.vr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit277 ], [ %.sroa.0506.3, %bb.fe ], [ %.sroa.0514.3, %bb.fx ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %.not.i.i240 = icmp eq ptr %.sroa.0.0, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i240, label %.thread596, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.uj = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16
  %i.uk = atomicrmw add ptr %i.uj, i64 1 monotonic, align 8
  %i.ul = icmp slt i64 %i.uk, 0
  br i1 %i.ul, label %bb.dc, label %.thread596, !prof !22

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.sroa.0.0, i64 noundef %.sroa.14.0) #46
          to label %.noexc unwind label %bb.hm

.noexc:                                           ; preds = %bb.dc
  unreachable

_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread.thread: ; preds = %._crit_edge.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12355
  store ptr null, ptr %i.p, align 8, !alias.scope !12356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12355
  br label %.thread604

_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread: ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !nonnull !19, !noundef !19
  %i.uo = getelementptr inbounds nuw [32 x i8], ptr %i.un, i64 %i.dk
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uo)
  %.sroa.07.0.copyload = load ptr, ptr %i.ai, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12355
  store ptr %.sroa.07.0.copyload, ptr %i.p, align 8, !alias.scope !12356
  %.sroa.4436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4436.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  %.not.i = icmp eq ptr %.sroa.07.0.copyload, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12355
  br i1 %.not.i, label %.thread604, label %bb.dd

.thread604:                                       ; preds = %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread.thread, %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12357
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECsgpMJJHpo27b_12typst_bundle.exit

bb.dd:                                            ; preds = %_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE10get_by_locCsgpMJJHpo27b_12typst_bundle.exit.thread
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !12358
  %i.up = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #48, !noalias !12358 ; 4 uses
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %bb.de, label %bb.df, !prof !22

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc413 unwind label %.thread.i244

.noexc413:                                        ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store i64 1, ptr %i.up, align 8, !noalias !12358
  %.sroa.4.0..sroa.06.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store i64 1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx.i, align 8, !noalias !12358
  store ptr %i.ur, ptr %i.o, align 8, !noalias !12355
  %i.us = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store i64 0, ptr %i.us, align 8, !noalias !12355
  call void @llvm.experimental.noalias.scope.decl(metadata !12359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12360
  store ptr %.sroa.07.0.copyload, ptr %i.n, align 8, !alias.scope !12361, !noalias !12362
  %.sroa.513.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx14.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef 1)
          to label %bb.dg unwind label %bb.dl, !noalias !12363

bb.dg:                                            ; preds = %bb.df
  %.pre.i7.i = load i64, ptr %i.us, align 8, !alias.scope !12364, !noalias !12355
  %.val.i.pre.i.i = load ptr, ptr %i.o, align 8, !alias.scope !12364, !noalias !12355 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12360
  store ptr %.sroa.07.0.copyload, ptr %i.m, align 8, !noalias !12360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12365)
  %.not.i.i.i.i250 = icmp eq ptr %.val.i.pre.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i250, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i252, label %bb.di

bb.dh:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i252
  %i.ut = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body9.i unwind label %bb.dj, !noalias !12366, !inline_history !14

bb.di:                                            ; preds = %bb.dg
  %i.uu = getelementptr i8, ptr %.val.i.pre.i.i, i64 -8
  %.val.i.i.i.i251 = load i64, ptr %i.uu, align 8, !noalias !12367, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i252

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i252: ; preds = %bb.di, %bb.dg
  %.sroa.02.0.i.i.i.i253 = phi i64 [ %.val.i.i.i.i251, %bb.di ], [ 0, %bb.dg ]
  %i.uv = icmp eq i64 %.pre.i7.i, %.sroa.02.0.i.i.i.i253
  %i.uw = zext i1 %i.uv to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef %i.uw)
          to label %._crit_edge.loopexit.i.i unwind label %bb.dh, !noalias !12368, !inline_history !14

bb.dj:                                            ; preds = %bb.dh
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12366, !inline_history !14
  unreachable

._crit_edge.loopexit.i.i:                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i252
  %i.uy = load ptr, ptr %i.o, align 8, !alias.scope !12364, !noalias !12355, !nonnull !19, !noundef !19 ; 2 uses
  %i.uz = load i64, ptr %i.us, align 8, !alias.scope !12364, !noalias !12355, !noundef !19 ; 2 uses
  %i.va = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.uz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.va, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !12366
  %i.vb = add i64 %i.uz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12360
  br label %_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECsgpMJJHpo27b_12typst_bundle.exit

bb.dk:                                            ; preds = %bb.dl
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12360
  unreachable

bb.dl:                                            ; preds = %bb.df
  %i.vd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body9.i unwind label %bb.dk, !noalias !12360

.body9.i:                                         ; preds = %bb.dl, %bb.dh
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.ut, %bb.dh ], [ %i.vd, %bb.dl ]
  %.val.i248 = load ptr, ptr %i.o, align 8, !noalias !12355, !nonnull !19, !noundef !19
  %.val3.i249 = load i64, ptr %i.us, align 8, !noalias !12355
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i248, i64 %.val3.i249) #49
          to label %common.resume unwind label %bb.dm, !noalias !12355

bb.dm:                                            ; preds = %.thread.i244, %.body9.i
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !12355
  unreachable

.thread.i244:                                     ; preds = %bb.de
  %i.vf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.dm, !noalias !12355

_RINvXsu_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBI_E9from_iterINtNtB1U_6option8IntoIterBI_EECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.thread604, %._crit_edge.loopexit.i.i
  %i.vg = phi i64 [ 0, %.thread604 ], [ %i.vb, %._crit_edge.loopexit.i.i ]
  %i.vh = phi ptr [ inttoptr (i64 16 to ptr), %.thread604 ], [ %i.uy, %._crit_edge.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12355
  br label %bb.da

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.body, %bb.ek, %bb.dn
  %.pn156 = phi { ptr, i32 } [ %i.vi, %bb.dn ], [ %eh.lpad-body.i257, %bb.ek ], [ %eh.lpad-body.i257, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #49
          to label %common.resume unwind label %bb.em

bb.dn:                                            ; preds = %bb.el, %bb.ei
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECsgpMJJHpo27b_12typst_bundle.exit

.thread606:                                       ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3j_5slice4iter4IterNtNtB1G_8selector8SelectorENCNvMs0_NtNtB1I_13introspection12introspectorINtB4Y_19ElementIntrospectorINtNtB3j_6option6OptionINtNtNtB3j_3num7nonzero7NonZerojEEE5querys3_0EE9from_iterCsgpMJJHpo27b_12typst_bundle.exit
  store ptr null, ptr %i.ao, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.ej, %.thread606
  %.idx2044 = phi i64 [ %i.aan, %bb.ej ], [ 0, %.thread606 ] ; 3 uses
  %i.vj = phi ptr [ %i.aah, %bb.ej ], [ null, %.thread606 ] ; 2 uses
  %.not155 = icmp eq ptr %i.vj, null              ; 2 uses
  %. = select i1 %.not155, ptr null, ptr %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12369
  store ptr inttoptr (i64 16 to ptr), ptr %i.l, align 8, !noalias !12369
  %i.vk = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store i64 0, ptr %i.vk, align 8, !noalias !12369
  call void @llvm.experimental.noalias.scope.decl(metadata !12370)
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.idx2044 ; 2 uses
  %i.vp = icmp samesign eq i64 %.idx2044, 0
  %i.vq = icmp samesign eq i64 %.idx2044, 0
  br label %bb.dp

bb.dp:                                            ; preds = %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i271, %bb.do
  %i.vr = phi ptr [ inttoptr (i64 16 to ptr), %bb.do ], [ %i.zw, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i271 ] ; 4 uses
  %i.vs = phi i64 [ 0, %bb.do ], [ %i.zz, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i271 ] ; 3 uses
  %.sroa.15.0.i.i = phi ptr [ undef, %bb.do ], [ %.sroa.15.1.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i271 ] ; 5 uses
  %.sroa.769.0.i.i = phi ptr [ null, %bb.do ], [ %.sroa.769.1.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i271 ] ; 3 uses
  %.sroa.468.0.i.i = phi ptr [ %., %bb.do ], [ %.sroa.468.1.i.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4pushCsgpMJJHpo27b_12typst_bundle.exit.i.i271 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12371
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.769.0.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEuINtNtNtBg_3ops12control_flow11ControlFlowRB2y_ENCINvNvB1j_4find5checkB4h_QNCNvMs0_NtNtB2E_13introspection12introspectorINtB4W_19ElementIntrospectorINtNtBg_6option6OptionINtNtNtBg_3num7nonzero7NonZerojEEE5querys7_0E0E0CsgpMJJHpo27b_12typst_bundle.exit47.thread.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.i.i) ]
  %i.vt = icmp eq ptr %.sroa.769.0.i.i, %.sroa.15.0.i.i
  br i1 %i.vt, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEuINtNtNtBg_3ops12control_flow11ControlFlowRB2y_ENCINvNvB1j_4find5checkB4h_QNCNvMs0_NtNtB2E_13introspection12introspectorINtB4W_19ElementIntrospectorINtNtBg_6option6OptionINtNtNtBg_3num7nonzero7NonZerojEEE5querys7_0E0E0CsgpMJJHpo27b_12typst_bundle.exit47.thread.i.i, label %.lr.ph.i.i26.i.i

end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorINtB5_19ElementIntrospectorINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB1B_3num7nonzero7NonZerojEEE5queryCsgpMJJHpo27b_12typst_bundle:bb.a
  %.sroa.01.0.i.i.i.i.i.i.i.i357 = and i64 %.pn.i.i.i.i.i.i.i356, %i.alv ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 %.sroa.01.0.i.i.i.i.i.i.i.i357
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i358 = load <16 x i8>, ptr %i.alz, align 1, !noalias !12460 ; 2 uses
  %i.ama = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i358, %i.aly
  %i.amb = bitcast <16 x i1> %i.ama to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i359 = icmp eq i16 %i.amb, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i359, label %._crit_edge.i.i.i.i.i.i.i364, label %.lr.ph.i.i.i.i.i.i.i360

.lr.ph.i.i.i.i.i.i.i360:                          ; preds = %bb.gy, %bb.gz
  %.sroa.06.0.i31.i.i.i.i.i.i.i361 = phi i16 [ %i.amo, %bb.gz ], [ %i.amb, %bb.gy ] ; 3 uses
  %i.amc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i361, i1 true)
  %i.amd = zext nneg i16 %i.amc to i64
  %i.ame = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i357, %i.amd
  %i.amf = and i64 %i.ame, %i.alv
  %i.amg = sub nsw i64 0, %i.amf
  %i.amh = getelementptr inbounds [32 x i8], ptr %i.alw, i64 %i.amg ; 2 uses
  %i.ami = getelementptr inbounds i8, ptr %i.amh, i64 -32
  %.val2.i.i.i.i.i.i.i.i362 = load i128, ptr %i.ami, align 16, !noalias !12461, !noundef !19
  %i.amj = icmp eq i128 %i.all, %.val2.i.i.i.i.i.i.i.i362
  br i1 %i.amj, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i367, label %bb.gz, !prof !21

._crit_edge.i.i.i.i.i.i.i364:                     ; preds = %bb.gz, %bb.gy
  %i.amk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i358, splat (i8 -1)
  %i.aml = bitcast <16 x i1> %i.amk to i16
  %i.amm = icmp eq i16 %i.aml, 0
  br i1 %i.amm, label %bb.ha, label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i, !prof !22

bb.gz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i360
  %i.amn = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i361, -1
  %i.amo = and i16 %i.amn, %.sroa.06.0.i31.i.i.i.i.i.i.i361 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i363 = icmp eq i16 %i.amo, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i363, label %._crit_edge.i.i.i.i.i.i.i364, label %.lr.ph.i.i.i.i.i.i.i360

bb.ha:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i364
  %i.amp = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i355, 16 ; 2 uses
  %i.amq = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i357, %i.amp
  br label %bb.gy

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i367: ; preds = %.lr.ph.i.i.i.i.i.i.i360
  %i.amr = getelementptr i8, ptr %i.amh, i64 -8
  %.val6.i.i.i.i.i = load i64, ptr %i.amr, align 8, !alias.scope !12462, !noalias !12455, !noundef !19
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i364, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i367, %bb.gw
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %.val6.i.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i367 ], [ -1, %bb.gw ], [ -1, %._crit_edge.i.i.i.i.i.i.i364 ] ; 2 uses
  %i.ams = icmp eq i64 %.sroa.3.0.i.i.i.i.i, %.sroa.3.0.i
  br i1 %i.ams, label %bb.hh, label %bb.hg

.lr.ph.i.i368:                                    ; preds = %bb.gv, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i
  %.sroa.01.038.i.i = phi i64 [ %i.aok, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i ], [ %i.ue, %bb.gv ] ; 2 uses
  %.sroa.05.037.i.i = phi i64 [ %i.aoj, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i ], [ 0, %bb.gv ] ; 2 uses
  %i.amt = lshr i64 %.sroa.01.038.i.i, 1          ; 2 uses
  %i.amu = add nuw nsw i64 %i.amt, %.sroa.05.037.i.i ; 3 uses
  %i.amv = icmp ult i64 %i.amu, %i.ue
  call void @llvm.assume(i1 %i.amv)
  %i.amw = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %i.amu
  %.val13.i.i369 = load ptr, ptr %i.amw, align 8, !alias.scope !12454, !nonnull !19, !noundef !19 ; 2 uses
  %i.amx = load i128, ptr %.val13.i.i369, align 16, !range !20, !noalias !12455, !noundef !19
  %i.amy = trunc nuw i128 %i.amx to i1
  br i1 %i.amy, label %bb.hb, label %.invoke, !prof !21

bb.hb:                                            ; preds = %.lr.ph.i.i368
  %i.amz = getelementptr inbounds nuw i8, ptr %.val13.i.i369, i64 16
  %i.ana = load i128, ptr %i.amz, align 16, !noalias !12455 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12463)
  br i1 %i.agp, label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.anb = trunc i128 %i.ana to i64
  %i.anc = mul i64 %i.anb, -1065810590584100411
  %i.and = lshr i128 %i.ana, 64
  %i.ane = trunc nuw i128 %i.and to i64
  %i.anf = add i64 %i.anc, %i.ane
  %i.ang = mul i64 %i.anf, -1065810590584100411   ; 2 uses
  %i.anh = call noundef i64 @llvm.fshl.i64(i64 %i.ang, i64 %i.ang, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12464)
  call void @llvm.experimental.noalias.scope.decl(metadata !12465)
  %i.ani = lshr i64 %i.anh, 57
  %i.anj = trunc nuw nsw i64 %i.ani to i8
  %i.ank = load i64, ptr %i.agf, align 8, !alias.scope !12466, !noalias !12455, !noundef !19 ; 2 uses
  %i.anl = load ptr, ptr %i.age, align 8, !alias.scope !12466, !noalias !12455, !nonnull !19, !noundef !19 ; 2 uses
  %i.anm = insertelement <16 x i8> poison, i8 %i.anj, i64 0
  %i.ann = shufflevector <16 x i8> %i.anm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hf, %bb.hc
  %.sroa.9.0.i.i.i.i.i.i18.i.i370 = phi i64 [ 0, %bb.hc ], [ %i.aoe, %bb.hf ]
  %.pn.i.i.i.i.i19.i.i371 = phi i64 [ %i.anh, %bb.hc ], [ %i.aof, %bb.hf ]
  %.sroa.01.0.i.i.i.i.i.i20.i.i372 = and i64 %.pn.i.i.i.i.i19.i.i371, %i.ank ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anl, i64 %.sroa.01.0.i.i.i.i.i.i20.i.i372
  %.sroa.0.0.copyload.i24.i.i.i.i.i21.i.i373 = load <16 x i8>, ptr %i.ano, align 1, !noalias !12467 ; 2 uses
  %i.anp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i21.i.i373, %i.ann
  %i.anq = bitcast <16 x i1> %i.anp to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i22.i.i374 = icmp eq i16 %i.anq, 0
  br i1 %.not.i.not30.i.i.i.i.i22.i.i374, label %._crit_edge.i.i.i.i.i27.i.i379, label %.lr.ph.i.i.i.i.i23.i.i375

.lr.ph.i.i.i.i.i23.i.i375:                        ; preds = %bb.hd, %bb.he
  %.sroa.06.0.i31.i.i.i.i.i24.i.i376 = phi i16 [ %i.aod, %bb.he ], [ %i.anq, %bb.hd ] ; 3 uses
  %i.anr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i24.i.i376, i1 true)
  %i.ans = zext nneg i16 %i.anr to i64
  %i.ant = add i64 %.sroa.01.0.i.i.i.i.i.i20.i.i372, %i.ans
  %i.anu = and i64 %i.ant, %i.ank
  %i.anv = sub nsw i64 0, %i.anu
  %i.anw = getelementptr inbounds [32 x i8], ptr %i.anl, i64 %i.anv ; 2 uses
  %i.anx = getelementptr inbounds i8, ptr %i.anw, i64 -32
  %.val2.i.i.i.i.i.i25.i.i377 = load i128, ptr %i.anx, align 16, !noalias !12468, !noundef !19
  %i.any = icmp eq i128 %i.ana, %.val2.i.i.i.i.i.i25.i.i377
  br i1 %i.any, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i.i380, label %bb.he, !prof !21

._crit_edge.i.i.i.i.i27.i.i379:                   ; preds = %bb.he, %bb.hd
  %i.anz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i21.i.i373, splat (i8 -1)
  %i.aoa = bitcast <16 x i1> %i.anz to i16
  %i.aob = icmp eq i16 %i.aoa, 0
  br i1 %i.aob, label %bb.hf, label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i, !prof !22

bb.he:                                            ; preds = %.lr.ph.i.i.i.i.i23.i.i375
  %i.aoc = add i16 %.sroa.06.0.i31.i.i.i.i.i24.i.i376, -1
  %i.aod = and i16 %i.aoc, %.sroa.06.0.i31.i.i.i.i.i24.i.i376 ; 2 uses
  %.not.i.not.i.i.i.i.i26.i.i378 = icmp eq i16 %i.aod, 0
  br i1 %.not.i.not.i.i.i.i.i26.i.i378, label %._crit_edge.i.i.i.i.i27.i.i379, label %.lr.ph.i.i.i.i.i23.i.i375

bb.hf:                                            ; preds = %._crit_edge.i.i.i.i.i27.i.i379
  %i.aoe = add i64 %.sroa.9.0.i.i.i.i.i.i18.i.i370, 16 ; 2 uses
  %i.aof = add i64 %.sroa.01.0.i.i.i.i.i.i20.i.i372, %i.aoe
  br label %bb.hd

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i.i380: ; preds = %.lr.ph.i.i.i.i.i23.i.i375
  %i.aog = getelementptr i8, ptr %i.anw, i64 -8
  %.val6.i.i.i31.i.i = load i64, ptr %i.aog, align 8, !alias.scope !12469, !noalias !12455, !noundef !19
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i

.invoke:                                          ; preds = %._crit_edge.i.i352, %._crit_edge.i.i346, %.lr.ph.i.i349, %.lr.ph.i.i368
  %i.aoh = phi ptr [ @72, %.lr.ph.i.i368 ], [ @111, %.lr.ph.i.i349 ], [ @111, %._crit_edge.i.i346 ], [ @72, %._crit_edge.i.i352 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aoh) #45
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit32.i.i: ; preds = %._crit_edge.i.i.i.i.i27.i.i379, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i.i380, %bb.hb
  %.sroa.3.0.i.i.i28.i.i = phi i64 [ %.val6.i.i.i31.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i.i30.i.i380 ], [ -1, %bb.hb ], [ -1, %._crit_edge.i.i.i.i.i27.i.i379 ]
  %i.aoi = icmp ugt i64 %.sroa.3.0.i.i.i28.i.i, %.sroa.3.0.i
  %i.aoj = select i1 %i.aoi, i64 %.sroa.05.037.i.i, i64 %i.amu, !unpredictable !19 ; 2 uses
  %i.aok = sub nuw nsw i64 %.sroa.01.038.i.i, %i.amt ; 2 uses
  %i.aol = icmp ugt i64 %i.aok, 1
  br i1 %i.aol, label %.lr.ph.i.i368, label %._crit_edge.i.i352

bb.hg:                                            ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i
  %i.aom = icmp ult i64 %.sroa.3.0.i.i.i.i.i, %.sroa.3.0.i
  %i.aon = zext i1 %i.aom to i64
  %i.aoo = add nuw nsw i64 %.sroa.05.0.lcssa.i.i353, %i.aon ; 2 uses
  %i.aop = icmp ule i64 %i.aoo, %i.ue
  call void @llvm.assume(i1 %i.aop)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.gv
  %.sroa.4.0.i.i365 = phi i64 [ %i.ue, %bb.gv ], [ %i.aoo, %bb.hg ], [ %.sroa.05.0.lcssa.i.i353, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i ]
  %not..sroa.0.0.i.i366 = phi i64 [ %i.ue, %bb.gv ], [ 0, %bb.hg ], [ 1, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Content20binary_search_by_keyjNCNvMs0_NtNtBD_13introspection12introspectorINtB24_19ElementIntrospectorINtNtB7_6option6OptionINtNtNtB7_3num7nonzero7NonZerojEEE5querys9_0E0CsgpMJJHpo27b_12typst_bundle.exit.i.i ]
  %.sroa.053.0 = add nuw nsw i64 %not..sroa.0.0.i.i366, %.sroa.4.0.i.i365 ; 2 uses
  %i.aoq = icmp ult i64 %.sroa.053.0, %.sroa.047.0
  br i1 %i.aoq, label %bb.gb, label %.thread620

.thread620:                                       ; preds = %.loopexit655, %bb.hh
  %.sroa.053.0626 = phi i64 [ %.sroa.053.0, %bb.hh ], [ %i.ue, %.loopexit655 ] ; 2 uses
  %.sroa.047.0619625 = phi i64 [ %.sroa.047.0, %bb.hh ], [ %i.ue, %.loopexit655 ] ; 2 uses
  %..i = call noundef i64 @llvm.umax.i64(i64 %.sroa.038.0.ph, i64 %.sroa.047.0619625) ; 2 uses
  %..i383 = call noundef i64 @llvm.umax.i64(i64 %.sroa.038.0.ph, i64 %.sroa.053.0626) ; 4 uses
  %i.aor = icmp ugt i64 %.sroa.047.0619625, %..i383
  %.not142 = icmp ugt i64 %.sroa.053.0626, %i.ue
  %or.cond = or i1 %.not142, %i.aor
  br i1 %or.cond, label %bb.hi, label %bb.hj, !prof !61

bb.hi:                                            ; preds = %.thread620
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %..i, i64 noundef %..i383, i64 noundef %i.ue, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #46
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hj:                                            ; preds = %.thread620
  %i.aos = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %..i
  %i.aot = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %..i383
  invoke fastcc void @_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB1S_8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.aos, ptr noundef %i.aot)
          to label %.outer unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hk:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %i.afz, i64 %i.aga) #49
          to label %bb.fy unwind label %bb.em

bb.hl:                                            ; preds = %bb.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ud) ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %i.ud, i64 %i.ue)
  br label %bb.da

bb.hm:                                            ; preds = %bb.dc, %.thread596
  %.sroa.0.0603 = phi ptr [ %.sroa.0.0, %bb.dc ], [ %.sroa.0.0602, %.thread596 ]
  %.sroa.14.0601 = phi i64 [ %.sroa.14.0, %bb.dc ], [ %.sroa.14.0600, %.thread596 ]
  %i.aou = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.0.0603, i64 %.sroa.14.0601) #49
          to label %common.resume unwind label %bb.em

.thread596:                                       ; preds = %bb.b, %bb.b, %bb.db, %bb.da
  %.sroa.0.0602 = phi ptr [ %.sroa.0.0, %bb.db ], [ %.sroa.0.0, %bb.da ], [ inttoptr (i64 16 to ptr), %bb.b ], [ inttoptr (i64 16 to ptr), %bb.b ] ; 3 uses
  %.sroa.14.0600 = phi i64 [ %.sroa.14.0, %bb.db ], [ %.sroa.14.0, %bb.da ], [ 0, %bb.b ], [ 0, %bb.b ] ; 3 uses
  %i.aov = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0602, 0
  %i.aow = insertvalue { ptr, i64 } %i.aov, i64 %.sroa.14.0600, 1
  invoke void @_RNvMs5_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB5_10QueryCache6insert(ptr noundef nonnull align 8 %i.ay, i128 noundef %i.ax, ptr noundef nonnull %.sroa.0.0602, i64 noundef %.sroa.14.0600)
          to label %bb.c unwind label %bb.hm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i128 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i128 %1 to i64
  %i.b = mul i64 %i.a, -1065810590584100411
  %i.c = lshr i128 %1, 64
  %i.d = trunc nuw i128 %i.c to i64
  %i.e = add i64 %i.b, %i.d
  %i.f = mul i64 %i.e, -1065810590584100411       ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 26) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !12481, !noundef !19
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i1 noundef zeroext true) #51, !noalias !12482 ; 0 uses
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !12483, !nonnull !19, !noundef !19 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.m, align 8, !alias.scope !12483, !noundef !19 ; 4 uses
  %i.n = lshr i64 %i.g, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 3 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %.pn.i.i = phi i64 [ %i.g, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %i.ap, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.r = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %i.ao, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !12484 ; 3 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.q
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.u, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.0.017.i.i, %i.w
  %i.y = and i64 %i.x, %.val5.i
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %.val2.i.i = load i128, ptr %i.ab, align 16, !noalias !12485, !noundef !19
  %i.ac = icmp eq i128 %1, %.val2.i.i
  br i1 %i.ac, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2v_11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit, label %bb.d, !prof !21

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !22

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.01.029.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.01.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !22

.thread24.i.i:                                    ; preds = %bb.e
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.0.017.i.i, %i.ai
  %i.ak = and i64 %i.aj, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ak, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ao = add i64 %i.r, 16                        ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !12482, !noundef !19 ; 2 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !12482
  %i.at = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.au, 0
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aw
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !12486
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ax = phi i8 [ %.pre, %bb.h ], [ %i.ar, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aw, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12486)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.az = and i8 %i.ax, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = and i64 %i.bb, %.val5.i
  store i8 %i.o, ptr %i.ay, align 1, !noalias !12486
  %i.bd = getelementptr i8, ptr %.val.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store i8 %i.o, ptr %i.be, align 1, !noalias !12486
  %i.bf = load <2 x i64>, ptr %i.h, align 8, !alias.scope !12486
  %i.bg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ba, i64 0
  %i.bh = sub <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.h, align 8, !alias.scope !12486
  %i.bi = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bj = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16
  store i128 %1, ptr %i.bk, align 16, !noalias !12486
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2v_11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2v_11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i128 noundef %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = mul i64 %1, -1065810590584100411
  %i.b = trunc i128 %2 to i64
  %i.c = add i64 %i.a, %i.b
  %i.d = mul i64 %i.c, -1065810590584100411
  %i.e = lshr i128 %2, 64
  %i.f = trunc nuw i128 %i.e to i64
  %i.g = add i64 %i.d, %i.f
  %i.h = mul i64 %i.g, -1065810590584100411       ; 2 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 26) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !12499, !noundef !19
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i1 noundef zeroext true) #51, !noalias !12500 ; 0 uses
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !12501, !nonnull !19, !noundef !19 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.o, align 8, !alias.scope !12501, !noundef !19 ; 4 uses
  %i.p = lshr i64 %i.i, 57
  %i.q = trunc nuw nsw i64 %i.p to i8             ; 3 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %.pn.i.i = phi i64 [ %i.i, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %i.at, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.t = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsgpMJJHpo27b_12typst_bundle.exit.i ], [ %i.as, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !12502 ; 3 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.s
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.w, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.ai, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.0.017.i.i, %i.y
  %i.aa = and i64 %i.z, %.val5.i
  %i.ab = sub nsw i64 0, %i.aa                    ; 2 uses
  %i.ac = getelementptr inbounds [48 x i8], ptr %.val.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -48
end_hunk_4
begin_hunk_5_@_RNvMs8_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_12WorkerThread14take_local_job:bb.a
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !13001, !noundef !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !13001, !noundef !19
  %i.ch = add i64 %i.cg, -1
  %i.ci = and i64 %i.ch, %i.bh
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load volatile i128, ptr %i.cj, align 8, !noalias !13001 ; 2 uses
  %i.cl = load atomic i64, ptr %i.ca acquire, align 8, !noalias !13001
  %.not.i = icmp eq i64 %i.cl, %i.cb
  br i1 %.not.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cm = add i64 %i.bh, 1
  %i.cn = cmpxchg ptr %i.bg, i64 %i.bh, i64 %i.cm seq_cst monotonic, align 8, !noalias !13001
  %i.co = extractvalue { i64, i1 } %i.cn, 1
  br i1 %i.co, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.sroa.01.0.extract.trunc.i.le = trunc i128 %i.ck to i64 ; 2 uses
  %i.cp = inttoptr i64 %.sroa.01.0.extract.trunc.i.le to ptr ; 4 uses
  %.sroa.2.0.extract.shift.i.le = lshr i128 %i.ck, 64
  %.sroa.2.0.extract.trunc.i.le = trunc nuw i128 %.sroa.2.0.extract.shift.i.le to i64
  %i.cq = inttoptr i64 %.sroa.2.0.extract.trunc.i.le to ptr ; 4 uses
  %i.cr = icmp ne i64 %.sroa.01.0.extract.trunc.i.le, 0
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp eq ptr %i.bv, null
  br i1 %i.cs, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 2072 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !13001, !noundef !19 ; 2 uses
  %i.cv = add i64 %i.cu, -1
  store i64 %i.cv, ptr %i.ct, align 8, !noalias !13001
  %i.cw = icmp eq i64 %i.cu, 1
  br i1 %i.cw, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2176
  store atomic i64 0, ptr %i.cx release, align 8, !noalias !13001
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 2080
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !13001, !noundef !19
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit.jt1, label %.loopexit, !prof !22

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECsgpMJJHpo27b_12typst_bundle.exit.sink.split.i: ; preds = %bb.x
  tail call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bv), !noalias !13001
  br label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.db = icmp eq ptr %i.bv, null
  br i1 %i.db, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 2072 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !13001, !noundef !19 ; 2 uses
  %i.de = add i64 %i.dd, -1
  store i64 %i.de, ptr %i.dc, align 8, !noalias !13001
  %i.df = icmp eq i64 %i.dd, 1
  br i1 %i.df, label %bb.x, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 2176
  store atomic i64 0, ptr %i.dg release, align 8, !noalias !13001
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 2080
  %i.di = load i64, ptr %i.dh, align 8, !noalias !13001, !noundef !19
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECsgpMJJHpo27b_12typst_bundle.exit.sink.split.i, label %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsazW1U07H1KN_15crossbeam_epoch5guard5GuardECsgpMJJHpo27b_12typst_bundle.exit.sink.split.i, %bb.v, %bb.w, %bb.x
  br i1 %i.bz, label %.loopexit, label %bb.n

_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit.jt1: ; preds = %bb.u
  tail call void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.bv), !noalias !13001
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit, %bb.s, %bb.u, %bb.t, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit.jt1, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCsgpMJJHpo27b_12typst_bundle.exit
  %.sroa.0.0.i.pn = phi ptr [ %.sroa.0.0.i, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCsgpMJJHpo27b_12typst_bundle.exit ], [ %i.cp, %bb.s ], [ %i.cp, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit.jt1 ], [ %i.cp, %bb.t ], [ %i.cp, %bb.u ], [ null, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit ]
  %.sroa.7.0.i.pn = phi ptr [ %.sroa.7.0.i, %_RNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE3popCsgpMJJHpo27b_12typst_bundle.exit ], [ %i.cq, %bb.s ], [ %i.cq, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit.jt1 ], [ %i.cq, %bb.t ], [ %i.cq, %bb.u ], [ undef, %_RNvMs8_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB5_7StealerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE5stealCsgpMJJHpo27b_12typst_bundle.exit ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.pn, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %.sroa.7.0.i.pn, 1
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !19 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !22

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.i)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre4.i = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %.val3.i = load i64, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i22, i64 %.val3.i) #49
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.thread, %bb.r, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.ar, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.g, %._crit_edge.i
  %i.q = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !noundef !19 ; 4 uses
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not.i24 = icmp eq i64 %i.u, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit
  %.pre = load ptr, ptr %i.b, align 8
  %.pre62 = load i64, ptr %i.s, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.u)
          to label %.lr.ph unwind label %bb.s, !inline_history !13003

.lr.ph:                                           ; preds = %bb.k, %.noexc26
  %.sroa.033.056 = phi ptr [ %i.w, %.noexc26 ], [ %i.t, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13020)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13023)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !13024, !noalias !13025, !noundef !19
  %.not.i.i.i.i = icmp slt i8 %i.z, 0
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !13026, !noalias !13025 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 24
  %.val10.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !13026, !noalias !13025 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !13027
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !22

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i.i) #46
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l, %.lr.ph
  %i.ae = load <2 x i64>, ptr %.sroa.033.056, align 8, !alias.scope !13020, !noalias !13025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13028)
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !13028, !noundef !19
  %.val.i27 = load ptr, ptr %i.b, align 8, !alias.scope !13028, !nonnull !19, !noundef !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.sroa.739.31.extract.shift = lshr i64 %.val10.i.i.i.i, 56
  %.sroa.739.31.extract.trunc = trunc nuw i64 %.sroa.739.31.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsgpMJJHpo27b_12typst_bundle(ptr %.val.i.i.i.i, i8 %.sroa.739.31.extract.trunc) #49
          to label %.thread unwind label %bb.q, !noalias !13029, !inline_history !13019

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !13030, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.p, %bb.n
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.p ], [ 0, %bb.n ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.o, !noalias !13029, !inline_history !13019

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !13029, !inline_history !13019
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !13028, !nonnull !19, !noundef !19 ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !13028, !noundef !19 ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store <2 x i64> %i.ae, ptr %i.an, align 8, !noalias !13029
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.val.i.i.i.i, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !13029
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.val10.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !13029
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !13028
  %i.ap = icmp eq ptr %i.w, %i.v
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.w, label %bb.u

bb.r:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  br label %common.resume

bb.s:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit_crit_edge
  %i.at = phi i64 [ %.pre62, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %i.t, i64 %i.u)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECsgpMJJHpo27b_12typst_bundle.exit
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread, %bb.t
  ret void

.thread:                                          ; preds = %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.ag, %bb.o ]
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19
  %.val12 = load i64, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val11, i64 %.val12) #49
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !19 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !22

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #46
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsgpMJJHpo27b_12typst_bundle.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre4.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19
  %.val3.i = load i64, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val.i22, i64 %.val3.i) #49
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.thread, %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.an, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !19 ; 5 uses
  %.idx = mul nuw nsw i64 %i.v, 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not.i24 = icmp eq i64 %i.v, 0
  br i1 %.not.i24, label %.noexc, label %bb.k

.noexc:                                           ; preds = %bb.k, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %.noexc25.thread, label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCsgpMJJHpo27b_12typst_bundle.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !13031

.lr.ph:                                           ; preds = %.noexc, %.noexc26
  %.sroa.031.044 = phi ptr [ %i.z, %.noexc26 ], [ %i.u, %.noexc ] ; 2 uses
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.031.044) #50
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 72 ; 2 uses
  %.pre = load i8, ptr %i.x, align 8, !range !23
  %i.aa = icmp eq i8 %.pre, 2
  br i1 %i.aa, label %.noexc25.thread, label %bb.l

bb.l:                                             ; preds = %.noexc25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13036)
  %i.ab = load i64, ptr %i.t, align 8, !alias.scope !13036, !noundef !19
  %.val.i27 = load ptr, ptr %i.c, align 8, !alias.scope !13036, !nonnull !19, !noundef !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #49
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ad, align 8, !noalias !13037, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.n, %bb.l
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.n ], [ 0, %bb.l ]
  %i.ae = icmp eq i64 %i.ab, %.sroa.02.0.i.i
  %i.af = zext i1 %i.ae to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.af)
          to label %.noexc26 unwind label %bb.m, !noalias !13038, !inline_history !13035

bb.o:                                             ; preds = %bb.m
end_hunk_5
begin_hunk_6_@_RNvNtCsgpMJJHpo27b_12typst_bundle7export_15export_document:bb.a

.cont.i.i339:                                     ; preds = %.invoke.i.i337
  unreachable

_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle.exit.i.i.i353: ; preds = %bb.no
  %i.cfu = trunc nuw nsw i128 %i.cfs to i64
  %i.cfv = icmp eq i64 %i.cfu, 3
  br i1 %i.cfv, label %bb.np, label %_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1z_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1z_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTRNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentRNtCsl4q486LaARA_9typst_svg10SvgOptionsRSTNtNtNtB1z_13introspection8location8LocationNtNtB3P_6string9EcoStringEINtNtB9_5track7TrackedNtB1v_16LateLinkResolverB1r_EEEE0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.np:                                            ; preds = %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle.exit.i.i.i353
  %i.cfw = getelementptr i8, ptr %i.cfr, i64 16
  %.val21.i.i.i371 = load i128, ptr %i.cfw, align 16, !noalias !14637
  %i.cfx = invoke fastcc noundef i128 @_RNvXs_NtCsloFShupyl5J_6comemo5inputINtNtB6_5track7TrackedNtNtNtCsdaEETE4DqmE_13typst_library5model4link16LateLinkResolverNtNvBV_s1_1__12___ComemoCallENtB4_5Input4callCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.7.0..sroa_idx.i253, i128 %.val21.i.i.i371) #50
          to label %.noexc37.i.i372 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i338.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14640

.noexc37.i.i372:                                  ; preds = %bb.np
  %.val18.pre.i.i.i373 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 24), align 8, !noalias !14631
  br label %_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1z_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1z_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTRNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentRNtCsl4q486LaARA_9typst_svg10SvgOptionsRSTNtNtNtB1z_13introspection8location8LocationNtNtB3P_6string9EcoStringEINtNtB9_5track7TrackedNtB1v_16LateLinkResolverB1r_EEEE0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i

_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1z_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1z_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTRNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentRNtCsl4q486LaARA_9typst_svg10SvgOptionsRSTNtNtNtB1z_13introspection8location8LocationNtNtB3P_6string9EcoStringEINtNtB9_5track7TrackedNtB1v_16LateLinkResolverB1r_EEEE0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %.noexc37.i.i372, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle.exit.i.i.i353
  %.val1829.i.i.i354 = phi i64 [ %.val18.pre.i.i.i373, %.noexc37.i.i372 ], [ %.val18.i.i.i349, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle.exit.i.i.i353 ]
  %.sroa.0.0.i.i.i.i.i355 = phi i128 [ %i.cfx, %.noexc37.i.i372 ], [ 0, %_RNvXs4_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexjE5indexCsgpMJJHpo27b_12typst_bundle.exit.i.i.i353 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14641)
  %i.cfy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 144), align 8, !alias.scope !14641, !noalias !14631, !noundef !19
  %i.cfz = icmp eq i64 %i.cfy, 0
  br i1 %i.cfz, label %.loopexit.i.i291, label %bb.nq

bb.nq:                                            ; preds = %_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1z_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1z_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTRNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentRNtCsl4q486LaARA_9typst_svg10SvgOptionsRSTNtNtNtB1z_13introspection8location8LocationNtNtB3P_6string9EcoStringEINtNtB9_5track7TrackedNtB1v_16LateLinkResolverB1r_EEEE0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %i.cga = mul i64 %.sroa.09.021.i.i.i350, -1065810590584100411
  %i.cgb = trunc i128 %.sroa.0.0.i.i.i.i.i355 to i64
  %i.cgc = add i64 %i.cga, %i.cgb
  %i.cgd = mul i64 %i.cgc, -1065810590584100411
  %i.cge = lshr i128 %.sroa.0.0.i.i.i.i.i355, 64
  %i.cgf = trunc nuw i128 %i.cge to i64
  %i.cgg = add i64 %i.cgd, %i.cgf
  %i.cgh = mul i64 %i.cgg, -1065810590584100411   ; 2 uses
  %i.cgi = call noundef i64 @llvm.fshl.i64(i64 %i.cgh, i64 %i.cgh, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14642)
  call void @llvm.experimental.noalias.scope.decl(metadata !14643)
  %i.cgj = lshr i64 %i.cgi, 57
  %i.cgk = trunc nuw nsw i64 %i.cgj to i8
  %i.cgl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 128), align 8, !alias.scope !14644, !noalias !14631, !noundef !19 ; 2 uses
  %i.cgm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 120), align 8, !alias.scope !14644, !noalias !14631, !nonnull !19, !noundef !19 ; 2 uses
  %i.cgn = insertelement <16 x i8> poison, i8 %i.cgk, i64 0
  %i.cgo = shufflevector <16 x i8> %i.cgn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nt, %bb.nq
  %.sroa.9.0.i.i.i24.i.i.i356 = phi i64 [ 0, %bb.nq ], [ %i.chh, %bb.nt ]
  %.pn.i.i25.i.i.i357 = phi i64 [ %i.cgi, %bb.nq ], [ %i.chi, %bb.nt ]
  %.sroa.01.0.i.i.i26.i.i.i358 = and i64 %.pn.i.i25.i.i.i357, %i.cgl ; 3 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgm, i64 %.sroa.01.0.i.i.i26.i.i.i358
  %.sroa.0.0.copyload.i24.i.i27.i.i.i359 = load <16 x i8>, ptr %i.cgp, align 1, !noalias !14645 ; 2 uses
  %i.cgq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i27.i.i.i359, %i.cgo
  %i.cgr = bitcast <16 x i1> %i.cgq to i16        ; 2 uses
  %.not.i.not30.i.i28.i.i.i360 = icmp eq i16 %i.cgr, 0
  br i1 %.not.i.not30.i.i28.i.i.i360, label %._crit_edge.i.i33.i.i.i367, label %.lr.ph.i.i29.i.i.i361

.lr.ph.i.i29.i.i.i361:                            ; preds = %bb.nr, %bb.ns
  %.sroa.06.0.i31.i.i30.i.i.i362 = phi i16 [ %i.chg, %bb.ns ], [ %i.cgr, %bb.nr ] ; 3 uses
  %i.cgs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i30.i.i.i362, i1 true)
  %i.cgt = zext nneg i16 %i.cgs to i64
  %i.cgu = add i64 %.sroa.01.0.i.i.i26.i.i.i358, %i.cgt
  %i.cgv = and i64 %i.cgu, %i.cgl
  %i.cgw = sub nsw i64 0, %i.cgv
  %i.cgx = getelementptr inbounds [48 x i8], ptr %i.cgm, i64 %i.cgw ; 3 uses
  %i.cgy = getelementptr inbounds i8, ptr %i.cgx, i64 -48
  %.val2.i.i.i31.i.i.i363 = load i64, ptr %i.cgy, align 8, !noalias !14646, !noundef !19
  %i.cgz = getelementptr i8, ptr %i.cgx, i64 -32
  %.val3.i.i.i.i.i.i364 = load i128, ptr %i.cgz, align 16, !noalias !14646
  %i.cha = icmp eq i64 %.sroa.09.021.i.i.i350, %.val2.i.i.i31.i.i.i363
  %i.chb = icmp eq i128 %.sroa.0.0.i.i.i.i.i355, %.val3.i.i.i.i.i.i364
  %spec.select.i.i.i.i.i.i.i.i.i365 = select i1 %i.cha, i1 %i.chb, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i365, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECsgpMJJHpo27b_12typst_bundle.exit.loopexit.i.i.i368, label %bb.ns, !prof !21

._crit_edge.i.i33.i.i.i367:                       ; preds = %bb.ns, %bb.nr
  %i.chc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i27.i.i.i359, splat (i8 -1)
  %i.chd = bitcast <16 x i1> %i.chc to i16
  %i.che = icmp eq i16 %i.chd, 0
  br i1 %i.che, label %bb.nt, label %.loopexit.i.i291, !prof !22

bb.ns:                                            ; preds = %.lr.ph.i.i29.i.i.i361
  %i.chf = add i16 %.sroa.06.0.i31.i.i30.i.i.i362, -1
  %i.chg = and i16 %i.chf, %.sroa.06.0.i31.i.i30.i.i.i362 ; 2 uses
  %.not.i.not.i.i32.i.i.i366 = icmp eq i16 %i.chg, 0
  br i1 %.not.i.not.i.i32.i.i.i366, label %._crit_edge.i.i33.i.i.i367, label %.lr.ph.i.i29.i.i.i361

bb.nt:                                            ; preds = %._crit_edge.i.i33.i.i.i367
  %i.chh = add i64 %.sroa.9.0.i.i.i24.i.i.i356, 16 ; 2 uses
  %i.chi = add i64 %.sroa.01.0.i.i.i26.i.i.i358, %i.chh
  br label %bb.nr

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i338.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.np, %bb.pd, %.invoke.i.i337
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.chj = atomicrmw add ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 -16 release, align 8, !noalias !14621
  %i.chk = and i64 %i.chj, -14
  %i.chl = icmp eq i64 %i.chk, 18
  br i1 %i.chl, label %bb.nu, label %.body.i267, !prof !22

bb.nu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i338.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE)
          to label %.body.i267 unwind label %bb.pw, !noalias !14639

bb.nv:                                            ; preds = %bb.nm
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cfo, i64 48
  store atomic i64 0, ptr %i.chm seq_cst, align 8, !noalias !14647
  call void @llvm.experimental.noalias.scope.decl(metadata !14648)
  call void @llvm.experimental.noalias.scope.decl(metadata !14649)
  %i.chn = trunc nuw i64 %i.cfp to i1
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cfo, i64 8 ; 2 uses
  %.val.i45.i.i = load ptr, ptr %i.cho, align 8, !alias.scope !14649, !noalias !14639, !nonnull !19, !noundef !19 ; 5 uses
  br i1 %i.chn, label %bb.pb, label %bb.pe

.loopexit.i.i291:                                 ; preds = %._crit_edge.i.i.i.i.i290, %_RNCINvMs_NtCsloFShupyl5J_6comemo7memoizeINtB7_9CacheDataINtNvNtB9_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1z_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1z_4diag16SourceDiagnosticEEE6lookupINtBX_5MultiTRNtNtCs7tN9tvpkfrg_12typst_layout8document13PagedDocumentRNtCsl4q486LaARA_9typst_svg10SvgOptionsRSTNtNtNtB1z_13introspection8location8LocationNtNtB3P_6string9EcoStringEINtNtB9_5track7TrackedNtB1v_16LateLinkResolverB1r_EEEE0CsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %._crit_edge.i.i33.i.i.i367, %.noexc9.i280
  %i.chp = atomicrmw add ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 -16 release, align 8, !noalias !14621
  %i.chq = and i64 %i.chp, -14
  %i.chr = icmp eq i64 %i.chq, 18
  br i1 %i.chr, label %bb.nw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3I_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i292, !prof !22

bb.nw:                                            ; preds = %.loopexit.i.i291
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3I_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i292 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14615

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3I_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i292: ; preds = %bb.nw, %.loopexit.i.i291
  call void @llvm.experimental.noalias.scope.decl(metadata !14650)
  call void @llvm.experimental.noalias.scope.decl(metadata !14651)
  call void @llvm.experimental.noalias.scope.decl(metadata !14652)
  call void @llvm.experimental.noalias.scope.decl(metadata !14653)
  %i.chs = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.cay, ptr %i.n, align 8, !alias.scope !14654, !noalias !14614
  %.sroa.4.0..sroa_idx.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.chu = load <2 x ptr>, ptr %i.chs, align 8, !alias.scope !14655, !noalias !14614
  store <2 x ptr> %i.chu, ptr %.sroa.4.0..sroa_idx.i.i.i.i293, align 8, !alias.scope !14654, !noalias !14614
  store ptr %i.n, ptr %i.chs, align 8, !alias.scope !14655, !noalias !14614
  store ptr @51, ptr %i.cht, align 8, !alias.scope !14655, !noalias !14614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i253, i64 32, i1 false), !noalias !14657
  call void @llvm.experimental.noalias.scope.decl(metadata !14658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14656
  %.idx.i.i.i = shl nuw nsw i64 %i.caw, 5
  %i.chv = getelementptr inbounds nuw i8, ptr %i.cau, i64 %.idx.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14660
  %i.chw = icmp eq i64 %i.caw, 0
  br i1 %i.chw, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00ENtNtNtB9_6traits8iterator8Iterator4nextB3v_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i295

.lr.ph.i.i.i.i.i.i295:                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3I_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i292
  %i.chx = getelementptr inbounds nuw i8, ptr %i.ul, i64 136
  %i.chy = getelementptr inbounds nuw i8, ptr %i.cau, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14661)
  call void @llvm.experimental.noalias.scope.decl(metadata !14662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14663
  %i.chz = load ptr, ptr %i.chx, align 8, !alias.scope !14611, !noalias !14664, !nonnull !19, !noundef !19
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chz, i64 16 ; 4 uses
  %i.cib = load i128, ptr %i.cau, align 16, !alias.scope !14665, !noalias !14666, !noundef !19
  invoke void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector8position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.cia, i128 noundef %i.cib)
          to label %.noexc11.i296 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14615

.noexc11.i296:                                    ; preds = %.lr.ph.i.i.i.i.i.i295
  %i.cic = load i64, ptr %i.d, align 8, !noalias !14663, !noundef !19
  %.not.i.i.peel.i.i.i.i.i.i = icmp eq i64 %i.cic, 0
  br i1 %.not.i.i.peel.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i, label %.loopexit10.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i: ; preds = %.noexc11.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14663
  %i.cid = icmp eq i64 %i.caw, 1
  br i1 %i.cid, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00ENtNtNtB9_6traits8iterator8Iterator4nextB3v_.exit.i.i.i.i, label %.peel.next.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i
  %i.cie = phi ptr [ %i.cif, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i ], [ %i.chy, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i ] ; 3 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cie, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14667)
  call void @llvm.experimental.noalias.scope.decl(metadata !14668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14669
  %i.cig = load i128, ptr %i.cie, align 16, !alias.scope !14670, !noalias !14666, !noundef !19
  invoke void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector8position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.cia, i128 noundef %i.cig)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14615

.noexc12.i:                                       ; preds = %.peel.next.i.i.i.i.i.i
  %i.cih = load i64, ptr %i.d, align 8, !noalias !14669, !noundef !19
  %.not.i.i.i.i.i.i.i.i330 = icmp eq i64 %i.cih, 0
  br i1 %.not.i.i.i.i.i.i.i.i330, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i, label %.loopexit10.i.i.i.i.i.i

.loopexit10.i.i.i.i.i.i:                          ; preds = %.noexc12.i, %.noexc11.i296
  %.val6.i.i.i.i = phi ptr [ %i.chy, %.noexc11.i296 ], [ %i.cif, %.noexc12.i ] ; 2 uses
  %.lcssa7.i.i.i.i.i.i = phi ptr [ %i.cau, %.noexc11.i296 ], [ %i.cie, %.noexc12.i ] ; 3 uses
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cii = load <2 x double>, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !14669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14669
  %i.cij = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i.i.i.i.i, i64 31
  %i.cil = load i8, ptr %i.cik, align 1, !alias.scope !14670, !noalias !14666, !noundef !19
  %.not29.i.i.i.i.i.i.i.i = icmp sgt i8 %i.cil, -1
  %i.cim = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i.i.i.i.i, i64 24 ; 2 uses
  br i1 %.not29.i.i.i.i.i.i.i.i, label %bb.nx, label %bb.oa

bb.nx:                                            ; preds = %.loopexit10.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i328 = load ptr, ptr %i.cij, align 8, !alias.scope !14670, !noalias !14666, !nonnull !19, !noundef !19 ; 5 uses
  %.val30.i.i.i.i.i.i.i.i = load i64, ptr %i.cim, align 8, !alias.scope !14670, !noalias !14666 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i329 = icmp eq ptr %.val.i.i.i.i.i.i.i.i328, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i329, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.cin = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i328, i64 -16
  %i.cio = atomicrmw add ptr %i.cin, i64 1 monotonic, align 8, !noalias !14671
  %i.cip = icmp slt i64 %i.cio, 0
  br i1 %i.cip, label %bb.nz, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, !prof !22

bb.nz:                                            ; preds = %bb.ny
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i328) #46
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %bb.nz
  unreachable

bb.oa:                                            ; preds = %.loopexit10.i.i.i.i.i.i
  %.sroa.023.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.cij, align 1, !alias.scope !14670, !noalias !14666
  %.sroa.424.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cim, align 1, !alias.scope !14670, !noalias !14666
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i: ; preds = %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14669
  %i.ciq = icmp eq ptr %i.cif, %i.chv
  br i1 %i.ciq, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00ENtNtNtB9_6traits8iterator8Iterator4nextB3v_.exit.i.i.i.i, label %.peel.next.i.i.i.i.i.i, !llvm.loop !14154

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00ENtNtNtB9_6traits8iterator8Iterator4nextB3v_.exit.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock15RwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2n_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEINtNtB4_6result6ResultNtNtNtB3I_11foundations5bytes5BytesINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3I_4diag16SourceDiagnosticEEEEECsgpMJJHpo27b_12typst_bundle.exit39.i.i292
  store i64 0, ptr %i.g, align 8, !alias.scope !14659, !noalias !14656
  %i.cir = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cir, align 8, !alias.scope !14659, !noalias !14656
  %i.cis = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.cis, align 8, !alias.scope !14659, !noalias !14656
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB3d_5slice4iter4IterTNtNtNtB18_13introspection8location8LocationB1U_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE9from_iterB5t_.exit.i.i.i

bb.ob:                                            ; preds = %bb.oc
  %i.cit = landingpad { ptr, i32 }
          cleanup
  %.sroa.716.31.extract.shift.i.i.i.i = lshr i64 %.sroa.9.0.ph.i.i.i.i, 56
  %.sroa.716.31.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.716.31.extract.shift.i.i.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.8.0.ph.i.i.i.i, i8 %.sroa.716.31.extract.trunc.i.i.i.i) #49
          to label %.body.i267 unwind label %bb.om, !noalias !14672

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.oa, %bb.ny, %bb.nx
  %.sroa.9.0.ph.i.i.i.i = phi i64 [ %.val30.i.i.i.i.i.i.i.i, %bb.ny ], [ %.val30.i.i.i.i.i.i.i.i, %bb.nx ], [ %.sroa.424.0.copyload.i.i.i.i.i.i.i.i, %bb.oa ] ; 2 uses
  %.sroa.8.0.ph.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i328, %bb.ny ], [ %.val.i.i.i.i.i.i.i.i328, %bb.nx ], [ %.sroa.023.0.copyload.i.i.i.i.i.i.i.i, %bb.oa ] ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !14673
  %i.ciu = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 8, 17) 8) #48, !noalias !14673 ; 6 uses
  %i.civ = icmp eq ptr %i.ciu, null
  br i1 %i.civ, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #46
          to label %.noexc.i.i.i.i327 unwind label %bb.ob, !noalias !14672

.noexc.i.i.i.i327:                                ; preds = %bb.oc
  unreachable

bb.od:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  store <2 x double> %i.cii, ptr %i.ciu, align 8, !noalias !14672
  %.sroa.522.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ciu, i64 16
  store ptr %.sroa.8.0.ph.i.i.i.i, ptr %.sroa.522.0..sroa_idx.i.i.i.i, align 8, !noalias !14672
  %.sroa.6.0..sroa_idx23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ciu, i64 24
  store i64 %.sroa.9.0.ph.i.i.i.i, ptr %.sroa.6.0..sroa_idx23.i.i.i.i, align 8, !noalias !14672
  store i64 4, ptr %i.e, align 8, !noalias !14660
  %.sroa.4.0..sroa_idx.i.i40.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ciu, ptr %.sroa.4.0..sroa_idx.i.i40.i.i, align 8, !noalias !14660
  %.sroa.6.0..sroa_idx.i.i.i.i297 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i297, align 8, !noalias !14660
  call void @llvm.experimental.noalias.scope.decl(metadata !14674)
  call void @llvm.experimental.noalias.scope.decl(metadata !14675)
  %i.ciw = icmp eq ptr %.val6.i.i.i.i, %i.chv
  br i1 %i.ciw, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2U_5slice4iter4IterTNtNtNtBY_13introspection8location8LocationB1K_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE11spec_extendB59_.exit.i.i.i.i, label %.lr.ph.i.i.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.lr.ph.i.i.i.i.i.i:                     ; preds = %bb.od
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %.lr.ph.i.i.lr.ph.i.i.i.i.i.i
  %i.cix = phi ptr [ %i.ciu, %.lr.ph.i.i.lr.ph.i.i.i.i.i.i ], [ %i.cjv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ]
  %i.ciy = phi i64 [ 1, %.lr.ph.i.i.lr.ph.i.i.i.i.i.i ], [ %i.cjx, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ] ; 5 uses
  %i.ciz = phi ptr [ %.val6.i.i.i.i, %.lr.ph.i.i.lr.ph.i.i.i.i.i.i ], [ %i.cji, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i ] ; 3 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14676)
  call void @llvm.experimental.noalias.scope.decl(metadata !14677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14678
  %i.cjb = load i128, ptr %i.ciz, align 16, !alias.scope !14679, !noalias !14680, !noundef !19
  invoke void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector8position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.cia, i128 noundef %i.cjb)
          to label %.noexc10.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14672

.noexc10.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cjc = load i64, ptr %i.c, align 8, !noalias !14678, !noundef !19
  %.not.i.i.peel.i.i.i.i.i.i.i.i = icmp eq i64 %i.cjc, 0
  br i1 %.not.i.i.peel.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i.i.i, label %.loopexit10.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14678
  %i.cjd = icmp eq ptr %i.cja, %i.chv
  br i1 %i.cjd, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2U_5slice4iter4IterTNtNtNtBY_13introspection8location8LocationB1K_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE11spec_extendB59_.exit.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i.i.i
  %i.cje = phi ptr [ %i.cjf, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i.i.i ], [ %i.cja, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cje, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14681)
  call void @llvm.experimental.noalias.scope.decl(metadata !14682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14683
  %i.cjg = load i128, ptr %i.cje, align 16, !alias.scope !14684, !noalias !14680, !noundef !19
  invoke void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector8position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.cia, i128 noundef %i.cjg)
          to label %.noexc11.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14672

.noexc11.i.i.i.i:                                 ; preds = %.peel.next.i.i.i.i.i.i.i.i
  %i.cjh = load i64, ptr %i.c, align 8, !noalias !14683, !noundef !19
  %.not.i.i.i.i.i.i9.i.i.i.i = icmp eq i64 %i.cjh, 0
  br i1 %.not.i.i.i.i.i.i9.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i.i.i, label %.loopexit10.i.i.i.i.i.i.i.i

.loopexit10.i.i.i.i.i.i.i.i:                      ; preds = %.noexc11.i.i.i.i, %.noexc10.i.i.i.i
  %i.cji = phi ptr [ %i.cja, %.noexc10.i.i.i.i ], [ %i.cjf, %.noexc11.i.i.i.i ] ; 2 uses
  %.lcssa7.i.i.i.i.i.i.i.i = phi ptr [ %i.ciz, %.noexc10.i.i.i.i ], [ %i.cje, %.noexc11.i.i.i.i ] ; 3 uses
  %i.cjj = load <2 x double>, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !14683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14683
  %i.cjk = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cjl = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i.i.i.i.i.i.i, i64 31
  %i.cjm = load i8, ptr %i.cjl, align 1, !alias.scope !14684, !noalias !14680, !noundef !19
  %.not29.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.cjm, -1
  %i.cjn = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  br i1 %.not29.i.i.i.i.i.i.i.i.i.i, label %bb.oe, label %bb.oh

bb.oe:                                            ; preds = %.loopexit10.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cjk, align 8, !alias.scope !14684, !noalias !14680, !nonnull !19, !noundef !19 ; 5 uses
  %.val30.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cjn, align 8, !alias.scope !14684, !noalias !14680 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.oi, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.cjo = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 -16
  %i.cjp = atomicrmw add ptr %i.cjo, i64 1 monotonic, align 8, !noalias !14685
  %i.cjq = icmp slt i64 %i.cjp, 0
  br i1 %i.cjq, label %bb.og, label %bb.oi, !prof !22

bb.og:                                            ; preds = %bb.of
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i) #46
          to label %.noexc12.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12.i.i.i.i:                                 ; preds = %bb.og
  unreachable

bb.oh:                                            ; preds = %.loopexit10.i.i.i.i.i.i.i.i
  %.sroa.023.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cjk, align 1, !alias.scope !14684, !noalias !14680
  %.sroa.424.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cjn, align 1, !alias.scope !14684, !noalias !14680
  br label %bb.oi

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14683
  %i.cjr = icmp eq ptr %i.cjf, %i.chv
  br i1 %i.cjr, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2U_5slice4iter4IterTNtNtNtBY_13introspection8location8LocationB1K_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE11spec_extendB59_.exit.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i, !llvm.loop !14154

bb.oi:                                            ; preds = %bb.oh, %bb.of, %bb.oe
  %.sroa.9.0.ph.i.i.i.i.i.i = phi i64 [ %.val30.i.i.i.i.i.i.i.i.i.i, %bb.of ], [ %.val30.i.i.i.i.i.i.i.i.i.i, %bb.oe ], [ %.sroa.424.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.oh ] ; 2 uses
  %.sroa.8.0.ph.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i, %bb.of ], [ %.val.i.i.i.i.i.i.i.i.i.i, %bb.oe ], [ %.sroa.023.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.oh ] ; 2 uses
  %i.cjs = icmp samesign ult i64 %i.ciy, 288230376151711744
  call void @llvm.assume(i1 %i.cjs)
  %i.cjt = load i64, ptr %i.e, align 8, !range !37, !alias.scope !14686, !noalias !14660, !noundef !19
  %i.cju = icmp eq i64 %i.ciy, %i.cjt
  br i1 %i.cju, label %bb.ok, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i_crit_edge.i.i.i.i, %bb.oi
  %i.cjv = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i_crit_edge.i.i.i.i ], [ %i.cix, %bb.oi ] ; 2 uses
  %i.cjw = getelementptr inbounds nuw [32 x i8], ptr %i.cjv, i64 %i.ciy ; 3 uses
  store <2 x double> %i.cjj, ptr %i.cjw, align 8, !noalias !14687
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cjw, i64 16
  store ptr %.sroa.8.0.ph.i.i.i.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14687
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i298 = getelementptr inbounds nuw i8, ptr %i.cjw, i64 24
  store i64 %.sroa.9.0.ph.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i298, align 8, !noalias !14687
  %i.cjx = add nuw nsw i64 %i.ciy, 1              ; 2 uses
  store i64 %i.cjx, ptr %.sroa.6.0..sroa_idx.i.i.i.i297, align 8, !alias.scope !14686, !noalias !14660
  %i.cjy = icmp eq ptr %i.cji, %i.chv
  br i1 %i.cjy, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2U_5slice4iter4IterTNtNtNtBY_13introspection8location8LocationB1K_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE11spec_extendB59_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.oj:                                            ; preds = %bb.ok
  %i.cjz = landingpad { ptr, i32 }
          cleanup
  %.sroa.77.31.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.9.0.ph.i.i.i.i.i.i, 56
  %.sroa.77.31.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.77.31.extract.shift.i.i.i.i.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr %.sroa.8.0.ph.i.i.i.i.i.i, i8 %.sroa.77.31.extract.trunc.i.i.i.i.i.i) #49
          to label %.body.i.i.i.i unwind label %bb.ol, !noalias !14687

bb.ok:                                            ; preds = %bb.oi
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ciy, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i_crit_edge.i.i.i.i unwind label %bb.oj, !noalias !14688

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ok
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i40.i.i, align 8, !alias.scope !14686, !noalias !14660
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i

bb.ol:                                            ; preds = %bb.oj
  %i.cka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !14687
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %bb.og
  %lpad.loopexit.split-lp1390 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.oj
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.cjz, %bb.oj ], [ %lpad.loopexit.split-lp1390, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #49
          to label %.body.i267 unwind label %bb.om, !noalias !14672

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2U_5slice4iter4IterTNtNtNtBY_13introspection8location8LocationB1K_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE11spec_extendB59_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE7reserveCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.peel.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00INtB7_5FnMutTRTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE8call_mutBW_.exit.i.i.i.i.i.i.i.i, %bb.od
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !14689
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB3d_5slice4iter4IterTNtNtNtB18_13introspection8location8LocationB1U_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE9from_iterB5t_.exit.i.i.i

bb.om:                                            ; preds = %.body.i.i.i.i, %bb.ob
  %i.ckb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !14672
  unreachable

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB3d_5slice4iter4IterTNtNtNtB18_13introspection8location8LocationB1U_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE9from_iterB5t_.exit.i.i.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2U_5slice4iter4IterTNtNtNtBY_13introspection8location8LocationB1K_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE11spec_extendB59_.exit.i.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00ENtNtNtB9_6traits8iterator8Iterator4nextB3v_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14656
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ul, i64 128
  %i.ckd = load i64, ptr %i.ckc, align 8, !alias.scope !14611, !noalias !14690, !noundef !19
  %.not.i41.i.i = icmp eq i64 %i.ckd, 0
  br i1 %.not.i41.i.i, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB3d_5slice4iter4IterTNtNtNtB18_13introspection8location8LocationB1U_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE9from_iterB5t_.exit.i.i.i
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ul, i64 120
  %i.ckf = load ptr, ptr %i.cke, align 8, !alias.scope !14611, !noalias !14690, !nonnull !19, !noundef !19
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ckh = load ptr, ptr %i.ckg, align 8, !noalias !14656, !nonnull !19, !noundef !19 ; 4 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ckj = load i64, ptr %i.cki, align 8, !noalias !14656, !noundef !19 ; 2 uses
  invoke void @_RNvCsl4q486LaARA_9typst_svg13svg_in_bundle(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ckf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.cas, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ckh, i64 noundef %i.ckj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %bb.or unwind label %bb.op, !noalias !14691

bb.oo:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB3d_5slice4iter4IterTNtNtNtB18_13introspection8location8LocationB1U_EENCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg00EE9from_iterB5t_.exit.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #46
          to label %bb.oq unwind label %bb.op, !noalias !14691

bb.op:                                            ; preds = %bb.oo, %bb.on
  %i.ckk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i299

.body.i.i.i299:                                   ; preds = %bb.ou, %bb.ot, %bb.op
  %eh.lpad-body.i.i.i300 = phi { ptr, i32 } [ %i.ckk, %bb.op ], [ %i.ckn, %bb.ou ], [ %i.ckn, %bb.ot ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #49
          to label %.body.i267 unwind label %bb.oz, !noalias !14691

bb.oq:                                            ; preds = %bb.oo
  unreachable

bb.or:                                            ; preds = %bb.on
  call void @llvm.experimental.noalias.scope.decl(metadata !14692)
  %.sroa.4.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !14692, !noalias !14656 ; 3 uses
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14692, !noalias !14656 ; 3 uses
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14692, !noalias !14656
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !14693
  %i.ckl = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !14693 ; 8 uses
  %i.ckm = icmp eq ptr %i.ckl, null
  br i1 %i.ckm, label %bb.os, label %bb.ov, !prof !22

bb.os:                                            ; preds = %bb.or
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #46
          to label %.noexc.i2.i.i.i unwind label %bb.ot, !noalias !14694

.noexc.i2.i.i.i:                                  ; preds = %bb.os
  unreachable

bb.ot:                                            ; preds = %bb.os
  %i.ckn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cko = icmp eq i64 %.sroa.4.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.cko, label %.body.i.i.i299, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.sroa.4.0.copyload.i.i.i.i, i64 noundef %.sroa.4.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #48, !noalias !14695
  br label %.body.i.i.i299

bb.ov:                                            ; preds = %bb.or
  store i64 1, ptr %i.ckl, align 16, !noalias !14694
  %.sroa.47.0..sroa_idx.i.i.i.i301 = getelementptr inbounds nuw i8, ptr %i.ckl, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx.i.i.i.i301, align 8, !noalias !14694
  %.sroa.5.0..sroa_idx.i.i42.i.i302 = getelementptr inbounds nuw i8, ptr %i.ckl, i64 16
  store i128 0, ptr %.sroa.5.0..sroa_idx.i.i42.i.i302, align 16, !noalias !14694
  %.sroa.6.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ckl, i64 32
  store i64 %.sroa.4.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i1.i.i.i, align 16, !noalias !14694
  %.sroa.8.0..sroa_idx.i.i.i.i303 = getelementptr inbounds nuw i8, ptr %i.ckl, i64 40
  store ptr %.sroa.4.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i303, align 8, !noalias !14694
  %.sroa.9.0..sroa_idx.i.i.i.i304 = getelementptr inbounds nuw i8, ptr %i.ckl, i64 48
  store i64 %.sroa.4.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i304, align 16, !noalias !14694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14656
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.ckl, ptr %i.ckp, align 8, !alias.scope !14658, !noalias !14621
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr @4, ptr %i.ckq, align 8, !alias.scope !14658, !noalias !14621
  store i64 0, ptr %i.l, align 8, !alias.scope !14658, !noalias !14621
  call void @llvm.experimental.noalias.scope.decl(metadata !14696)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 %i.ckh, i64 noundef %i.ckj)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i unwind label %bb.ow, !noalias !14697

bb.ow:                                            ; preds = %bb.ov
  %i.ckr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i.i.i.i = load i64, ptr %i.g, align 8, !range !37, !alias.scope !14696, !noalias !14656, !noundef !19 ; 2 uses
  %i.cks = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.cks, label %.body.i267, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.ckt = shl nuw i64 %.val4.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckh, i64 noundef %i.ckt, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !14697
  br label %.body.i267

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i: ; preds = %bb.ov
  %.val2.i.i.i.i = load i64, ptr %i.g, align 8, !range !37, !alias.scope !14696, !noalias !14656, !noundef !19 ; 2 uses
  %i.cku = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cku, label %_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg0B5_.exit.i.i, label %bb.oy

bb.oy:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  %i.ckv = shl nuw i64 %.val2.i.i.i.i, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckh, i64 noundef %i.ckv, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !14697
  br label %_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg0B5_.exit.i.i

bb.oz:                                            ; preds = %.body.i.i.i299
  %i.ckw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !14691
  unreachable

_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg0B5_.exit.i.i: ; preds = %bb.oy, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14656
  %i.ckx = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 152) acquire, align 8, !noalias !14621
  %i.cky = icmp eq i32 %i.ckx, 0
  br i1 %i.cky, label %bb.pj, label %bb.pa, !prof !21

bb.pa:                                            ; preds = %_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg0B5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14621
  store ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, ptr %i.b, align 8, !noalias !14621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14621
  store ptr %i.b, ptr %i.a, align 8, !noalias !14621
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsgpMJJHpo27b_12typst_bundle7export_10export_svg7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc43.i.i307 unwind label %bb.pi, !noalias !14639

.noexc43.i.i307:                                  ; preds = %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14621
  br label %bb.pj

bb.pb:                                            ; preds = %bb.nv
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cfo, i64 16
  %.val1.i47.i.i = load i64, ptr %i.ckz, align 8, !alias.scope !14649, !noalias !14639 ; 2 uses
  %.not.i.i.i.i.i344 = icmp eq ptr %.val.i45.i.i, inttoptr (i64 16 to ptr)
end_hunk_6
begin_hunk_7_@_RNvXs9_NvNtCsloFShupyl5J_6comemo5inputs2_1__INtB5_10MappedSinkKj3_RINtNtB9_10constraint10ConstraintINtB5_9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEENtNtB9_5track4Sink4emitCsgpMJJHpo27b_12typst_bundle:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15822)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.s = mul i64 %i.k, -1065810590584100411
  %i.t = add i64 %i.s, %i.l
  %i.u = mul i64 %i.t, -1065810590584100411       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 26) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15824)
  %i.w = lshr i64 %i.v, 57
  %i.x = trunc nuw nsw i64 %i.w to i8             ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !15825, !noundef !19 ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8, !alias.scope !15825, !nonnull !19, !noundef !19 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.at, %bb.h ]
  %.pn.i.i.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.z ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.ad, align 1, !noalias !15826 ; 2 uses
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ac
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.as, %bb.g ], [ %i.af, %bb.f ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ah
  %i.aj = and i64 %i.ai, %i.z
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.am, align 16, !noalias !15827, !noundef !19
  %i.an = icmp eq i128 %.val2.i.i.i.i.i.i, %i.p
  br i1 %i.an, label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEE6insertCsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.g, !prof !21

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.f
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !22

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.at = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.au = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.at
  br label %bb.f

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !15828, !noundef !19
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %.noexc5.i.i, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.ay = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTojEE14reserve_rehashNCINvNtB8_3map11make_hasherojNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i1 noundef zeroext true) #51
          to label %.noexc5.i.i unwind label %bb.c ; 0 uses

.noexc5.i.i:                                      ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !15817, !noundef !19 ; 5 uses
  %i.bb = icmp ult i64 %i.ba, 192153584101141163
  tail call void @llvm.assume(i1 %i.bb)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15829)
  %i.bc = load i64, ptr %i.i, align 8, !range !37, !alias.scope !15830, !noundef !19
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

bb.k:                                             ; preds = %.noexc5.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8grow_oneCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i) #51
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i unwind label %bb.c

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.k, %.noexc5.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !15830, !nonnull !19, !noundef !19
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %i.ba ; 3 uses
  store i128 3, ptr %i.bg, align 16, !noalias !15829
  %.sroa.4.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i128 %0, ptr %.sroa.4.0..sroa_idx22.i.i.i, align 16, !noalias !15829
  %.sroa.5.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i128 %1, ptr %.sroa.5.0..sroa_idx23.i.i.i, align 16, !noalias !15829
  %i.bh = add nuw nsw i64 %i.ba, 1
  store i64 %i.bh, ptr %i.az, align 8, !alias.scope !15830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15831)
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !15832, !nonnull !19, !noundef !19 ; 8 uses
  %.val2.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !15832, !noundef !19 ; 4 uses
  %.sroa.0.07.i.i.i.i.i = and i64 %.val2.i.i.i.i, %i.v ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.bi, align 1, !noalias !15833
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i20.i.i.i, label %._crit_edge.i.i18.i.i.i, !prof !29

._crit_edge.i.i18.i.i.i:                          ; preds = %.lr.ph.i.i20.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i20.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.bk, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ %i.cb, %.lr.ph.i.i20.i.i.i ]
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.bm
  %i.bo = and i64 %i.bn, %.val2.i.i.i.i           ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !15831, !noundef !19 ; 2 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.l, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, !prof !22

bb.l:                                             ; preds = %._crit_edge.i.i18.i.i.i
  %.val2.i.i.i19.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !15831
  %i.bs = icmp slt <16 x i8> %.val2.i.i.i19.i.i.i, zeroinitializer
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i6.i.i.i.i.i = icmp ne i16 %i.bt, 0
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bv
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !15831
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i.i.i

.lr.ph.i.i20.i.i.i:                               ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i, %.lr.ph.i.i20.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i20.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i.i20.i.i.i ], [ 0, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEoEEE8push_mutCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ]
  %i.bx = add i64 %i.bw, 16                       ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = and i64 %i.by, %.val2.i.i.i.i ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.bz, align 1, !noalias !15833
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i20.i.i.i, label %._crit_edge.i.i18.i.i.i, !prof !30

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i.i.i: ; preds = %bb.l, %._crit_edge.i.i18.i.i.i
  %i.cc = phi i8 [ %.pre.i.i.i.i, %bb.l ], [ %i.bq, %._crit_edge.i.i18.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.bv, %bb.l ], [ %i.bo, %._crit_edge.i.i18.i.i.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i
  %i.ce = add i64 %.sroa.0.0.i5.i.i.i.i.i, -16
  %i.cf = and i64 %i.ce, %.val2.i.i.i.i
  store i8 %i.x, ptr %i.cd, align 1, !noalias !15831
  %i.cg = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i8 %i.x, ptr %i.ch, align 1, !noalias !15831
  %i.ci = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i
  %i.cj = getelementptr inbounds [32 x i8], ptr %.val.i.i.i.i, i64 %i.ci ; 2 uses
  %i.ck = and i8 %i.cc, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -32
  store i128 %i.p, ptr %i.cm, align 16, !noalias !15831
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -16
  store i64 %i.ba, ptr %i.cn, align 16, !noalias !15831
  %i.co = load <2 x i64>, ptr %i.av, align 8, !alias.scope !15832
  %i.cp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.cl, i64 0
  %i.cq = sub <2 x i64> %i.co, %i.cp
  store <2 x i64> %i.cq, ptr %i.av, align 8, !alias.scope !15832
  br label %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEE6insertCsgpMJJHpo27b_12typst_bundle.exit.i.i

_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEE6insertCsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i.i.i
  %.not33.i.i.i = phi i1 [ true, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTojEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ]
  %i.cr = cmpxchg ptr %.0.val, i8 1, i8 0 release monotonic, align 1
  %i.cs = extractvalue { i8, i1 } %i.cr, 1
  br i1 %i.cs, label %_RNvXNtCsloFShupyl5J_6comemo5trackRINtNtB4_10constraint10ConstraintINtNvNtB4_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEENtB2_4Sink4emitCsgpMJJHpo27b_12typst_bundle.exit, label %bb.m, !prof !21

bb.m:                                             ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEE6insertCsgpMJJHpo27b_12typst_bundle.exit.i.i
  tail call void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %.0.val, i1 noundef zeroext false)
  br label %_RNvXNtCsloFShupyl5J_6comemo5trackRINtNtB4_10constraint10ConstraintINtNvNtB4_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEENtB2_4Sink4emitCsgpMJJHpo27b_12typst_bundle.exit

bb.n:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtCsloFShupyl5J_6comemo10constraint14ConstraintReprINtNvNtB2e_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEEEECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

_RNvXNtCsloFShupyl5J_6comemo5trackRINtNtB4_10constraint10ConstraintINtNvNtB4_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEENtB2_4Sink4emitCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMs2_NtCsloFShupyl5J_6comemo10constraintINtB5_12CallSequenceINtNvNtB7_5inputs2_1__9MultiCalluuuNtNvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__12___ComemoCallEE6insertCsgpMJJHpo27b_12typst_bundle.exit.i.i, %bb.m
  ret i1 %.not33.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !49, !noundef !19
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !19
  %.not = icmp slt i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val22 = load ptr, ptr %i.e, align 8           ; 4 uses
  %.val23 = load i64, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %.val22, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %.val22, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val22) #46
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.a, %bb.b
  store ptr %.val22, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val23, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.h, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val24, i64 noundef %.val25) #46
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.q, %bb.g ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #49
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l, !prof !22

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val26, i64 noundef %.val27) #46
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val24, i64 %.val25) #49
          to label %bb.f unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.x, align 8
  store <2 x i64> %i.d, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val26, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val27, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsY_CsiSzwKAiqS6b_8smallvecNtB5_18CollectionAllocErrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !62, !noundef !19
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !19 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector4path(ptr nofree nonnull readnone align 8 captures(none) %0, i128 %1) unnamed_addr #24 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 1, 0) i64 @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector5pages(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i128 %1) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i64, ptr %i.a, align 8, !range !60, !noundef !19
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector6anchor(ptr nofree nonnull readnone align 8 captures(none) %0, i128 %1) unnamed_addr #24 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector8document(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i128 %2) unnamed_addr #25 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtCs9gmjTwvRRSu_10typst_html10introspectNtB4_16HtmlIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector14page_numbering(ptr nofree nonnull readnone align 8 captures(none) %0, i128 %1) unnamed_addr #24 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtCs9gmjTwvRRSu_10typst_html10introspectNtB4_16HtmlIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector15page_supplement(ptr nofree nonnull readnone align 8 captures(none) %0, i128 %1) unnamed_addr #24 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtCs9gmjTwvRRSu_10typst_html10introspectNtB4_16HtmlIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector4page(ptr nofree nonnull readnone align 8 captures(none) %0, i128 %1) unnamed_addr #24 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtCs9gmjTwvRRSu_10typst_html10introspectNtB4_16HtmlIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector5pages(ptr nofree nonnull readnone align 8 captures(none) %0, i128 %1) unnamed_addr #24 {
bb.a:
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
end_hunk_7
begin_hunk_8_@_RNvXs_NtCsloFShupyl5J_6comemo5inputINtNtB6_5track7TrackedNtNtNtCsdaEETE4DqmE_13typst_library5model4link16LateLinkResolverNtNvBV_s1_1__12___ComemoCallENtB4_5Input4callCsgpMJJHpo27b_12typst_bundle:bb.a
._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.noexc22
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %.noexc22 ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.bn, %.noexc22 ], [ %i.ce, %.lr.ph.i.i.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i.i.i, %i.bp
  %i.br = and i64 %i.bq, %.val2.i.i               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !16210, !noundef !19 ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.o, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTooEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i, !prof !22

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !16210
  %i.bv = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.by
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !16210
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTooEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc22, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %.noexc22 ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ 0, %.noexc22 ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.cb, %.val2.i.i    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !16209
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !30

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTooEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.o, %._crit_edge.i.i.i
  %i.cf = phi i8 [ %.pre.i.i, %bb.o ], [ %i.bt, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.by, %bb.o ], [ %i.br, %._crit_edge.i.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.ch = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.ci = and i64 %i.ch, %.val2.i.i
  store i8 %i.ah, ptr %i.cg, align 1, !noalias !16210
  %i.cj = getelementptr i8, ptr %.val.i.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i8 %i.ah, ptr %i.ck, align 1, !noalias !16210
  %i.cl = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.cm = getelementptr inbounds [32 x i8], ptr %.val.i.i, i64 %i.cl ; 4 uses
  %i.cn = and i8 %i.cf, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -32
  store i64 %i.u, ptr %i.cp, align 16, !noalias !16210
  %.sroa_idx4 = getelementptr inbounds i8, ptr %i.cm, i64 -24
  store i64 %i.v, ptr %.sroa_idx4, align 8, !noalias !16210
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -16
  store i128 %i.bk, ptr %i.cq, align 16, !noalias !16210
  %i.cr = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !16207, !noalias !16208
  %i.cs = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.co, i64 0
  %i.ct = sub <2 x i64> %i.cr, %i.cs
  store <2 x i64> %i.ct, ptr %i.bf, align 8, !alias.scope !16207, !noalias !16208
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTooEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i
  %.pn.i = phi ptr [ %i.cm, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTooEE14insert_no_growCsgpMJJHpo27b_12typst_bundle.exit.i ], [ %i.av, %.lr.ph.i.i ]
  %.sroa.0.0.i21 = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.cu = load i128, ptr %.sroa.0.0.i21, align 16, !noundef !19 ; 2 uses
  %i.cv = cmpxchg ptr %i.m, i8 1, i8 0 release monotonic, align 1
  %i.cw = extractvalue { i8, i1 } %i.cv, 1
  br i1 %i.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit24, label %bb.p, !prof !21

bb.p:                                             ; preds = %.loopexit
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.m, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit24 unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit24: ; preds = %.loopexit, %bb.p
  %i.cx = atomicrmw add ptr %i.f, i64 -16 release, align 8
  %i.cy = and i64 %i.cx, -14
  %i.cz = icmp eq i64 %i.cy, 18
  br i1 %i.cz, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECsgpMJJHpo27b_12typst_bundle.exit25, !prof !22

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit24
  tail call void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECsgpMJJHpo27b_12typst_bundle.exit25

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECsgpMJJHpo27b_12typst_bundle.exit25: ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit24, %bb.b
  %.sroa.0.0 = phi i128 [ %i.h, %bb.b ], [ %i.cu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit24 ], [ %i.cu, %bb.q ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noundef !19 ; 2 uses
  %.not9 = icmp eq ptr %i.db, null
  br i1 %.not9, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.h, %bb.c
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api5mutex10MutexGuardNtNtCsg5ZWEykmiUC_11parking_lot9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEECsgpMJJHpo27b_12typst_bundle.exit, %bb.c
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECsgpMJJHpo27b_12typst_bundle.exit25
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !19, !align !36, !noundef !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !invariant.load !19, !nonnull !19
  %i.dh = tail call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.db, i128 noundef %.0.val, i128 noundef %.sroa.0.0) #50 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock21MappedRwLockReadGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtBG_5mutex5MutexNtNtB1B_9raw_mutex8RawMutexINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapooNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEEECsgpMJJHpo27b_12typst_bundle.exit25
  ret i128 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsRNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export0INtB6_5FnMutTTRNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathRNtBT_10BundleFileEEE8call_mutBT_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8          ; 2 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = load i64, ptr %2, align 8, !range !35, !alias.scope !16227, !noundef !19
  %i.g = icmp eq i64 %i.f, -2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !16227, !nonnull !19, !noundef !19 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !16228
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !16228, !nonnull !19, !noundef !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.o, align 8, !noalias !16228
  store ptr %i.n, ptr %i.c, align 8, !noalias !16228
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @79, ptr %i.p, align 8, !noalias !16228
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16228
  %i.q = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8, !noalias !16228
  store ptr %i.c, ptr %i.b, align 8, !noalias !16228
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.r, align 8, !noalias !16228
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.q, ptr %i.s, align 8, !noalias !16228
  call fastcc void @_RNvNtCsgpMJJHpo27b_12typst_bundle7export_15export_document(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %.val1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b), !noalias !16225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16228
  %i.t = load i64, ptr %i.d, align 8, !range !24, !noalias !16228, !noundef !19
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !16228 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.u, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre2.i = load ptr, ptr %i.x, align 8, !noalias !16228
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.x, align 8, !noalias !16228, !noundef !19
  store ptr %i.w, ptr %0, align 8, !alias.scope !16225
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !16225
  br label %_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export0B5_.exit

bb.e:                                             ; preds = %bb.k, %._crit_edge.i
  %i.aa = phi ptr [ %.pre2.i, %._crit_edge.i ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ab = phi ptr [ %i.w, %._crit_edge.i ], [ %i.i, %bb.k ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16228
  store ptr %i.ab, ptr %i.a, align 8, !noalias !16230
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !noalias !16230
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !16231, !noundef !19
  %.not.i.i = icmp slt i8 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !16231 ; 4 uses
  %.val27.i.i = load i64, ptr %i.af, align 8, !alias.scope !16231
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond, label %_RNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export00B7_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !16232
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %_RNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export00B7_.exit.i, !prof !22

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i.i) #46
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !16233
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_EE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #51
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i unwind label %bb.j, !noalias !16232

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !16232
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.aj

_RNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export00B7_.exit.i: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16228
  store ptr %.val.i.i, ptr %0, align 8, !alias.scope !16225
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val27.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16225
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16225
  br label %_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export0B5_.exit

bb.k:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !16227, !nonnull !19, !align !36, !noundef !19
  br label %bb.e

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export0B5_.exit: ; preds = %bb.d, %_RNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export00B7_.exit.i
  %.sink3.i = phi i64 [ 24, %_RNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export00B7_.exit.i ], [ 16, %bb.d ]
  %.sink.i = phi ptr [ %i.aa, %_RNCNCNvNtCsgpMJJHpo27b_12typst_bundle7export_6export00B7_.exit.i ], [ null, %bb.d ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3.i
  store ptr %.sink.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !16225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RNvXs_NvCsdaEETE4DqmE_13typst_library1__DNtB6_5WorldEL_NtNtCsloFShupyl5J_6comemo5track5Track4call(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [2 x i8], align 2                 ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 13 uses
  %i.m = alloca [72 x i8], align 8                ; 11 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = alloca [2 x i8], align 2                 ; 4 uses
  %i.v = alloca [2 x i8], align 2                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 28 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %i.aa = alloca [72 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [12 x i8], align 4               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 11 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !range !67, !noundef !19 ; 3 uses
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = icmp sgt i32 %i.ai, 0
  %narrow = select i1 %i.ak, i32 %i.aj, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.r
    i32 5, label %bb.v
    i32 6, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !19, !nonnull !19
  %i.an = tail call noundef nonnull align 16 ptr %i.am(ptr noundef nonnull %0) #50
  store ptr %i.an, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16442
  store i64 8317987319222330741, ptr %i.aa, align 8, !noalias !16442
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !16442
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16442
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16442
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !16442
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias nofree noundef align 8 dereferenceable(72) %i.aa) #50
  %i.ao = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128CsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aa) #50, !noalias !16442 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %i.ar = zext i64 %i.ap to i128
  %i.as = zext i64 %i.aq to i128
  %i.at = shl nuw i128 %i.as, 64
  %i.au = or disjoint i128 %i.at, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !19, !nonnull !19
  %i.ax = tail call noundef nonnull align 16 ptr %i.aw(ptr noundef nonnull %0) #50 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16443
  store i64 8317987319222330741, ptr %i.z, align 8, !noalias !16443
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !16443
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !16443
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i6, align 8, !noalias !16443
  %.sroa.6.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i7, i8 0, i64 40, i1 false), !noalias !16443
  %i.ay = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !16444, !nonnull !19, !noundef !19
  %i.az = tail call noundef i128 %i.ay(ptr noundef nonnull align 16 %i.ax), !noalias !16444, !inline_history !16243 ; 2 uses
  %i.ba = icmp eq i128 %i.az, 0
  br i1 %i.ba, label %bb.e, label %_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECsgpMJJHpo27b_12typst_bundle.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16446
  store i64 8317987319222330741, ptr %i.y, align 8, !noalias !16446
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !16446
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !16446
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !16446
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16447)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16448)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !16446
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !16449, !noalias !16444, !noundef !19 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %i.bd), !noalias !16450
  %i.be = load ptr, ptr %i.bb, align 8, !alias.scope !16449, !noalias !16444, !noundef !19 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = or i1 %i.bf, %.not.not.i.i.i.i.i.i.i.i
  br i1 %i.bg, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i.i:           ; preds = %bb.e
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bj = load i64, ptr %i.bi, align 16, !alias.scope !16449, !noalias !16444
  br label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %select.unfold.i.i.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i
  %.sroa.4.054.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13.053.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.bj, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.21.052.i.i.i.i.i.i.i.i = phi i64 [ %i.bk, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.bd, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.8.051.i.i.i.i.i.i.i.i = phi i64 [ 0, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.bh, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bk = add i64 %.sroa.21.052.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.4.054.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.bl = inttoptr i64 %.sroa.8.051.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bm = icmp eq i64 %.sroa.13.053.i.i.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.f
  %xtraiter = and i64 %.sroa.13.053.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.13.053.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.bo = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bn, align 8, !noalias !16451, !nonnull !19, !noundef !19 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !16254

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.13.053.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %.sroa.13.053.i.i.i.i.i.i.i.i, 8
  br i1 %i.bp, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCsgpMJJHpo27b_12typst_bundle.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !noalias !16451, !nonnull !19, !noundef !19
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.br, align 8, !noalias !16451, !nonnull !19, !noundef !19
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1, i64 544
end_hunk_8
begin_hunk_9_@_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone:bb.a
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.u
    i64 13, label %bb.v
    i64 14, label %bb.w
    i64 15, label %bb.z
    i64 16, label %bb.aa
    i64 17, label %bb.ab
    i64 18, label %bb.ac
    i64 19, label %bb.ad
    i64 20, label %bb.ae
    i64 21, label %bb.af
    i64 22, label %bb.ag
    i64 23, label %bb.aj
    i64 24, label %bb.am
    i64 25, label %bb.an
    i64 26, label %bb.au
    i64 27, label %bb.ax
    i64 28, label %bb.ay
    i64 29, label %bb.bd
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.be

bb.d:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.be

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !49, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.h, align 8
  store i64 4, ptr %0, align 8
  br label %bb.be

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  store i64 5, ptr %0, align 8
  br label %bb.be

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8, !noundef !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.n, align 8
  store i64 6, ptr %0, align 8
  br label %bb.be

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x double>, ptr %i.o, align 8
  store <2 x double> %i.q, ptr %i.p, align 8
  store i64 7, ptr %0, align 8
  br label %bb.be

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load double, ptr %i.r, align 8, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.s, ptr %i.t, align 8
  store i64 8, ptr %0, align 8
  br label %bb.be

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load double, ptr %i.u, align 8, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.v, ptr %i.w, align 8
  store i64 9, ptr %0, align 8
  br label %bb.be

bb.k:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load double, ptr %i.y, align 8, !noundef !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load <2 x double>, ptr %i.x, align 8
  store <2 x double> %i.ab, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.z, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 10, ptr %0, align 8
  br label %bb.be

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !noundef !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ad, ptr %i.ae, align 8
  store i64 11, ptr %0, align 8
  br label %bb.be

bb.m:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !range !57, !noundef !19
  %i.ah = trunc nuw i32 %i.ag to i1
  br i1 %i.ah, label %bb.bf, label %bb.bg

bb.n:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.ai, align 8, !range !31, !noundef !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val42 = load ptr, ptr %i.aj, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ak = atomicrmw add ptr %.val42, i64 1 monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 0                   ; 3 uses
  switch i64 %.val, label %default.unreachable64 [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

default.unreachable64:                            ; preds = %bb.an, %bb.v, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.r, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.s, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.t, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val42, ptr %i.an, align 8
  store i64 13, ptr %0, align 8
  br label %bb.be

bb.u:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.bk, label %bb.bj

bb.v:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !31, !noundef !19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  switch i64 %i.at, label %default.unreachable64 [
    i64 0, label %bb.bl
    i64 1, label %bb.bm
    i64 2, label %bb.bn
  ]

bb.w:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val43 = load ptr, ptr %i.av, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val44 = load i64, ptr %i.aw, align 8
  %.not.i.i = icmp eq ptr %.val43, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds i8, ptr %.val43, i64 -16
  %i.ay = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.y, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowmECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val43) #46
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.w, %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val43, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val44, ptr %i.bb, align 8
  store i64 16, ptr %0, align 8
  br label %bb.be

bb.z:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.be = load i8, ptr %i.bd, align 1, !noundef !19
  %.not = icmp slt i8 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val53 = load ptr, ptr %i.bc, align 8          ; 4 uses
  %.val54 = load i64, ptr %i.bf, align 8
  %.not.i.i59 = icmp eq ptr %.val53, inttoptr (i64 16 to ptr)
  %or.cond65 = select i1 %.not, i1 true, i1 %.not.i.i59
  br i1 %or.cond65, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, label %bb.bq

bb.aa:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.bt, label %bb.bs

bb.ab:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !60, !noundef !19
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8
  store i64 19, ptr %0, align 8
  br label %bb.be

bb.ac:                                            ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bo, ptr noundef nonnull align 8 dereferenceable(12) %i.bn, i64 12, i1 false)
  store i64 20, ptr %0, align 8
  br label %bb.be

bb.ad:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  store i64 21, ptr %0, align 8
  br label %bb.be

bb.ae:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  store i64 22, ptr %0, align 8
  br label %bb.be

bb.af:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt)
  store i64 23, ptr %0, align 8
  br label %bb.be

bb.ag:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val45 = load ptr, ptr %i.bv, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val46 = load i64, ptr %i.bw, align 8          ; 2 uses
  %.not.i.i55 = icmp eq ptr %.val45, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i55, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = getelementptr inbounds i8, ptr %.val45, i64 -16
  %i.by = atomicrmw add ptr %i.bx, i64 1 monotonic, align 8
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.ai, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val45, i64 noundef %.val46) #46
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.ag, %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val45, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val46, ptr %i.cb, align 8
  store i64 24, ptr %0, align 8
  br label %bb.be

bb.aj:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val47 = load ptr, ptr %i.cc, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val48 = load i64, ptr %i.cd, align 8          ; 2 uses
  %.not.i.i56 = icmp eq ptr %.val47, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i56, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ce = getelementptr inbounds i8, ptr %.val47, i64 -16
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.al, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val47, i64 noundef %.val48) #46
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.aj, %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val47, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val48, ptr %i.ci, align 8
  store i64 25, ptr %0, align 8
  br label %bb.be

bb.am:                                            ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.bv, label %bb.bu

bb.an:                                            ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val49 = load i64, ptr %i.cn, align 8, !range !41, !noundef !19 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val50 = load ptr, ptr %i.co, align 8          ; 8 uses
  switch i64 %.val49, label %default.unreachable64 [
    i64 0, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
    i64 1, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
    i64 2, label %bb.ao
    i64 3, label %bb.ap
    i64 4, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.cp = atomicrmw add ptr %.val50, i64 1 monotonic, align 8
  %i.cq = icmp slt i64 %i.cp, 0
  br i1 %i.cq, label %bb.ar, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.cr = atomicrmw add ptr %.val50, i64 1 monotonic, align 8
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.as, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.ct = atomicrmw add ptr %.val50, i64 1 monotonic, align 8
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.at, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.ap
  tail call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.aq
  tail call void @llvm.trap()
  unreachable

_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.an, %bb.an, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !range !60, !noundef !19
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val49, ptr %i.cx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val50, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cw, ptr %.sroa.55.0..sroa_idx, align 8
  store i64 27, ptr %0, align 8
  br label %bb.be

bb.au:                                            ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !60, !noundef !19
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val51 = load ptr, ptr %i.da, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val52 = load i64, ptr %i.db, align 8          ; 2 uses
  %.not.i.i58 = icmp eq ptr %.val51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i58, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dc = getelementptr inbounds i8, ptr %.val51, i64 -16
  %i.dd = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %bb.aw, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val51, i64 noundef %.val52) #46
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.au, %bb.av
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %i.df, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val51, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val52, ptr %.sroa.58.0..sroa_idx, align 8
  store i64 28, ptr %0, align 8
  br label %bb.be

bb.ax:                                            ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !19, !align !36, !noundef !19
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8
  store i64 29, ptr %0, align 8
  br label %bb.be

bb.ay:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17148)
  %i.dj = trunc nuw i64 %i.a to i1
  br i1 %i.dj, label %bb.az, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !17148, !noundef !19
  %.not.i = icmp slt i8 %i.dm, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.dk, align 8, !alias.scope !17148 ; 5 uses
  %.val23.i = load i64, ptr %i.dn, align 8, !alias.scope !17148 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i, label %bb.ba

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i: ; preds = %bb.az, %bb.ba, %bb.ay
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %bb.ay ], [ %.val.i, %bb.ba ], [ %.val.i, %bb.az ]
  %.sroa.5.sroa.4.0.i = phi i64 [ undef, %bb.ay ], [ %.val23.i, %bb.ba ], [ %.val23.i, %bb.az ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.ay ], [ 1, %bb.ba ], [ 1, %bb.az ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !17148, !nonnull !19, !noundef !19 ; 2 uses
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !17149
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.bc, label %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ba:                                            ; preds = %bb.az
  %i.ds = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.dt = atomicrmw add ptr %i.ds, i64 1 monotonic, align 8, !noalias !17149
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %bb.bb, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i, !prof !22

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val.i) #46
  unreachable

bb.bc:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit.i
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx60, align 8
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.0..sroa_idx61, align 8
  %.sroa.6.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dp, ptr %.sroa.6.0..sroa_idx62, align 8
  br label %bb.be

bb.bd:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.dx = atomicrmw add ptr %i.dw, i64 1 monotonic, align 8
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %bb.bx, label %bb.bw

bb.be:                                            ; preds = %bb.bw, %bb.bu, %bb.bs, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, %bb.bo, %bb.bj, %bb.bh, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.ax, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void

bb.bf:                                            ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.eb = atomicrmw add ptr %i.ea, i64 1 monotonic, align 8
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.bi, label %bb.bh

bb.bg:                                            ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.039.0.copyload = load i32, ptr %i.ed, align 4
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.pre = load ptr, ptr %.sroa.440.0..sroa_idx, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.pre, %bb.bg ], [ %i.ea, %bb.bf ]
  %.sroa.52.0 = phi i32 [ %.sroa.039.0.copyload, %bb.bg ], [ undef, %bb.bf ]
  %.sroa.01.0 = phi i32 [ 0, %bb.bg ], [ 1, %bb.bf ]
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0 = load double, ptr %.sroa.7.0.in, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.01.0, ptr %i.ee, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.52.0, ptr %.sroa.52.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 12, ptr %0, align 8
  br label %bb.be

bb.bi:                                            ; preds = %bb.bf
  tail call void @llvm.trap()
  unreachable

bb.bj:                                            ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.ef, align 8
  store i64 14, ptr %0, align 8
  br label %bb.be

bb.bk:                                            ; preds = %bb.u
  tail call void @llvm.trap()
  unreachable

bb.bl:                                            ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !19
  br label %bb.bo

bb.bm:                                            ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !19
  br label %bb.bo

bb.bn:                                            ; preds = %bb.v
  %i.ek = load ptr, ptr %i.au, align 8, !nonnull !19, !noundef !19
  %i.el = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.9.0 = phi i64 [ %i.eh, %bb.bl ], [ %i.ej, %bb.bm ], [ undef, %bb.bn ]
  %.sroa.635.0 = load ptr, ptr %i.au, align 8, !nonnull !19, !noundef !19
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.en, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.635.0, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.538.0..sroa_idx, align 8
  store i64 15, ptr %0, align 8
  br label %bb.be

bb.bp:                                            ; preds = %bb.bn
  tail call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %bb.z
  %i.eo = getelementptr inbounds i8, ptr %.val53, i64 -16
  %i.ep = atomicrmw add ptr %i.eo, i64 1 monotonic, align 8
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.br, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit, !prof !22

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsgpMJJHpo27b_12typst_bundle(ptr noundef nonnull %.val53) #46
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %bb.z, %bb.bq
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val53, ptr %i.er, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val54, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 17, ptr %0, align 8
  br label %bb.be

bb.bs:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !19, !align !36, !noundef !19
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.et, ptr %i.ev, align 8
  store i64 18, ptr %0, align 8
  br label %bb.be

bb.bt:                                            ; preds = %bb.aa
  tail call void @llvm.trap()
  unreachable

bb.bu:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.ew, align 8
  store i64 26, ptr %0, align 8
  br label %bb.be

bb.bv:                                            ; preds = %bb.am
  tail call void @llvm.trap()
  unreachable

bb.bw:                                            ; preds = %bb.bd
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !19, !align !36, !noundef !19
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ey, ptr %i.fa, align 8
  store i64 31, ptr %0, align 8
  br label %bb.be

bb.bx:                                            ; preds = %bb.bd
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17178)
  store i64 0, ptr %i.b, align 8, !alias.scope !17179, !noalias !17177
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !17179, !noalias !17177
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !17180, !noalias !17176
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !17181

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !17177
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !17182, !noalias !17177, !noundef !19 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !17182, !noalias !17177 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !17183, !noalias !17177 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !17176, !nonnull !19
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !17176 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17185)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !17176
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !17177
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !17176
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !17176
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17185)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !17177
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %i.n
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.s = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.r)
          to label %bb.d unwind label %bb.f, !noalias !17177

bb.e:                                             ; preds = %.lr.ph7
  %i.t = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.n
  br i1 %i.u, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.n
  br i1 %i.w, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.t, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.x) #49
          to label %bb.e unwind label %bb.g, !noalias !17177

bb.g:                                             ; preds = %.lr.ph7
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !17186
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !17177
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #49
          to label %.body unwind label %bb.h, !noalias !17177

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsgpMJJHpo27b_12typst_bundle(ptr nonnull %.val, i64 %.val3) #49
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgpMJJHpo27b_12typst_bundle.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17177
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %i.ac = load i64, ptr %i.d, align 8, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ac, 1
  ret { ptr, i64 } %i.ae

bb.j:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsgpMJJHpo27b_12typst_bundle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
end_hunk_9
