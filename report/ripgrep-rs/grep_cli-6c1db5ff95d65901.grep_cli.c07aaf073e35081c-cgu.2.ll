Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_cli-6c1db5ff95d65901.grep_cli.c07aaf073e35081c-cgu.2?download=true
inline.NumInlined: 177
inline.NumDeleted: 105
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECsgwyS1EwTFAS_8grep_cli:bb.a
  unreachable, !dbg !499
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !565 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !566 ; 5 uses
  invoke void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b, !dbg !567

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !dbg !567
  %i.c = load ptr, ptr %i.a, align 8, !dbg !573, !alias.scope !576, !noundef !14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !573
  br i1 %i.d, label %.body, label %bb.c, !dbg !573

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !579, !noalias !588
  %i.f = icmp eq i64 %i.e, 1, !dbg !593
  br i1 %i.f, label %bb.d, label %.body, !dbg !593

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !594
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %.body unwind label %bb.h, !dbg !596

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597), !dbg !567
  %i.g = load ptr, ptr %i.a, align 8, !dbg !600, !alias.scope !602, !noundef !14 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !600
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsgwyS1EwTFAS_8grep_cli.exit, label %bb.f, !dbg !600

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !603, !noalias !608
  %i.j = icmp eq i64 %i.i, 1, !dbg !613
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsgwyS1EwTFAS_8grep_cli.exit, !dbg !613

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !614
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsgwyS1EwTFAS_8grep_cli.exit unwind label %bb.i, !dbg !616

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !567
  unreachable, !dbg !567

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !566

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #24
          to label %common.resume unwind label %bb.l, !dbg !566

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit unwind label %bb.j, !dbg !617

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsgwyS1EwTFAS_8grep_cli.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k, !dbg !619

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !617
  unreachable, !dbg !617

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !566

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsgwyS1EwTFAS_8grep_cli.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !621
  ret void, !dbg !566

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !566
  unreachable, !dbg !566
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB13_12StderrReader5async0NtB13_12CommandErrorEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, i32 noundef range(i32 0, -1) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !623 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1, !dbg !627
  br i1 %i.l, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit, label %bb.b, !dbg !627

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !dbg !630 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !638
  br i1 %i.n, label %bb.c, label %bb.d, !dbg !638

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !639
  invoke void @_RNvNtNtNtCsG258MDvU3F_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %bb.r, !dbg !640

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !dbg !645, !range !207, !noundef !14
  %.not.i = icmp eq i64 %i.o, -1, !dbg !645
  br i1 %.not.i, label %bb.q, label %bb.e, !dbg !648

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1, !dbg !649
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit, !dbg !651

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655), !dbg !652
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !658
  %i.r = load ptr, ptr %i.q, align 8, !dbg !658, !alias.scope !655, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !695
  %i.t = load i64, ptr %i.s, align 8, !dbg !695, !alias.scope !655, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !696, !noalias !655
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !dbg !700, !noalias !655

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %.body34.thread unwind label %bb.p, !dbg !704

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !dbg !705, !range !708, !noalias !655, !noundef !14
  %i.w = trunc nuw i64 %i.v to i1, !dbg !709
  br i1 %i.w, label %bb.h, label %bb.i, !dbg !709

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !710, !noalias !655
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, !dbg !711

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !714
  %i.y = load ptr, ptr %i.x, align 8, !dbg !714, !noalias !655, !nonnull !14, !noundef !14 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !714
  %i.aa = load i64, ptr %i.z, align 8, !dbg !714, !noalias !655, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !710, !noalias !655
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ], !dbg !715

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !dbg !735, !alias.scope !737, !noalias !740, !noundef !14 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ], !dbg !735

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !dbg !735, !alias.scope !737, !noalias !740
  br label %bb.k, !dbg !735

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ], !dbg !735
  %cond.i.i.i = icmp eq i8 %i.ac, 43, !dbg !735   ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64, !dbg !735
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad, !dbg !735 ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64, !dbg !735
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i, !dbg !735 ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader, !dbg !742

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0, !dbg !747
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i, !dbg !747

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i90, i64 1, !dbg !749
  %i.ag = add nsw i64 %.sroa.15.1.i.i.i89, -1, !dbg !749 ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ag, 0, !dbg !751
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader, !dbg !751

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i90 = phi ptr [ %i.af, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i89 = phi i64 [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i88 = phi i64 [ %i.am, %.preheader56.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %7 = icmp ugt i64 %.sroa.042.0.i.i.i88, 1844674407370955161, !dbg !752
  br i1 %7, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !dbg !759, !prof !765

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %8 = mul nuw i64 %.sroa.042.0.i.i.i88, 10, !dbg !752 ; 2 uses
  %i.ah = load i8, ptr %.sroa.0.1.i.i.i90, align 1, !dbg !766, !alias.scope !737, !noalias !740, !noundef !14
  %i.ai = zext i8 %i.ah to i32, !dbg !768
  %i.aj = add nsw i32 %i.ai, -48, !dbg !769       ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 9, !dbg !779
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = add i64 %8, %i.al                       ; 3 uses
  %i.an = icmp ult i64 %i.am, %8
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %i.an, !dbg !781, !prof !782
  br i1 %or.cond.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !dbg !781, !prof !782

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.au, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.at, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.aw, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.ao = load i8, ptr %.sroa.0.269.i.i.i, align 1, !dbg !783, !alias.scope !737, !noalias !740, !noundef !14
  %i.ap = zext i8 %i.ao to i32, !dbg !784
  %i.aq = add nsw i32 %i.ap, -48, !dbg !785       ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9, !dbg !788
  br i1 %i.ar, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m, !dbg !789

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.as = mul i64 %.sroa.042.267.i.i.i, 10, !dbg !790
  %i.at = add nsw i64 %.sroa.15.268.i.i.i, -1, !dbg !791 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1, !dbg !791
  %i.av = zext nneg i32 %i.aq to i64, !dbg !792
  %i.aw = add i64 %i.as, %i.av, !dbg !794         ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.at, 0, !dbg !747
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i, !dbg !747

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.aw, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.am, %.preheader56.i.i.i ], !dbg !795
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB17_12StderrReader5async0NtB17_12CommandErrorE00B19_.exit.i unwind label %bb.n, !dbg !796

bb.n:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body34.thread unwind label %bb.o, !dbg !800

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !796
  unreachable, !dbg !796

bb.p:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !802
  unreachable, !dbg !802

_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB17_12StderrReader5async0NtB17_12CommandErrorE00B19_.exit.i: ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc36 unwind label %bb.r, !dbg !803

.noexc36:                                         ; preds = %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB17_12StderrReader5async0NtB17_12CommandErrorE00B19_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !805
  br label %bb.q, !dbg !806

bb.q:                                             ; preds = %.noexc36, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %.noexc36 ], [ 2097152, %.noexc ], !dbg !809 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !810
  %i.ba = add i64 %.sroa.0.0.i, 1, !dbg !811
  store atomic i64 %i.ba, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8, !dbg !813
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit, !dbg !651

.body34:                                          ; preds = %.thread, %bb.w, %bb.r
  %.sroa.016.0 = phi i8 [ %.sroa.016.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.016.2, %.thread ], !dbg !818
  %.sroa.017.0 = phi i8 [ %.sroa.017.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.017.2, %.thread ], !dbg !825 ; 2 uses
  %.sroa.018.0 = phi i1 [ false, %bb.w ], [ %.sroa.018.1, %bb.r ], [ false, %.thread ], !dbg !826 ; 2 uses
  %.pn27 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.bc, %bb.r ], [ %.pn.pn, %.thread ] ; 2 uses
  %i.bb = trunc nuw i8 %.sroa.016.0 to i1, !dbg !827
  br i1 %i.bb, label %.body34.thread, label %bb.bb, !dbg !827

