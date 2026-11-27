Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.11?download=true
inline.NumInlined: 216
inline.NumDeleted: 141
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslWnoh50wX8Y_14regex_automata3nfa8thompson9backtrack7VisitedECsfG1pxJcRFT5_4raft:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state17StateBuilderEmptyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2l_8for_each4callB1s_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3B_3VecB1s_E14extend_trustedBP_E0E0ECsfG1pxJcRFT5_4raft(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.i.i = alloca [64 x i8], align 8        ; 5 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4g_3VecBQ_E14extend_trustedINtNtB2A_6cloned6ClonedBF_EE0E0E0ECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 104
  %.sroa.0.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 32
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %bb.m, %bb.b
  %.val10.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.bi, %bb.m ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bj, %bb.m ] ; 2 uses
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.01.0.i ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load i8, ptr %i.k, align 8, !range !12, !noalias !220, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.n = load <2 x i64>, ptr %i.m, align 8, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220
  %i.o = load ptr, ptr %i.j, align 8, !noalias !220, !nonnull !5, !align !8, !noundef !5
  %i.p = load ptr, ptr %i.o, align 8, !noalias !220, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !220, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noalias !220, !noundef !5
  invoke void %i.p(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %.noexc.i unwind label %bb.c, !noalias !220, !inline_history !204

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !220, !nonnull !5, !align !8, !noundef !5
  %i.x = load ptr, ptr %i.w, align 8, !noalias !220, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !220, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !220, !noundef !5
  invoke void %i.x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.y, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %bb.f unwind label %bb.e, !noalias !220

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit9.i.i.i.i: ; preds = %.body.i.i.i.i, %bb.e
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.e ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !223, !noalias !220, !noundef !5
  %i.af = load ptr, ptr %i.c, align 8, !alias.scope !223, !noalias !220, !nonnull !5, !align !8, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !224, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !223, !noalias !220, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !223, !noalias !220, !noundef !5
  invoke void %i.ah(ptr noundef %i.ae, ptr noundef %i.aj, i64 noundef %i.al)
          to label %bb.n unwind label %bb.l, !noalias !224, !inline_history !209

bb.e:                                             ; preds = %.noexc.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit9.i.i.i.i

bb.f:                                             ; preds = %.noexc.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 97
  %i.ao = load i8, ptr %i.an, align 1, !range !225, !noalias !220, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !220, !align !8, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBP_4hash6random13DefaultHasherEEE13new_uninit_inCsfG1pxJcRFT5_4raft()
          to label %.noexc.i.i.i.i unwind label %bb.j, !noalias !220 ; 3 uses

.noexc.i.i.i.i:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !226
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEENtNtB1E_5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBQ_4hash6random13DefaultHasherEEENtNtB2v_5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit.i.i.i.i unwind label %bb.h, !noalias !220

bb.h:                                             ; preds = %.noexc.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef 32, i64 noundef 8) #15, !noalias !220
  br label %.body.i.i.i.i

_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBQ_4hash6random13DefaultHasherEEENtNtB2v_5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBQ_4hash6random13DefaultHasherEEENtNtB2v_5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit.i.i.i.i, %bb.f
  %.sroa.02.0.i.i.i.i = phi ptr [ null, %bb.f ], [ %i.ar, %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBQ_4hash6random13DefaultHasherEEENtNtB2v_5clone5Clone5cloneCsfG1pxJcRFT5_4raft.exit.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.au = invoke noundef i64 @_RNvXs_NtCslpwiOMB70Kp_8protobuf11cached_sizeNtB4_10CachedSizeNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noundef nonnull align 8 %i.at)
          to label %bb.m unwind label %bb.k, !noalias !220

