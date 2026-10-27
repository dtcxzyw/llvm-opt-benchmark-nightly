Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.13?download=true
inline.NumInlined: 1062
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCscLQedeCUgb3_12clap_builder7builder9arg_groupNtB3_8ArgGroup4argsNtNtNtB7_4util2id2IdAB1a_j5_ECskeugdADtBsi_12pingora_core:bb.a
  %i.p = add i64 %i.j, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !81
  unreachable

bb.g:                                             ; preds = %bb.c, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i
  %storemerge = phi i64 [ %i.p, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i ], [ 0, %bb.c ]
  store i64 %storemerge, ptr %i.c, align 8, !alias.scope !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.r = invoke { ptr, i64 } @_RNvXsk_NtNtCscLQedeCUgb3_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.16.copyload, i64 noundef %.sroa.10.16.copyload)
          to label %bb.h unwind label %bb.b, !noalias !88 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = extractvalue { ptr, i64 } %i.r, 1
  %i.v = load i64, ptr %i.c, align 8, !alias.scope !89, !noundef !15 ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !range !17, !alias.scope !89, !noundef !15
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.1

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.1 unwind label %bb.b, !noalias !86

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.1: ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %i.d, align 8, !alias.scope !89, !nonnull !15, !noundef !15
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.v ; 2 uses
  store ptr %i.s, ptr %i.z, align 8, !noalias !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.u, ptr %i.aa, align 8, !noalias !86
  %i.ab = add i64 %i.v, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.1
  %storemerge21 = phi i64 [ %i.ab, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.1 ], [ 0, %bb.h ]
  store i64 %storemerge21, ptr %i.c, align 8, !alias.scope !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ac = invoke { ptr, i64 } @_RNvXsk_NtNtCscLQedeCUgb3_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.11.16.copyload, i64 noundef %.sroa.12.16.copyload)
          to label %bb.l unwind label %bb.b, !noalias !93 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = extractvalue { ptr, i64 } %i.ac, 1
  %i.ag = load i64, ptr %i.c, align 8, !alias.scope !94, !noundef !15 ; 3 uses
  %i.ah = load i64, ptr %i.a, align 8, !range !17, !alias.scope !94, !noundef !15
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.n, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.2

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.2 unwind label %bb.b, !noalias !91

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.2: ; preds = %bb.n, %bb.m
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !94, !nonnull !15, !noundef !15
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  store ptr %i.ad, ptr %i.ak, align 8, !noalias !95
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.af, ptr %i.al, align 8, !noalias !91
  %i.am = add i64 %i.ag, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.2
  %storemerge22 = phi i64 [ %i.am, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.2 ], [ 0, %bb.l ]
  store i64 %storemerge22, ptr %i.c, align 8, !alias.scope !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.an = invoke { ptr, i64 } @_RNvXsk_NtNtCscLQedeCUgb3_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.13.16.copyload, i64 noundef %.sroa.14.16.copyload)
          to label %bb.p unwind label %bb.b, !noalias !98 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = extractvalue { ptr, i64 } %i.an, 1
  %i.ar = load i64, ptr %i.c, align 8, !alias.scope !99, !noundef !15 ; 3 uses
  %i.as = load i64, ptr %i.a, align 8, !range !17, !alias.scope !99, !noundef !15
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.r, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.3

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.3 unwind label %bb.b, !noalias !96

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.3: ; preds = %bb.r, %bb.q
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !99, !nonnull !15, !noundef !15
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ar ; 2 uses
  store ptr %i.ao, ptr %i.av, align 8, !noalias !100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.aq, ptr %i.aw, align 8, !noalias !96
  %i.ax = add i64 %i.ar, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.3
  %storemerge23 = phi i64 [ %i.ax, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.3 ], [ 0, %bb.p ]
  store i64 %storemerge23, ptr %i.c, align 8, !alias.scope !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.16.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.ay = invoke { ptr, i64 } @_RNvXsk_NtNtCscLQedeCUgb3_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.15.16.copyload, i64 noundef %.sroa.16.16.copyload)
          to label %bb.t unwind label %bb.b, !noalias !103 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = extractvalue { ptr, i64 } %i.ay, 1
  %i.bc = load i64, ptr %i.c, align 8, !alias.scope !104, !noundef !15 ; 3 uses
  %i.bd = load i64, ptr %i.a, align 8, !range !17, !alias.scope !104, !noundef !15
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.v, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.4

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.4 unwind label %bb.b, !noalias !101

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.4: ; preds = %bb.v, %bb.u
  %i.bf = load ptr, ptr %i.d, align 8, !alias.scope !104, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  store ptr %i.az, ptr %i.bg, align 8, !noalias !105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bb, ptr %i.bh, align 8, !noalias !101
  %i.bi = add i64 %i.bc, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.4
  %storemerge24 = phi i64 [ %i.bi, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscLQedeCUgb3_12clap_builder4util2id2IdE8push_mutCskeugdADtBsi_12pingora_core.exit.i.4 ], [ 0, %bb.t ]
  store i64 %storemerge24, ptr %i.c, align 8, !alias.scope !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !alias.scope !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void