bb.r:                                             ; preds = %bb.aw, %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB17_12StderrReader5async0NtB17_12CommandErrorE00B19_.exit.i, %bb.c, %bb.s, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit
  %.sroa.017.1 = phi i8 [ 0, %bb.aw ], [ 1, %bb.s ], [ 1, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit ], [ 1, %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB17_12StderrReader5async0NtB17_12CommandErrorE00B19_.exit.i ], [ 1, %bb.c ], !dbg !828 ; 2 uses
  %.sroa.018.1 = phi i1 [ false, %bb.aw ], [ false, %bb.s ], [ true, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit ], [ true, %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB17_12StderrReader5async0NtB17_12CommandErrorE00B19_.exit.i ], [ true, %bb.c ], !dbg !828
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit: ; preds = %bb.q, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %bb.q ], [ %i.p, %bb.d ], !dbg !829
  %i.bd = invoke noundef i64 @_RNvMNtNtCsG258MDvU3F_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.s unwind label %bb.r, !dbg !830

bb.s:                                             ; preds = %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorE0B17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !831
  %i.be = invoke noundef nonnull ptr @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.t unwind label %bb.r, !dbg !832

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %i.j, align 8, !dbg !832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !833
  br i1 %4, label %bb.v, label %bb.u, !dbg !834

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.y unwind label %bb.x, !dbg !835

