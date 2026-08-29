Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.0?download=true
inline.NumInlined: 214
inline.NumDeleted: 124
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECsbDLrNlwBX3H_4smol:bb.a
_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !66, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !173, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !176
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !184, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !185
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #25
          to label %bb.k unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.g
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  ret void

bb.j:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.j, align 8
  %i.k = trunc nuw i64 %2 to i1
  br i1 %i.k, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i64, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %.split.thread

.noexc:                                           ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !range !190, !noundef !4 ; 5 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.l, -1
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit

bb.e:                                             ; preds = %.noexc
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.55.0.copyload.i)
          to label %bb.h unwind label %bb.f, !noalias !191

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.body32.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !194
  br label %.body32.thread

bb.h:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !range !29, !noalias !191, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !191, !nonnull !4, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !191, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  switch i64 %i.w, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %i.u, align 1, !alias.scope !197, !noalias !200, !noundef !4 ; 2 uses
  switch i8 %i.x, label %bb.l [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.j
  %.pr.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !197, !noalias !200
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i.i.i, %bb.k
  %i.y = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.x, %bb.k ]
  %cond.i.i.i = icmp eq i8 %i.y, 43               ; 2 uses
  %i.z = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.w, %i.z      ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.aa = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.aa, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.l
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i91, i64 1
  %i.ac = add nsw i64 %.sroa.15.1.i.i.i90, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.l, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i91 = phi ptr [ %i.ab, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.l ] ; 2 uses
  %.sroa.15.1.i.i.i90 = phi i64 [ %i.ac, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.l ]
  %.sroa.042.0.i.i.i89 = phi i64 [ %i.ai, %.preheader56.i.i.i ], [ 0, %bb.l ]
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i89, i64 10) ; 2 uses
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m, !prof !11

bb.m:                                             ; preds = %.preheader56.i.i.i.preheader
  %8 = extractvalue { i64, i1 } %6, 0             ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.1.i.i.i91, align 1, !alias.scope !197, !noalias !200, !noundef !4
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 9
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = add i64 %8, %i.ah                       ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %8
  %or.cond.i.i = select i1 %i.ag, i1 true, i1 %i.aj, !prof !202
  br i1 %or.cond.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !202

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.n
  %.sroa.0.269.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.ap, %bb.n ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.as, %bb.n ], [ 0, %.preheader.i.i.i ]
  %i.ak = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !197, !noalias !200, !noundef !4
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ugt i32 %i.am, 9
  br i1 %i.an, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = mul i64 %.sroa.042.267.i.i.i, 10
  %i.ap = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = add i64 %i.ao, %i.ar                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.m, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.n, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.k, %bb.k, %bb.j, %bb.i
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.i ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.k ], [ 2097152, %bb.j ], [ 2097152, %bb.k ], [ %i.as, %bb.n ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.m ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.ai, %.preheader56.i.i.i ] ; 2 uses
  %i.at = icmp eq i64 %i.n, 0
  br i1 %i.at, label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, label %bb.o

bb.o:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !203
  br label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i

_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i: ; preds = %bb.o, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.o ], [ %.sroa.0.1.i.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.au, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit

.split.thread:                                    ; preds = %bb.p, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit, %bb.c
  %.sroa.015.0.ph = phi i1 [ true, %bb.c ], [ true, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit ], [ false, %bb.p ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body32.thread

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit: ; preds = %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i ], [ %i.o, %bb.d ]
  %i.av = invoke noundef i64 @_RNvMNtNtCsG258MDvU3F_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.p unwind label %.split.thread

bb.p:                                             ; preds = %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = invoke noundef nonnull ptr @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.q unwind label %.split.thread

bb.q:                                             ; preds = %bb.p
  store ptr %i.aw, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.v unwind label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ax, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.v

.thread:                                          ; preds = %bb.au, %.body26.thread, %bb.z, %bb.ax, %bb.u
  %.sroa.014.1 = phi i1 [ false, %bb.ax ], [ false, %bb.z ], [ true, %bb.u ], [ false, %.body26.thread ], [ false, %bb.au ]
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.ax ], [ %i.bi, %bb.z ], [ %i.bb, %bb.u ], [ %eh.lpad-body2754, %.body26.thread ], [ %eh.lpad-body2754, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ay = load ptr, ptr %i.i, align 8, !alias.scope !218, !nonnull !4, !noundef !4
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !218
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.t, label %.body32

bb.t:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
          to label %.body32 unwind label %bb.aw

bb.u:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.v:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.bd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !219
  %i.be = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #28, !noalias !219 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.w, label %bb.aa, !prof !11

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc35 unwind label %bb.x

.noexc35:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #25
          to label %bb.ax unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.z:                                             ; preds = %bb.ar
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.be, ptr %i.g, align 8
  %i.bj = atomicrmw add ptr %i.be, i64 1 monotonic, align 8
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.be, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.bo)
          to label %bb.ae unwind label %bb.av

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !222
  %i.bp = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #28, !noalias !222 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.af, label %bb.ai, !prof !11

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc36 unwind label %bb.ag

.noexc36:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #25
          to label %.body26.thread unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body26:                                          ; preds = %bb.ao
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body26.thread

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bu = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.bv = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8
  %i.bw = icmp slt i64 %i.bv, 0