bb.x:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB3a_NtNtB7_6client4PeerEB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 4 dereferenceable(128) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(60) %2, ptr noalias nofree noundef align 8 dereferenceable(936) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load i8, ptr %i.l, align 4, !noundef !15
  %i.n = and i8 %i.m, 1
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !range !18, !noundef !15
  %.not52 = icmp eq i32 %i.p, 2
  br i1 %.not52, label %bb.e, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr %1, align 4, !range !18, !noundef !15
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.ah

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #32
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.o, ptr noundef nonnull align 4 dereferenceable(60) %2, i64 60, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.ag

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store ptr %i.s, ptr %i.k, align 8
  %i.t = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.u = icmp ult i64 %i.t, 2
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.v, label %bb.h [
    i8 0, label %bb.j
    i8 1, label %bb.i
    i8 2, label %bb.i
  ], !prof !20

bb.h:                                             ; preds = %bb.g
  %i.w = tail call noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE) #31 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.sroa.06.0 = phi i8 [ %i.w, %bb.h ], [ %i.v, %bb.g ], [ %i.v, %bb.g ]
  %i.y = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.z = tail call noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.y, i8 noundef %.sroa.06.0)
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.k, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !range !22, !noundef !15
  %i.ac = trunc nuw i32 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskxN0Kp1MEon_2h25frame8settings8SettingsNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.437.0..sroa_idx, align 8
  store ptr @3, ptr %i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.af, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @4, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = add i32 %i.ai, -16384
  %or.cond = icmp ult i32 %i.aj, 16760832
  br i1 %or.cond, label %bb.o, label %bb.n, !prof !112

bb.m:                                             ; preds = %bb.o, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !range !22, !noundef !15
  %i.am = trunc nuw i32 %i.al to i1
  br i1 %i.am, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #32
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.an = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 920
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !15
  %i.ar = call noundef i64 @_RNvNtNtCskxN0Kp1MEon_2h25codec11framed_read28calc_max_continuation_frames(i64 noundef %i.aq, i64 noundef %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 928
  store i64 %i.ar, ptr %i.as, align 8
  br label %bb.m

bb.p:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 920
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !15
  %i.az = call noundef i64 @_RNvNtNtCskxN0Kp1MEon_2h25codec11framed_read28calc_max_continuation_frames(i64 noundef %i.av, i64 noundef %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 928
  store i64 %i.az, ptr %i.ba, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.bb = load i32, ptr %i.s, align 4, !range !22, !noundef !15
  %i.bc = trunc nuw i32 %i.bb to i1
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 480
  call void @_RNvMNtNtCskxN0Kp1MEon_2h25hpack7decoderNtB2_7Decoder17queue_size_update(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bg, i64 noundef %i.bf)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bh = load ptr, ptr %i.k, align 8, !nonnull !15, !align !23, !noundef !15
  %.val = load ptr, ptr %4, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.bi), !noalias !113
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.bj = load i64, ptr %i.b, align 8, !range !14, !alias.scope !114, !noalias !113, !noundef !15
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.t, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i, !prof !13

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !114, !noalias !113, !nonnull !15, !align !21, !noundef !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !range !24, !alias.scope !114, !noalias !113, !noundef !15
  store ptr %i.bm, ptr %i.a, align 8, !noalias !115
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bo, ptr %i.bp, align 8, !noalias !115
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #28
          to label %bb.v unwind label %bb.u, !noalias !116

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume.i unwind label %bb.w, !noalias !116

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !116
  unreachable

common.resume.i:                                  ; preds = %bb.x, %bb.u
  %common.resume.op.i = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %i.by, %bb.x ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !114, !noalias !113, !nonnull !15, !align !21, !noundef !15 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !range !24, !alias.scope !114, !noalias !113, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 464
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4recvNtB2_4Recv20apply_local_settings(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.bw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bx)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEECskeugdADtBsi_12pingora_core(ptr nonnull %i.bt, i8 %i.bv) #29
          to label %common.resume.i unwind label %bb.ad, !noalias !117

bb.y:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i
  %i.bz = trunc nuw i8 %i.bv to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  br i1 %i.bz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !113
  %i.cc = and i64 %i.cb, 9223372036854775807
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %bb.z
  %i.ce = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !117
  br i1 %i.ce, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store atomic i8 1, ptr %i.ca monotonic, align 4, !noalias !117
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.cf = atomicrmw xchg ptr %i.bt, i32 0 release, align 4, !noalias !117
  %i.cg = icmp eq i32 %i.cf, 2
  br i1 %i.cg, label %bb.ac, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE20apply_local_settingsCskeugdADtBsi_12pingora_core.exit, !prof !13

bb.ac:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bt), !noalias !117
  br label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE20apply_local_settingsCskeugdADtBsi_12pingora_core.exit