bb.v:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !836
  store ptr null, ptr %i.bf, align 8, !dbg !836
  store i64 0, ptr %i.i, align 8, !dbg !836
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !836
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx20, align 8, !dbg !836
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !836
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8, !dbg !836
  br label %bb.y, !dbg !841

.thread:                                          ; preds = %bb.ax, %.body29.thread, %bb.ac, %bb.ba, %bb.x
  %.sroa.016.2 = phi i8 [ 1, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ], !dbg !828 ; 2 uses
  %.sroa.017.2 = phi i8 [ 0, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ], !dbg !828 ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.ba ], [ %i.bq, %bb.ac ], [ %i.bj, %bb.x ], [ %eh.lpad-body3059, %.body29.thread ], [ %eh.lpad-body3059, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !842), !dbg !845
  call void @llvm.experimental.noalias.scope.decl(metadata !846), !dbg !849
  call void @llvm.experimental.noalias.scope.decl(metadata !851), !dbg !854
  call void @llvm.experimental.noalias.scope.decl(metadata !856), !dbg !859
  %i.bg = load ptr, ptr %i.j, align 8, !dbg !861, !alias.scope !865, !nonnull !14, !noundef !14
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !dbg !866, !noalias !865
  %i.bi = icmp eq i64 %i.bh, 1, !dbg !869
  br i1 %i.bi, label %bb.w, label %.body34, !dbg !869

bb.w:                                             ; preds = %.thread
  fence acquire, !dbg !870
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #23
          to label %.body34 unwind label %bb.az, !dbg !872

bb.x:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !874
  store i64 1, ptr %i.d, align 8, !dbg !874
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !874
  store i64 1, ptr %i.bk, align 8, !dbg !874
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !874
  store ptr %5, ptr %i.bl, align 8, !dbg !874
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !874
  store i64 -3, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !874
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !877, !noalias !892
  %i.bm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 48, i64 noundef 8) #22, !dbg !895, !noalias !892 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null, !dbg !896
  br i1 %i.bn, label %bb.z, label %bb.ad, !dbg !897, !prof !765

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
          to label %.noexc38 unwind label %bb.aa, !dbg !898

.noexc38:                                         ; preds = %bb.z
  unreachable, !dbg !898

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB24_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %bb.ba unwind label %bb.ab, !dbg !899

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !900
  unreachable, !dbg !900

bb.ac:                                            ; preds = %bb.au
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !901

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !904
  store ptr %i.bm, ptr %i.h, align 8, !dbg !905
  %i.br = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !dbg !911
  %i.bs = icmp slt i64 %i.br, 0, !dbg !919
  br i1 %i.bs, label %bb.af, label %bb.ae, !dbg !919

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !921
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !923
  store i32 %6, ptr %i.bt, align 8, !dbg !923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !923
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !923
  store ptr %i.bm, ptr %i.bu, align 8, !dbg !923
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !924
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !924, !noundef !14 ; 2 uses
  %.not = icmp eq ptr %i.bw, null, !dbg !924
  br i1 %.not, label %bb.ah, label %bb.ag, !dbg !927

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap(), !dbg !928
  unreachable, !dbg !928

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !929
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.bx)
          to label %bb.ah unwind label %bb.ay, !dbg !933

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !934
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !935, !noalias !943
  %i.by = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 48, i64 noundef 8) #22, !dbg !946, !noalias !943 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB13_12StderrReader5async0NtB13_12CommandErrorEB15_:bb.a
