Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.183?download=true
inline.NumInlined: 575
inline.NumDeleted: 203
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsdZqrmKseQ0Z_14regex_automata3nfa8thompson9backtrack7VisitedECsl8OoimOLbh_6qdrant:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsdZqrmKseQ0Z_14regex_automata4util11determinize5state17StateBuilderEmptyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB2u_15ServiceResponseNtNtNtB2w_5error5error5ErroruEINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4A_5boxed3BoxDNtNtB2w_5guard5GuardEL_EEEIB4a_INtNtB4A_2rc2RcNtNtB2w_4rmap11ResourceMapEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslWa2ydkAqSs_12actix_router8resource11ResourceDefECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(152) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val5 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val6 = load ptr, ptr %i.c, align 8, !nonnull !11, !align !814, !noundef !11
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1B_15ServiceResponseNtNtNtB1D_5error5error5ErroruEECsl8OoimOLbh_6qdrant(ptr %.val5, ptr nonnull %.val6) #18
          to label %.body unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val4 = load ptr, ptr %i.e, align 8, !nonnull !11, !align !814, !noundef !11 ; 5 uses
  %i.f = load ptr, ptr %.val4, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !12, !invariant.load !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1B_15ServiceResponseNtNtNtB1D_5error5error5ErroruEECsl8OoimOLbh_6qdrant.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !761, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #17
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1B_15ServiceResponseNtNtNtB1D_5error5error5ErroruEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !12, !invariant.load !11 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !761, !invariant.load !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #17
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.l, %bb.g ], [ %i.l, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #18
          to label %.body7 unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1B_15ServiceResponseNtNtNtB1D_5error5error5ErroruEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !range !35, !alias.scope !1016, !noundef !11
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1B_15ServiceResponseNtNtNtB1D_5error5error5ErroruEECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body7 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.n

.body7:                                           ; preds = %bb.n, %bb.j, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ad, %bb.n ], [ %i.v, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1019, !noundef !11 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit, label %bb.l

bb.l:                                             ; preds = %.body7
  %i.aa = load i64, ptr %i.y, align 8, !noalias !1022, !noundef !11
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !noalias !1022
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs519D4kX01I1_13actix_service5boxed17BoxServiceFactoryuNtNtCsgoPClq0H8JF_9actix_web7service14ServiceRequestNtB1B_15ServiceResponseNtNtNtB1D_5error5error5ErroruEECsl8OoimOLbh_6qdrant.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEECsl8OoimOLbh_6qdrant.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1027, !noundef !11 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit10, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant.exit
  %i.ah = load i64, ptr %i.af, align 8, !noalias !1030, !noundef !11
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.af, align 8, !noalias !1030
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit10

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB12_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web5guard5GuardEL_EEEECsl8OoimOLbh_6qdrant.exit, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.m, %bb.b, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCsgoPClq0H8JF_9actix_web4rmap11ResourceMapEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.l, %.body7, %bb.m
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc14entropy_encode20SortHuffmanTreeItemsNtNtB4_17brotli_bit_stream21SimpleSortHuffmanTreeECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, 13
  br i1 %i.a, label %.preheader.split, label %bb.b

.preheader.split:                                 ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 1
  br i1 %i.b, label %.lr.ph70.preheader, label %.loopexit

.lr.ph70.preheader:                               ; preds = %.preheader.split
  %umax87 = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 2 uses
  br label %.lr.ph70

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 57
  %i.d = select i1 %i.c, i64 2, i64 0
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge67, %bb.o, %.preheader.split
  ret void

bb.c:                                             ; preds = %bb.b, %._crit_edge67
  %indvars.iv = phi i64 [ %i.d, %bb.b ], [ %indvars.iv.next, %._crit_edge67 ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_RNvNvNtNtCs4GWW6M5ZWyU_6brotli3enc14entropy_encode20SortHuffmanTreeItems4gaps, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 6 uses
  %i.g = icmp ult i64 %i.f, %2
  br i1 %i.g, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.c
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1) ; 2 uses
  br label %.lr.ph66

._crit_edge67:                                    ; preds = %bb.h, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond86.not, label %.loopexit, label %bb.c

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.h
  %.sroa.031.064 = phi i64 [ %i.h, %bb.h ], [ %i.f, %.lr.ph66.preheader ] ; 6 uses
  %i.h = add i64 %.sroa.031.064, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.031.064, %umax
  br i1 %exitcond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph66
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.031.064
  %i.j = load i64, ptr %i.i, align 4              ; 2 uses
  %.sroa.042.0.extract.trunc = trunc i64 %i.j to i32
  %.not60 = icmp ult i64 %.sroa.031.064, %i.f
  br i1 %.not60, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph66
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #22
  unreachable

.lr.ph:                                           ; preds = %bb.d, %bb.j
  %.sroa.019.061 = phi i64 [ %i.k, %bb.j ], [ %.sroa.031.064, %bb.d ] ; 3 uses
  %i.k = sub nuw nsw i64 %.sroa.019.061, %i.f     ; 6 uses
  %i.l = icmp ult i64 %i.k, %1
  br i1 %i.l, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.j, %bb.f, %bb.d
  %.sroa.019.0.lcssa = phi i64 [ %.sroa.031.064, %bb.d ], [ %.sroa.019.061, %bb.f ], [ %i.k, %bb.j ] ; 3 uses
  %i.m = icmp ult i64 %.sroa.019.0.lcssa, %1
  br i1 %i.m, label %bb.h, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %.val41 = load i32, ptr %i.n, align 4, !noundef !11
  %i.o = icmp ugt i32 %.val41, %.sroa.042.0.extract.trunc
  br i1 %i.o, label %bb.j, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #22
  unreachable

bb.h:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.019.0.lcssa
  store i64 %i.j, ptr %i.p, align 4
  %exitcond84.not = icmp eq i64 %i.h, %2
  br i1 %exitcond84.not, label %._crit_edge67, label %.lr.ph66

bb.i:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.019.0.lcssa, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  %.sroa.027.0.copyload = load i64, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.019.061
  store i64 %.sroa.027.0.copyload, ptr %i.q, align 4
  %.not = icmp ult i64 %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %bb.o
  %.sroa.029.069 = phi i64 [ %i.r, %bb.o ], [ 1, %.lr.ph70.preheader ] ; 4 uses
  %i.r = add nuw nsw i64 %.sroa.029.069, 1        ; 2 uses
  %exitcond88.not = icmp eq i64 %.sroa.029.069, %umax87
  br i1 %exitcond88.not, label %bb.k, label %.split

.split:                                           ; preds = %.lr.ph70
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.029.069
  %i.t = load i64, ptr %i.s, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.t to i32
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph70
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax87, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #22
  unreachable

bb.l:                                             ; preds = %bb.n, %.split
  %.sroa.08.0 = phi i64 [ %.sroa.029.069, %.split ], [ %.sroa.01.0, %bb.n ] ; 3 uses
  %.sroa.01.0 = add nsw i64 %.sroa.08.0, -1       ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0 ; 2 uses
  %.val39 = load i32, ptr %i.u, align 4, !noundef !11
  %i.v = icmp ugt i32 %.val39, %.sroa.0.0.extract.trunc
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.sroa.08.1 = phi i64 [ 0, %bb.n ], [ %.sroa.08.0, %bb.l ] ; 3 uses
  %i.w = icmp ult i64 %.sroa.08.1, %1
  br i1 %i.w, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %.sroa.06.0.copyload = load i64, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.08.0
  store i64 %.sroa.06.0.copyload, ptr %i.x, align 4
  %i.y = icmp eq i64 %.sroa.01.0, 0
  br i1 %i.y, label %bb.m, label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.08.1
  store i64 %i.t, ptr %i.z, align 4
  %exitcond89.not = icmp eq i64 %i.r, %2
  br i1 %exitcond89.not, label %.loopexit, label %.lr.ph70

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs4GWW6M5ZWyU_6brotli3enc14entropy_encode11HuffmanTreeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
  %i.c = load i64, ptr %i.a, align 8, !range !32, !noundef !11
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !33, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #19
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs4GWW6M5ZWyU_6brotli3enc14entropy_encode11HuffmanTreeE11extend_withCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2, i64 noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4GWW6M5ZWyU_6brotli3enc14entropy_encode11HuffmanTreeEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCs6TRFxdUibgW_9once_cell3impINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE10initializeNCINvMs4_NtBa_4syncINtB1P_8OnceCellBR_E11get_or_initNCNvMs9_B1P_INtB1P_4LazyBR_E5force0E0NtNvMs4_B1P_IB20_pE11get_or_init4VoidE0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !814, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !814, !noundef !11
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1035, !noundef !11 ; 2 uses
  store ptr null, ptr %i.d, align 8, !noalias !1035
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @111, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #22, !noalias !1035
  unreachable

_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !1040
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !align !814, !noundef !11 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !11 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !range !35, !alias.scope !1041, !noundef !11
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit_crit_edge unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit_crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  %.pre = load ptr, ptr %i.g, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  %i.n = load ptr, ptr %i.g, align 8, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit_crit_edge, %_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant.exit
  %i.o = phi ptr [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit_crit_edge ], [ %i.h, %_RNCINvMs4_NtCs6TRFxdUibgW_9once_cell4syncINtB8_8OnceCellNtNtCsexYYUdYSQU6_5alloc6string6StringE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Csl8OoimOLbh_6qdrant.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvYNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtBa_12verification22StrictModeVerification20check_request_filter0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr %.0.val, ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.not.not = icmp eq i8 %2, 0
  br i1 %or.cond.not.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0
