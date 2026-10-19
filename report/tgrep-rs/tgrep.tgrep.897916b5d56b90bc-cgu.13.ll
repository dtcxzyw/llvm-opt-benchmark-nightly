Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.13?download=true
inline.NumInlined: 920
inline.NumDeleted: 448
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs4ciboHeBKjP_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsbNLsQi0JuJ4_5tgrep:bb.a
  br i1 %i.aj, label %bb.m, label %bb.r

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #36
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4ciboHeBKjP_15crossbeam_epoch5guard5GuardECsbNLsQi0JuJ4_5tgrep(ptr nonnull align 128 %i.ae) #35
          to label %.body.i unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !7, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 384
  %i.ao = load atomic i64, ptr %i.an monotonic, align 8
  %i.ap = or i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap seq_cst seq_cst, align 8 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 2088 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !7 ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = and i64 %i.at, 127
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.r, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.al, align 8, !nonnull !7, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  invoke void @_RNvMs5_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_6Global7collect(ptr noundef nonnull align 128 %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.r unwind label %bb.l

bb.o:                                             ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

.body.i:                                          ; preds = %bb.l
  %i.ba = load i64, ptr %i.af, align 8, !noundef !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !7 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.ba, 0
  %i.bf = icmp eq i64 %i.bc, 1
  %or.cond.i.i.i.i = and i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i.i, label %bb.q, label %common.resume, !prof !18

bb.q:                                             ; preds = %.body.i
  invoke void @_RNvMs6_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
          to label %common.resume unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %i.af, align 8, !noundef !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 2080 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !7 ; 2 uses
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i64 %i.bg, 0
  %i.bl = icmp eq i64 %i.bi, 1
  %or.cond.i.i.i3.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i3.i, label %bb.s, label %_RNCINvNtCs4ciboHeBKjP_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsbNLsQi0JuJ4_5tgrep.exit, !prof !18

bb.s:                                             ; preds = %bb.r
  call void @_RNvMs6_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ae)
  br label %_RNCINvNtCs4ciboHeBKjP_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsbNLsQi0JuJ4_5tgrep.exit

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNtCs4ciboHeBKjP_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsbNLsQi0JuJ4_5tgrep.exit