bb.ay:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB1H_12StderrReader5async0NtB1H_12CommandErrorEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #24
          to label %.body29.thread unwind label %bb.az, !dbg !952

bb.az:                                            ; preds = %bb.be, %bb.ax, %bb.w, %bb.bg, %bb.ba, %bb.ay
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1093
  unreachable, !dbg !1093

bb.ba:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #24
          to label %.thread unwind label %bb.az, !dbg !901

bb.bb:                                            ; preds = %.body34.thread, %.body34
  %.pn2770 = phi { ptr, i32 } [ %.pn2771, %.body34.thread ], [ %.pn27, %.body34 ]
  %.sroa.018.068 = phi i1 [ %.sroa.018.069, %.body34.thread ], [ %.sroa.018.0, %.body34 ]
  %.sroa.017.066 = phi i8 [ %.sroa.017.067, %.body34.thread ], [ %.sroa.017.0, %.body34 ]
  %i.dg = trunc nuw i8 %.sroa.017.066 to i1, !dbg !827
  br i1 %i.dg, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit, !dbg !827

.body34.thread:                                   ; preds = %bb.n, %bb.f, %.body34
  %.pn2771 = phi { ptr, i32 } [ %.pn27, %.body34 ], [ %i.ax, %bb.n ], [ %i.u, %bb.f ]
  %.sroa.018.069 = phi i1 [ %.sroa.018.0, %.body34 ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.067 = phi i8 [ %.sroa.017.0, %.body34 ], [ 1, %bb.n ], [ 1, %bb.f ]
  %i.dh = call noundef i32 @close(i32 noundef %6) #22, !dbg !1094 ; 0 uses
  br label %bb.bb, !dbg !1100

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.bd, %bb.bc, %bb.be, %bb.bb
  br i1 %.sroa.018.068, label %bb.bg, label %bb.bf, !dbg !827

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !1101), !dbg !827
  %i.di = load ptr, ptr %i.k, align 8, !dbg !1104, !alias.scope !1101, !noundef !14 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null, !dbg !1104
  br i1 %i.dj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit, label %bb.bd, !dbg !1104

bb.bd:                                            ; preds = %bb.bc
  %i.dk = atomicrmw sub ptr %i.di, i64 1 release, align 8, !dbg !1106, !noalias !1111
  %i.dl = icmp eq i64 %i.dk, 1, !dbg !1116
  br i1 %i.dl, label %bb.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit, !dbg !1116

bb.be:                                            ; preds = %bb.bd
  fence acquire, !dbg !1117
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit unwind label %bb.az, !dbg !1119

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit
  resume { ptr, i32 } %.pn2770, !dbg !1093

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsgwyS1EwTFAS_8grep_cli.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %bb.bf unwind label %bb.az, !dbg !827
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB1a_12StderrReader5async0NtB1a_12CommandErrorEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1c_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1120 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125), !dbg !1128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1129
  %i.e = load i32, ptr %i.d, align 8, !dbg !1129, !range !412, !alias.scope !1125, !noundef !14 ; 2 uses
  %.sroa.06.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !1132, !alias.scope !1125
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1132
  %.sroa.06.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1132
  %.sroa.06.sroa.6.0.copyload.i = load i64, ptr %.sroa.06.sroa.6.0..sroa_idx.i, align 8, !dbg !1132, !alias.scope !1125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1134, !noalias !1157
  store i64 %.sroa.06.sroa.0.0.copyload.i, ptr %i.a, align 8, !dbg !1164, !noalias !1125
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1164
  %i.f = load <2 x ptr>, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 8, !dbg !1132, !alias.scope !1125
  store <2 x ptr> %i.f, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !1164, !noalias !1125
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1164
  store i64 %.sroa.06.sroa.6.0.copyload.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !1164, !noalias !1125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1172, !noalias !1125
  invoke void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB22_12StderrReader5async0NtB22_12CommandErrorEs_000uEB24_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB2h_12StderrReader5async0NtB2h_12CommandErrorEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i unwind label %bb.b, !dbg !1173, !noalias !1157

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.h = call noundef i32 @close(i32 noundef %i.e) #22, !dbg !1174, !noalias !1157 ; 0 uses
  br label %.body.i, !dbg !1180

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB2h_12StderrReader5async0NtB2h_12CommandErrorEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1181, !noalias !1157
  invoke void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB1e_12StderrReader5async0NtB1e_12CommandErrorEB1g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.e)
          to label %bb.e unwind label %bb.c, !dbg !1182, !noalias !1125

