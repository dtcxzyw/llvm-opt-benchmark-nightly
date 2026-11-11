Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.02?download=true
inline.NumInlined: 517
inline.NumDeleted: 305
begin_hunk_0_@_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyNtNtCskeoOuuhwsQF_12sharded_slab3tid12RegistrationECsarFSTFZzLuM_11xet_runtime:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskeoOuuhwsQF_12sharded_slab3tid12RegistrationE0ECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Cselt1T5Y3W0b_8smallvecINtB6_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBM_7sharded8RegistryEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtBM_5ScopeB1D_EECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(656) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !203
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !204, !noundef !6 ; 2 uses
  %i.h = icmp ugt i64 %i.g, 16                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6
  %.sink12.i = select i1 %i.h, ptr %i.k, ptr %i.i
  %.sink11.i = select i1 %i.h, ptr %i.i, ptr %i.f ; 4 uses
  %.sink.i8 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 16) ; 3 uses
  %i.l = load i64, ptr %.sink11.i, align 8, !noundef !6 ; 3 uses
  %i.m = icmp ult i64 %i.l, %.sink.i8
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.l, %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit ], [ %.sink.i8, %bb.i ]
  store i64 %.sroa.7.0.lcssa, ptr %.sink11.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.n = load ptr, ptr %i.b, align 8, !noundef !6
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.a

.lr.ph:                                           ; preds = %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit, %bb.i
  %.sroa.7.017 = phi i64 [ %i.af, %bb.i ], [ %i.l, %_RINvCselt1T5Y3W0b_8smallvec10infallibleuECsarFSTFZzLuM_11xet_runtime.exit ] ; 4 uses
  invoke void @_RNvXNtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.k

bb.a:                                             ; preds = %.lr.ph20, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !205, !noundef !6 ; 3 uses
  %i.q = icmp ugt i64 %i.p, 16
  br i1 %i.q, label %bb.b, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.o, align 8, !alias.scope !205, !nonnull !6, !noundef !6
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !206
  br label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i

bb.c:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.f

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %.pre.i, %bb.b ], [ %i.p, %bb.a ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.r, %bb.b ], [ %i.i, %bb.a ]
  %.sink11.i.i = phi ptr [ %i.i, %bb.b ], [ %i.f, %bb.a ]
  %.sink.i.i9 = phi i64 [ %i.p, %bb.b ], [ 16, %bb.a ]
  %i.v = icmp eq i64 %i.u, %.sink.i.i9
  br i1 %i.v, label %bb.d, label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime.exit, !prof !17