bb.ad:                                            ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !117
  unreachable

_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE20apply_local_settingsCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.ac
  %i.ci = load i8, ptr %i.g, align 8, !range !25, !noundef !15
  %.not53 = icmp eq i8 %i.ci, -1
  br i1 %.not53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE20apply_local_settingsCskeugdADtBsi_12pingora_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.sink.split

bb.af:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE20apply_local_settingsCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 2, ptr %1, align 4
  store i8 -1, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.e, %bb.al
  ret void

bb.ah:                                            ; preds = %bb.c
  %i.cj = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ck = icmp ult i64 %i.cj, 2
  br i1 %i.ck, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cl, label %bb.aj [
    i8 0, label %bb.al
    i8 1, label %bb.ak
    i8 2, label %bb.ak
  ], !prof !20

bb.aj:                                            ; preds = %bb.ai
  %i.cm = tail call noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE) #31 ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ai, %bb.aj
  %.sroa.026.0 = phi i8 [ %i.cm, %bb.aj ], [ %i.cl, %bb.ai ], [ %i.cl, %bb.ai ]
  %i.co = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.cp = tail call noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.co, i8 noundef %.sroa.026.0)
  br i1 %i.cp, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.am, %bb.ak
  store i8 1, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.431.0..sroa_idx, align 1
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.532.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.am:                                            ; preds = %bb.ak
  %i.cq = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @8, ptr %i.e, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 137 to ptr), ptr %i.cs, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @4, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cr, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB3_8Settings9poll_sendINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB35_NtNtB7_6client4PeerEB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 4 dereferenceable(128) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(936) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [296 x i8], align 8               ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [296 x i8], align 8               ; 12 uses
  %i.r = alloca [60 x i8], align 4                ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !range !18, !noundef !15 ; 3 uses
  %.not = icmp eq i32 %i.t, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load i8, ptr %i.u, align 4, !alias.scope !147, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.t, ptr %i.r, align 4
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ab = load <4 x i32>, ptr %i.w, align 4, !alias.scope !147 ; 3 uses
  store <4 x i32> %i.ab, ptr %.sroa.5121.0..sroa_idx, align 4
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ac = load <4 x i32>, ptr %i.x, align 4, !alias.scope !147 ; 3 uses
  store <4 x i32> %i.ac, ptr %.sroa.9125.0..sroa_idx, align 4
  %.sroa.13129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.ad = load <4 x i32>, ptr %i.y, align 4, !alias.scope !147
  %i.ae = load i32, ptr %i.y, align 4, !alias.scope !147
  store <4 x i32> %i.ad, ptr %.sroa.13129.0..sroa_idx, align 4
  %.sroa.17133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  store i32 %i.aa, ptr %.sroa.17133.0..sroa_idx, align 4
  %.sroa.18134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i8 %i.v, ptr %.sroa.18134.0..sroa_idx, align 4
  %i.af = tail call { i64, ptr } @_RNvMs0_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10poll_readyB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.as
  store i32 2, ptr %i.s, align 4
  %i.aj = load i32, ptr %1, align 4, !range !18, !noundef !15
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.at, label %bb.au

bb.d:                                             ; preds = %bb.b
  store i8 -2, ptr %0, align 8
  br label %bb.bh

bb.e:                                             ; preds = %bb.b
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.ah)
  br label %bb.bh

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.al, align 4, !alias.scope !149
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %.sroa.571.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 0, ptr %.sroa.672.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 0, ptr %.sroa.773.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 0, ptr %.sroa.874.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 0, ptr %.sroa.975.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  store i32 0, ptr %.sroa.1076.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.1177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  store i8 1, ptr %.sroa.1177.0..sroa_idx, align 4, !alias.scope !149
  store i8 4, ptr %i.q, align 8, !alias.scope !150
  %i.am = call noundef i8 @_RNvMs0_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE6bufferB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.q) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i8 %i.am, -1
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !151
  store i8 %i.am, ptr %i.f, align 1, !noalias !151
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 22, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #32
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.g
  %i.an = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit
  %i.ap = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ap, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !20

bb.j:                                             ; preds = %bb.i
  %i.aq = call noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE) #31 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.013.0 = phi i8 [ %i.aq, %bb.j ], [ %i.ap, %bb.i ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.at = call noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, i8 noundef %.sroa.013.0)
  br i1 %i.at, label %bb.am, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit, %bb.am, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !range !24, !alias.scope !152, !noundef !15
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 1, ptr %i.au, align 4, !alias.scope !152
end_hunk_0