bb.c:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB2h_12StderrReader5async0NtB2h_12CommandErrorEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null, !dbg !1183
  br label %.body.i, !dbg !1183

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body.i, 0, !dbg !1183
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.f unwind label %bb.d, !dbg !1184, !noalias !1125 ; 2 uses

bb.d:                                             ; preds = %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #21, !dbg !1187, !noalias !1125
  unreachable, !dbg !1187

bb.e:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB2h_12StderrReader5async0NtB2h_12CommandErrorEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_.exit.i.i
  %.sroa.0.0.copyload40.i = load i64, ptr %i.b, align 8, !dbg !1188, !noalias !1125
  %.sroa.8.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1188
  %.sroa.8.0.copyload43.i = load ptr, ptr %.sroa.8.0..sroa_idx42.i, align 8, !dbg !1188, !noalias !1125
  %.sroa.11.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1188
  %.sroa.11.0.copyload46.i = load ptr, ptr %.sroa.11.0..sroa_idx45.i, align 8, !dbg !1188, !noalias !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1189, !noalias !1125
  br label %bb.g, !dbg !1190

bb.f:                                             ; preds = %.body.i
  %i.m = extractvalue { ptr, ptr } %i.k, 0, !dbg !1184
  %i.n = extractvalue { ptr, ptr } %i.k, 1, !dbg !1184 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.g, !dbg !1190

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i = phi ptr [ %i.n, %bb.f ], [ %.sroa.11.0.copyload46.i, %bb.e ], !dbg !1191 ; 2 uses
  %.sroa.3.0.i = phi ptr [ %i.m, %bb.f ], [ %.sroa.8.0.copyload43.i, %bb.e ], !dbg !1191 ; 2 uses
  %.sroa.0.0.i = phi i64 [ -2, %bb.f ], [ %.sroa.0.0.copyload40.i, %bb.e ], !dbg !1191 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !1192, !alias.scope !1125, !nonnull !14, !noundef !14 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !1200 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1n_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.h unwind label %bb.j, !dbg !1206, !noalias !1125

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !1206, !noalias !1125
  %.sroa.513.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !1206
  store ptr %.sroa.3.0.i, ptr %.sroa.513.0..sroa_idx14.i, align 8, !dbg !1206, !noalias !1125
  %.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !1206
  store ptr %.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx16.i, align 8, !dbg !1206, !noalias !1125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1207, !noalias !1125
  store ptr %i.p, ptr %i.c, align 8, !dbg !1207, !noalias !1125
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !1208, !noalias !1215
  %i.s = icmp eq i64 %i.r, 1, !dbg !1220
  br i1 %i.s, label %bb.i, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorEs_0B17_.exit, !dbg !1220

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !1221
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23, !dbg !1223, !noalias !1125
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorEs_0B17_.exit, !dbg !1223

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB1Z_.exit37.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.t, !dbg !1224

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i, ptr %i.q, align 8, !dbg !1206, !noalias !1125
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !1206
  store ptr %.sroa.3.0.i, ptr %.sroa.513.0..sroa_idx.i, align 8, !dbg !1206, !noalias !1125
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !1206
  store ptr %.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !1206, !noalias !1125
  %i.u = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !1225, !noalias !1230
  %i.v = icmp eq i64 %i.u, 1, !dbg !1235
  br i1 %i.v, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB1Z_.exit37.i, !dbg !1235

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !1236
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB1Z_.exit37.i unwind label %bb.l, !dbg !1238

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1224
  unreachable, !dbg !1224

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs7_NtCsgwyS1EwTFAS_8grep_cli7processNtB15_12StderrReader5async0NtB15_12CommandErrorEs_0B17_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1239, !noalias !1125
  ret void, !dbg !1128
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsexYYUdYSQU6_5alloc5sliceSh6repeatCsgwyS1EwTFAS_8grep_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1240 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %3, 0, !dbg !1244
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !1244

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !1245
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1245
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !dbg !1245
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1245
  store i64 0, ptr %i.e, align 8, !dbg !1245
  br label %bb.d, !dbg !1248

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3), !dbg !1249
  %4 = mul nuw i64 %3, %2, !dbg !1249             ; 5 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1, !dbg !1249
  br i1 %i.g, label %bb.g, label %bb.e, !dbg !1254, !prof !765

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void, !dbg !1248

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1260
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !1260
  %i.h = load i64, ptr %i.a, align 8, !dbg !1260, !range !708, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1, !dbg !1269
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1270
  %i.k = load i64, ptr %i.j, align 8, !dbg !1270, !range !1271, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1270 ; 2 uses
  br i1 %i.i, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgwyS1EwTFAS_8grep_cli.exit, !dbg !1269, !prof !765

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.l, align 8, !dbg !1272
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25, !dbg !1273
  unreachable, !dbg !1273

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !dbg !1275, !nonnull !14, !noundef !14
  %i.o = icmp ule i64 %4, %i.k, !dbg !1276
  tail call void @llvm.assume(i1 %i.o), !dbg !1280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1285
  store i64 %i.k, ptr %i.b, align 8, !dbg !1286
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1286 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8, !dbg !1286
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1286 ; 5 uses
  store i64 0, ptr %i.q, align 8, !dbg !1286
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !1287
  invoke void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.r)
          to label %.preheader unwind label %bb.h, !dbg !1309