bb.d:                                             ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i
  invoke fastcc void @_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0)
          to label %bb.e unwind label %bb.c, !noalias !207

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.o, align 8, !alias.scope !206, !nonnull !6, !noundef !6
  %.pre6.i = load i64, ptr %i.i, align 8, !alias.scope !206
  br label %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime.exit

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.s, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i, %bb.e
  %i.y = phi i64 [ %.pre6.i, %bb.e ], [ %i.u, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.w, %bb.e ], [ %.sink12.i.i, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.e ], [ %.sink11.i.i, %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCsarFSTFZzLuM_11xet_runtime.exit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %.sroa.04.0.i, i64 %i.y
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.aa = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !206, !noundef !6
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %.sroa.0.0.i, align 8, !alias.scope !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtCs8C3ZpOVqhBL_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.ac = load ptr, ptr %i.b, align 8, !noundef !6
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge21, label %bb.a

._crit_edge21:                                    ; preds = %_RNvMsd_Cselt1T5Y3W0b_8smallvecINtB5_8SmallVecAINtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E4pushCsarFSTFZzLuM_11xet_runtime.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.d, align 8, !noundef !6
  %.not2 = icmp eq ptr %i.ad, null
  br i1 %.not2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.sink12.i, i64 %.sroa.7.017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.af = add i64 %.sroa.7.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %.sink.i8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  store i64 %.sroa.7.017, ptr %.sink11.i, align 8
  br label %bb.g

bb.k:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.017, ptr %.sink11.i, align 8
  br label %common.resume
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtNtCsarFSTFZzLuM_11xet_runtime7logging4init16CandidateLogFileE6retainNCNvBJ_25run_log_directory_cleanups0_0E0BN_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.p = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.p, align 8            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !213, !noundef !6 ; 2 uses
  %i.s = load i64, ptr %.val, align 8, !noalias !213, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %.split.i, label %bb.b

.split.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !range !214, !alias.scope !213, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = load i32, ptr %i.w, align 8, !range !214, !noalias !213, !noundef !6
  %i.y = icmp samesign ugt i32 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %_RNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.z = icmp ugt i64 %i.r, %i.s
  br i1 %i.z, label %bb.c, label %_RNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0B7_.exit

bb.c:                                             ; preds = %bb.b, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !213
  store ptr %0, ptr %i.o, align 8, !noalias !213
  %i.aa = tail call noundef ptr @_RINvNtCsG258MDvU3F_3std2fs11remove_fileRNtNtB4_4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 15 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !213
  store ptr %i.aa, ptr %i.k, align 8, !noalias !213
  %i.ab = ptrtoint ptr %i.aa to i64               ; 12 uses
  %i.ac = and i64 %i.ab, 3
  switch i64 %i.ac, label %default.unreachable [
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !11

default.unreachable:                              ; preds = %bb.x, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %bb.e
  %i.ae = lshr i64 %i.ab, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6
  %i.ai = invoke noundef i8 %i.ah(i32 noundef %i.af)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.o, !inline_history !210

bb.f:                                             ; preds = %bb.d
  %i.aj = lshr i64 %i.ab, 32
  %i.ak = icmp ult ptr %i.aa, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.aj to i8 ; 2 uses
  %i.al = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.al)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !18, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.h:                                             ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.aa, i64 31
  %i.ap = load i8, ptr %i.ao, align 8, !range !18, !noundef !6
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i

bb.i:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !213, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.as = load i64, ptr %.val1, align 8, !noalias !213, !noundef !6
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr %.val1, align 8, !noalias !213
  %i.au = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !213
  %i.av = icmp ult i64 %i.au, 2
  br i1 %i.av, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_010___CALLSITE, i64 16) monotonic, align 8, !noalias !213 ; 3 uses
  switch i8 %i.aw, label %bb.k [
    i8 0, label %bb.n
    i8 1, label %bb.l
    i8 2, label %bb.l
  ], !prof !215

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_010___CALLSITE) #24 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.j
  %.sroa.09.0.i = phi i8 [ %i.ax, %bb.k ], [ %i.aw, %bb.j ], [ %i.aw, %bb.j ]
  %i.az = load ptr, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_010___CALLSITE, align 8, !noalias !213, !nonnull !6, !align !12, !noundef !6
  %i.ba = tail call noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az, i8 noundef %.sroa.09.0.i)
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_010___CALLSITE, align 8, !noalias !213, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !213
  store ptr %i.o, ptr %i.l, align 8, !noalias !213
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !213
  store ptr @12, ptr %i.m, align 8, !noalias !213
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.bd, align 8, !noalias !213
  store ptr %i.m, ptr %i.n, align 8, !noalias !213
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @13, ptr %i.be, align 8, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !213
  store i64 1, ptr %i.d, align 8, !noalias !213
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !noalias !213
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8, !noalias !213
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !213
  call void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !213
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !213
  br label %_RNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0B7_.exit

bb.o:                                             ; preds = %bb.ag, %bb.ad, %bb.ac, %bb.v, %bb.s, %bb.r, %.noexc.i, %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %.val67.i = load ptr, ptr %i.k, align 8, !noalias !213, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime(ptr nonnull %.val67.i) #27
          to label %bb.aj unwind label %bb.ai

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.ap, %bb.h ], [ %switch.idx.cast.i.i.i.i, %bb.f ], [ %i.an, %bb.g ], [ %i.ai, %.noexc.i ]
  %i.bg = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.bg, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  %i.bh = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !213
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !213 ; 3 uses
  switch i8 %i.bj, label %bb.r [
    i8 0, label %bb.x
    i8 1, label %bb.s
    i8 2, label %bb.s
  ], !prof !215

bb.r:                                             ; preds = %bb.q
  %i.bk = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s0_10___CALLSITE)
          to label %bb.t unwind label %bb.o       ; 2 uses

bb.s:                                             ; preds = %bb.q, %bb.t, %bb.q
  %.sroa.028.0.i = phi i8 [ %i.bk, %bb.t ], [ %i.bj, %bb.q ], [ %i.bj, %bb.q ]
  %i.bl = load ptr, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s0_10___CALLSITE, align 8, !noalias !213, !nonnull !6, !align !12, !noundef !6
  %i.bm = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bl, i8 noundef %.sroa.028.0.i)
          to label %bb.u unwind label %bb.o

bb.t:                                             ; preds = %bb.r
  %i.bn = icmp eq i8 %i.bk, 0
  br i1 %i.bn, label %bb.x, label %bb.s