.body.i.i.i.i:                                    ; preds = %bb.k, %bb.j, %bb.h
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.be, %bb.j ], [ %i.as, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !229, !noalias !220, !noundef !5
  %i.ax = load ptr, ptr %i.b, align 8, !alias.scope !229, !noalias !220, !nonnull !5, !align !8, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !230, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !229, !noalias !220, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !229, !noalias !220, !noundef !5
  invoke void %i.az(ptr noundef %i.aw, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit9.i.i.i.i unwind label %bb.l, !noalias !230, !inline_history !209

bb.j:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.sroa.02.0.i.i.i.i) #12
          to label %.body.i.i.i.i unwind label %bb.l, !noalias !220

bb.l:                                             ; preds = %bb.k, %.body.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit9.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !220
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220
  %i.bh = getelementptr inbounds nuw [104 x i8], ptr %.sroa.5.0.copyload, i64 %.val10.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i, i64 64, i1 false), !noalias !231
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store <2 x i64> %i.n, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !232
  %.sroa.63.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr %.sroa.02.0.i.i.i.i, ptr %.sroa.63.0..sroa_idx.i.i.a, align 8, !noalias !232
  %.sroa.74.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i64 %i.au, ptr %.sroa.74.0..sroa_idx.i.i.a, align 8, !noalias !232
  %.sroa.85.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store i8 %i.l, ptr %.sroa.85.0..sroa_idx.i.i.a, align 8, !noalias !232
  %.sroa.96.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  store i8 %i.ao, ptr %.sroa.96.0..sroa_idx.i.i, align 1, !noalias !232
  %i.bi = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bj = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.h
  br i1 %i.bk, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4g_3VecBQ_E14extend_trustedINtNtB2A_6cloned6ClonedBF_EE0E0E0ECsfG1pxJcRFT5_4raft.exit, label %bb.d

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit9.i.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %.pn.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit9.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.04.0.copyload, align 8, !noalias !233
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1I_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4g_3VecBQ_E14extend_trustedINtNtB2A_6cloned6ClonedBF_EE0E0E0ECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.m, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.bi, %bb.m ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !noalias !233
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3c_7HashSetyINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtB20_7collect6ExtendyE6extendBP_E0NCINvNvB1W_8for_each4callB2Y_NCINvXs1i_NtB3e_3mapINtB6g_7HashMapyuB3W_EIB52_B2Y_E6extendINtB2F_3MapBP_B33_EE0E0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysyuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRyyuNvYyNtNtBW_5clone5Clone5cloneNCIB1S_yTyuEuNCINvXs8_NtB8_3setINtB3g_7HashSetyINtNtBW_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtBS_7collect6ExtendyE6extendINtNtB1W_6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEEE0NCINvNvBO_8for_each4callB32_NCINvXs1i_B6_INtB6_7HashMapyuB3F_EIB4L_B32_E6extendINtB1U_3MapB5g_B37_EE0E0E0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsfG1pxJcRFT5_4raft8raw_node13is_empty_snap(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs9RMo4C3Dvu6_10raft_proto6protosNtNtB2_7eraftpb8Snapshot8is_empty(ptr noundef nonnull align 8 %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs0_CskzEliSS7R8U_14slog_envloggerINtB5_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBS_13TermDecoratorEENtCsdBFbsshtEF1_4slog5Drain3logCsfG1pxJcRFT5_4raft(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  store ptr %1, ptr %i.f, align 8
  store ptr %2, ptr %i.e, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !236, !noundef !5
  %i.k = load ptr, ptr %i.h, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %.val10, 0
  br i1 %i.r, label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.val10, 5
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %.val, %i.u
  br i1 %i.t, label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.5.0.i20 = phi ptr [ %i.s, %.lr.ph ], [ %i.u, %bb.b ] ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -32 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !range !10, !noalias !237, !noundef !5
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !237, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -16
  %i.z = load i64, ptr %i.y, align 8, !noalias !237, !noundef !5
  %i.aa = tail call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z)
  br i1 %i.aa, label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit, label %bb.b

_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -8
  %i.ac = load i8, ptr %i.ab, align 8, !range !238, !noalias !237, !noundef !5
  %i.ad = icmp samesign ult i8 %i.j, %i.ac
  br i1 %i.ad, label %bb.e, label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit.thread

bb.e:                                             ; preds = %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noundef !5
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.f, label %.split

_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit, %bb.f
  %.sroa.0.0 = phi ptr [ %i.ap, %bb.f ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit ], [ null, %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

.split:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !8, !noundef !5
  store ptr %i.ah, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtB6_9ArgumentsNtB6_7Display3fmtCsfG1pxJcRFT5_4raft, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @4, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  %i.am = invoke noundef zeroext i1 @_RNvMNtCskzEliSS7R8U_14slog_envlogger6filterNtB2_6Filter8is_match(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.ao, align 8
  %i.ap = call noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE4withNCNvXs0_CskzEliSS7R8U_14slog_envloggerINtB2l_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtB39_13TermDecoratorEENtCsdBFbsshtEF1_4slog5Drain3log0INtNtBY_6result6ResultuNtNtNtBY_2io5error5ErrorEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit.thread

bb.g:                                             ; preds = %.split
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #12
          to label %common.resume unwind label %bb.o

bb.h:                                             ; preds = %.split
  br i1 %i.am, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.ar, %bb.j ], [ %i.aq, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs_CskzEliSS7R8U_14slog_envloggerINtB4_9EnvLoggerINtCseia3OTXDmOe_9slog_term13CompactFormatNtBR_13TermDecoratorEE7enabledCsfG1pxJcRFT5_4raft.exit.thread

bb.l:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit14 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft.exit14: ; preds = %bb.l
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.o:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCslpwiOMB70Kp_8protobuf5error13ProtobufErrorNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