.preheader:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgwyS1EwTFAS_8grep_cli.exit
  %.sroa.01.08 = lshr i64 %3, 1, !dbg !1310       ; 2 uses
  %.not9 = icmp eq i64 %.sroa.01.08, 0, !dbg !1311
  %.pre11 = load i64, ptr %i.q, align 8, !dbg !1313 ; 2 uses
  br i1 %.not9, label %._crit_edge, label %.lr.ph, !dbg !1311

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !dbg !1316
  unreachable, !dbg !1316

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgwyS1EwTFAS_8grep_cli.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.l unwind label %bb.k, !dbg !1319

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.t = phi i64 [ %.pre11, %.preheader ], [ %i.ab, %.lr.ph ], !dbg !1313 ; 4 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !1320
  call void @llvm.assume(i1 %i.u), !dbg !1322
  %.not7 = icmp eq i64 %4, %i.t, !dbg !1323
  br i1 %.not7, label %bb.i, label %bb.j, !dbg !1323

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.v = phi i64 [ %i.ab, %.lr.ph ], [ %.pre11, %.preheader ], !dbg !1325 ; 3 uses
  %.sroa.01.010 = phi i64 [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.08, %.preheader ]
  %i.w = load ptr, ptr %i.p, align 8, !dbg !1327, !nonnull !14, !noundef !14 ; 2 uses
  %i.x = icmp sgt i64 %i.v, -1, !dbg !1336
  call void @llvm.assume(i1 %i.x), !dbg !1338
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v, !dbg !1339
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.w, i64 %i.v, i1 false), !dbg !1341
  %i.z = load i64, ptr %i.q, align 8, !dbg !1344, !noundef !14 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1, !dbg !1346
  call void @llvm.assume(i1 %i.aa), !dbg !1348
  %i.ab = shl nuw i64 %i.z, 1, !dbg !1349         ; 3 uses
  store i64 %i.ab, ptr %i.q, align 8, !dbg !1351
  %.sroa.01.0 = lshr i64 %.sroa.01.010, 1, !dbg !1310 ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0, 0, !dbg !1311
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1311

bb.i:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1319
  br label %bb.d, !dbg !1248