bb.u:                                             ; preds = %bb.s
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s0_10___CALLSITE, align 8, !noalias !213, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !213
  store ptr %i.o, ptr %i.e, align 8, !noalias !213
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !213
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.bq, align 8, !noalias !213
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !213
  store ptr @14, ptr %i.f, align 8, !noalias !213
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.br, align 8, !noalias !213
  store ptr %i.f, ptr %i.g, align 8, !noalias !213
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @13, ptr %i.bs, align 8, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !213
  store i64 1, ptr %i.b, align 8, !noalias !213
  %.sroa.030.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.030.sroa.4.0..sroa_idx.i, align 8, !noalias !213
  %.sroa.030.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.030.sroa.5.0..sroa_idx.i, align 8, !noalias !213
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bp, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !213
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !213
  %.val.pre.i = load ptr, ptr %i.k, align 8, !noalias !213 ; 2 uses
  %.pre.i = ptrtoint ptr %.val.pre.i to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p
  %.pre-phi.i = phi i64 [ %i.ab, %bb.ae ], [ %i.ab, %bb.ab ], [ %i.ab, %bb.aa ], [ %i.ab, %bb.t ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ], [ %i.ab, %bb.af ], [ %i.ab, %bb.ah ], [ %i.ab, %bb.u ], [ %.pre.i, %bb.w ] ; 2 uses
  %.val.i = phi ptr [ %i.aa, %bb.ae ], [ %i.aa, %bb.ab ], [ %i.aa, %bb.aa ], [ %i.aa, %bb.t ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ], [ %i.aa, %bb.af ], [ %i.aa, %bb.ah ], [ %i.aa, %bb.u ], [ %.val.pre.i, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !213
  %i.bt = and i64 %.pre-phi.i, 3
  switch i64 %i.bt, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i
    i64 1, label %bb.z
  ], !prof !11

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.bv = and i64 %.pre-phi.i, 1095216660480
  %i.bw = icmp ne i64 %i.bv, 1095216660480
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.assume(i1 %i.bw)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bx = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !216, !noalias !213
  store i8 3, ptr %i.a, align 8, !alias.scope !216, !noalias !213
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !213
  br label %bb.n

bb.aa:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !213, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.cb = load i64, ptr %.val1, align 8, !noalias !213, !noundef !6
  %i.cc = add i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %.val1, align 8, !noalias !213
  %i.cd = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !213
  %i.ce = icmp ult i64 %i.cd, 2
  br i1 %i.ce, label %bb.ab, label %bb.x

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !213 ; 3 uses
  switch i8 %i.cf, label %bb.ac [
    i8 0, label %bb.x
    i8 1, label %bb.ad
    i8 2, label %bb.ad
  ], !prof !215

bb.ac:                                            ; preds = %bb.ab
  %i.cg = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s_10___CALLSITE)
          to label %bb.ae unwind label %bb.o      ; 2 uses

bb.ad:                                            ; preds = %bb.ab, %bb.ae, %bb.ab
  %.sroa.018.0.i = phi i8 [ %i.cg, %bb.ae ], [ %i.cf, %bb.ab ], [ %i.cf, %bb.ab ]
  %i.ch = load ptr, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s_10___CALLSITE, align 8, !noalias !213, !nonnull !6, !align !12, !noundef !6
  %i.ci = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ch, i8 noundef %.sroa.018.0.i)
          to label %bb.af unwind label %bb.o

bb.ae:                                            ; preds = %bb.ac
  %i.cj = icmp eq i8 %i.cg, 0
  br i1 %i.cj, label %bb.x, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  br i1 %i.ci, label %bb.ag, label %bb.x

bb.ag:                                            ; preds = %bb.af
  %i.ck = load ptr, ptr @_RNvNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0s_10___CALLSITE, align 8, !noalias !213, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !213
  store ptr %i.o, ptr %i.h, align 8, !noalias !213
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !213
  store ptr @15, ptr %i.i, align 8, !noalias !213
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.cm, align 8, !noalias !213
  store ptr %i.i, ptr %i.j, align 8, !noalias !213
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @13, ptr %i.cn, align 8, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !213
  store i64 1, ptr %i.c, align 8, !noalias !213
  %.sroa.020.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.020.sroa.4.0..sroa_idx.i, align 8, !noalias !213
  %.sroa.020.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx.i, align 8, !noalias !213
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cl, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !213
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.ah unwind label %bb.o

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !213
  br label %bb.x

bb.ai:                                            ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.aj:                                            ; preds = %bb.o
  resume { ptr, i32 } %i.bf

_RNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanups0_0B7_.exit: ; preds = %.split.i, %bb.b, %bb.n
  %.sroa.0.0.i = phi i1 [ true, %.split.i ], [ true, %bb.b ], [ false, %bb.n ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsG258MDvU3F_3std3env10remove_varReE0CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.c
    i64 0, label %bb.g
    i64 1, label %bb.d
  ], !prof !11

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 %i.j)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !219
  store i8 3, ptr %i.a, align 8, !alias.scope !219
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvNtCsG258MDvU3F_3std3env7set_varReRNtNtCsexYYUdYSQU6_5alloc6string6StringE0CsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.46.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %.val to i64                ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.c
end_hunk_0