end_hunk_0
begin_hunk_1_@_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ac)
          to label %.noexc3 unwind label %bb.ad

.noexc3:                                          ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !5 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.ag, ptr %i.ai, align 8
  store ptr %i.ac, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !305, !noundef !4 ; 4 uses
  %i.am = load i64, ptr %i.w, align 8, !range !29, !noalias !308, !noundef !4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.j

.body.i:                                          ; preds = %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.w, align 8, !noalias !308
  store i8 0, ptr %i.ap, align 8, !noalias !308
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.al, ptr %.sroa.633.0..sroa_idx.i.i, align 8, !noalias !308
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !308
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %.body unwind label %bb.ab

bb.j:                                             ; preds = %.noexc3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !311), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !315), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !318), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !321), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !324), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !327), !noalias !314
  %i.aq = load i8, ptr %i.ap, align 8, !range !48, !alias.scope !330, !noalias !308, !noundef !4
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !331), !noalias !314
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !334, !noalias !308, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !334, !noalias !308, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !335, !nonnull !4, !noundef !4
  invoke void %i.aw(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.o unwind label %.body.i, !noalias !305, !inline_history !336

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !340), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !343), !noalias !314
  %i.ax = load ptr, ptr %i.au, align 8, !alias.scope !346, !noalias !308, !nonnull !4, !noundef !4
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !347
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  fence acquire, !noalias !314
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #26
          to label %bb.o unwind label %.body.i, !noalias !305

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %.noexc3
  store i64 1, ptr %i.w, align 8, !noalias !308
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx29.i.i, align 8, !noalias !308
  %.sroa.633.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.al, ptr %.sroa.633.0..sroa_idx34.i.i, align 8, !noalias !308
  %.sroa.7.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx36.i.i, align 8, !noalias !308
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ak, align 8, !alias.scope !305
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ba, align 8, !noalias !305
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.aj, align 8, !alias.scope !305
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !305, !noundef !4
  %.not20.i.i = icmp eq ptr %i.bc, null
  br i1 %.not20.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.bb, align 8, !alias.scope !305
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !305, !noundef !4
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !305
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !348, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i = load i8, ptr %i.ai, align 8, !range !6, !alias.scope !348, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i, i8 %.val3.i.i) #25
          to label %.body unwind label %bb.aa

bb.v:                                             ; preds = %bb.t
  %.val.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !348, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i = load i8, ptr %i.ai, align 8, !range !6, !alias.scope !348, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.bi = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.bi, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !348
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.bm = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc4 unwind label %bb.ad

.noexc4:                                          ; preds = %bb.x
  br i1 %i.bm, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc4
  store atomic i8 1, ptr %i.bh monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc4, %bb.w, %bb.v
  %i.bn = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.z, label %bb.ae, !prof !11

bb.z:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ab:                                            ; preds = %.body.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.z, %bb.x, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.u, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.ad ], [ %i.bg, %bb.u ], [ %i.ao, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtBW_4sync3ArcINtB1t_5InneruEEEEEECsbDLrNlwBX3H_4smol(ptr %i.w) #25
          to label %common.resume unwind label %bb.af

bb.ae:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.w

bb.af:                                            ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 16, 29) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %4 = extractvalue { i64, i1 } %i.a, 0           ; 7 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !202
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !202

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %4, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 0, 9223372036854775805) %4) #28
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #28
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %5 = extractvalue { i64, i1 } %i.a, 0           ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !202
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !202

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std7process5ChildE7reserveCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !65, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.414.i.i = alloca [23 x i8], align 1      ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.46.i.i = alloca [23 x i8], align 1       ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i8 %i.p, ptr %i.r, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %0, align 8, !range !29, !noalias !351, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.b, label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.02.0.copyload.i.i = load i8, ptr %i.v, align 8, !noalias !351
  %.sroa.4.0..sroa.01.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 3, ptr %i.v, align 8, !noalias !351
  switch i8 %.sroa.02.0.copyload.i.i, label %bb.c [
    i8 1, label %bb.h
    i8 2, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !351
  invoke void @_RNvMsn_Cs3iPtYnXk70z_14event_listenerNtB5_7TaskRef9into_task(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, i64 noundef 0, ptr noundef nonnull %i.l)
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %bb.c
  %.sroa.414.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.414.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !351
  store i8 2, ptr %i.v, align 8, !noalias !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.01.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.414.i.i, i64 23, i1 false), !noalias !351
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.w = load i8, ptr %i.b, align 8, !range !48, !alias.scope !354, !noalias !351, !noundef !4
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !360, !noalias !351, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !360, !noalias !351, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !361, !nonnull !4, !noundef !4
  invoke void %i.ac(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae, !inline_history !362

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.ad = load ptr, ptr %i.aa, align 8, !alias.scope !372, !noalias !351, !nonnull !4, !noundef !4
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !373
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i.i)
  br label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !351
  invoke void @_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %.noexc6.i unwind label %bb.ae

.noexc6.i:                                        ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.ag = load i8, ptr %i.g, align 8, !range !377, !alias.scope !374, !noalias !351, !noundef !4 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.ai = icmp eq i8 %i.ag, 2
  br i1 %i.ai, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !384, !noalias !351, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
end_hunk_1