bb.j:                                             ; preds = %._crit_edge
  %i.ac = sub i64 %4, %i.t, !dbg !1355
  %i.ad = load ptr, ptr %i.p, align 8, !dbg !1356, !nonnull !14, !noundef !14 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t, !dbg !1364
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.ac, i1 false), !dbg !1366
  store i64 %4, ptr %i.q, align 8, !dbg !1368
  br label %bb.i, !dbg !1370

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !1371
  unreachable, !dbg !1371

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.s, !dbg !1371
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_9JoinInnerNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorE4joinB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1372 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1374
  %i.b = load i64, ptr %i.a, align 8, !dbg !1374, !noundef !14
  invoke void @_RNvMs0_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef %i.b)
          to label %bb.d unwind label %bb.b, !dbg !1375

bb.b:                                             ; preds = %bb.i, %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit.thread, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376), !dbg !1379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380), !dbg !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385), !dbg !1388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390), !dbg !1393
  %i.d = load ptr, ptr %1, align 8, !dbg !1395, !alias.scope !1399, !nonnull !14, !noundef !14
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !1400, !noalias !1399
  %i.f = icmp eq i64 %i.e, 1, !dbg !1403
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsgwyS1EwTFAS_8grep_cli.exit, !dbg !1403

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !1404
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsgwyS1EwTFAS_8grep_cli.exit unwind label %bb.m, !dbg !1406

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1407 ; 6 uses
  %.val = load ptr, ptr %i.g, align 8, !dbg !1410, !nonnull !14, !noundef !14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !1411 ; 2 uses
  %i.i = cmpxchg ptr %i.h, i64 1, i64 -1 acquire monotonic, align 8, !dbg !1420
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !1420
  br i1 %i.j, label %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit, label %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit.thread, !dbg !1423, !prof !1424

_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %.val acquire, align 8, !dbg !1425
  %i.l = icmp eq i64 %i.k, 1, !dbg !1429
  store atomic i64 1, ptr %i.h release, align 8, !dbg !1430
  br i1 %i.l, label %bb.e, label %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit.thread, !dbg !1410, !prof !1435

_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit.thread: ; preds = %bb.d, %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %bb.f unwind label %bb.b, !dbg !1436

bb.e:                                             ; preds = %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit
  %i.m = load ptr, ptr %i.g, align 8, !dbg !1439, !nonnull !14, !noundef !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !1442 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8, !dbg !1442 ; 2 uses
  store i64 -3, ptr %i.n, align 8, !dbg !1447
  %.not = icmp eq i64 %.sroa.0.0.copyload, -3, !dbg !1449
  br i1 %.not, label %bb.i, label %bb.g, !dbg !1452, !prof !765

bb.f:                                             ; preds = %bb.i, %_RNvMsD_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9is_uniqueB1w_.exit.thread
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !1442
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !dbg !1453
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1453
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false), !dbg !1453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454), !dbg !1379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457), !dbg !1460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462), !dbg !1465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467), !dbg !1470
  %i.o = load ptr, ptr %1, align 8, !dbg !1472, !alias.scope !1476, !nonnull !14, !noundef !14
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !dbg !1477, !noalias !1476
  %i.q = icmp eq i64 %i.p, 1, !dbg !1480
  br i1 %i.q, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsgwyS1EwTFAS_8grep_cli.exit8, !dbg !1480

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !1481
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsgwyS1EwTFAS_8grep_cli.exit8 unwind label %bb.j, !dbg !1483

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25
          to label %bb.f unwind label %bb.b, !dbg !1484

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485), !dbg !1379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488), !dbg !1491
  %i.s = load ptr, ptr %i.g, align 8, !dbg !1493, !alias.scope !1497, !nonnull !14, !noundef !14
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !1498, !noalias !1497
  %i.u = icmp eq i64 %i.t, 1, !dbg !1501
  br i1 %i.u, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB1Z_.exit, !dbg !1501

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !1502
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB1Z_.exit unwind label %bb.m, !dbg !1504

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsgwyS1EwTFAS_8grep_cli.exit8: ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505), !dbg !1379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508), !dbg !1511
  %i.v = load ptr, ptr %i.g, align 8, !dbg !1513, !alias.scope !1517, !nonnull !14, !noundef !14
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !dbg !1518, !noalias !1517
  %i.x = icmp eq i64 %i.w, 1, !dbg !1521
  br i1 %i.x, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEEEB1Z_.exit10, !dbg !1521

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsgwyS1EwTFAS_8grep_cli.exit8
end_hunk_1