_RNCINvNtCs4ciboHeBKjP_15crossbeam_epoch7default11with_handleNCNvB4_3pin0NtNtB6_5guard5GuardEs_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.s, %bb.r, %bb.u
  %.sroa.0.0 = phi ptr [ %.val.i, %bb.u ], [ %i.ae, %bb.r ], [ %i.ae, %bb.s ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5Xr050g3D4S_3std3env3varReECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5Xr050g3D4S_3std3env6var_osReECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCs5Xr050g3D4S_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0EB15_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = load i64, ptr %1, align 8, !range !736, !noundef !7
  switch i64 %i.q, label %default.unreachable117 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

default.unreachable117:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.am
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !7 ; 3 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %bb.j, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !7
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.y
  store ptr %i.w, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.ab, align 8
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecIBL_mEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENCINvB2F_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es3_0EE9from_iterB42_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core5query17union_many_sorted(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8
  br label %bb.ak

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.s
  store ptr %i.af, ptr %i.o, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %2, ptr %i.ai, align 8
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBL_NtNtB10_6ondisk12PostingEntryEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2Q_5slice4iter4IterBW_ENCINvBY_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0E0EE9from_iterB4D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !737
  store ptr %i.a, ptr %i.b, align 8, !noalias !738
  %i.an = icmp samesign ult i64 %i.am, 2
  br i1 %i.an, label %bb.l, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp samesign ult i64 %i.am, 21
  br i1 %i.ao, label %bb.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB15_6ondisk12PostingEntryEENCINvMNtB1U_5sliceSBZ_11sort_by_keyjNCINvB13_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0IB1Q_BZ_EEB45_(ptr noalias nofree noundef nonnull align 8 %i.ak, i64 noundef range(i64 0, 288230376151711744) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
          to label %bb.l unwind label %.thread

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1s_6ondisk12PostingEntryEENCINvMNtB2h_5sliceSB1m_11sort_by_keyjNCINvB1q_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4t_(ptr noalias nofree noundef nonnull align 8 %i.ak, i64 noundef range(i64 0, 288230376151711744) %i.am, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %.thread

bb.j:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8
  br label %bb.ak

bb.k:                                             ; preds = %.thread72
  br i1 %.sroa.027.277, label %.thread93, label %bb.ay

.thread:                                          ; preds = %bb.l, %bb.h, %bb.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %.thread93

bb.l:                                             ; preds = %bb.f, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBv_NtNtBK_6ondisk12PostingEntryEEE6removeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.m unwind label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.m, align 8, !nonnull !7, !align !739, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core5query30sort_dedup_postings_by_file_id(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.o unwind label %bb.ax

bb.n:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.thread93

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.aw = load i64, ptr %i.n, align 8, !range !19, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !7 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 1152921504606846976
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  store ptr %i.av, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.ba, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecTmhhEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENCINvNtB32_5query23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es0_0EE9from_iterB4A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bc = load i8, ptr %i.bb, align 4, !range !10, !noundef !7
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bg = mul i8 %i.bf, -98
  %i.bh = lshr i8 %i.bg, 5
  %i.bi = shl nuw i8 1, %i.bh
  store i8 %i.bi, ptr %i.j, align 1
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE6retainNCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es1_0EB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %i.j)
          to label %bb.s unwind label %.thread81

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.bj = load ptr, ptr %i.aj, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.bk = load i64, ptr %i.p, align 8, !range !19, !noundef !7
  %i.bl = load i64, ptr %i.al, align 8, !noundef !7 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 288230376151711744
  call void @llvm.assume(i1 %i.bm)
  %.idx = shl nuw nsw i64 %i.bl, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.bj, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.bj, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.bk, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.bn, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.lr.ph: ; preds = %bb.r
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit

.thread81:                                        ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, %bb.q
  %.sroa.027.3.ph = phi i1 [ true, %bb.q ], [ false, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.r

.body50.sink.split:                               ; preds = %bb.ah, %bb.ad
  %.val2.i52.sink = phi i64 [ %.val2.i46, %bb.ad ], [ %.val2.i52, %bb.ah ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cp, %bb.ad ], [ %i.ct, %bb.ah ]
  %.val3.i53 = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.bu = shl nuw i64 %.val2.i52.sink, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i53, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !7
  br label %.body50

.body50:                                          ; preds = %.body50.sink.split, %bb.ah, %bb.ad, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.cp, %bb.ad ], [ %i.ct, %bb.ah ], [ %.pn.pn.pn.ph, %.body50.sink.split ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.thread72 unwind label %bb.aw

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit
  %i.bv = phi ptr [ %i.bj, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.lr.ph ], [ %i.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.bw, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !740
  %.sroa.0.0.copyload = load ptr, ptr %i.bv, align 8, !noalias !740 ; 3 uses
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx61, align 8, !noalias !740 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false), !noalias !740
  %.not = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, label %bb.t

bb.t:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.5.0.copyload, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core5query30sort_dedup_postings_by_file_id(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.w unwind label %bb.v

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit, %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtBG_3VecNtNtB1v_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit45 unwind label %.thread81

bb.u:                                             ; preds = %bb.al, %bb.av, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.av ], [ %i.ch, %bb.al ], [ %i.bx, %bb.v ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #35
          to label %.body50 unwind label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.bp, align 8
  store i64 0, ptr %i.bq, align 8
  %i.by = load i64, ptr %i.br, align 8, !noundef !7 ; 4 uses
  %i.bz = icmp ult i64 %i.by, 1152921504606846976
  call void @llvm.assume(i1 %i.bz)
  %.not109 = icmp eq i64 %i.by, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 5
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ap
  %.pre110 = phi i64 [ %i.by, %.lr.ph ], [ %.pre111, %bb.ap ] ; 3 uses
  %i.cc = phi i64 [ %i.by, %.lr.ph ], [ %i.dq, %bb.ap ] ; 2 uses
  %i.cd = phi i64 [ 0, %.lr.ph ], [ %i.dr, %bb.ap ] ; 6 uses
  %.sroa.05.0107 = phi i64 [ 0, %.lr.ph ], [ %.sroa.05.1, %bb.ap ] ; 4 uses
  %.sroa.09.0106 = phi i64 [ 0, %.lr.ph ], [ %.sroa.09.1, %bb.ap ] ; 5 uses
  %i.ce = load i64, ptr %i.bs, align 8, !noundef !7 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 1152921504606846976
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp ult i64 %.sroa.09.0106, %i.ce
  br i1 %i.cg, label %bb.am, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !741 ; 2 uses
  %i.ci = icmp eq i64 %.val2.i, 0
  br i1 %i.ci, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val3.i = load ptr, ptr %i.bt, align 8, !alias.scope !742, !nonnull !7, !noundef !7
  %i.cj = shl nuw i64 %.val2.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !743
  br label %bb.al

bb.aa:                                            ; preds = %._crit_edge
  %.val.i = load i64, ptr %i.l, align 8, !alias.scope !741 ; 2 uses
  %i.ck = icmp eq i64 %.val.i, 0
  br i1 %i.ck, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val1.i = load ptr, ptr %i.bt, align 8, !alias.scope !742, !nonnull !7, !noundef !7
  %i.cl = shl nuw i64 %.val.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !744
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.ab, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cm = load i64, ptr %i.br, align 8, !noundef !7 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 1152921504606846976
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp eq i64 %i.cm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.co, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i46 = load i64, ptr %i.h, align 8, !alias.scope !745 ; 2 uses
  %i.cq = icmp eq i64 %.val2.i46, 0
  br i1 %i.cq, label %.body50, label %.body50.sink.split

bb.ae:                                            ; preds = %bb.ac
  %.val.i48 = load i64, ptr %i.h, align 8, !alias.scope !745 ; 2 uses
  %i.cr = icmp eq i64 %.val.i48, 0
  br i1 %i.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1.i49 = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !alias.scope !746, !nonnull !7, !noundef !7
  %i.cs = shl nuw i64 %.val.i48, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i49, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !747
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i52 = load i64, ptr %i.h, align 8, !alias.scope !748 ; 2 uses
  %i.cu = icmp eq i64 %.val2.i52, 0
  br i1 %i.cu, label %.body50, label %.body50.sink.split

bb.ai:                                            ; preds = %bb.ag
  %.val.i55 = load i64, ptr %i.h, align 8, !alias.scope !748 ; 2 uses
  %i.cv = icmp eq i64 %.val.i55, 0
  br i1 %i.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit59, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val1.i56 = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !alias.scope !749, !nonnull !7, !noundef !7
  %i.cw = shl nuw i64 %.val.i55, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i56, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !750
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit59

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.cx = load ptr, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !751, !nonnull !7, !noundef !7
  %i.cy = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !751, !nonnull !7, !noundef !7 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cx
  br i1 %i.cz, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit59: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtBG_3VecNtNtB1v_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit45: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtB7_3VecNtNtB12_6ondisk12PostingEntryEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.dc = load i64, ptr %i.l, align 8, !range !19, !noundef !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !7 ; 2 uses
  %i.df = icmp ult i64 %i.de, 1152921504606846976
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  store ptr %i.db, ptr %i.e, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.db, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.dc, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.dg, ptr %.sroa.623.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecmEINtNtB6_14spec_from_iter12SpecFromItermINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTmhhEENCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es2_0EE9from_iterB46_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtBG_3VecNtNtB1v_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit45, %bb.j, %bb.e, %bb.d
  ret void

bb.al:                                            ; preds = %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.u

bb.am:                                            ; preds = %bb.x
  %i.dh = load ptr, ptr %i.bt, align 8, !nonnull !7, !noundef !7
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.sroa.05.0107
  %i.dj = load i32, ptr %i.di, align 4, !noundef !7 ; 2 uses
  %i.dk = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.sroa.09.0106 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !noundef !7
  %i.dn = call i8 @llvm.ucmp.i8.i32(i32 %i.dj, i32 %i.dm)
  switch i8 %i.dn, label %bb.b [
    i8 -1, label %bb.an
    i8 0, label %bb.aq
    i8 1, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.do = add nuw nsw i64 %.sroa.05.0107, 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dp = add nuw nsw i64 %.sroa.09.0106, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao, %bb.an
  %.pre111 = phi i64 [ %.pre110, %bb.an ], [ %.pre, %bb.as ], [ %.pre110, %bb.ao ]
  %i.dq = phi i64 [ %i.cc, %bb.an ], [ %.pre, %bb.as ], [ %i.cc, %bb.ao ] ; 3 uses
  %i.dr = phi i64 [ %i.cd, %bb.an ], [ %i.ed, %bb.as ], [ %i.cd, %bb.ao ]
  %.sroa.09.1 = phi i64 [ %.sroa.09.0106, %bb.an ], [ %i.ef, %bb.as ], [ %i.dp, %bb.ao ]
  %.sroa.05.1 = phi i64 [ %i.do, %bb.an ], [ %i.ee, %bb.as ], [ %.sroa.05.0107, %bb.ao ] ; 2 uses
  %i.ds = icmp ult i64 %i.dq, 1152921504606846976
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ult i64 %.sroa.05.1, %i.dq
  br i1 %i.dt, label %bb.x, label %._crit_edge

bb.aq:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 5
  %i.dv = load i8, ptr %i.du, align 1, !noundef !7 ; 2 uses
  %i.dw = load i8, ptr %i.ca, align 4, !range !10, !noundef !7
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dy = load i8, ptr %i.cb, align 1, !noundef !7
  %i.dz = mul i8 %i.dy, -98
  %i.ea = lshr i8 %i.dz, 5
  %i.eb = shl nuw i8 1, %i.ea
  %i.ec = and i8 %i.eb, %i.dv
  %.not35 = icmp eq i8 %i.ec, 0
  br i1 %.not35, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit, %bb.ar
  %.pre = phi i64 [ %.pre.pre, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit ], [ %.pre110, %bb.ar ] ; 2 uses
  %i.ed = phi i64 [ %i.em, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit ], [ %i.cd, %bb.ar ]
  %i.ee = add nuw nsw i64 %.sroa.05.0107, 1
  %i.ef = add nuw nsw i64 %.sroa.09.0106, 1
  br label %bb.ap

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.eh = load i8, ptr %i.eg, align 4, !noundef !7
  %.sroa.531.0.insert.ext = zext i8 %i.dv to i64
  %.sroa.531.0.insert.shift = shl nuw nsw i64 %.sroa.531.0.insert.ext, 40
  %.sroa.430.0.insert.ext = zext i8 %i.eh to i64
  %.sroa.430.0.insert.shift = shl nuw nsw i64 %.sroa.430.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i32 %i.dj to i64
  %.sroa.430.0.insert.insert = or disjoint i64 %.sroa.531.0.insert.shift, %.sroa.029.0.insert.ext
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.430.0.insert.insert, %.sroa.430.0.insert.shift
  %i.ei = load i64, ptr %i.g, align 8, !range !19, !alias.scope !752, !noundef !7
  %i.ej = icmp eq i64 %i.cd, %i.ei
  br i1 %i.ej, label %bb.au, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmhhEE8grow_oneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #32
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.av

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEE8push_mutCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.au, %bb.at
  %i.ek = load ptr, ptr %i.bp, align 8, !alias.scope !752, !nonnull !7, !noundef !7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.cd
  store i64 %.sroa.029.0.insert.insert, ptr %i.el, align 4
  %i.em = add i64 %i.cd, 1                        ; 2 uses
  store i64 %i.em, ptr %i.bq, align 8, !alias.scope !752
  %.pre.pre = load i64, ptr %i.br, align 8
  br label %bb.as

bb.av:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %bb.u unwind label %bb.aw

bb.aw:                                            ; preds = %.body50, %.thread93, %bb.ax, %.thread72, %bb.av, %bb.u
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread72:                                        ; preds = %.body50, %.thread81
  %.pn.pn.pn.pn79 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread81 ], [ %.pn.pn.pn, %.body50 ] ; 2 uses
  %.sroa.027.277 = phi i1 [ %.sroa.027.3.ph, %.thread81 ], [ false, %.body50 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #35
          to label %bb.k unwind label %bb.aw

bb.ax:                                            ; preds = %bb.m
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #35
          to label %.thread93 unwind label %bb.aw

bb.ay:                                            ; preds = %.thread93, %bb.k
  %.pn.pn.pn.pn.pn.pn64 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn65, %.thread93 ], [ %.pn.pn.pn.pn79, %bb.k ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn64

.thread93:                                        ; preds = %bb.n, %bb.ax, %.thread, %bb.k
  %.pn.pn.pn.pn.pn.pn65 = phi { ptr, i32 } [ %3, %.thread ], [ %.pn.pn.pn.pn79, %bb.k ], [ %i.at, %bb.n ], [ %i.ep, %bb.ax ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBC_NtNtB1e_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #35
          to label %bb.ay unwind label %bb.aw
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB13_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB37_4SyncEL_EE10initializeNCINvB12_11get_or_initNCINvNtCsbNLsQi0JuJ4_5tgrep5serve13ctrlc_handlerNCNvB4h_3runs3_0E0E0zE0EEB4j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !775, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtBH_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2K_4SyncEL_EE10initializeNCINvBG_11get_or_initNCINvNtCsbNLsQi0JuJ4_5tgrep5serve13ctrlc_handlerNCNvB3T_3runs3_0E0E0zE0EB3V_.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtBH_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2K_4SyncEL_EE10initializeNCINvBG_11get_or_initNCINvNtCsbNLsQi0JuJ4_5tgrep5serve13ctrlc_handlerNCNvB3T_3runs3_0E0E0zE0EB3V_.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !776 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !777, !nonnull !7, !noundef !7
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !778
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !776 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtBH_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2K_4SyncEL_EE10initializeNCINvBG_11get_or_initNCINvNtCsbNLsQi0JuJ4_5tgrep5serve13ctrlc_handlerNCNvB3T_3runs3_0E0E0zE0EB3V_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !777, !nonnull !7, !noundef !7
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !779
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtBH_8OnceLockINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB2K_4SyncEL_EE10initializeNCINvBG_11get_or_initNCINvNtCsbNLsQi0JuJ4_5tgrep5serve13ctrlc_handlerNCNvB3T_3runs3_0E0E0zE0EB3V_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9tUge3wv4pz_9hashbrown3raw8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB2_8non_null7NonNullINtB1l_8LruEntryB1K_INtNtB1O_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEEEB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsn_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_7RawIterTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtB1k_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE13drop_elementsB3j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !782, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsJ_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtB1l_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEENtNtNtB21_3ops4drop4Drop4dropB3k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !782, !nonnull !7, !noundef !7
  %i.f = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 -1, i64 %i.f, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !782
  %.pre.fr.i = freeze i64 %.pre.i                 ; 3 uses
  %i.g = icmp ult i64 %.pre.fr.i, 8
  %i.h = add i64 %.pre.fr.i, 1
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %spec.select.i = select i1 %i.g, i64 %.pre.fr.i, i64 %i.j
  br label %_RNvXsJ_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtB1l_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEENtNtNtB21_3ops4drop4Drop4dropB3k_.exit

_RNvXsJ_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtB1l_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEENtNtNtB21_3ops4drop4Drop4dropB3k_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8, !alias.scope !782
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !782
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !782, !nonnull !7, !noundef !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9tUge3wv4pz_9hashbrown3raw8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB2_8non_null7NonNullINtB1l_8LruEntryB1K_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEEEB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsn_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_7RawIterTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE13drop_elementsB31_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !785, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsJ_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEENtNtNtB21_3ops4drop4Drop4dropB32_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !785, !nonnull !7, !noundef !7
  %i.f = add i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 -1, i64 %i.f, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !785
  %.pre.fr.i = freeze i64 %.pre.i                 ; 3 uses
  %i.g = icmp ult i64 %.pre.fr.i, 8
  %i.h = add i64 %.pre.fr.i, 1
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %spec.select.i = select i1 %i.g, i64 %.pre.fr.i, i64 %i.j
  br label %_RNvXsJ_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEENtNtNtB21_3ops4drop4Drop4dropB32_.exit

_RNvXsJ_NtCs9tUge3wv4pz_9hashbrown3rawINtB5_8RawDrainTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEENtNtNtB21_3ops4drop4Drop4dropB32_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.l, align 8, !alias.scope !785
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !785
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !785, !nonnull !7, !noundef !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !792 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = shl nuw i64 %.val2, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !793
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !alias.scope !792 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = shl nuw i64 %.val, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #34, !noalias !794
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit4

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBC_NtNtB1e_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryIBw_NtNtBL_6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !801 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtBG_3vec3VecNtNtB1l_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = shl nuw i64 %.val2, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !802
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtBG_3vec3VecNtNtB1l_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !alias.scope !801 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtBG_3vec3VecNtNtB1l_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = shl nuw i64 %.val, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !803
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtBG_3vec3VecNtNtB1l_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit4

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtBG_3vec3VecNtNtB1l_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtBG_3vec3VecNtNtB1l_6ondisk12PostingEntryEEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTmhhEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmhhEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

end_hunk_0
