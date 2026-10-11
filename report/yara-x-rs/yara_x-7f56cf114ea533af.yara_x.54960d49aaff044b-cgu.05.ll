Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXNtCsgkljs906P5b_3nom5multiINtB3_5Many0TINvNtNtB5_6number8complete6le_u16RShINtNtB5_5error5ErrorB1d_EEBG_INvBJ_6le_u32B1d_B1g_EEEINtNtB5_8internal6ParserB1d_E7processINtB2a_7OutputMNtB2a_4EmitB2X_NtB2a_9StreamingEECs7gfv9tzbXmh_6yara_x:bb.a

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.x, align 8, !noalias !615
  %i.cf = load i64, ptr %i.y, align 8, !alias.scope !616, !noalias !617, !noundef !5 ; 3 uses
  %i.cg = load i64, ptr %i.h, align 8, !range !19, !alias.scope !616, !noalias !617, !noundef !5
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTttmEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #30
          to label %bb.u unwind label %bb.s, !noalias !617

bb.s:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTttmEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.t, !noalias !617

bb.t:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !617
  unreachable

bb.u:                                             ; preds = %bb.q, %bb.r
  %i.ck = load ptr, ptr %i.z, align 8, !alias.scope !616, !noalias !617, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cf
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.cl, align 4, !noalias !617
  %i.cm = add i64 %i.cf, 1
  store i64 %i.cm, ptr %i.y, align 8, !alias.scope !616, !noalias !617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !600
  store ptr %i.cc, ptr %i.f, align 8, !noalias !601
  store i64 %i.cd, ptr %i.t, align 8, !noalias !601
  %i.cn = icmp samesign ult i64 %i.cd, 2
  br i1 %i.cn, label %._crit_edge, label %bb.c

bb.v:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.co, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0160, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.3.0159, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTttmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTttmEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTttmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.s, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %i.cp, %bb.w ], [ %lpad.phi, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTttmEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.v
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTttmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTttmEEECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.z:                                             ; preds = %bb.o, %bb.j, %._crit_edge
  %.sroa.3.0158 = phi i64 [ %.sroa.3.0159, %bb.o ], [ %.sroa.3.0159, %bb.j ], [ %.sroa.3.0.lcssa, %._crit_edge ]
  %.sroa.0.0149 = phi ptr [ %.sroa.0.0160, %bb.o ], [ %.sroa.0.0160, %bb.j ], [ %.sroa.0.0.lcssa, %._crit_edge ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0149, ptr %i.cr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0158, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.y

bb.aa:                                            ; preds = %.thread
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsgkljs906P5b_3nom5multiINtB6_8ManyTillNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3lnk6parserNtBS_9LnkParser22parse_extra_data_block0INtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB3e_EENCNvMBS_B1C_10parse_body0mEB3h_EINtNtB8_8internal6ParserB3e_E7processINtB4g_7OutputMNtB4g_4EmitB53_NtB4g_9StreamingEEBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8, !alias.scope !651
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !alias.scope !651
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !651
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.b

.thread.loopexit:                                 ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit:               ; preds = %bb.j, %bb.f
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit.split-lp:      ; preds = %bb.v
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp.loopexit, %.thread.loopexit.split-lp.loopexit.split-lp, %.thread.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit70, %.thread.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp71, %.thread.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %common.resume unwind label %bb.z

bb.b:                                             ; preds = %bb.q, %bb.a
  %.sroa.4.0 = phi i64 [ %3, %bb.a ], [ %i.al, %bb.q ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %2, %bb.a ], [ %i.ak, %bb.q ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !652
  store ptr %.sroa.0.0, ptr %i.b, align 8, !noalias !653
  store i64 %.sroa.4.0, ptr %i.i, align 8, !noalias !653
  %i.m = icmp samesign ult i64 %.sroa.4.0, 4
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.4.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !652
  store ptr %.sroa.0.0, ptr %i.a, align 8, !noalias !652
  store ptr %i.n, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !652
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !652
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.08.i.i.i.i.i = phi i32 [ %i.aa, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.o = phi i64 [ %.pr.i.i.i.i.i, %bb.d ], [ 4, %bb.c ]
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !654, !noalias !655
  %i.q = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %.thread.loopexit ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.r = extractvalue { i1, i8 } %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.s = extractvalue { i1, i8 } %i.q, 1
  %i.t = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !656, !noalias !655, !noundef !5 ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !656, !noalias !655
  %i.v = zext i8 %i.s to i32
  %i.w = trunc i64 %i.t to i32
  %i.x = shl i32 %i.w, 3
  %i.y = and i32 %i.x, 24
  %i.z = shl nuw i32 %i.v, %i.y
  %i.aa = add i32 %i.z, %.sroa.0.08.i.i.i.i.i     ; 2 uses
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !654, !noalias !655 ; 2 uses
  %i.ab = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.ab, label %bb.f, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !652
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %.noexc
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i32 [ %i.aa, %bb.d ], [ %.sroa.0.08.i.i.i.i.i, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !652
  %i.ac = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4)
          to label %.noexc19 unwind label %.thread.loopexit.split-lp.loopexit ; 2 uses

.noexc19:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !652
  %i.ad = icmp ult i32 %.sroa.0.0.lcssa.i.i.i.i.i, 4
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.noexc19
  %i.ae = extractvalue { ptr, i64 } %i.ac, 0
  %i.af = extractvalue { ptr, i64 } %i.ac, 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.0.0.lcssa.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.y

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.h:                                             ; preds = %bb.w
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.o, %bb.t, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.ah, %bb.h ], [ %i.ap, %bb.o ], [ %lpad.phi, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.y

bb.j:                                             ; preds = %.noexc19, %bb.e
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3lnk6parserNtBG_9LnkParser22parse_extra_data_block0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2H_NtB6_9StreamingEEBM_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.4.0)
          to label %bb.k unwind label %.thread.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.d, align 8, !range !12, !noundef !5
  switch i64 %i.aj, label %default.unreachable [
    i64 -1, label %bb.l
    i64 0, label %bb.w
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.al = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %i.al, %.sroa.4.0
  br i1 %i.am, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.an = load i64, ptr %i.l, align 8, !alias.scope !658, !noalias !659, !noundef !5 ; 2 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCsf9zsxFiMdlN_18pulley_interpreter(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %bb.q unwind label %bb.o, !noalias !659

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %common.resume unwind label %bb.p, !noalias !659

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !659
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.n
  %i.ar = add i64 %i.an, 1
  store i64 %i.ar, ptr %i.l, align 8, !alias.scope !658, !noalias !659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !657
  br label %bb.b

bb.r:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.as, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 8, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %bb.r
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit21 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit21: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.y

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.4.0, i8 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.x unwind label %.thread.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.k, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.h

bb.x:                                             ; preds = %bb.v
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aw, align 8
  br label %bb.s

bb.y:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.z:                                             ; preds = %.thread
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1i_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1Q_3Dex16parse_dex_headers0_0hEINtNtB8_8internal6ParserB1i_E7processINtB3b_7OutputMNtB3b_4EmitB3Y_NtB3b_9StreamingEEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !673
  store ptr %2, ptr %i.b, align 8, !noalias !674
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !674
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !673
  store ptr %2, ptr %i.a, align 8, !noalias !673
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  %.sroa.35.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  %i.f = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !675 ; 3 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0
  br i1 %i.g, label %.lr.ph.i.preheader.i.i, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !673
  %i.h = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !673
  br label %bb.e

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.pr.i.i1.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673 ; 2 uses
  %i.i = icmp eq i64 %.pr.i.i1.i.i, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.preheader.i.i
  %i.j = add i64 %.pr.i.i1.i.i, -1
  store i64 %i.j, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  %i.k = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !675 ; 3 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.preheader.i
  %.pr.i.i.i.i54 = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673 ; 2 uses
  %i.m = icmp eq i64 %.pr.i.i.i.i54, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.preheader
  %i.n = add i64 %.pr.i.i.i.i54, -1
  store i64 %i.n, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  %i.o = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !675 ; 2 uses
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.q = add i64 %.pr.i.i.i.i, -1
  store i64 %i.q, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  %i.r = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !675 ; 2 uses
  %i.s = extractvalue { i1, i8 } %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.t = phi { i1, i8 } [ %i.r, %.lr.ph.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !673 ; 2 uses
  %i.u = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !673
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 24, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.preheader
  %.lcssa.i.i = phi { i1, i8 } [ %i.f, %.lr.ph.i.preheader.i.i ], [ %i.f, %.lr.ph.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.v = extractvalue { i1, i8 } %.lcssa.i.i, 1
  %i.w = icmp eq i8 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !673
  %i.x = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !673
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  store i64 1, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.thread, %.loopexit
  %i.y = phi { ptr, i64 } [ %i.h, %.thread ], [ %i.x, %.loopexit ] ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = extractvalue { ptr, i64 } %i.y, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1i_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1Q_3Dex16parse_dex_headers_0hEINtNtB8_8internal6ParserB1i_E7processINtB3a_7OutputMNtB3a_4EmitB3X_NtB3a_9StreamingEEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !690
  store ptr %2, ptr %i.b, align 8, !noalias !691
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !691
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !690
  store ptr %2, ptr %i.a, align 8, !noalias !690
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !noalias !690
  %.sroa.35.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690
  %i.f = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !692 ; 3 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0
  br i1 %i.g, label %.lr.ph.i.preheader.i.i, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !690
  %i.h = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !693 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  br label %bb.d

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.pr.i.i1.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690 ; 2 uses
  %i.i = icmp eq i64 %.pr.i.i1.i.i, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.preheader.i.i
  %i.j = add i64 %.pr.i.i1.i.i, -1
  store i64 %i.j, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690
  %i.k = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !692 ; 3 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.preheader.i
  %.pr.i.i.i.i54 = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690 ; 2 uses
  %i.m = icmp eq i64 %.pr.i.i.i.i54, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.preheader
  %i.n = add i64 %.pr.i.i.i.i54, -1
  store i64 %i.n, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690
  %i.o = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !692 ; 2 uses
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.q = add i64 %.pr.i.i.i.i, -1
  store i64 %i.q, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690
  %i.r = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !692 ; 2 uses
  %i.s = extractvalue { i1, i8 } %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.t = phi { i1, i8 } [ %i.r, %.lr.ph.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !690 ; 2 uses
  %i.u = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 24, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.preheader
  %.lcssa.i.i = phi { i1, i8 } [ %i.f, %.lr.ph.i.preheader.i.i ], [ %i.f, %.lr.ph.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.v = extractvalue { i1, i8 } %.lcssa.i.i, 1
  %i.w = icmp eq i8 %i.v, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !690
  %i.x = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !693 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %.loopexit
  store i64 1, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.y = extractvalue { ptr, i64 } %i.x, 1
  %i.z = extractvalue { ptr, i64 } %i.x, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 48, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1i_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1Q_9ElfParser5parses0_0hEINtNtB8_8internal6ParserB1i_E7processINtB35_7OutputMNtB35_4EmitB3S_NtB35_9StreamingEEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !707
  store ptr %2, ptr %i.b, align 8, !noalias !708
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !708
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store ptr %2, ptr %i.a, align 8, !noalias !707
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !noalias !707
  %.sroa.35.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707
  %i.f = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !709 ; 3 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0
  br i1 %i.g, label %.lr.ph.i.preheader.i.i, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  %i.h = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !710 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  br label %bb.d

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.pr.i.i1.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707 ; 2 uses
  %i.i = icmp eq i64 %.pr.i.i1.i.i, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.preheader.i.i
  %i.j = add i64 %.pr.i.i1.i.i, -1
  store i64 %i.j, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707
  %i.k = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !709 ; 3 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.preheader.i
  %.pr.i.i.i.i54 = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707 ; 2 uses
  %i.m = icmp eq i64 %.pr.i.i.i.i54, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.preheader
  %i.n = add i64 %.pr.i.i.i.i54, -1
  store i64 %i.n, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707
  %i.o = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !709 ; 2 uses
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.q = add i64 %.pr.i.i.i.i, -1
  store i64 %i.q, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707
  %i.r = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !709 ; 2 uses
  %i.s = extractvalue { i1, i8 } %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.t = phi { i1, i8 } [ %i.r, %.lr.ph.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !707 ; 2 uses
  %i.u = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 24, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.preheader
  %.lcssa.i.i = phi { i1, i8 } [ %i.f, %.lr.ph.i.preheader.i.i ], [ %i.f, %.lr.ph.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.v = extractvalue { i1, i8 } %.lcssa.i.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  %i.w = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !710 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !707
  %i.x = add i8 %i.v, -1
  %.sroa.0.0.i = icmp ult i8 %i.x, 2
  br i1 %.sroa.0.0.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %.loopexit
  store i64 1, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = extractvalue { ptr, i64 } %i.w, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.v, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1i_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1Q_9ElfParser5parses_0hEINtNtB8_8internal6ParserB1i_E7processINtB34_7OutputMNtB34_4EmitB3R_NtB34_9StreamingEEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !724
  store ptr %2, ptr %i.b, align 8, !noalias !725
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !725
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !724
  store ptr %2, ptr %i.a, align 8, !noalias !724
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !noalias !724
  %.sroa.35.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724
  %i.f = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !726 ; 3 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0
  br i1 %i.g, label %.lr.ph.i.preheader.i.i, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !724
  %i.h = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !727 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !724
  br label %bb.d

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.pr.i.i1.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724 ; 2 uses
  %i.i = icmp eq i64 %.pr.i.i1.i.i, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.preheader.i.i
  %i.j = add i64 %.pr.i.i1.i.i, -1
  store i64 %i.j, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724
  %i.k = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !726 ; 3 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.preheader.i
  %.pr.i.i.i.i54 = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724 ; 2 uses
  %i.m = icmp eq i64 %.pr.i.i.i.i54, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.preheader
  %i.n = add i64 %.pr.i.i.i.i54, -1
  store i64 %i.n, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724
  %i.o = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !726 ; 2 uses
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.q = add i64 %.pr.i.i.i.i, -1
  store i64 %i.q, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724
  %i.r = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !726 ; 2 uses
  %i.s = extractvalue { i1, i8 } %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.t = phi { i1, i8 } [ %i.r, %.lr.ph.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !724 ; 2 uses
  %i.u = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !724
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 24, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.preheader
  %.lcssa.i.i = phi { i1, i8 } [ %i.f, %.lr.ph.i.preheader.i.i ], [ %i.f, %.lr.ph.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.v = extractvalue { i1, i8 } %.lcssa.i.i, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !724
  %i.w = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !727 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !724
  %i.x = add i8 %i.v, -1
  %.sroa.0.0.i = icmp ult i8 %i.x, 2
  br i1 %.sroa.0.0.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %.loopexit
  store i64 1, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = extractvalue { ptr, i64 } %i.w, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.v, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6be_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_header0mEINtNtB8_8internal6ParserB1m_E7processINtB3c_7OutputMNtB3c_4EmitB3Z_NtB3c_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !741
  store ptr %2, ptr %i.b, align 8, !noalias !742
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !742
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !741
  store ptr %2, ptr %i.a, align 8, !noalias !741
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !741
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.210.i.i.i.i = phi i32 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.f = phi i64 [ 4, %bb.b ], [ %.pr6.i.i.i.i, %bb.d ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !741
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !743 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = shl i32 %.sroa.0.210.i.i.i.i, 8
  %i.l = zext i8 %i.j to i32
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %.pr6.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !741 ; 2 uses
  %i.n = icmp eq i64 %.pr6.i.i.i.i, 0
  br i1 %i.n, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !741
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.2.lcssa.i.i.i.i = phi i32 [ %i.m, %bb.d ], [ %.sroa.0.210.i.i.i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !741
  %i.o = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !744 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !741
  %i.p = icmp eq i32 %.sroa.0.2.lcssa.i.i.i.i, 1684371466
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = extractvalue { ptr, i64 } %i.o, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1684371466, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1m_EENCNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB21_2PE20parse_rsrc_dir_entry000tEINtNtB8_8internal6ParserB1m_E7processINtB3n_7OutputMNtB3n_4EmitB4a_NtB3n_9StreamingEEB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !763
  store ptr %2, ptr %i.b, align 8, !noalias !764
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !764
  %i.d = icmp samesign ult i64 %3, 2
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !763
  store ptr %2, ptr %i.a, align 8, !noalias !763
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !763
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !763
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i16 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 2, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !765, !noalias !766
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !767 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !768, !noalias !766, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !768, !noalias !766
  %i.m = zext i8 %i.j to i16
  %i.n = trunc i64 %i.k to i16
  %i.o = shl i16 %i.n, 3
  %i.p = and i16 %i.o, 8
  %i.q = shl nuw i16 %i.m, %i.p
  %i.r = add i16 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !765, !noalias !766 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !763
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 24, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i16 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !763
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 2), !noalias !769 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !763
  %i.u = icmp ult i16 %.sroa.0.0.lcssa.i.i.i.i, 1000
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1m_EENCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1X_2PE14parse_rsrc_dirs_0tEINtNtB8_8internal6ParserB1m_E7processINtB3d_7OutputMNtB3d_4EmitB40_NtB3d_9StreamingEEB23_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !788
  store ptr %1, ptr %i.b, align 8, !noalias !789
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8, !noalias !789
  %i.d = icmp samesign ult i64 %2, 2
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !788
  store ptr %1, ptr %i.a, align 8, !noalias !788
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !788
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !788
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i16 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 2, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !790, !noalias !791
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !792 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !793, !noalias !791, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !793, !noalias !791
  %i.m = zext i8 %i.j to i16
  %i.n = trunc i64 %i.k to i16
  %i.o = shl i16 %i.n, 3
  %i.p = and i16 %i.o, 8
  %i.q = shl nuw i16 %i.m, %i.p
  %i.r = add i16 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !790, !noalias !791 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !788
  store i64 1, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 24, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i16 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !788
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 2), !noalias !794 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !788
  %i.u = icmp ult i16 %.sroa.0.0.lcssa.i.i.i.i, -32767
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers2_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !813
  store ptr %2, ptr %i.b, align 8, !noalias !814
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !814
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !813
  store ptr %2, ptr %i.a, align 8, !noalias !813
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !813
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !813
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !815, !noalias !816
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !817 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !818, !noalias !816, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !818, !noalias !816
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !815, !noalias !816 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !813
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !819 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !813
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers3_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !838
  store ptr %2, ptr %i.b, align 8, !noalias !839
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !839
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !838
  store ptr %2, ptr %i.a, align 8, !noalias !838
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !838
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !838
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !840, !noalias !841
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !842 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !843, !noalias !841, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !843, !noalias !841
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !840, !noalias !841 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !838
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !838
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !844 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !838
  %i.u = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i, 112
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 112, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers4_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !863
  store ptr %2, ptr %i.b, align 8, !noalias !864
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !864
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !863
  store ptr %2, ptr %i.a, align 8, !noalias !863
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !863
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !863
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !865, !noalias !866
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !867 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !868, !noalias !866, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !868, !noalias !866
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !865, !noalias !866 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !863
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !863
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !869 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !863
  switch i32 %.sroa.0.0.lcssa.i.i.i.i, label %bb.f [
    i32 2018915346, label %bb.g
    i32 305419896, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %i.v = extractvalue { ptr, i64 } %i.t, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers5_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !888
  store ptr %2, ptr %i.b, align 8, !noalias !889
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !889
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !888
  store ptr %2, ptr %i.a, align 8, !noalias !888
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !888
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !888
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !890, !noalias !891
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !892 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !893, !noalias !891, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !893, !noalias !891
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !890, !noalias !891 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !888
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !888
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !894 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !888
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers6_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !913
  store ptr %2, ptr %i.b, align 8, !noalias !914
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !914
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !913
  store ptr %2, ptr %i.a, align 8, !noalias !913
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !913
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !913
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !915, !noalias !916
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !917 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !918, !noalias !916, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !918, !noalias !916
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !915, !noalias !916 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !913
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !913
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !919 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !913
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers7_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !938
  store ptr %2, ptr %i.b, align 8, !noalias !939
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !939
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !938
  store ptr %2, ptr %i.a, align 8, !noalias !938
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !938
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !938
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !940, !noalias !941
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !942 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !943, !noalias !941, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !943, !noalias !941
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !940, !noalias !941 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !938
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !938
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !944 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !938
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers8_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !963
  store ptr %2, ptr %i.b, align 8, !noalias !964
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !964
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !963
  store ptr %2, ptr %i.a, align 8, !noalias !963
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !963
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !963
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !965, !noalias !966
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !967 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !968, !noalias !966, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !968, !noalias !966
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !965, !noalias !966 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !963
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !963
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !969 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !963
  %i.u = icmp ult i32 %.sroa.0.0.lcssa.i.i.i.i, 65536
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headers9_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !988
  store ptr %2, ptr %i.b, align 8, !noalias !989
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !989
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !988
  store ptr %2, ptr %i.a, align 8, !noalias !988
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !988
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !988
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !990, !noalias !991
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !992 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !993, !noalias !991, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !993, !noalias !991
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !990, !noalias !991 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !988
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !988
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !994 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !988
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headersa_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1013
  store ptr %2, ptr %i.b, align 8, !noalias !1014
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1014
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1013
  store ptr %2, ptr %i.a, align 8, !noalias !1013
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1013
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1013
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1015, !noalias !1016
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1017 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1018, !noalias !1016, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1018, !noalias !1016
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1015, !noalias !1016 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1013
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1013
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1019 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1013
  %i.u = icmp ult i32 %.sroa.0.0.lcssa.i.i.i.i, 65536
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headersb_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1038
  store ptr %2, ptr %i.b, align 8, !noalias !1039
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1039
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1038
  store ptr %2, ptr %i.a, align 8, !noalias !1038
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1038
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1038
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1040, !noalias !1041
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1042 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1043, !noalias !1041, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1043, !noalias !1041
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1040, !noalias !1041 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1038
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1038
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1044 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1038
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headersc_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1063
  store ptr %2, ptr %i.b, align 8, !noalias !1064
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1064
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1063
  store ptr %2, ptr %i.a, align 8, !noalias !1063
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1063
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1063
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1065, !noalias !1066
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1067 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1068, !noalias !1066, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1068, !noalias !1066
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1065, !noalias !1066 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1063
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1063
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1069 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1063
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headersd_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1088
  store ptr %2, ptr %i.b, align 8, !noalias !1089
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1089
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1088
  store ptr %2, ptr %i.a, align 8, !noalias !1088
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1088
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1088
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1090, !noalias !1091
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1092 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1093, !noalias !1091, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1093, !noalias !1091
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1090, !noalias !1091 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1088
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1088
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1094 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1088
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headerse_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1113
  store ptr %2, ptr %i.b, align 8, !noalias !1114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1114
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1113
  store ptr %2, ptr %i.a, align 8, !noalias !1113
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1113
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1113
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1115, !noalias !1116
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1117 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1118, !noalias !1116, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1118, !noalias !1116
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1115, !noalias !1116 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1113
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1113
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1119 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1113
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB1U_3Dex16parse_dex_headersf_0mEINtNtB8_8internal6ParserB1m_E7processINtB3f_7OutputMNtB3f_4EmitB42_NtB3f_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1138
  store ptr %2, ptr %i.b, align 8, !noalias !1139
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1139
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1138
  store ptr %2, ptr %i.a, align 8, !noalias !1138
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1138
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1138
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1140, !noalias !1141
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1142 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1143, !noalias !1141, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1143, !noalias !1141
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1140, !noalias !1141 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1138
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1138
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1144 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1138
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !21, !noundef !5
  %i.u = load i32, ptr %.val, align 4, !noundef !5
  %.not = icmp ugt i32 %.sroa.0.0.lcssa.i.i.i.i, %i.u
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1U_9ElfParser5parse0mEINtNtB8_8internal6ParserB1m_E7processINtB36_7OutputMNtB36_4EmitB3T_NtB36_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1163
  store ptr %2, ptr %i.b, align 8, !noalias !1164
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1164
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1163
  store ptr %2, ptr %i.a, align 8, !noalias !1163
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1163
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1163
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1165, !noalias !1166
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1167 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1168, !noalias !1166, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1168, !noalias !1166
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1165, !noalias !1166 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1163
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1163
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1169 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1163
  %i.u = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i, 1179403647
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1179403647, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3lnk6parserNtB1U_9LnkParser5parse0mEINtNtB8_8internal6ParserB1m_E7processINtB36_7OutputMNtB36_4EmitB3T_NtB36_9StreamingEEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1188
  store ptr %2, ptr %i.b, align 8, !noalias !1189
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1189
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1188
  store ptr %2, ptr %i.a, align 8, !noalias !1188
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1188
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1188
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1190, !noalias !1191
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1192 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1193, !noalias !1191, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1193, !noalias !1191
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1190, !noalias !1191 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1188
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1188
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1194 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1188
  %i.u = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i, 76
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 76, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1X_6Dotnet19parse_metadata_roots_0mEINtNtB8_8internal6ParserB1m_E7processINtB3q_7OutputMNtB3q_4EmitB4d_NtB3q_9StreamingEEB23_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1213
  store ptr %2, ptr %i.b, align 8, !noalias !1214
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1214
  %i.d = icmp samesign ult i64 %3, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1213
  store ptr %2, ptr %i.a, align 8, !noalias !1213
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1213
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1213
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 4, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1215, !noalias !1216
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1217 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1218, !noalias !1216, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1218, !noalias !1216
  %i.m = zext i8 %i.j to i32
  %i.n = trunc i64 %i.k to i32
  %i.o = shl i32 %i.n, 3
  %i.p = and i32 %i.o, 24
  %i.q = shl nuw i32 %i.m, %i.p
  %i.r = add i32 %i.q, %.sroa.0.08.i.i.i.i        ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1215, !noalias !1216 ; 2 uses
  %i.s = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1213
  store i64 1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 24, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.08.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1213
  %i.t = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 4), !noalias !1219 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1213
  %i.u = icmp ult i32 %.sroa.0.0.lcssa.i.i.i.i, 256
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 45, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = extractvalue { ptr, i64 } %i.t, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete7le_u128RShINtNtB8_5error5ErrorB1n_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3lnk6parserNtB1V_9LnkParser5parses_0oEINtNtB8_8internal6ParserB1n_E7processINtB39_7OutputMNtB39_4EmitB3W_NtB39_9StreamingEEB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1238
  store ptr %2, ptr %i.b, align 8, !noalias !1239
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8, !noalias !1239
  %i.d = icmp samesign ult i64 %3, 16
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  store ptr %2, ptr %i.a, align 8, !noalias !1238
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1238
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1238
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i = phi i128 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = phi i64 [ %.pr.i.i.i.i, %bb.c ], [ 16, %bb.b ]
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1240, !noalias !1241
  %i.h = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !1242 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %bb.c, label %.split.loop.exit.split.loop.exit

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.j = extractvalue { i1, i8 } %i.h, 1
  %i.k = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1243, !noalias !1241, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1243, !noalias !1241
  %i.m = zext i8 %i.j to i128
  %i.n = trunc i64 %i.k to i8
  %i.o = shl i8 %i.n, 3
  %i.p = and i8 %i.o, 120
  %i.q = zext nneg i8 %i.p to i128
  %i.r = shl nuw i128 %i.m, %i.q
  %i.s = add i128 %i.r, %.sroa.0.08.i.i.i.i       ; 3 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1240, !noalias !1241 ; 2 uses
  %i.t = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.t, label %.split.loop.exit.split.loop.exit57, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1238
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.u, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.429.0..sroa_idx, align 16
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.631.0..sroa_idx, align 16
  br label %bb.g

.split.loop.exit.split.loop.exit:                 ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %extract.t53.le = trunc i128 %.sroa.0.08.i.i.i.i to i64
  %extract55.le = lshr i128 %.sroa.0.08.i.i.i.i, 64
  %extract.t56.le = trunc nuw i128 %extract55.le to i64
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit57:               ; preds = %bb.c
  %extract.t.le = trunc i128 %i.s to i64
  %extract.le = lshr i128 %i.s, 64
  %extract.t54.le = trunc nuw i128 %extract.le to i64
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.split.loop.exit.split.loop.exit57, %.split.loop.exit.split.loop.exit
  %.sroa.0.08.i.i.i.i.lcssa.sink52.off0 = phi i64 [ %extract.t53.le, %.split.loop.exit.split.loop.exit ], [ %extract.t.le, %.split.loop.exit.split.loop.exit57 ]
  %.sroa.0.08.i.i.i.i.lcssa.sink52.off64 = phi i64 [ %extract.t56.le, %.split.loop.exit.split.loop.exit ], [ %extract.t54.le, %.split.loop.exit.split.loop.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1238
  %i.v = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 16), !noalias !1244 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1238
  %.sroa.638.8.insert.ext.i = zext i64 %.sroa.0.08.i.i.i.i.lcssa.sink52.off0 to i128
  %.sroa.638.24.insert.ext.i = zext i64 %.sroa.0.08.i.i.i.i.lcssa.sink52.off64 to i128
  %.sroa.638.24.insert.shift.i = shl nuw i128 %.sroa.638.24.insert.ext.i, 64
  %.sroa.638.24.insert.insert.i = or disjoint i128 %.sroa.638.24.insert.shift.i, %.sroa.638.8.insert.ext.i
  %i.w = icmp eq i128 %.sroa.638.24.insert.insert.i, 93045959704944114645041356371858166785
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.loop.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.x, align 8
  store ptr %2, ptr %4, align 16
  store i64 %3, ptr %.sroa.410.0..sroa_idx, align 8
  store i8 45, ptr %.sroa.511.0..sroa_idx, align 16
  br label %bb.g

bb.f:                                             ; preds = %.split.loop.exit
  %i.y = extractvalue { ptr, i64 } %i.v, 1
  %i.z = extractvalue { ptr, i64 } %i.v, 0
  store ptr %i.z, ptr %4, align 16
  store i64 %i.y, ptr %.sroa.410.0..sroa_idx, align 8
  store i128 93045959704944114645041356371858166785, ptr %.sroa.511.0..sroa_idx, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.d ]
  store i64 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uintNCNvMs2_BR_NtBR_6Dotnet15parse_type_specs3_0mEINtNtB8_8internal6ParserRShE7processINtB2A_7OutputMNtB2A_4EmitB3m_NtB2A_9StreamingEEBX_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1248
  call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uint(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !1249
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noalias !1248, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.034.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !1248 ; 3 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.435.sroa.0.0.copyload.i = load i64, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !1248 ; 2 uses
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.435.sroa.4.0.copyload.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.723.sroa.6.0.copyload.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i, align 4, !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1248
  %.sink74.i = inttoptr i64 %.sroa.034.0.copyload.i to ptr
  store i64 %i.b, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink74.i, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.435.sroa.0.0.copyload.i, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.435.sroa.4.0.copyload.i, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.723.sroa.6.0.copyload.i, ptr %.sroa.739.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1248
  %i.d = icmp ne i64 %.sroa.034.0.copyload.i, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i32 %.sroa.435.sroa.4.0.copyload.i, 1000
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %0, align 8
  store ptr %1, ptr %i.f, align 8
  store i64 %2, ptr %.sroa.413.0..sroa_idx, align 8
  store i8 45, ptr %.sroa.514.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sink74.i8 = inttoptr i64 %.sroa.034.0.copyload.i to ptr
  store ptr %.sink74.i8, ptr %i.f, align 8
  store i64 %.sroa.435.sroa.0.0.copyload.i, ptr %.sroa.413.0..sroa_idx, align 8
  store i32 %.sroa.435.sroa.4.0.copyload.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uintNCNvMs2_BR_NtBR_6Dotnet15parse_type_specs4_0mEINtNtB8_8internal6ParserRShE7processINtB2A_7OutputMNtB2A_4EmitB3m_NtB2A_9StreamingEEBX_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1253
  call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uint(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !1254
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noalias !1253, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.034.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !1253 ; 3 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.435.sroa.0.0.copyload.i = load i64, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !1253 ; 2 uses
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.435.sroa.4.0.copyload.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !1253 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.723.sroa.6.0.copyload.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i, align 4, !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  %.sink74.i = inttoptr i64 %.sroa.034.0.copyload.i to ptr
  store i64 %i.b, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink74.i, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.435.sroa.0.0.copyload.i, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.435.sroa.4.0.copyload.i, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.723.sroa.6.0.copyload.i, ptr %.sroa.739.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  %i.d = icmp ne i64 %.sroa.034.0.copyload.i, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i32 %.sroa.435.sroa.4.0.copyload.i, 1000
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %0, align 8
  store ptr %1, ptr %i.f, align 8
  store i64 %2, ptr %.sroa.413.0..sroa_idx, align 8
  store i8 45, ptr %.sroa.514.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sink74.i8 = inttoptr i64 %.sroa.034.0.copyload.i to ptr
  store ptr %.sink74.i8, ptr %i.f, align 8
  store i64 %.sroa.435.sroa.0.0.copyload.i, ptr %.sroa.413.0..sroa_idx, align 8
  store i32 %.sroa.435.sroa.4.0.copyload.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uintNCNvMs2_BR_NtBR_6Dotnet15parse_type_specs_0mEINtNtB8_8internal6ParserRShE7processINtB2z_7OutputMNtB2z_4EmitB3l_NtB2z_9StreamingEEBX_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1258
  call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uint(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !1259
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noalias !1258, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.034.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !1258 ; 3 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.435.sroa.0.0.copyload.i = load i64, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !1258 ; 2 uses
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.435.sroa.4.0.copyload.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !1258 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.723.sroa.6.0.copyload.i = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx.i, align 4, !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1258
  %.sink74.i = inttoptr i64 %.sroa.034.0.copyload.i to ptr
  store i64 %i.b, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink74.i, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.435.sroa.0.0.copyload.i, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.435.sroa.4.0.copyload.i, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.723.sroa.6.0.copyload.i, ptr %.sroa.739.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1258
  %i.d = icmp ne i64 %.sroa.034.0.copyload.i, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i32 %.sroa.435.sroa.4.0.copyload.i, 51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %0, align 8
  store ptr %1, ptr %i.f, align 8
  store i64 %2, ptr %.sroa.413.0..sroa_idx, align 8
  store i8 45, ptr %.sroa.514.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sink74.i8 = inttoptr i64 %.sroa.034.0.copyload.i to ptr
  store ptr %.sink74.i8, ptr %i.f, align 8
  store i64 %.sroa.435.sroa.0.0.copyload.i, ptr %.sroa.413.0..sroa_idx, align 8
  store i32 %.sroa.435.sroa.4.0.copyload.i, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsgkljs906P5b_3nom5bytesINtB6_4TakeINtNtB8_5error5ErrorRShEEINtNtB8_8internal6ParserB11_E7processINtB19_7OutputMNtB19_4EmitB1W_NtB19_8CompleteEECs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = load i64, ptr %1, align 8, !noundef !5   ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1B_EEINvB17_6le_u32B1B_B1E_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2z_6Dotnet11table_index0ENCNvB2v_22parse_class_layout_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB51_NtBL_9StreamingEEB2F_:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val19 = load i64, ptr %1, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val19, i64 65536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1947
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 0), !noalias !1947
  %i.k = load i64, ptr %i.f, align 8, !range !11, !noalias !1947, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !18, !noalias !1947, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEINvB19_6le_u32B1D_B1G_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2B_6Dotnet11table_index0ENCNvB2x_22parse_class_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB53_NtBN_9StreamingEE0B2H_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !1947
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !1947
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEINvB19_6le_u32B1D_B1G_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2B_6Dotnet11table_index0ENCNvB2x_22parse_class_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB53_NtBN_9StreamingEE0B2H_.exit: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !1947, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1947
  store i64 %i.n, ptr %i.j, align 8, !alias.scope !1947
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !1947
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !1947
  %.not = icmp eq i64 %.val19, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEINvB19_6le_u32B1D_B1G_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2B_6Dotnet11table_index0ENCNvB2x_22parse_class_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB53_NtBN_9StreamingEE0B2H_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.t, align 8, !nonnull !5, !align !15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val18 = load i8, ptr %i.w, align 8, !range !23
  %i.x = zext i8 %.val18 to i64                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEINvB19_6le_u32B1D_B1G_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2B_6Dotnet11table_index0ENCNvB2x_22parse_class_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB53_NtBN_9StreamingEE0B2H_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEINvB19_6le_u32B1D_B1G_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2B_6Dotnet11table_index0ENCNvB2x_22parse_class_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB53_NtBN_9StreamingEE0B2H_.exit ], [ %.sroa.417.0.copyload.i.i, %bb.t ]
  %.sroa.037.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EEINvB19_6le_u32B1D_B1G_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2B_6Dotnet11table_index0ENCNvB2x_22parse_class_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB53_NtBN_9StreamingEE0B2H_.exit ], [ %.sroa.016.0.copyload.i.i, %bb.t ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.037.0.lcssa, ptr %i.ac, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g, %bb.l, %bb.o
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.010.0178 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.t ]
  %.sroa.037.0177 = phi ptr [ %2, %.lr.ph ], [ %.sroa.016.0.copyload.i.i, %bb.t ] ; 4 uses
  %.sroa.6.0176 = phi i64 [ %3, %.lr.ph ], [ %.sroa.417.0.copyload.i.i, %bb.t ] ; 4 uses
  %i.ad = add nuw i64 %.sroa.010.0178, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1948
  store ptr %.sroa.037.0177, ptr %i.e, align 8, !noalias !1949
  store i64 %.sroa.6.0176, ptr %i.u, align 8, !noalias !1949
  %i.ae = icmp samesign ult i64 %.sroa.6.0176, 2
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.037.0177, i64 %.sroa.6.0176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1948
  store ptr %.sroa.037.0177, ptr %i.d, align 8, !noalias !1948
  store ptr %i.af, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1948
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1948
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ag = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 2, %bb.e ]
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1950, !noalias !1951
  %i.ai = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit

.noexc21:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.aj = extractvalue { i1, i8 } %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc21
  %i.ak = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1952, !noalias !1951, !noundef !5
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1952, !noalias !1951
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1950, !noalias !1951 ; 2 uses
  %i.am = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.am, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1948
  %i.an = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef 2)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1948
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread129

bb.i:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 5 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1953
  store ptr %i.ao, ptr %i.c, align 8, !noalias !1954
  store i64 %i.ap, ptr %i.v, align 8, !noalias !1954
  %i.aq = icmp samesign ult i64 %i.ap, 4
  br i1 %i.aq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1953
  store ptr %i.ao, ptr %i.b, align 8, !noalias !1953
  store ptr %i.ar, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i23, align 8, !noalias !1953
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i25, align 8, !noalias !1953
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i26

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i26: ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %.pr.i.i.i.i29, %bb.k ], [ 4, %bb.j ]
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i24, align 8, !alias.scope !1955, !noalias !1956
  %i.au = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i26
  %i.av = extractvalue { i1, i8 } %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc30
  %i.aw = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !1957, !noalias !1956, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %.sroa.2.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !1957, !noalias !1956
  %.pr.i.i.i.i29 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i24, align 8, !alias.scope !1955, !noalias !1956 ; 2 uses
  %i.ay = icmp eq i64 %.pr.i.i.i.i29, 0
  br i1 %i.ay, label %bb.l, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i26

bb.l:                                             ; preds = %bb.k, %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1953
  %i.az = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 4)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1953
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread129

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1958
  %i.ba = load i64, ptr %i.y, align 8, !noalias !1958, !noundef !5 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.x
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = extractvalue { ptr, i64 } %i.az, 1
  %i.bd = extractvalue { ptr, i64 } %i.az, 0
  %i.be = load ptr, ptr %i.z, align 8, !noalias !1958, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.x
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1958, !noundef !5
  %i.bh = icmp ugt i64 %i.bg, 65535
  %..i.i32 = zext i1 %i.bh to i8
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, i8 %..i.i32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef range(i64 0, -9223372036854775808) %i.bc) #32
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %bb.o
  %i.bi = load i64, ptr %i.a, align 8, !range !12, !noalias !1958, !noundef !5 ; 3 uses
  %.not.i.i33 = icmp eq i64 %i.bi, -1
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.aa, align 8, !noalias !1958 ; 5 uses
  %.sroa.417.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !1958 ; 4 uses
  br i1 %.not.i.i33, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.p
  unreachable

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread: ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1958
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bj = load i64, ptr %i.ab, align 8, !alias.scope !1960, !noalias !1961, !noundef !5 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %bb.q, label %bb.t

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit: ; preds = %.noexc34
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.518.0.copyload.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !1958 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1958
  %cond = icmp eq i64 %i.bi, 1
  br i1 %cond, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread129, label %bb.u

bb.q:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCsf9zsxFiMdlN_18pulley_interpreter(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #30
          to label %bb.t unwind label %bb.r, !noalias !1961

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #28
          to label %common.resume unwind label %bb.s, !noalias !1961

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !1961
  unreachable

bb.t:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread, %bb.q
  %i.bn = add i64 %i.bj, 1
  store i64 %i.bn, ptr %i.ab, align 8, !alias.scope !1960, !noalias !1961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1959
  %exitcond.not = icmp eq i64 %i.ad, %.val19
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread129: ; preds = %bb.m, %bb.h, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit
  %i.bo = phi ptr [ %.sroa.016.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit ], [ %i.ao, %bb.m ], [ %.sroa.037.0177, %bb.h ]
  %.sroa.18.0.ph135 = phi i64 [ %.sroa.417.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit ], [ %i.ap, %bb.m ], [ %.sroa.6.0176, %bb.h ]
  %.sroa.23.0.ph134 = phi i64 [ %.sroa.518.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit ], [ 24, %bb.m ], [ 24, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1962
  store ptr %i.bo, ptr %i.h, align 8, !noalias !1963
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.18.0.ph135, ptr %.sroa.448.0..sroa_idx, align 8, !noalias !1963
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.23.0.ph134, ptr %.sroa.549.0..sroa_idx, align 8, !noalias !1963
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %i.bp, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.016.0.copyload.i.i, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.417.0.copyload.i.i, ptr %.sroa.552.0..sroa_idx, align 8
  br label %bb.x

bb.v:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread129
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1h_EEINvBN_6le_u32B1h_B1k_ENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_class_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4F_NtB6_9StreamingEEB2k_.exit.thread129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1962
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.sink300 = phi i64 [ 8, %bb.w ], [ 32, %bb.u ]
  %.sink = phi i64 [ 1, %bb.w ], [ %.sroa.518.0.copyload.i.i, %bb.u ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sink300
  store i64 %.sink, ptr %i.br, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.r, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.bl, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.bq, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit136, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit139, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #28
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1B_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2c_6Dotnet11coded_indexs_0IBJ_NCNvB28_5index0NcNtB2c_11StringIndex0ENCNvB28_11table_index0ENCNvB28_18parse_impl_map_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB5E_NtBL_9StreamingEEB2i_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val21 = load i64, ptr %i.l, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val21, i64 65536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2014
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 0), !noalias !2014
  %i.m = load i64, ptr %i.g, align 8, !range !11, !noalias !2014, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !18, !noalias !2014, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11coded_indexs_0IBL_NCNvB2a_5index0NcNtB2e_11StringIndex0ENCNvB2a_11table_index0ENCNvB2a_18parse_impl_map_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5G_NtBN_9StreamingEE0B2k_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !2014
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #31, !noalias !2014
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11coded_indexs_0IBL_NCNvB2a_5index0NcNtB2e_11StringIndex0ENCNvB2a_11table_index0ENCNvB2a_18parse_impl_map_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5G_NtBN_9StreamingEE0B2k_.exit: ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2014, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2014
  store i64 %i.p, ptr %i.k, align 8, !alias.scope !2014
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !2014
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.u, align 8, !alias.scope !2014
  %.not = icmp eq i64 %.val21, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11coded_indexs_0IBL_NCNvB2a_5index0NcNtB2e_11StringIndex0ENCNvB2a_11table_index0ENCNvB2a_18parse_impl_map_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5G_NtBN_9StreamingEE0B2k_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i = load i8, ptr %i.v, align 8, !range !22
end_hunk_1
begin_hunk_2_@_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1B_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2c_6Dotnet11coded_indexs_0IBJ_NCNvB28_5index0NcNtB2c_9BlobIndex0EENCNvB28_23parse_decl_security_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB5k_NtBL_9StreamingEEB2i_:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.q, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.x ], [ %.pn.ph, %bb.z ], [ %i.bf, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.c

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u
  %.pn.ph = phi { ptr, i32 } [ %i.bk, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #28
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1B_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2c_6Dotnet11table_index0NCNvB28_11coded_indexs_0ENCNvB28_26parse_method_semantics_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB56_NtBL_9StreamingEEB2i_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val19 = load i64, ptr %1, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val19, i64 65536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2133
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 0), !noalias !2133
  %i.k = load i64, ptr %i.f, align 8, !range !11, !noalias !2133, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !18, !noalias !2133, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0NCNvB2a_11coded_indexs_0ENCNvB2a_26parse_method_semantics_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB58_NtBN_9StreamingEE0B2k_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !2133
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #31, !noalias !2133
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0NCNvB2a_11coded_indexs_0ENCNvB2a_26parse_method_semantics_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB58_NtBN_9StreamingEE0B2k_.exit: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !2133, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2133
  store i64 %i.n, ptr %i.j, align 8, !alias.scope !2133
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !2133
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !2133
  %.not = icmp eq i64 %.val19, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0NCNvB2a_11coded_indexs_0ENCNvB2a_26parse_method_semantics_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB58_NtBN_9StreamingEE0B2k_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.t, align 8, !nonnull !5, !align !15 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val18 = load i8, ptr %i.v, align 8, !range !23
  %i.w = zext i8 %.val18 to i64                   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.729.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !22
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 2 uses
  %.sroa.934.sroa.6.i.sroa.5.0..sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 34 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.v, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0NCNvB2a_11coded_indexs_0ENCNvB2a_26parse_method_semantics_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB58_NtBN_9StreamingEE0B2k_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0NCNvB2a_11coded_indexs_0ENCNvB2a_26parse_method_semantics_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB58_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.10.0171, %bb.v ]
  %.sroa.029.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0NCNvB2a_11coded_indexs_0ENCNvB2a_26parse_method_semantics_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB58_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.7.0172, %bb.v ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.029.0.lcssa, ptr %i.ak, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l, %bb.i, %bb.g
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.010.0240 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.v ]
  %.sroa.029.0239 = phi ptr [ %2, %.lr.ph ], [ %.sroa.7.0172, %bb.v ] ; 4 uses
  %.sroa.6.0238 = phi i64 [ %3, %.lr.ph ], [ %.sroa.10.0171, %bb.v ] ; 4 uses
  %i.al = add nuw i64 %.sroa.010.0240, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2134
  store ptr %.sroa.029.0239, ptr %i.e, align 8, !noalias !2135
  store i64 %.sroa.6.0238, ptr %i.u, align 8, !noalias !2135
  %i.am = icmp samesign ult i64 %.sroa.6.0238, 2
  br i1 %i.am, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.029.0239, i64 %.sroa.6.0238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2134
  store ptr %.sroa.029.0239, ptr %i.d, align 8, !noalias !2134
  store ptr %i.an, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2134
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2134
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.08.i.i.i.i = phi i16 [ %i.ba, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ao = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 2, %bb.e ]
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2136, !noalias !2137
  %i.aq = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc21 unwind label %.loopexit ; 2 uses

.noexc21:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.ar = extractvalue { i1, i8 } %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc21
  %i.as = extractvalue { i1, i8 } %i.aq, 1
  %i.at = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2138, !noalias !2137, !noundef !5 ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2138, !noalias !2137
  %i.av = zext i8 %i.as to i16
  %i.aw = trunc i64 %i.at to i16
  %i.ax = shl i16 %i.aw, 3
  %i.ay = and i16 %i.ax, 8
  %i.az = shl nuw i16 %i.av, %i.ay
  %i.ba = add i16 %i.az, %.sroa.0.08.i.i.i.i      ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2136, !noalias !2137 ; 2 uses
  %i.bb = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.bb, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc21
  %.sroa.0.0.lcssa.i.i.i.i = phi i16 [ %i.ba, %bb.f ], [ %.sroa.0.08.i.i.i.i, %.noexc21 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2134
  %i.bc = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef 2)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2134
  br label %bb.w

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2139
  %i.bd = load i64, ptr %i.x, align 8, !noalias !2139, !noundef !5 ; 2 uses
  %i.be = icmp ugt i64 %i.bd, %i.w
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = extractvalue { ptr, i64 } %i.bc, 1
  %i.bg = extractvalue { ptr, i64 } %i.bc, 0
  %i.bh = load ptr, ptr %i.y, align 8, !noalias !2139, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.w
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !2139, !noundef !5
  %i.bk = icmp ugt i64 %i.bj, 65535
  %..i.i23 = zext i1 %i.bk to i8
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, i8 %..i.i23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef range(i64 0, -9223372036854775808) %i.bf) #32
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit

.noexc25:                                         ; preds = %bb.i
  %i.bl = load i64, ptr %i.c, align 8, !range !12, !noalias !2139, !noundef !5 ; 2 uses
  %.not.i.i24 = icmp eq i64 %i.bl, -1
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.z, align 8, !noalias !2139 ; 3 uses
  %.sroa.417.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !2139 ; 2 uses
  %.sroa.518.0.copyload.i.i = load i32, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !2139 ; 4 uses
  br i1 %.not.i.i24, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc25
  %.sroa.729.0.copyload.i.i = load i32, ptr %.sroa.729.0..sroa_idx.i.i, align 4, !noalias !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2139
  %.sroa.11.24.insert.ext.i = zext i32 %.sroa.518.0.copyload.i.i to i64
  %.sroa.11.28.insert.ext.i = zext i32 %.sroa.729.0.copyload.i.i to i64
  %.sroa.11.28.insert.shift.i = shl nuw i64 %.sroa.11.28.insert.ext.i, 32
  %.sroa.11.28.insert.insert.i = or disjoint i64 %.sroa.11.28.insert.shift.i, %.sroa.11.24.insert.ext.i
  %i.bm = ptrtoint ptr %.sroa.016.0.copyload.i.i to i64
  %.sroa.18.sroa.0.sroa.0.0.extract.trunc68 = trunc i32 %.sroa.518.0.copyload.i.i to i8
  %.sroa.18.sroa.0.sroa.8.0.extract.shift75189 = lshr i32 %.sroa.518.0.copyload.i.i, 8
  %.sroa.18.sroa.0.sroa.8.0.extract.trunc76 = trunc i32 %.sroa.18.sroa.0.sroa.8.0.extract.shift75189 to i8
  %.sroa.18.sroa.9.0.extract.shift60 = lshr i64 %.sroa.11.28.insert.insert.i, 16
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread

bb.l:                                             ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2139
  %i.bn = call i32 @llvm.usub.sat.i32(i32 %.sroa.518.0.copyload.i.i, i32 1)
  %i.bo = zext i32 %i.bn to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2140
  store i8 %i.ab, ptr %i.ag, align 8, !noalias !2140
  store ptr %i.ad, ptr %i.a, align 8, !noalias !2140
  store i64 %i.af, ptr %i.ah, align 8, !noalias !2140
  invoke void @_RINvXsh_NtCsgkljs906P5b_3nom8internalINtB6_6MapResNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBU_6Dotnet5index0NCNCNvBQ_11coded_indexs_00EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB34_NtB6_9StreamingEEB10_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.016.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.417.0.copyload.i.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2140
  %i.bp = load i64, ptr %i.b, align 8, !range !11, !noalias !2141, !noundef !5
  %i.bq = trunc nuw i64 %i.bp to i1
  %.sroa.026.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !2141 ; 5 uses
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !2141 ; 3 uses
  br i1 %i.bq, label %bb.m, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i

bb.m:                                             ; preds = %.noexc27
  %.sroa.729.sroa.0.0.copyload.i = load i64, ptr %.sroa.729.0..sroa_idx.i, align 8, !noalias !2141 ; 2 uses
  %.sroa.729.sroa.5.0.copyload.i = load i8, ptr %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !2141 ; 2 uses
  switch i64 %.sroa.026.0.copyload.i, label %bb.n [
    i64 0, label %bb.q
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %.sroa.934.sroa.6.i.sroa.0.0.copyload123 = load i8, ptr %.sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i, align 1, !noalias !2141
  %.sroa.934.sroa.6.i.sroa.5.0.copyload125 = load i48, ptr %.sroa.934.sroa.6.i.sroa.5.0..sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i.sroa_idx, align 2, !noalias !2141
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %.sroa.934.sroa.6.i.sroa.0.0.copyload = load i8, ptr %.sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i, align 1, !noalias !2141
  %.sroa.934.sroa.6.i.sroa.5.0.copyload = load i48, ptr %.sroa.934.sroa.6.i.sroa.5.0..sroa.729.sroa.6.0..sroa.729.0..sroa_idx.sroa_idx.i.sroa_idx, align 2, !noalias !2141
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.p
  %.sroa.934.sroa.6.i.sroa.0.0 = phi i8 [ undef, %bb.m ], [ %.sroa.934.sroa.6.i.sroa.0.0.copyload123, %bb.o ], [ %.sroa.934.sroa.6.i.sroa.0.0.copyload, %bb.p ]
  %.sroa.934.sroa.6.i.sroa.5.0 = phi i48 [ undef, %bb.m ], [ %.sroa.934.sroa.6.i.sroa.5.0.copyload125, %bb.o ], [ %.sroa.934.sroa.6.i.sroa.5.0.copyload, %bb.p ]
  %.sroa.934.sroa.0.0.i = phi i64 [ undef, %bb.m ], [ %.sroa.729.sroa.0.0.copyload.i, %bb.o ], [ %.sroa.729.sroa.0.0.copyload.i, %bb.p ]
  %.sroa.934.sroa.5.0.i = phi i8 [ undef, %bb.m ], [ %.sroa.729.sroa.5.0.copyload.i, %bb.o ], [ %.sroa.729.sroa.5.0.copyload.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = zext i48 %.sroa.934.sroa.6.i.sroa.5.0 to i64
  br label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i: ; preds = %.noexc27
  %.sroa.546.sroa.4.0.copyload.i = load i8, ptr %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !2141
  %i.bs = icmp ne i64 %.sroa.026.0.copyload.i, 0
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.18.sroa.0.sroa.0.0.extract.trunc67 = trunc i16 %.sroa.0.0.lcssa.i.i.i.i to i8
  %.sroa.18.sroa.0.sroa.8.0.extract.shift73 = lshr i16 %.sroa.0.0.lcssa.i.i.i.i, 8
  %.sroa.18.sroa.0.sroa.8.0.extract.trunc74 = trunc nuw i16 %.sroa.18.sroa.0.sroa.8.0.extract.shift73 to i8
  %i.bt = icmp eq i8 %.sroa.546.sroa.4.0.copyload.i, -2
  br i1 %i.bt, label %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread, label %.thread166

.thread166:                                       ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i
  %i.bu = inttoptr i64 %.sroa.026.0.copyload.i to ptr
  br label %bb.r

_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread: ; preds = %bb.k, %bb.q, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i
  %.sroa.046.0165 = phi i64 [ %.sroa.026.0.copyload.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i ], [ %.sroa.026.0.copyload.i, %bb.q ], [ %i.bl, %bb.k ] ; 2 uses
  %.sroa.8.0164 = phi i64 [ %.sroa.427.0.copyload.i, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i ], [ %.sroa.427.0.copyload.i, %bb.q ], [ %i.bm, %bb.k ]
  %.sroa.13.0163 = phi i64 [ %i.bo, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i ], [ %.sroa.934.sroa.0.0.i, %bb.q ], [ %.sroa.417.0.copyload.i.i, %bb.k ] ; 3 uses
  %.sroa.18.sroa.9.sroa.0.0162 = phi i64 [ 0, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i ], [ %i.br, %bb.q ], [ %.sroa.18.sroa.9.0.extract.shift60, %bb.k ] ; 2 uses
  %.sroa.18.sroa.0.sroa.0.0161 = phi i8 [ %.sroa.18.sroa.0.sroa.0.0.extract.trunc67, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i ], [ %.sroa.934.sroa.5.0.i, %bb.q ], [ %.sroa.18.sroa.0.sroa.0.0.extract.trunc68, %bb.k ] ; 2 uses
  %.sroa.18.sroa.0.sroa.8.0160 = phi i8 [ %.sroa.18.sroa.0.sroa.8.0.extract.trunc74, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i ], [ %.sroa.934.sroa.6.i.sroa.0.0, %bb.q ], [ %.sroa.18.sroa.0.sroa.8.0.extract.trunc76, %bb.k ] ; 2 uses
  %i.bv = inttoptr i64 %.sroa.8.0164 to ptr       ; 3 uses
  switch i64 %.sroa.046.0165, label %bb.x [
    i64 -1, label %bb.r
    i64 1, label %.loopexit193
  ]

bb.r:                                             ; preds = %.thread166, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread
  %.sroa.7.0172 = phi ptr [ %i.bu, %.thread166 ], [ %i.bv, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread ] ; 3 uses
  %.sroa.10.0171 = phi i64 [ %.sroa.427.0.copyload.i, %.thread166 ], [ %.sroa.13.0163, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0172) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bw = load i64, ptr %i.aj, align 8, !alias.scope !2143, !noalias !2144, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCsf9zsxFiMdlN_18pulley_interpreter(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #30
          to label %bb.v unwind label %bb.t, !noalias !2144

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #28
          to label %common.resume unwind label %bb.u, !noalias !2144

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2144
  unreachable

bb.v:                                             ; preds = %bb.r, %bb.s
  %i.ca = add i64 %i.bw, 1
  store i64 %i.ca, ptr %i.aj, align 8, !alias.scope !2143, !noalias !2144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2142
  %exitcond.not = icmp eq i64 %i.al, %.val19
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

.loopexit193:                                     ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread
  %.sroa.18.sroa.0.sroa.8.0.insert.ext.le236 = zext i8 %.sroa.18.sroa.0.sroa.8.0160 to i64
  %.sroa.18.sroa.0.sroa.8.0.insert.shift.le = shl nuw nsw i64 %.sroa.18.sroa.0.sroa.8.0.insert.ext.le236, 8
  %.sroa.18.sroa.0.sroa.0.0.insert.ext.le = zext i8 %.sroa.18.sroa.0.sroa.0.0161 to i64
  %.sroa.18.sroa.0.sroa.0.0.insert.insert.le229 = or disjoint i64 %.sroa.18.sroa.0.sroa.8.0.insert.shift.le, %.sroa.18.sroa.0.sroa.0.0.insert.ext.le
  %.sroa.18.sroa.9.0.insert.shift.le227 = shl nuw i64 %.sroa.18.sroa.9.sroa.0.0162, 16
  %.sroa.18.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.18.sroa.0.sroa.0.0.insert.insert.le229, %.sroa.18.sroa.9.0.insert.shift.le227
  br label %bb.w

bb.w:                                             ; preds = %.loopexit193, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread.thread
  %i.cb = phi ptr [ %.sroa.029.0239, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread.thread ], [ %i.bv, %.loopexit193 ]
  %.sroa.18.sroa.0.0.insert.insert188 = phi i64 [ 24, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread.thread ], [ %.sroa.18.sroa.0.0.insert.insert.le, %.loopexit193 ]
  %.sroa.13.0163187 = phi i64 [ %.sroa.6.0238, %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread.thread ], [ %.sroa.13.0163, %.loopexit193 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2145
  store ptr %i.cb, ptr %i.h, align 8, !noalias !2146
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.13.0163187, ptr %.sroa.440.0..sroa_idx, align 8, !noalias !2146
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.18.sroa.0.0.insert.insert188, ptr %.sroa.541.0..sroa_idx, align 8, !noalias !2146
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %_RINvXsC_NtCsgkljs906P5b_3nom8internalTINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB17_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1I_6Dotnet11table_index0NCNvB1E_11coded_indexs_0EINtB6_6ParserB17_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB1O_.exit.i.thread
  %.sroa.18.sroa.0.sroa.8.0.insert.ext.le = zext i8 %.sroa.18.sroa.0.sroa.8.0160 to i64
  %.sroa.18.sroa.0.sroa.8.0.insert.shift.le234 = shl nuw nsw i64 %.sroa.18.sroa.0.sroa.8.0.insert.ext.le, 8
  %.sroa.18.sroa.0.sroa.0.0.insert.ext.le232 = zext i8 %.sroa.18.sroa.0.sroa.0.0161 to i64
  %.sroa.18.sroa.0.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.18.sroa.0.sroa.8.0.insert.shift.le234, %.sroa.18.sroa.0.sroa.0.0.insert.ext.le232
  %.sroa.18.sroa.9.0.insert.shift.le = shl nuw i64 %.sroa.18.sroa.9.sroa.0.0162, 16
  %.sroa.18.sroa.0.0.insert.insert.le224 = or disjoint i64 %.sroa.18.sroa.0.sroa.0.0.insert.insert.le, %.sroa.18.sroa.9.0.insert.shift.le
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.046.0165, ptr %i.cc, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bv, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.0163, ptr %.sroa.544.0..sroa_idx, align 8
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2145
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa
end_hunk_2
begin_hunk_3_@_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1B_EEB14_B14_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2k_6Dotnet11table_index0ENCNvB2g_25parse_assembly_ref_os_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB4P_NtBL_9StreamingEEB2q_:bb.a
  %.val19 = load i8, ptr %i.z, align 8, !range !23
  %i.aa = zext i8 %.val19 to i64                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.y, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEB16_B16_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet11table_index0ENCNvB2i_25parse_assembly_ref_os_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4R_NtBN_9StreamingEE0B2s_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEB16_B16_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet11table_index0ENCNvB2i_25parse_assembly_ref_os_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4R_NtBN_9StreamingEE0B2s_.exit ], [ %.sroa.417.0.copyload.i.i, %bb.y ]
  %.sroa.059.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEB16_B16_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2m_6Dotnet11table_index0ENCNvB2i_25parse_assembly_ref_os_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4R_NtBN_9StreamingEE0B2s_.exit ], [ %.sroa.016.0.copyload.i.i, %bb.y ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.059.0.lcssa, ptr %i.af, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i42
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i27
  %lpad.loopexit192 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.t, %bb.q, %bb.l, %bb.g
  %lpad.loopexit197 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.010.0255 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.y ]
  %.sroa.059.0254 = phi ptr [ %2, %.lr.ph ], [ %.sroa.016.0.copyload.i.i, %bb.y ] ; 4 uses
  %.sroa.6.0253 = phi i64 [ %3, %.lr.ph ], [ %.sroa.417.0.copyload.i.i, %bb.y ] ; 4 uses
  %i.ag = add nuw i64 %.sroa.010.0255, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2222
  store ptr %.sroa.059.0254, ptr %i.g, align 8, !noalias !2223
  store i64 %.sroa.6.0253, ptr %i.w, align 8, !noalias !2223
  %i.ah = icmp samesign ult i64 %.sroa.6.0253, 4
  br i1 %i.ah, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.059.0254, i64 %.sroa.6.0253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2222
  store ptr %.sroa.059.0254, ptr %i.f, align 8, !noalias !2222
  store ptr %i.ai, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2222
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2222
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.aj = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 4, %bb.e ]
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2224, !noalias !2225
  %i.al = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc22:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.am = extractvalue { i1, i8 } %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc22
  %i.an = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2226, !noalias !2225, !noundef !5
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2226, !noalias !2225
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2224, !noalias !2225 ; 2 uses
  %i.ap = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.ap, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2222
  %i.aq = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 4)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2222
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 5 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2222
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2227
  store ptr %i.ar, ptr %i.e, align 8, !noalias !2228
  store i64 %i.as, ptr %i.x, align 8, !noalias !2228
  %i.at = icmp samesign ult i64 %i.as, 4
  br i1 %i.at, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2227
  store ptr %i.ar, ptr %i.d, align 8, !noalias !2227
  store ptr %i.au, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i24, align 8, !noalias !2227
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i26, align 8, !noalias !2227
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i27

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i27: ; preds = %bb.k, %bb.j
  %i.av = phi i64 [ %.pr.i.i.i.i32, %bb.k ], [ 4, %bb.j ]
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !2229, !noalias !2230
  %i.ax = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit

.noexc36:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i27
  %i.ay = extractvalue { i1, i8 } %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc36
  %i.az = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i26, align 8, !alias.scope !2231, !noalias !2230, !noundef !5
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %.sroa.2.0..sroa_idx.i.i.i.i26, align 8, !alias.scope !2231, !noalias !2230
  %.pr.i.i.i.i32 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !2229, !noalias !2230 ; 2 uses
  %i.bb = icmp eq i64 %.pr.i.i.i.i32, 0
  br i1 %i.bb, label %bb.l, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i27

bb.l:                                             ; preds = %bb.k, %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2227
  %i.bc = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef 4)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2227
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 5 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2232
  store ptr %i.bd, ptr %i.c, align 8, !noalias !2233
  store i64 %i.be, ptr %i.y, align 8, !noalias !2233
  %i.bf = icmp samesign ult i64 %i.be, 4
  br i1 %i.bf, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2232
  store ptr %i.bd, ptr %i.b, align 8, !noalias !2232
  store ptr %i.bg, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i39, align 8, !noalias !2232
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i41, align 8, !noalias !2232
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i42

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i42: ; preds = %bb.p, %bb.o
  %i.bh = phi i64 [ %.pr.i.i.i.i47, %bb.p ], [ 4, %bb.o ]
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i40, align 8, !alias.scope !2234, !noalias !2235
  %i.bj = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc51 unwind label %.loopexit

.noexc51:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i42
  %i.bk = extractvalue { i1, i8 } %i.bj, 0
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc51
  %i.bl = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i41, align 8, !alias.scope !2236, !noalias !2235, !noundef !5
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %.sroa.2.0..sroa_idx.i.i.i.i41, align 8, !alias.scope !2236, !noalias !2235
  %.pr.i.i.i.i47 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i40, align 8, !alias.scope !2234, !noalias !2235 ; 2 uses
  %i.bn = icmp eq i64 %.pr.i.i.i.i47, 0
  br i1 %i.bn, label %bb.q, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i42

bb.q:                                             ; preds = %bb.p, %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2232
  %i.bo = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 4)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2232
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2237
  %i.bp = load i64, ptr %i.ab, align 8, !noalias !2237, !noundef !5 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, %i.aa
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = extractvalue { ptr, i64 } %i.bo, 1
  %i.bs = extractvalue { ptr, i64 } %i.bo, 0
  %i.bt = load ptr, ptr %i.ac, align 8, !noalias !2237, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.aa
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !2237, !noundef !5
  %i.bw = icmp ugt i64 %i.bv, 65535
  %..i.i54 = zext i1 %i.bw to i8
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, i8 %..i.i54, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.br) #32
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc56:                                         ; preds = %bb.t
  %i.bx = load i64, ptr %i.a, align 8, !range !12, !noalias !2237, !noundef !5 ; 3 uses
  %.not.i.i55 = icmp eq i64 %i.bx, -1
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.ad, align 8, !noalias !2237 ; 5 uses
  %.sroa.417.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !2237 ; 4 uses
  br i1 %.not.i.i55, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread185, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.u
  unreachable

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread185: ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2237
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.by = load i64, ptr %i.ae, align 8, !alias.scope !2239, !noalias !2240, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.v, label %bb.y

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit: ; preds = %.noexc56
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.518.0.copyload.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !2237 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2237
  %cond = icmp eq i64 %i.bx, 1
  br i1 %cond, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread, label %bb.z

bb.v:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread185
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCsf9zsxFiMdlN_18pulley_interpreter(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #30
          to label %bb.y unwind label %bb.w, !noalias !2240

bb.w:                                             ; preds = %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #28
          to label %common.resume unwind label %bb.x, !noalias !2240

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2240
  unreachable

bb.y:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread185, %bb.v
  %i.cc = add i64 %i.by, 1
  store i64 %i.cc, ptr %i.ae, align 8, !alias.scope !2239, !noalias !2240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2238
  %exitcond.not = icmp eq i64 %i.ag, %.val20
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread: ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit, %bb.r, %bb.m, %bb.h
  %.sroa.7.0184 = phi ptr [ %.sroa.016.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit ], [ %i.bd, %bb.r ], [ %i.ar, %bb.m ], [ %.sroa.059.0254, %bb.h ]
  %.sroa.10.0183 = phi i64 [ %.sroa.417.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit ], [ %i.be, %bb.r ], [ %i.as, %bb.m ], [ %.sroa.6.0253, %bb.h ]
  %.sroa.12.0182 = phi i64 [ %.sroa.518.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit ], [ 24, %bb.r ], [ 24, %bb.m ], [ 24, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2241
  store ptr %.sroa.7.0184, ptr %i.j, align 8, !noalias !2242
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.10.0183, ptr %.sroa.470.0..sroa_idx, align 8, !noalias !2242
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.12.0182, ptr %.sroa.571.0..sroa_idx, align 8, !noalias !2242
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.cd, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.016.0.copyload.i.i, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.417.0.copyload.i.i, ptr %.sroa.574.0..sroa_idx, align 8
  br label %bb.ac

bb.aa:                                            ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EEBK_BK_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1Y_6Dotnet11table_index0ENCNvB1U_25parse_assembly_ref_os_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4s_NtB6_9StreamingEEB24_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2241
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sink439 = phi i64 [ 8, %bb.ab ], [ 32, %bb.z ]
  %.sink = phi i64 [ 1, %bb.ab ], [ %.sroa.518.0.copyload.i.i, %bb.z ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink439
  store i64 %.sink, ptr %i.cf, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.w, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.ca, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.ac
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.aa
  %.pn.ph = phi { ptr, i32 } [ %i.ce, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit192, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit195, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #28
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1B_EEB14_IBJ_IBJ_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2o_6Dotnet5index0NcNtB2o_11StringIndex0ENCNvB2k_27parse_manifest_resource_row0ENCNvB2k_11coded_indexs_0ENCB3U_s_0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB5J_NtBL_9StreamingEEB2u_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 15 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val, i64 1638) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2323
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !2323
  %i.q = load i64, ptr %i.k, align 8, !range !11, !noalias !2323, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !18, !noalias !2323, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEB16_IBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet5index0NcNtB2q_11StringIndex0ENCNvB2m_27parse_manifest_resource_row0ENCNvB2m_11coded_indexs_0ENCB3W_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5L_NtBN_9StreamingEE0B2w_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !2323
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #31, !noalias !2323
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEB16_IBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet5index0NcNtB2q_11StringIndex0ENCNvB2m_27parse_manifest_resource_row0ENCNvB2m_11coded_indexs_0ENCB3W_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5L_NtBN_9StreamingEE0B2w_.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !noalias !2323, !nonnull !5, !noundef !5
  %i.x = icmp ule i64 %..i.i, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2323
  store i64 %i.t, ptr %i.o, align 8, !alias.scope !2323
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.w, ptr %i.y, align 8, !alias.scope !2323
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !2323
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EEB16_IBL_IBL_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet5index0NcNtB2q_11StringIndex0ENCNvB2m_27parse_manifest_resource_row0ENCNvB2m_11coded_indexs_0ENCB3W_s_0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB5L_NtBN_9StreamingEE0B2w_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i8, ptr %i.ac, align 8, !range !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
end_hunk_3
begin_hunk_4_@_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1B_EEINvB17_6le_u16B1B_B1E_EB24_IBJ_IBJ_NCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2L_6Dotnet5index0NcNtB2L_11StringIndex0ENCNvB2H_20parse_method_def_row0EIBJ_IBJ_B2D_NcNtB2L_9BlobIndex0ENCB4h_s_0ENCNvB2H_11table_index0ENCB4h_s0_0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB6E_NtBL_9StreamingEEB2R_:bb.a
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.sink845 = phi i64 [ 8, %bb.at ], [ 32, %bb.ar ]
  %.sink = phi i64 [ 1, %bb.at ], [ %.sroa.33.sroa.0.0.insert.insert, %bb.ar ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink845
  store i64 %.sink, ptr %i.gf, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefEEB1g_.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.ao, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %i.gg, %bb.av ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.fy, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefEEB1g_.exit: ; preds = %bb.au
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.as
  %.pn.ph = phi { ptr, i32 } [ %i.ge, %bb.as ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit379, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit382, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit384, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp385, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #28
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1B_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2c_6Dotnet11table_index0ENCNvB28_19parse_field_rva_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB4B_NtBL_9StreamingEEB2i_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val18 = load i64, ptr %1, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val18, i64 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2828
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2828
  %i.i = load i64, ptr %i.d, align 8, !range !11, !noalias !2828, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noalias !2828, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_19parse_field_rva_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4D_NtBN_9StreamingEE0B2k_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !2828
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !2828
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_19parse_field_rva_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4D_NtBN_9StreamingEE0B2k_.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !2828, !nonnull !5, !noundef !5
  %i.p = icmp ule i64 %..i.i, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2828
  store i64 %i.l, ptr %i.h, align 8, !alias.scope !2828
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !2828
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.r, align 8, !alias.scope !2828
  %.not = icmp eq i64 %.val18, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_19parse_field_rva_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4D_NtBN_9StreamingEE0B2k_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.s, align 8, !nonnull !5, !align !15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val17 = load i8, ptr %i.u, align 8, !range !23
  %i.v = zext i8 %.val17 to i64                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.n, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_19parse_field_rva_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4D_NtBN_9StreamingEE0B2k_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_19parse_field_rva_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4D_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.417.0.copyload.i.i, %bb.n ]
  %.sroa.027.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_19parse_field_rva_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4D_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.016.0.copyload.i.i, %bb.n ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.027.0.lcssa, ptr %i.ac, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.g
  %lpad.loopexit117 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.010.0143 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.n ]
  %.sroa.027.0142 = phi ptr [ %2, %.lr.ph ], [ %.sroa.016.0.copyload.i.i, %bb.n ] ; 4 uses
  %.sroa.6.0141 = phi i64 [ %3, %.lr.ph ], [ %.sroa.417.0.copyload.i.i, %bb.n ] ; 4 uses
  %i.ad = add nuw i64 %.sroa.010.0143, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2829
  store ptr %.sroa.027.0142, ptr %i.c, align 8, !noalias !2830
  store i64 %.sroa.6.0141, ptr %i.t, align 8, !noalias !2830
  %i.ae = icmp samesign ult i64 %.sroa.6.0141, 4
  br i1 %i.ae, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.027.0142, i64 %.sroa.6.0141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2829
  store ptr %.sroa.027.0142, ptr %i.b, align 8, !noalias !2829
  store ptr %i.af, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2829
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2829
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.08.i.i.i.i = phi i32 [ %i.as, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ag = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 4, %bb.e ]
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2831, !noalias !2832
  %i.ai = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc20 unwind label %.loopexit ; 2 uses

.noexc20:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.aj = extractvalue { i1, i8 } %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc20
  %i.ak = extractvalue { i1, i8 } %i.ai, 1
  %i.al = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2833, !noalias !2832, !noundef !5 ; 2 uses
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2833, !noalias !2832
  %i.an = zext i8 %i.ak to i32
  %i.ao = trunc i64 %i.al to i32
  %i.ap = shl i32 %i.ao, 3
  %i.aq = and i32 %i.ap, 24
  %i.ar = shl nuw i32 %i.an, %i.aq
  %i.as = add i32 %i.ar, %.sroa.0.08.i.i.i.i      ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2831, !noalias !2832 ; 2 uses
  %i.at = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.at, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc20
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %i.as, %bb.f ], [ %.sroa.0.08.i.i.i.i, %.noexc20 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2829
  %i.au = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 4)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2829
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2834
  %i.av = load i64, ptr %i.w, align 8, !noalias !2834, !noundef !5 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, %i.v
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = extractvalue { ptr, i64 } %i.au, 1
  %i.ay = extractvalue { ptr, i64 } %i.au, 0
  %i.az = load ptr, ptr %i.x, align 8, !noalias !2834, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.v
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !2834, !noundef !5
  %i.bc = icmp ugt i64 %i.bb, 65535
  %..i.i22 = zext i1 %i.bc to i8
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, i8 %..i.i22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.ax) #32
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %bb.i
  %i.bd = load i64, ptr %i.a, align 8, !range !12, !noalias !2834, !noundef !5 ; 3 uses
  %.not.i.i23 = icmp eq i64 %i.bd, -1
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.y, align 8, !noalias !2834 ; 5 uses
  %.sroa.417.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !2834 ; 4 uses
  br i1 %.not.i.i23, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.j
  unreachable

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread: ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2834
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.z, align 8, !noalias !2835
  %i.be = load i64, ptr %i.aa, align 8, !alias.scope !2836, !noalias !2837, !noundef !5 ; 3 uses
  %i.bf = load i64, ptr %i.e, align 8, !range !19, !alias.scope !2836, !noalias !2837, !noundef !5
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.n

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit: ; preds = %.noexc24
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.518.0.copyload.i.i = load i32, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !2834 ; 2 uses
  %.sroa.729.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.729.0.copyload.i.i = load i32, ptr %.sroa.729.0..sroa_idx.i.i, align 4, !noalias !2834 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2834
  %cond = icmp eq i64 %i.bd, 1
  br i1 %cond, label %bb.o, label %bb.p

bb.k:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsakcyNsrEG6e_17cranelift_codegen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #30
          to label %bb.n unwind label %bb.l, !noalias !2837

bb.l:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %common.resume unwind label %bb.m, !noalias !2837

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2837
  unreachable

bb.n:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread, %bb.k
  %i.bj = load ptr, ptr %i.ab, align 8, !alias.scope !2836, !noalias !2837, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.be
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.bk, align 4, !noalias !2837
  %i.bl = add i64 %i.be, 1
  store i64 %i.bl, ptr %i.aa, align 8, !alias.scope !2836, !noalias !2837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2835
  %exitcond.not = icmp eq i64 %i.ad, %.val18
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.o:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101
  %.sroa.8.28.extract.trunc116 = phi i32 [ 0, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101 ], [ %.sroa.729.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit ]
  %.sroa.8.24.extract.trunc115 = phi i32 [ 24, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101 ], [ %.sroa.518.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit ]
  %i.bm = phi ptr [ %.sroa.027.0142, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101 ], [ %.sroa.016.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit ]
  %.sroa.15.sroa.0.0.insert.insert114 = phi i64 [ %.sroa.6.0141, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit.thread101 ], [ %.sroa.417.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2838
  store ptr %i.bm, ptr %i.f, align 8, !noalias !2839
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.insert114, ptr %.sroa.440.0..sroa_idx, align 8, !noalias !2839
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %.sroa.8.24.extract.trunc115, ptr %.sroa.541.0..sroa_idx, align 8, !noalias !2839
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %.sroa.8.28.extract.trunc116, ptr %.sroa.642.0..sroa_idx, align 4, !noalias !2839
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_19parse_field_rva_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4g_NtB6_9StreamingEEB1Y_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bn, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.016.0.copyload.i.i, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.417.0.copyload.i.i, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.518.0.copyload.i.i, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.729.0.copyload.i.i, ptr %.sroa.747.0..sroa_idx, align 4
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2838
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bp, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.l, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.bh, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.q
  %.pn.ph = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit117, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp118, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1B_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2c_6Dotnet11table_index0ENCNvB28_22parse_field_layout_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB4E_NtBL_9StreamingEEB2i_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val18 = load i64, ptr %1, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val18, i64 65536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2878
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 0), !noalias !2878
  %i.i = load i64, ptr %i.d, align 8, !range !11, !noalias !2878, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noalias !2878, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_field_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B2k_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !2878
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !2878
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_field_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B2k_.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !2878, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2878
  store i64 %i.l, ptr %i.h, align 8, !alias.scope !2878
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !2878
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.q, align 8, !alias.scope !2878
  %.not = icmp eq i64 %.val18, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_field_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B2k_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.r, align 8, !nonnull !5, !align !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val17 = load i8, ptr %i.t, align 8, !range !23
  %i.u = zext i8 %.val17 to i64                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.n, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_field_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B2k_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_field_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.417.0.copyload.i.i, %bb.n ]
  %.sroa.027.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_22parse_field_layout_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.016.0.copyload.i.i, %bb.n ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.027.0.lcssa, ptr %i.z, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.g
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.010.0132 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.n ]
  %.sroa.027.0131 = phi ptr [ %2, %.lr.ph ], [ %.sroa.016.0.copyload.i.i, %bb.n ] ; 4 uses
  %.sroa.6.0130 = phi i64 [ %3, %.lr.ph ], [ %.sroa.417.0.copyload.i.i, %bb.n ] ; 4 uses
  %i.aa = add nuw i64 %.sroa.010.0132, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2879
  store ptr %.sroa.027.0131, ptr %i.c, align 8, !noalias !2880
  store i64 %.sroa.6.0130, ptr %i.s, align 8, !noalias !2880
  %i.ab = icmp samesign ult i64 %.sroa.6.0130, 4
  br i1 %i.ab, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.027.0131, i64 %.sroa.6.0130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2879
  store ptr %.sroa.027.0131, ptr %i.b, align 8, !noalias !2879
  store ptr %i.ac, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2879
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2879
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ad = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 4, %bb.e ]
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2881, !noalias !2882
  %i.af = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.ag = extractvalue { i1, i8 } %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc20
  %i.ah = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2883, !noalias !2882, !noundef !5
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2883, !noalias !2882
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2881, !noalias !2882 ; 2 uses
  %i.aj = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.aj, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2879
  %i.ak = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 4)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread94: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2879
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2884
  %i.al = load i64, ptr %i.v, align 8, !noalias !2884, !noundef !5 ; 2 uses
  %i.am = icmp ugt i64 %i.al, %i.u
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = extractvalue { ptr, i64 } %i.ak, 1
  %i.ao = extractvalue { ptr, i64 } %i.ak, 0
  %i.ap = load ptr, ptr %i.w, align 8, !noalias !2884, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.u
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !2884, !noundef !5
  %i.as = icmp ugt i64 %i.ar, 65535
  %..i.i22 = zext i1 %i.as to i8
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, i8 %..i.i22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.an) #32
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %bb.i
  %i.at = load i64, ptr %i.a, align 8, !range !12, !noalias !2884, !noundef !5 ; 3 uses
  %.not.i.i23 = icmp eq i64 %i.at, -1
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.x, align 8, !noalias !2884 ; 5 uses
  %.sroa.417.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !2884 ; 4 uses
  br i1 %.not.i.i23, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.j
  unreachable

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread: ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.au = load i64, ptr %i.y, align 8, !alias.scope !2886, !noalias !2887, !noundef !5 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %bb.k, label %bb.n

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit: ; preds = %.noexc24
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.518.0.copyload.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !2884 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  %cond = icmp eq i64 %i.at, 1
  br i1 %cond, label %bb.o, label %bb.p

bb.k:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCsf9zsxFiMdlN_18pulley_interpreter(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #30
          to label %bb.n unwind label %bb.l, !noalias !2887

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %common.resume unwind label %bb.m, !noalias !2887

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2887
  unreachable

bb.n:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread, %bb.k
  %i.ay = add i64 %i.au, 1
  store i64 %i.ay, ptr %i.y, align 8, !alias.scope !2886, !noalias !2887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2885
  %exitcond.not = icmp eq i64 %i.aa, %.val18
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.o:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread94
  %i.az = phi ptr [ %.sroa.027.0131, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread94 ], [ %.sroa.016.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit ]
  %.sroa.15.sroa.0.0.insert.insert105 = phi i64 [ %.sroa.6.0130, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread94 ], [ %.sroa.417.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit ]
  %.sroa.19.0.ph104 = phi i64 [ 24, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit.thread94 ], [ %.sroa.518.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2888
  store ptr %i.az, ptr %i.f, align 8, !noalias !2889
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.insert105, ptr %.sroa.438.0..sroa_idx, align 8, !noalias !2889
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.19.0.ph104, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !2889
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_22parse_field_layout_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4j_NtB6_9StreamingEEB1Y_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.ba, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.016.0.copyload.i.i, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.417.0.copyload.i.i, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2888
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink204 = phi i64 [ 8, %bb.r ], [ 32, %bb.p ]
  %.sink = phi i64 [ 1, %bb.r ], [ %.sroa.518.0.copyload.i.i, %bb.p ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink204
  store i64 %.sink, ptr %i.bc, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.l, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.aw, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.q
  %.pn.ph = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1B_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2c_6Dotnet11table_index0ENCNvB28_32parse_assembly_ref_processor_row0EEINtBL_6ParserB1B_E7processINtBL_7OutputMNtBL_4EmitB4O_NtBL_9StreamingEEB2i_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val18 = load i64, ptr %1, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val18, i64 65536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2928
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 0), !noalias !2928
  %i.i = load i64, ptr %i.d, align 8, !range !11, !noalias !2928, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noalias !2928, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_32parse_assembly_ref_processor_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B2k_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !2928
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #31, !noalias !2928
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_32parse_assembly_ref_processor_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B2k_.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !2928, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2928
  store i64 %i.l, ptr %i.h, align 8, !alias.scope !2928
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !2928
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.q, align 8, !alias.scope !2928
  %.not = icmp eq i64 %.val18, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_32parse_assembly_ref_processor_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B2k_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.val = load ptr, ptr %i.r, align 8, !nonnull !5, !align !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val17 = load i8, ptr %i.t, align 8, !range !23
  %i.u = zext i8 %.val17 to i64                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.n, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_32parse_assembly_ref_processor_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B2k_.exit
  %.sroa.6.0.lcssa = phi i64 [ %3, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_32parse_assembly_ref_processor_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.417.0.copyload.i.i, %bb.n ]
  %.sroa.027.0.lcssa = phi ptr [ %2, %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTINvNtNtBa_6number8complete6le_u32RShINtNtBa_5error5ErrorB1D_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2e_6Dotnet11table_index0ENCNvB2a_32parse_assembly_ref_processor_row0EEINtBN_6ParserB1D_E7processINtBN_7OutputMNtBN_4EmitB4Q_NtBN_9StreamingEE0B2k_.exit ], [ %.sroa.016.0.copyload.i.i, %bb.n ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.027.0.lcssa, ptr %i.z, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.g
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.010.0132 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.n ]
  %.sroa.027.0131 = phi ptr [ %2, %.lr.ph ], [ %.sroa.016.0.copyload.i.i, %bb.n ] ; 4 uses
  %.sroa.6.0130 = phi i64 [ %3, %.lr.ph ], [ %.sroa.417.0.copyload.i.i, %bb.n ] ; 4 uses
  %i.aa = add nuw i64 %.sroa.010.0132, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2929
  store ptr %.sroa.027.0131, ptr %i.c, align 8, !noalias !2930
  store i64 %.sroa.6.0130, ptr %i.s, align 8, !noalias !2930
  %i.ab = icmp samesign ult i64 %.sroa.6.0130, 4
  br i1 %i.ab, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.027.0131, i64 %.sroa.6.0130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2929
  store ptr %.sroa.027.0131, ptr %i.b, align 8, !noalias !2929
  store ptr %i.ac, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2929
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !2929
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ad = phi i64 [ %.pr.i.i.i.i, %bb.f ], [ 4, %bb.e ]
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2931, !noalias !2932
  %i.af = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.ag = extractvalue { i1, i8 } %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc20
  %i.ah = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2933, !noalias !2932, !noundef !5
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2933, !noalias !2932
  %.pr.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2931, !noalias !2932 ; 2 uses
  %i.aj = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.aj, label %bb.g, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2929
  %i.ak = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 4)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread94: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2929
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2934
  %i.al = load i64, ptr %i.v, align 8, !noalias !2934, !noundef !5 ; 2 uses
  %i.am = icmp ugt i64 %i.al, %i.u
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = extractvalue { ptr, i64 } %i.ak, 1
  %i.ao = extractvalue { ptr, i64 } %i.ak, 0
  %i.ap = load ptr, ptr %i.w, align 8, !noalias !2934, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.u
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !2934, !noundef !5
  %i.as = icmp ugt i64 %i.ar, 65535
  %..i.i22 = zext i1 %i.as to i8
  invoke fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, i8 %..i.i22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef range(i64 0, -9223372036854775808) %i.an) #32
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %bb.i
  %i.at = load i64, ptr %i.a, align 8, !range !12, !noalias !2934, !noundef !5 ; 3 uses
  %.not.i.i23 = icmp eq i64 %i.at, -1
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.x, align 8, !noalias !2934 ; 5 uses
  %.sroa.417.0.copyload.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !2934 ; 4 uses
  br i1 %.not.i.i23, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #26
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.j
  unreachable

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread: ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2934
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.au = load i64, ptr %i.y, align 8, !alias.scope !2936, !noalias !2937, !noundef !5 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %bb.k, label %bb.n

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit: ; preds = %.noexc24
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.518.0.copyload.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !2934 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2934
  %cond = icmp eq i64 %i.at, 1
  br i1 %cond, label %bb.o, label %bb.p

bb.k:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuE8grow_oneCsf9zsxFiMdlN_18pulley_interpreter(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #30
          to label %bb.n unwind label %bb.l, !noalias !2937

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %common.resume unwind label %bb.m, !noalias !2937

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !2937
  unreachable

bb.n:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread, %bb.k
  %i.ay = add i64 %i.au, 1
  store i64 %i.ay, ptr %i.y, align 8, !alias.scope !2936, !noalias !2937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2935
  %exitcond.not = icmp eq i64 %i.aa, %.val18
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.o:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread94
  %i.az = phi ptr [ %.sroa.027.0131, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread94 ], [ %.sroa.016.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit ]
  %.sroa.15.sroa.0.0.insert.insert105 = phi i64 [ %.sroa.6.0130, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread94 ], [ %.sroa.417.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit ]
  %.sroa.19.0.ph104 = phi i64 [ 24, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit.thread94 ], [ %.sroa.518.0.copyload.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2938
  store ptr %i.az, ptr %i.f, align 8, !noalias !2939
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.insert105, ptr %.sroa.438.0..sroa_idx, align 8, !noalias !2939
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.19.0.ph104, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !2939
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1h_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1S_6Dotnet11table_index0ENCNvB1O_32parse_assembly_ref_processor_row0EINtB6_6ParserB1h_E7processINtB6_7OutputMNtB6_4EmitB4t_NtB6_9StreamingEEB1Y_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.ba, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.016.0.copyload.i.i, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.417.0.copyload.i.i, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2938
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink204 = phi i64 [ 8, %bb.r ], [ 32, %bb.p ]
  %.sink = phi i64 [ 1, %bb.r ], [ %.sroa.518.0.copyload.i.i, %bb.p ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink204
  store i64 %.sink, ptr %i.bc, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.l, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %.pn.ph, %.loopexit.split-lp ], [ %i.aw, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.q
  %.pn.ph = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecuEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs6_NtCsgkljs906P5b_3nom5multiINtB6_5CountINtNtB8_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1c_6Dotnet11coded_indexs_0B14_IBJ_IBJ_NCNvB18_5index0NcNtB1c_9BlobIndex0ENCNvB18_26parse_custom_attribute_row0EENCB3f_s_0EEINtBL_6ParserRShE7processINtBL_7OutputMNtBL_4EmitB4E_NtBL_9StreamingEEB1i_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 15 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val = load i64, ptr %i.l, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val, i64 1365) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2977
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !2977
  %i.m = load i64, ptr %i.g, align 8, !range !11, !noalias !2977, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !18, !noalias !2977, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0B16_IBL_IBL_NCNvB1a_5index0NcNtB1e_9BlobIndex0ENCNvB1a_26parse_custom_attribute_row0EENCB3h_s_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B1k_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !2977
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #31, !noalias !2977
  unreachable

_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0B16_IBL_IBL_NCNvB1a_5index0NcNtB1e_9BlobIndex0ENCNvB1a_26parse_custom_attribute_row0EENCB3h_s_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B1k_.exit: ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !noalias !2977, !nonnull !5, !noundef !5
  %i.t = icmp ule i64 %..i.i, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2977
  store i64 %i.p, ptr %i.k, align 8, !alias.scope !2977
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.s, ptr %i.u, align 8, !alias.scope !2977
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.v, align 8, !alias.scope !2977
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXs6_NtCsgkljs906P5b_3nom5multiINtB8_5CountINtNtBa_8internal3MapTNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB1e_6Dotnet11coded_indexs_0B16_IBL_IBL_NCNvB1a_5index0NcNtB1e_9BlobIndex0ENCNvB1a_26parse_custom_attribute_row0EENCB3h_s_0EEINtBN_6ParserRShE7processINtBN_7OutputMNtBN_4EmitB4G_NtBN_9StreamingEE0B1k_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !22, !alias.scope !2978, !noalias !2979, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2978, !noalias !2979, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2978, !noalias !2979, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !range !22
end_hunk_4
begin_hunk_5_@_RINvXs_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error7contextINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func5typed9TypedFunculENtNtB7_5error5ErrorEINtB5_7ContextB1B_B2D_E12with_contextNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMNtB1I_8instanceNtB4g_8Instance14get_typed_funculINtNtNtB1I_5store7context15StoreContextMutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextEEs0_0EB5O_:bb.a
  %i.e = load i8, ptr %i.d, align 4, !range !3594, !noundef !5
  %i.f = icmp eq i8 %i.e, -2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3595
  store ptr %2, ptr %i.a, align 8, !noalias !3595
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3595
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @18, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3595
  %i.h = call noundef nonnull ptr @_RINvMsb_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB6_5Error7contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 -2, ptr %i.i, align 4
  br label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsk_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error7contextINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB7_5error5ErrorEINtB5_7ContextuB1C_E12with_contextNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvNtNtCsiOkGTpNE17y_8wasmtime7runtime8instance9typecheckNtNtB3d_6linker10DefinitionNCNvMs1_B3b_INtB3b_11InstancePreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextE3new0E0EB56_(ptr noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3600
  store ptr %1, ptr %i.a, align 8, !noalias !3600
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3600
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.d, align 8, !noalias !3600
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3600
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.03.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.a ]
  ret ptr %.sroa.03.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3600
  %i.e = call noundef nonnull ptr @_RINvMsb_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB6_5Error7contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsk_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvXs_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error7contextINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB7_5error5ErrorEINtB5_7ContextuB1C_E7contextReECs7gfv9tzbXmh_6yara_x(ptr noundef %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull ptr @_RINvMsb_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB6_5Error7contextReECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.03.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsc_NtCsgkljs906P5b_3nom5multiINtB6_11LengthCountINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1N_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2o_6Dotnet19parse_metadata_roots1_0tENvB2k_19parse_stream_headerB1Q_EINtNtB8_8internal6ParserB1N_E7processINtB4o_7OutputMNtB4o_4EmitB5b_NtB4o_9StreamingEEB2u_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3705
  store ptr %1, ptr %i.i, align 8, !noalias !3706
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %i.n, align 8, !noalias !3706
  %i.o = icmp samesign ult i64 %2, 2
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3705
  store ptr %1, ptr %i.h, align 8, !noalias !3705
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.p, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3705
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3705
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i.i = phi i16 [ %i.ac, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.q = phi i64 [ %.pr.i.i.i.i.i, %bb.c ], [ 2, %bb.b ]
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3707, !noalias !3708
  %i.s = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !3709 ; 2 uses
  %i.t = extractvalue { i1, i8 } %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.u = extractvalue { i1, i8 } %i.s, 1
  %i.v = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3710, !noalias !3708, !noundef !5 ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3710, !noalias !3708
  %i.x = zext i8 %i.u to i16
  %i.y = trunc i64 %i.v to i16
  %i.z = shl i16 %i.y, 3
  %i.aa = and i16 %i.z, 8
  %i.ab = shl nuw i16 %i.x, %i.aa
  %i.ac = add i16 %i.ab, %.sroa.0.08.i.i.i.i.i    ; 2 uses
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3707, !noalias !3708 ; 2 uses
  %i.ad = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.ad, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3705
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i16 [ %i.ac, %bb.c ], [ %.sroa.0.08.i.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3705
  %i.ae = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef 2), !noalias !3711 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3705
  %i.af = icmp ult i16 %.sroa.0.0.lcssa.i.i.i.i.i, 257
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.16.sroa.0.0.ph = phi i16 [ 45, %bb.e ], [ 24, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ag, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %.sroa.16.sroa.0.0.ph, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.ah = extractvalue { ptr, i64 } %i.ae, 1      ; 3 uses
  %i.ai = extractvalue { ptr, i64 } %i.ae, 0      ; 3 uses
  %i.aj = zext nneg i16 %.sroa.0.0.lcssa.i.i.i.i.i to i64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3712
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.aj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !3712
  %i.ak = load i64, ptr %i.g, align 8, !range !11, !noalias !3712, !noundef !5
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !18, !noalias !3712, !noundef !5 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.al, label %bb.h, label %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountINtNtBa_10combinator6VerifyINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1P_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet19parse_metadata_roots1_0tENvB2m_19parse_stream_headerB1S_EINtNtBa_8internal6ParserB1P_E7processINtB4q_7OutputMNtB4q_4EmitB5d_NtB4q_9StreamingEE0B2w_.exit, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !3712
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #31, !noalias !3712
  unreachable

_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountINtNtBa_10combinator6VerifyINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1P_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet19parse_metadata_roots1_0tENvB2m_19parse_stream_headerB1S_EINtNtBa_8internal6ParserB1P_E7processINtB4q_7OutputMNtB4q_4EmitB5d_NtB4q_9StreamingEE0B2w_.exit: ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !3712, !nonnull !5, !noundef !5
  %i.ar = icmp uge i64 %i.an, %i.aj
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3712
  store i64 %i.an, ptr %i.m, align 8, !alias.scope !3712
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.aq, ptr %i.as, align 8, !alias.scope !3712
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.at, align 8, !alias.scope !3712
  %.not = icmp eq i16 %.sroa.0.0.lcssa.i.i.i.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountINtNtBa_10combinator6VerifyINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1P_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet19parse_metadata_roots1_0tENvB2m_19parse_stream_headerB1S_EINtNtBa_8internal6ParserB1P_E7processINtB4q_7OutputMNtB4q_4EmitB5d_NtB4q_9StreamingEE0B2w_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i81.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i82.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i83.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.i

._crit_edge:                                      ; preds = %bb.z, %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountINtNtBa_10combinator6VerifyINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1P_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet19parse_metadata_roots1_0tENvB2m_19parse_stream_headerB1S_EINtNtBa_8internal6ParserB1P_E7processINtB4q_7OutputMNtB4q_4EmitB5d_NtB4q_9StreamingEE0B2w_.exit
  %.sroa.616.0.lcssa = phi i64 [ %i.ah, %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountINtNtBa_10combinator6VerifyINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1P_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet19parse_metadata_roots1_0tENvB2m_19parse_stream_headerB1S_EINtNtBa_8internal6ParserB1P_E7processINtB4q_7OutputMNtB4q_4EmitB5d_NtB4q_9StreamingEE0B2w_.exit ], [ %i.dh, %bb.z ]
  %.sroa.015.0.lcssa = phi ptr [ %i.ai, %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountINtNtBa_10combinator6VerifyINvNtNtBa_6number8complete6le_u16RShINtNtBa_5error5ErrorB1P_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2q_6Dotnet19parse_metadata_roots1_0tENvB2m_19parse_stream_headerB1S_EINtNtBa_8internal6ParserB1P_E7processINtB4q_7OutputMNtB4q_4EmitB5d_NtB4q_9StreamingEE0B2w_.exit ], [ %i.di, %bb.z ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.015.0.lcssa, ptr %i.bb, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.616.0.lcssa, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ag

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i84.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.m, %bb.q, %.loopexit.i.i.i, %bb.s
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.012.0123 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %bb.z ]
  %.sroa.015.0122 = phi ptr [ %i.ai, %.lr.ph ], [ %i.di, %bb.z ] ; 5 uses
  %.sroa.616.0121 = phi i64 [ %i.ah, %.lr.ph ], [ %i.dh, %bb.z ] ; 4 uses
  %i.bc = add nuw nsw i64 %.sroa.012.0123, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0122) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3713
  store ptr %.sroa.015.0122, ptr %i.f, align 8, !noalias !3714
  store i64 %.sroa.616.0121, ptr %i.au, align 8, !noalias !3714
  %i.bd = icmp samesign ult i64 %.sroa.616.0121, 4
  br i1 %i.bd, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.0122, i64 %.sroa.616.0121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3713
  store ptr %.sroa.015.0122, ptr %i.e, align 8, !noalias !3713
  store ptr %i.be, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3713
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3713
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.08.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bf = phi i64 [ %.pr.i.i.i.i.i.i.i, %bb.k ], [ 4, %bb.j ]
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3715, !noalias !3716
  %i.bh = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i
  %i.bi = extractvalue { i1, i8 } %i.bh, 0
  br i1 %i.bi, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.noexc
  %i.bj = extractvalue { i1, i8 } %i.bh, 1
  %i.bk = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3717, !noalias !3716, !noundef !5 ; 2 uses
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3717, !noalias !3716
  %i.bm = zext i8 %i.bj to i32
  %i.bn = trunc i64 %i.bk to i32
  %i.bo = shl i32 %i.bn, 3
  %i.bp = and i32 %i.bo, 24
  %i.bq = shl nuw i32 %i.bm, %i.bp
  %i.br = add i32 %i.bq, %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3715, !noalias !3716 ; 2 uses
  %i.bs = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.m, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3713
  br label %_RNvYNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB8_6Dotnet19parse_stream_headerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRShEE8call_mutBe_.exit.thread.thread.i

bb.m:                                             ; preds = %bb.k, %.noexc
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.k ], [ %.sroa.0.08.i.i.i.i.i.i.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3713
  %i.bt = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i64 noundef 4)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc18:                                         ; preds = %bb.m
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 5 uses
  %i.bv = extractvalue { ptr, i64 } %i.bt, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3713
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ], !noalias !3718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3719
  store ptr %i.bu, ptr %i.d, align 8, !noalias !3720
  store i64 %i.bv, ptr %i.av, align 8, !noalias !3720
  %i.bw = icmp samesign ult i64 %i.bv, 4
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.noexc18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3719
  store ptr %i.bu, ptr %i.c, align 8, !noalias !3719
  store ptr %i.bx, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i81.i.i.i, align 8, !noalias !3719
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i83.i.i.i, align 8, !noalias !3719
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i84.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i84.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.08.i.i.i.i85.i.i.i = phi i32 [ %i.ck, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.by = phi i64 [ %.pr.i.i.i.i89.i.i.i, %bb.o ], [ 4, %bb.n ]
  %i.bz = add i64 %i.by, -1
  store i64 %i.bz, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i82.i.i.i, align 8, !alias.scope !3721, !noalias !3722
  %i.ca = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc19 unwind label %.loopexit ; 2 uses

.noexc19:                                         ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i84.i.i.i
  %i.cb = extractvalue { i1, i8 } %i.ca, 0
  br i1 %i.cb, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.noexc19
  %i.cc = extractvalue { i1, i8 } %i.ca, 1
  %i.cd = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i83.i.i.i, align 8, !alias.scope !3723, !noalias !3722, !noundef !5 ; 2 uses
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %.sroa.2.0..sroa_idx.i.i.i.i83.i.i.i, align 8, !alias.scope !3723, !noalias !3722
  %i.cf = zext i8 %i.cc to i32
  %i.cg = trunc i64 %i.cd to i32
  %i.ch = shl i32 %i.cg, 3
  %i.ci = and i32 %i.ch, 24
  %i.cj = shl nuw i32 %i.cf, %i.ci
  %i.ck = add i32 %i.cj, %.sroa.0.08.i.i.i.i85.i.i.i ; 2 uses
  %.pr.i.i.i.i89.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i82.i.i.i, align 8, !alias.scope !3721, !noalias !3722 ; 2 uses
  %i.cl = icmp eq i64 %.pr.i.i.i.i89.i.i.i, 0
  br i1 %i.cl, label %bb.q, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i84.i.i.i

bb.p:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3719
  br label %_RNvYNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB8_6Dotnet19parse_stream_headerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRShEE8call_mutBe_.exit.thread.thread.i

bb.q:                                             ; preds = %bb.o, %.noexc19
  %.sroa.0.0.lcssa.i.i.i.i86.i.i.i = phi i32 [ %i.ck, %bb.o ], [ %.sroa.0.08.i.i.i.i85.i.i.i, %.noexc19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3719
  %i.cm = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 4)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc20:                                         ; preds = %bb.q
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0      ; 5 uses
  %i.co = extractvalue { ptr, i64 } %i.cm, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3719
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn) ], !noalias !3718
  call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  call void @llvm.experimental.noalias.scope.decl(metadata !3725)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3726
  store ptr %i.cn, ptr %i.b, align 8, !noalias !3727
  store i64 %i.co, ptr %i.aw, align 8, !noalias !3727
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = icmp samesign eq i64 %i.co, 0
  br i1 %i.cq, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %bb.r
  %.sroa.02.07.i.i.i.i.i.i = phi i64 [ %i.cu, %bb.r ], [ 0, %.noexc20 ] ; 3 uses
  %i.cr = phi ptr [ %i.ct, %bb.r ], [ %i.cn, %.noexc20 ] ; 2 uses
  %.val.i.i.i.i.i.i = load i8, ptr %i.cr, align 1, !alias.scope !3728, !noalias !3729, !noundef !5
  %i.cs = icmp eq i8 %.val.i.i.i.i.i.i, 0
  br i1 %i.cs, label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2Q_6Dotnet19parse_stream_header0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4c_Es_0B2W_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 1 ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.02.07.i.i.i.i.i.i, 1
  %i.cv = icmp eq ptr %i.ct, %i.cp
  br i1 %i.cv, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2Q_6Dotnet19parse_stream_header0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4c_Es_0B2W_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cw = icmp samesign ult i64 %.sroa.02.07.i.i.i.i.i.i, %i.co
  call void @llvm.assume(i1 %i.cw), !noalias !3730
  br label %.loopexit.i.i.i

_RNvYNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB8_6Dotnet19parse_stream_headerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRShEE8call_mutBe_.exit.thread.thread.i: ; preds = %bb.p, %bb.l
  %.sroa.14.sroa.9.0.ph.in.in.in.i.i.i = phi ptr [ %i.bu, %bb.p ], [ %.sroa.015.0122, %bb.l ]
  %.sroa.22.0.ph.i.i.i = phi i64 [ %i.bv, %bb.p ], [ %.sroa.616.0121, %bb.l ]
  %.sroa.14.sroa.9.0.ph.in.in.i.i.i = ptrtoint ptr %.sroa.14.sroa.9.0.ph.in.in.in.i.i.i to i64
  br label %.thread61

.loopexit.i.i.i:                                  ; preds = %bb.r, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2Q_6Dotnet19parse_stream_header0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4c_Es_0B2W_.exit.i.i.i.i.i, %.noexc20
  %.sroa.02.07.i.i.lcssa.sink.i.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i.i.i, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2Q_6Dotnet19parse_stream_header0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4c_Es_0B2W_.exit.i.i.i.i.i ], [ 0, %.noexc20 ], [ %i.co, %bb.r ] ; 7 uses
  %i.cx = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i.i.i)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc21:                                         ; preds = %.loopexit.i.i.i
  %.sink.i.i.i.i.i = extractvalue { ptr, i64 } %i.cx, 1 ; 6 uses
  %.sink13.i.i.i.i.i = extractvalue { ptr, i64 } %i.cx, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3726
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i.i.i.i) ]
  %i.cy = add i64 %.sroa.02.07.i.i.lcssa.sink.i.i.i.i, 1 ; 2 uses
  %i.cz = and i64 %i.cy, 3                        ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = add i64 %.sroa.02.07.i.i.lcssa.sink.i.i.i.i, 5
  %i.dc = sub i64 %i.db, %i.cz
  %.sroa.012.0.i.i.i = select i1 %i.da, i64 %i.cy, i64 %i.dc
  %i.dd = sub i64 %.sroa.012.0.i.i.i, %.sroa.02.07.i.i.lcssa.sink.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3731
  store ptr %.sink13.i.i.i.i.i, ptr %i.a, align 8, !noalias !3732
  store i64 %.sink.i.i.i.i.i, ptr %i.ax, align 8, !noalias !3732
  %.not.i.i.i.i.i = icmp ult i64 %.sink.i.i.i.i.i, %i.dd ; 2 uses
  %i.de = select i1 %.not.i.i.i.i.i, i64 %.sink.i.i.i.i.i, i64 0
  %.sroa.3.0.i.i.i.i.i = sub nuw nsw i64 %i.dd, %i.de ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.noexc21
  %i.df = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %.sroa.3.0.i.i.i.i.i)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc22:                                         ; preds = %bb.s
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.3.0.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %_RNvYNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB8_6Dotnet19parse_stream_headerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRShEE8call_mutBe_.exit.i, !prof !6

bb.t:                                             ; preds = %.noexc22
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.3.0.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sink.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.noexc21
  %i.dg = ptrtoint ptr %.sink13.i.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3731
  br label %.thread61

_RNvYNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB8_6Dotnet19parse_stream_headerINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutTRShEE8call_mutBe_.exit.i: ; preds = %.noexc22
  %i.dh = extractvalue { ptr, i64 } %i.df, 1      ; 4 uses
  %i.di = extractvalue { ptr, i64 } %i.df, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3731
  %i.dj = ptrtoint ptr %i.cn to i64               ; 3 uses
  %.sroa.23.32.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i.i.i.i.i.i.i to i64
  %.sroa.23.36.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i.i.i.i86.i.i.i to i64
  %.sroa.23.36.insert.shift.i = shl nuw i64 %.sroa.23.36.insert.ext.i, 32
  %.sroa.23.36.insert.insert.i = or disjoint i64 %.sroa.23.36.insert.shift.i, %.sroa.23.32.insert.ext.i ; 3 uses
  %i.dk = icmp eq ptr %i.di, null
end_hunk_5
begin_hunk_6_@_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtBH_9MachOFile22linker_options_command0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2K_NtB6_9StreamingEEBN_:bb.a
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.684.0.lcssa.i, ptr %.sroa.414.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %.thread, %.loopexit
  %.sink107 = phi i64 [ 16, %.thread ], [ 24, %.loopexit ]
  %.sroa.14.0.ph74.sink = phi i64 [ %.sroa.14.0.ph74, %.thread ], [ %.sroa.20.24.copyload, %.loopexit ]
  %.sink106 = phi i64 [ 24, %.thread ], [ 32, %.loopexit ]
  %.sroa.922.sroa.0.0.sink = phi i64 [ %.sroa.922.sroa.0.0, %.thread ], [ %.sroa.26.24.copyload, %.loopexit ]
  %.sink = phi i64 [ 32, %.thread ], [ 40, %.loopexit ]
  %.sroa.922.sroa.5.0.sink = phi i64 [ %.sroa.922.sroa.5.0, %.thread ], [ %.sroa.30.24.copyload, %.loopexit ]
  %storemerge = phi i64 [ 1, %.thread ], [ 0, %.loopexit ]
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink107
  store i64 %.sroa.14.0.ph74.sink, ptr %.sroa.452.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink106
  store i64 %.sroa.922.sroa.0.0.sink, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.922.sroa.5.0.sink, ptr %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

.thread:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.c
  %.sroa.8.0.ph76 = phi i64 [ 1, %bb.c ], [ %i.i, %bb.b ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.14.0.ph74.in = phi ptr [ %.sroa.043.0.copyload.i, %bb.c ], [ %.sroa.043.0.copyload.i, %bb.b ], [ %.sink13.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.922.sroa.0.0 = phi i64 [ %.sroa.444.0.copyload.i, %bb.c ], [ %.sroa.444.0.copyload.i, %bb.b ], [ %.sink.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.922.sroa.5.0 = phi i64 [ 48, %bb.c ], [ %i.n, %bb.b ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRShEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.14.0.ph74 = ptrtoint ptr %.sroa.14.0.ph74.in to i64
  %i.bc = inttoptr i64 %.sroa.8.0.ph76 to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtBH_6Dotnet5index0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i8, ptr %1, align 1, !range !22, !noundef !5
  call fastcc void @_RNCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB7_6Dotnet5index0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, i8 %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #32
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.034.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.435.sroa.0.0.copyload = load i64, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.435.sroa.4.0.copyload = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.723.sroa.6.0.copyload = load i32, ptr %.sroa.723.sroa.6.0..sroa.723.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.723.sroa.6.0.copyload, ptr %.sroa.770.0..sroa_idx, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ne i64 %.sroa.034.0.copyload, 0
  tail call void @llvm.assume(i1 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink74 = inttoptr i64 %.sroa.034.0.copyload to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink74, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.435.sroa.0.0.copyload, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.435.sroa.4.0.copyload, ptr %i.g, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2h_NtB6_9StreamingEEBJ_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4672
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4674
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !4674
  %i.j = load i64, ptr %i.d, align 8, !range !11, !noalias !4674, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !18, !noalias !4674, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNCINvXNtCsgkljs906P5b_3nom5multiINtB5_5Many0INtNtB7_10combinator6VerifyINvNtNtB7_6number8complete6le_u16RShINtNtB7_5error5ErrorB1F_EENCNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string00tEEINtNtB7_8internal6ParserB1F_E7processINtB3m_7OutputMNtB3m_4EmitB49_NtB3m_9StreamingEE0B2k_.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !4674
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #31, !noalias !4675
  unreachable

_RNCINvXNtCsgkljs906P5b_3nom5multiINtB5_5Many0INtNtB7_10combinator6VerifyINvNtNtB7_6number8complete6le_u16RShINtNtB7_5error5ErrorB1F_EENCNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string00tEEINtNtB7_8internal6ParserB1F_E7processINtB3m_7OutputMNtB3m_4EmitB49_NtB3m_9StreamingEE0B2k_.exit.i.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !4674, !nonnull !5, !noundef !5
  %i.q = icmp samesign ugt i64 %i.m, 3
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4674
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !4673, !noalias !4672
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !4673, !noalias !4672
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !4673, !noalias !4672
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4676
  store ptr %1, ptr %i.c, align 8, !noalias !4677
  store i64 %2, ptr %i.t, align 8, !noalias !4677
  %i.u = icmp samesign ult i64 %2, 2
  br i1 %i.u, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvXNtCsgkljs906P5b_3nom5multiINtB5_5Many0INtNtB7_10combinator6VerifyINvNtNtB7_6number8complete6le_u16RShINtNtB7_5error5ErrorB1F_EENCNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string00tEEINtNtB7_8internal6ParserB1F_E7processINtB3m_7OutputMNtB3m_4EmitB49_NtB3m_9StreamingEE0B2k_.exit.i.i
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

.thread.loopexit.i.i:                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.loopexit.split-lp.i.i:                    ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.loopexit.split-lp.i.i, %.thread.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.thread.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #28
          to label %common.resume.i unwind label %bb.o, !noalias !4678

bb.c:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.0.049.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.ao, %bb.k ] ; 4 uses
  %.sroa.3.048.i.i = phi i64 [ %2, %.lr.ph.i.i ], [ %i.ap, %bb.k ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.049.i.i, i64 %.sroa.3.048.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4676
  store ptr %.sroa.0.049.i.i, ptr %i.b, align 8, !noalias !4676
  store ptr %i.y, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4676
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4676
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.08.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.z = phi i64 [ %.pr.i.i.i.i.i.i.i, %bb.d ], [ 2, %bb.c ]
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4679, !noalias !4680
  %i.ab = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i.i unwind label %.thread.loopexit.i.i, !noalias !4678 ; 2 uses

.noexc.i.i:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i
  %i.ac = extractvalue { i1, i8 } %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc.i.i
  %i.ad = extractvalue { i1, i8 } %i.ab, 1
  %i.ae = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4681, !noalias !4680, !noundef !5 ; 2 uses
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4681, !noalias !4680
  %i.ag = zext i8 %i.ad to i16
  %i.ah = trunc i64 %i.ae to i16
  %i.ai = shl i16 %i.ah, 3
  %i.aj = and i16 %i.ai, 8
  %i.ak = shl nuw i16 %i.ag, %i.aj
  %i.al = add i16 %i.ak, %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %.pr.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !4679, !noalias !4680 ; 2 uses
  %i.am = icmp eq i64 %.pr.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %_RNCINvXNtCsgkljs906P5b_3nom5multiINtB5_5Many0INtNtB7_10combinator6VerifyINvNtNtB7_6number8complete6le_u16RShINtNtB7_5error5ErrorB1F_EENCNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string00tEEINtNtB7_8internal6ParserB1F_E7processINtB3m_7OutputMNtB3m_4EmitB49_NtB3m_9StreamingEE0B2k_.exit.i.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %2, %_RNCINvXNtCsgkljs906P5b_3nom5multiINtB5_5Many0INtNtB7_10combinator6VerifyINvNtNtB7_6number8complete6le_u16RShINtNtB7_5error5ErrorB1F_EENCNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string00tEEINtNtB7_8internal6ParserB1F_E7processINtB3m_7OutputMNtB3m_4EmitB49_NtB3m_9StreamingEE0B2k_.exit.i.i ], [ %i.ap, %bb.k ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %_RNCINvXNtCsgkljs906P5b_3nom5multiINtB5_5Many0INtNtB7_10combinator6VerifyINvNtNtB7_6number8complete6le_u16RShINtNtB7_5error5ErrorB1F_EENCNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser15utf16_le_string00tEEINtNtB7_8internal6ParserB1F_E7processINtB3m_7OutputMNtB3m_4EmitB49_NtB3m_9StreamingEE0B2k_.exit.i.i ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4676
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.noexc.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.d ], [ %.sroa.0.08.i.i.i.i.i.i.i, %.noexc.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4676
  %i.an = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 2)
          to label %.noexc17.i.i unwind label %.thread.loopexit.split-lp.i.i, !noalias !4678 ; 2 uses

.noexc17.i.i:                                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4676
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.noexc17.i.i
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 3 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 5 uses
  %i.aq = icmp eq i64 %i.ap, %.sroa.3.048.i.i
  br i1 %i.aq, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4672
  store i16 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !4682
  %i.ar = load i64, ptr %i.w, align 8, !alias.scope !4683, !noalias !4684, !noundef !5 ; 3 uses
  %i.as = load i64, ptr %i.e, align 8, !range !19, !alias.scope !4683, !noalias !4684, !noundef !5
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs4TbwqbMjud4_6zopfli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #30
          to label %bb.k unwind label %bb.i, !noalias !4685

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %common.resume.i unwind label %bb.j, !noalias !4685

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4685
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aw = load ptr, ptr %i.x, align 8, !alias.scope !4683, !noalias !4684, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ar
  store i16 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, ptr %i.ax, align 2, !noalias !4685
  %i.ay = add i64 %i.ar, 1
  store i64 %i.ay, ptr %i.w, align 8, !alias.scope !4683, !noalias !4684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4676
  store ptr %i.ao, ptr %i.c, align 8, !noalias !4677
  store i64 %i.ap, ptr %i.t, align 8, !noalias !4677
  %i.az = icmp samesign ult i64 %i.ap, 2
  br i1 %i.az, label %._crit_edge.i.i, label %bb.c

bb.l:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.p unwind label %bb.m, !noalias !4678

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.n, !noalias !4678

bb.n:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4678
  unreachable

common.resume.i:                                  ; preds = %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %.thread.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bp, %bb.y ], [ %lpad.phi.i.i, %.thread.i.i ], [ %i.bh, %bb.u ], [ %i.au, %bb.i ], [ %i.ba, %bb.m ], [ %i.be, %bb.q ]
  resume { ptr, i32 } %common.resume.op.i

bb.o:                                             ; preds = %.thread.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4678
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !4678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4672
  br label %bb.ab

.loopexit.i:                                      ; preds = %.noexc17.i.i, %._crit_edge.i.i
  %.sroa.3.047.i.i = phi i64 [ %.sroa.3.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.048.i.i, %.noexc17.i.i ] ; 3 uses
  %.sroa.0.041.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.049.i.i, %.noexc17.i.i ] ; 3 uses
  %.sroa.14.24.copyload3.i = load i64, ptr %i.f, align 8, !noalias !4686
  %.sroa.18.24.copyload5.i = load i8, ptr %i.r, align 8, !noalias !4686
  %.sroa.19.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.19.24..sroa_idx.i, i64 15, i1 false), !noalias !4687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4672
  store i64 %.sroa.14.24.copyload3.i, ptr %i.i, align 8, !noalias !4687
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i8 %.sroa.18.24.copyload5.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4687
  %i.bd = icmp eq i64 %.sroa.3.047.i.i, 0
  br i1 %i.bd, label %bb.w, label %bb.r

bb.q:                                             ; preds = %bb.w, %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #28
          to label %common.resume.i unwind label %bb.aa, !noalias !4688

bb.r:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4687
  store ptr %.sroa.0.041.i.i, ptr %i.a, align 8, !noalias !4689
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.047.i.i, ptr %i.bf, align 8, !noalias !4689
  %.not.i.i76.i = icmp eq i64 %.sroa.3.047.i.i, 1
  br i1 %.not.i.i76.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 2)
          to label %.noexc.i unwind label %bb.q, !noalias !4688 ; 2 uses

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4687
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.u, !noalias !4688

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.v, !noalias !4688

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4688
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4687
  br label %bb.ab

.noexc.i:                                         ; preds = %bb.s
  %i.bj = extractvalue { ptr, i64 } %i.bg, 1
  %i.bk = extractvalue { ptr, i64 } %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4687
  br label %bb.w

bb.w:                                             ; preds = %.noexc.i, %.loopexit.i
  %.sroa.067.0.i = phi ptr [ %.sroa.0.041.i.i, %.loopexit.i ], [ %i.bk, %.noexc.i ] ; 2 uses
  %.sroa.570.0.i = phi i64 [ 0, %.loopexit.i ], [ %i.bj, %.noexc.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4687
  %i.bl = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !4687, !nonnull !5, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !4687, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4687
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bn
  store ptr %i.bl, ptr %i.g, align 8, !noalias !4687
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bo, ptr %.sroa.464.0..sroa_idx.i, align 8, !noalias !4687
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i16 0, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !4687
  invoke void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtNtBU_4char6decode11DecodeUtf16INtNtB22_6cloned6ClonedINtNtNtBU_5slice4iter4ItertEEENCNvMB6_Bz_16from_utf16_lossy0EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.x unwind label %bb.q, !noalias !4688

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4687
  %.sroa.17.24.copyload = load i64, ptr %i.h, align 8, !noalias !4690
  %.sroa.22.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.22.24.copyload = load i64, ptr %.sroa.22.24..sroa_idx, align 8, !noalias !4690
  %.sroa.24.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.24.24.copyload = load i64, ptr %.sroa.24.24..sroa_idx, align 8, !noalias !4690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4687
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ac unwind label %bb.y, !noalias !4688

bb.y:                                             ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.z, !noalias !4688

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4688
  unreachable

bb.aa:                                            ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4688
  unreachable

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.p
  %.sroa.22.sroa.0.0.ph = phi i64 [ 8, %bb.p ], [ 24, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.17.0.ph = phi i64 [ %.sroa.3.048.i.i, %bb.p ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.12.0.ph.in = phi ptr [ %.sroa.0.049.i.i, %bb.p ], [ %.sroa.0.041.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.12.0.ph = ptrtoint ptr %.sroa.12.0.ph.in to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.bs, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4687
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.067.0.i) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.067.0.i, ptr %i.bt, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.570.0.i, ptr %.sroa.414.0..sroa_idx, align 8
  br label %bb.ad
end_hunk_6
begin_hunk_7_@_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtCsiOkGTpNE17y_8wasmtime6config6ConfigE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7gfv9tzbXmh_6yara_x:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #26, !noalias !5235
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #26, !noalias !5235
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtCsiOkGTpNE17y_8wasmtime6config6ConfigE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !5235, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5235
  call void %i.f(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a), !noalias !5235, !inline_history !5232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.c, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !noalias !5235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5235
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7Section14swap_uncheckedBD_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2_5MachO5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.052.i = alloca [48 x i8], align 8        ; 5 uses
  %i.o = alloca [608 x i8], align 8               ; 4 uses
  %i.p = alloca [608 x i8], align 8               ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [9 x i8], align 8                 ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [608 x i8], align 8               ; 7 uses
  %.sroa.620 = alloca [32 x i8], align 8          ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %1, ptr %i.u, align 8, !noalias !5300
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %2, ptr %i.x, align 8, !noalias !5300
  %i.y = icmp samesign ult i64 %2, 4
  br i1 %i.y, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8
  %.sroa.02.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.z, ptr %.sroa.02.sroa.2.0..sroa_idx.i, align 8
  %.sroa.02.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.b, %bb.c
  %.sroa.0.08.i = phi i32 [ %i.am, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.aa = phi i64 [ %.pr.i, %bb.c ], [ 4, %bb.b ]
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %.sroa.02.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5301, !noalias !5302
  %i.ac = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !5302 ; 2 uses
  %i.ad = extractvalue { i1, i8 } %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.ae = extractvalue { i1, i8 } %i.ac, 1
  %i.af = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5303, !noalias !5302, !noundef !5 ; 2 uses
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5303, !noalias !5302
  %i.ah = zext i8 %i.ae to i32
  %i.ai = trunc i64 %i.af to i32
  %i.aj = shl i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 24
  %i.al = shl nuw i32 %i.ah, %i.ak
  %i.am = add i32 %i.al, %.sroa.0.08.i            ; 2 uses
  %.pr.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5301, !noalias !5302 ; 2 uses
  %i.an = icmp eq i64 %.pr.i, 0
  br i1 %i.an, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ao, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 24, ptr %.sroa.642.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO20parse_fat_macho_file.exit

bb.e:                                             ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.0.0.lcssa.i = phi i32 [ %i.am, %bb.c ], [ %.sroa.0.08.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ap = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef 4), !noalias !5304 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  switch i32 %.sroa.0.0.lcssa.i, label %bb.f [
    i32 -889275714, label %bb.h
    i32 -1095041334, label %bb.h
    i32 -889275713, label %bb.h
    i32 -1078264118, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.ar, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.as = call noundef align 8 dereferenceable_or_null(608) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 608, i64 noundef 8) #29 ; 7 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.g, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 608) #31
          to label %.noexc unwind label %bb.bm

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5306
  store ptr %1, ptr %i.n, align 8, !noalias !5307
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %2, ptr %i.au, align 8, !noalias !5307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5306
  store ptr %1, ptr %i.m, align 8, !noalias !5306
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.z, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5306
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.0.210.i.i.i.i.i.i = phi i32 [ 0, %bb.h ], [ %i.bc, %bb.j ] ; 2 uses
  %i.av = phi i64 [ 4, %bb.h ], [ %.pr6.i.i.i.i.i.i, %bb.j ]
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5306
  %i.ax = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m), !noalias !5308 ; 2 uses
  %i.ay = extractvalue { i1, i8 } %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = extractvalue { i1, i8 } %i.ax, 1
  %i.ba = shl i32 %.sroa.0.210.i.i.i.i.i.i, 8
  %i.bb = zext i8 %i.az to i32
  %i.bc = or disjoint i32 %i.ba, %i.bb            ; 2 uses
  %.pr6.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5306 ; 2 uses
  %i.bd = icmp eq i64 %.pr6.i.i.i.i.i.i, 0
  br i1 %i.bd, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.2.lcssa.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %.sroa.0.210.i.i.i.i.i.i, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5306
  %i.be = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i64 noundef 4), !noalias !5309 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5306
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i.i, label %bb.l [
    i32 -889275714, label %bb.m
    i32 -1095041334, label %bb.m
    i32 -889275713, label %bb.m
    i32 -1078264118, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bf, align 8, !alias.scope !5305, !noalias !5310
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !5305, !noalias !5310
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.571.0..sroa_idx.i, align 8, !alias.scope !5305, !noalias !5310
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 45, ptr %.sroa.672.0..sroa_idx.i, align 8, !alias.scope !5305, !noalias !5310
  store i64 -1, ptr %0, align 8, !alias.scope !5305, !noalias !5310
  br label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO20parse_fat_macho_file.exit

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  %i.bh = extractvalue { ptr, i64 } %i.be, 0
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i.i, label %bb.n [
    i32 -889275714, label %bb.p
    i32 -889275713, label %bb.p
    i32 -1095041334, label %bb.o
    i32 -1078264118, label %bb.o
  ], !prof !31

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #26, !noalias !5305
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.m
  %.sroa.012.0.i = phi i8 [ 1, %bb.o ], [ 0, %bb.m ], [ 0, %bb.m ] ; 3 uses
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i.i, label %bb.q [
    i32 -889275714, label %bb.s
    i32 -1095041334, label %bb.s
    i32 -889275713, label %bb.r
    i32 -1078264118, label %bb.r
  ], !prof !31

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @505) #26, !noalias !5305
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5311
  %i.bi = zext nneg i8 %.sroa.012.0.i to i64      ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 56
  br label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5311
  %i.bk = zext nneg i8 %.sroa.012.0.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink251.i = phi i64 [ %i.bi, %bb.r ], [ %i.bk, %bb.s ] ; 3 uses
  %.sink249.i = phi i64 [ %i.bj, %bb.r ], [ -72057594037927936, %bb.s ] ; 2 uses
  %.sroa.019.0117209.i = phi i64 [ 0, %bb.r ], [ 1, %bb.s ] ; 2 uses
  %i.bl = phi i64 [ 0, %bb.r ], [ 65536, %bb.s ]  ; 2 uses
  %.sroa.437.0.insert.shift.i = shl nuw nsw i64 %.sink251.i, 8
  %i.bm = mul nuw nsw i64 %.sink251.i, 282578800082944
  %i.bn = or disjoint i64 %.sroa.437.0.insert.shift.i, %i.bm
  %i.bo = or disjoint i64 %i.bn, %.sroa.019.0117209.i
  %i.bp = or disjoint i64 %i.bo, %i.bl
  %.sroa.036.0.insert.insert.i = or i64 %i.bp, %.sink249.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i8 %.sroa.012.0.i, ptr %i.bq, align 8, !noalias !5311
  store i64 %.sroa.036.0.insert.insert.i, ptr %i.r, align 8, !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5312
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %i.bg), !noalias !5313
  %i.br = load i64, ptr %i.l, align 8, !range !12, !noalias !5312, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.br, -1
  %i.bs = trunc nuw nsw i64 %.sroa.019.0117209.i to i8
  %i.bt = trunc nuw nsw i64 %.sink251.i to i8     ; 2 uses
  %i.bu = lshr exact i64 %i.bl, 16
  %i.bv = trunc nuw nsw i64 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !5314 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.1296.8.copyload.i = load i64, ptr %i.bw, align 8, !noalias !5314
  %.sroa.20.8.copyload.i = load i64, ptr %i.bz, align 8, !noalias !5314
  br label %bb.ay

bb.v:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.bw, align 8, !noalias !5312, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 8, !noalias !5312, !noundef !5 ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5312
  call void @llvm.experimental.noalias.scope.decl(metadata !5315)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5316
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !5317
  %i.cd = load i64, ptr %i.b, align 8, !range !11, !noalias !5316, !noundef !5
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !18, !noalias !5316, !noundef !5 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ce, label %bb.w, label %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1n_EE0INtNtBa_8internal3MapTBR_BR_NCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0B2j_BR_INtNtBa_10combinator4CondBR_EENCNvMs_B2n_NtB2n_5MachO20parse_fat_macho_files_0EB1q_EINtB1U_6ParserB1n_E7processINtB1U_7OutputMNtB1U_4EmitB5o_NtB1U_9StreamingEE0B2t_.exit.i.i, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !5316
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cg, i64 %i.ci) #31, !noalias !5317
  unreachable

_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1n_EE0INtNtBa_8internal3MapTBR_BR_NCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0B2j_BR_INtNtBa_10combinator4CondBR_EENCNvMs_B2n_NtB2n_5MachO20parse_fat_macho_files_0EB1q_EINtB1U_6ParserB1n_E7processINtB1U_7OutputMNtB1U_4EmitB5o_NtB1U_9StreamingEE0B2t_.exit.i.i: ; preds = %bb.v
  %i.cj = load ptr, ptr %i.ch, align 8, !noalias !5316, !nonnull !5, !noundef !5 ; 2 uses
  %i.ck = icmp ule i64 %..i.i.i.i, %i.cg
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5316
  store i64 %i.cg, ptr %i.k, align 8, !alias.scope !5315, !noalias !5312
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.cl, align 8, !alias.scope !5315, !noalias !5312
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.cm, align 8, !alias.scope !5315, !noalias !5312
  %.not213.i.i = icmp eq i32 %i.cb, 0
  %i.cn = ptrtoint ptr %i.cj to i64
  br i1 %.not213.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvXsc_NtCsgkljs906P5b_3nom5multiINtB8_11LengthCountNCINvNtNtBa_6number8complete3u32RShINtNtBa_5error5ErrorB1n_EE0INtNtBa_8internal3MapTBR_BR_NCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0B2j_BR_INtNtBa_10combinator4CondBR_EENCNvMs_B2n_NtB2n_5MachO20parse_fat_macho_files_0EB1q_EINtB1U_6ParserB1n_E7processINtB1U_7OutputMNtB1U_4EmitB5o_NtB1U_9StreamingEE0B2t_.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5109.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4127.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5128.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4146.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5147.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4161.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5162.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4176.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5177.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.not.i.not.i.i = icmp eq i64 %.sink249.i, -72057594037927936
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.692.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.y

bb.x:                                             ; preds = %bb.aj, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.ap, %.lr.ph.i.i
  %.sroa.012.0211.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dc, %bb.ap ]
  %.sroa.039.0210.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.sroa.7102.1135.i.i, %bb.ap ]
  %.sroa.6.0209.i.i = phi i64 [ %i.by, %.lr.ph.i.i ], [ %.sroa.11.1134.i.i, %bb.ap ]
  %i.dc = add nuw nsw i64 %.sroa.012.0211.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5318
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0210.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0209.i.i)
          to label %.noexc.i.i unwind label %bb.x, !noalias !5313

.noexc.i.i:                                       ; preds = %bb.y
  %i.dd = load i64, ptr %i.g, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dd, -1
  %.sroa.0107.0.copyload.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !5318 ; 2 uses
  %.sroa.4108.0.copyload.i.i.i.i = load i64, ptr %.sroa.4108.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5109.0.copyload.i.i.i.i = load i32, ptr %.sroa.5109.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc.i.i
  %.sroa.7120.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.7120.0.copyload.i.i.i.i = load i32, ptr %.sroa.7120.0..sroa_idx.i.i.i.i, align 4, !noalias !5318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5318
  br label %bb.al

bb.aa:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5318
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly dereferenceable(1) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0107.0.copyload.i.i.i.i, i64 noundef %.sroa.4108.0.copyload.i.i.i.i)
          to label %.noexc16.i.i unwind label %bb.x, !noalias !5313

.noexc16.i.i:                                     ; preds = %bb.aa
  %i.de = load i64, ptr %i.f, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not213.i.i.i.i = icmp eq i64 %i.de, -1
  %.sroa.0126.0.copyload.i.i.i.i = load ptr, ptr %i.ct, align 8, !noalias !5318 ; 2 uses
  %.sroa.4127.0.copyload.i.i.i.i = load i64, ptr %.sroa.4127.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5128.0.copyload.i.i.i.i = load i32, ptr %.sroa.5128.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  br i1 %.not213.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc16.i.i
  %.sroa.7139.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.7139.0.copyload.i.i.i.i = load i32, ptr %.sroa.7139.0..sroa_idx.i.i.i.i, align 4, !noalias !5318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5318
  br label %bb.al

bb.ac:                                            ; preds = %.noexc16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5318
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser4uint0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB28_NtB6_9StreamingEEBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, i8 %i.bs, i8 %i.bt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0126.0.copyload.i.i.i.i, i64 noundef %.sroa.4127.0.copyload.i.i.i.i)
          to label %.noexc17.i.i unwind label %bb.x, !noalias !5319

.noexc17.i.i:                                     ; preds = %bb.ac
  %i.df = load i64, ptr %i.e, align 8, !range !12, !noalias !5318, !noundef !5 ; 2 uses
  %.not214.i.i.i.i = icmp eq i64 %i.df, -1
  %.sroa.0145.0.copyload.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !5318 ; 2 uses
  %.sroa.4146.0.copyload.i.i.i.i = load i64, ptr %.sroa.4146.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 2 uses
  %.sroa.5147.0.copyload.i.i.i.i = load i64, ptr %.sroa.5147.0..sroa_idx.i.i.i.i, align 8, !noalias !5318 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5318
  br i1 %.not214.i.i.i.i, label %bb.ae, label %bb.ad
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_resources:bb.a

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit317, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit320, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit322, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit325, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit327, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit330, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit334, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit337, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit339, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit342, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit344, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit347, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit349, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser8ResourceEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #28
          to label %.body unwind label %bb.ck

bb.h:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !6218, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = sub nuw i64 %i.ba, %i.bb                ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.ae, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i32 0, ptr %i.bm, align 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 0, ptr %.sroa.720.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.bh, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 %i.bg, ptr %i.bo, align 8
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTlTNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ResourceIdB18_B18_ERShEE13push_back_mutB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.ac)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.7131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9132.sroa.7.0..sroa.9132.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.7135.sroa.6.0..sroa.7135.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i9.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i10.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i11.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4188.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5189.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i191 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i192 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i193 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i63.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i64.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i65.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.599.sroa.4.0..sroa.599.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.8.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.10.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.11105.sroa.4.0..sroa.11105.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ba
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i14.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i16.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i27.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i29.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit332, %bb.i
  %.sroa.4202.0.ph = phi i64 [ %spec.select, %.loopexit332 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0200.0.ph = phi i64 [ %spec.select316, %.loopexit332 ], [ 0, %bb.i ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTlTNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ResourceIdB18_B18_ERShEE9pop_frontB1g_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.k:                                             ; preds = %bb.j
  %i.cm = load i32, ptr %i.ab, align 8, !range !6219, !noundef !5 ; 3 uses
  %.not145 = icmp eq i32 %i.cm, -1
  br i1 %.not145, label %bb.ai, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = load i32, ptr %i.bq, align 8, !noundef !5 ; 5 uses
  %.sroa.7131.0.copyload = load i32, ptr %.sroa.7131.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9132.sroa.0.0.copyload = load i64, ptr %.sroa.9132.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9132.sroa.7.0.copyload = load i64, ptr %.sroa.9132.sroa.7.0..sroa.9132.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.0133.0.copyload = load i32, ptr %i.br, align 8
  %.sroa.6134.0.copyload = load i32, ptr %.sroa.6134.0..sroa_idx, align 4
  %.sroa.7135.sroa.0.0.copyload = load i64, ptr %.sroa.7135.0..sroa_idx, align 8
  %.sroa.7135.sroa.6.0.copyload = load i64, ptr %.sroa.7135.sroa.6.0..sroa.7135.0..sroa_idx.sroa_idx, align 8
  %i.co = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cp = load i64, ptr %i.bt, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6220
  store ptr %i.co, ptr %i.x, align 8, !noalias !6221
  store i64 %i.cp, ptr %i.bu, align 8, !noalias !6221
  %i.cq = icmp samesign ult i64 %i.cp, 4
  br i1 %i.cq, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6220
  store ptr %i.co, ptr %i.w, align 8, !noalias !6220
  store ptr %i.cr, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6220
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !6220
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.08.i.i.i.i.i.i = phi i32 [ %i.de, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.cs = phi i64 [ %.pr.i.i.i.i.i.i, %bb.n ], [ 4, %bb.m ]
  %i.ct = add i64 %i.cs, -1
  store i64 %i.ct, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6222, !noalias !6223
  %i.cu = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i
  %i.cv = extractvalue { i1, i8 } %i.cu, 0
  br i1 %i.cv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.noexc
  %i.cw = extractvalue { i1, i8 } %i.cu, 1
  %i.cx = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6224, !noalias !6223, !noundef !5 ; 2 uses
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6224, !noalias !6223
  %i.cz = zext i8 %i.cw to i32
  %i.da = trunc i64 %i.cx to i32
  %i.db = shl i32 %i.da, 3
  %i.dc = and i32 %i.db, 24
  %i.dd = shl nuw i32 %i.cz, %i.dc
  %i.de = add i32 %i.dd, %.sroa.0.08.i.i.i.i.i.i  ; 2 uses
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !6222, !noalias !6223 ; 2 uses
  %i.df = icmp eq i64 %.pr.i.i.i.i.i.i, 0
  br i1 %i.df, label %bb.p, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6220
  br label %bb.aj

bb.p:                                             ; preds = %bb.n, %.noexc
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.de, %bb.n ], [ %.sroa.0.08.i.i.i.i.i.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6220
  %i.dg = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i64 noundef 4)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc149:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6220
  %i.dh = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.dh, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %.noexc149
  %i.di = extractvalue { ptr, i64 } %i.dg, 1      ; 3 uses
  %i.dj = extractvalue { ptr, i64 } %i.dg, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6225
  store ptr %i.dj, ptr %i.v, align 8, !noalias !6226
  store i64 %i.di, ptr %i.bv, align 8, !noalias !6226
  %i.dk = icmp samesign ult i64 %i.di, 4
  br i1 %i.dk, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6225
  store ptr %i.dj, ptr %i.u, align 8, !noalias !6225
  store ptr %i.dl, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6225
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6225
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.08.i.i.i.i.i = phi i32 [ %i.dy, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.dm = phi i64 [ %.pr.i.i.i.i.i, %bb.s ], [ 4, %bb.r ]
  %i.dn = add i64 %i.dm, -1
  store i64 %i.dn, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6227, !noalias !6228
  %i.do = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc150:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.dp = extractvalue { i1, i8 } %i.do, 0
  br i1 %i.dp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.noexc150
  %i.dq = extractvalue { i1, i8 } %i.do, 1
  %i.dr = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6229, !noalias !6228, !noundef !5 ; 2 uses
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6229, !noalias !6228
  %i.dt = zext i8 %i.dq to i32
  %i.du = trunc i64 %i.dr to i32
  %i.dv = shl i32 %i.du, 3
  %i.dw = and i32 %i.dv, 24
  %i.dx = shl nuw i32 %i.dt, %i.dw
  %i.dy = add i32 %i.dx, %.sroa.0.08.i.i.i.i.i    ; 2 uses
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6227, !noalias !6228 ; 2 uses
  %i.dz = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.dz, label %bb.u, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6225
  br label %bb.aj

bb.u:                                             ; preds = %bb.s, %.noexc150
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i32 [ %i.dy, %bb.s ], [ %.sroa.0.08.i.i.i.i.i, %.noexc150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6225
  %i.ea = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, i64 noundef 4)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc151:                                        ; preds = %bb.u
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0      ; 4 uses
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6225
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ], !noalias !6230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6231
  store ptr %i.eb, ptr %i.t, align 8, !noalias !6232
  store i64 %i.ec, ptr %i.bw, align 8, !noalias !6232
  %i.ed = icmp samesign ult i64 %i.ec, 2
  br i1 %i.ed, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.noexc151
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6231
  store ptr %i.eb, ptr %i.s, align 8, !noalias !6231
  store ptr %i.ee, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i2.i, align 8, !noalias !6231
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i4.i, align 8, !noalias !6231
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i5.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i5.i: ; preds = %bb.w, %bb.v
  %.sroa.0.08.i.i.i.i6.i = phi i16 [ %i.er, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.ef = phi i64 [ %.pr.i.i.i.i8.i, %bb.w ], [ 2, %bb.v ]
  %i.eg = add i64 %i.ef, -1
  store i64 %i.eg, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i3.i, align 8, !alias.scope !6233, !noalias !6234
  %i.eh = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc152:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i5.i
  %i.ei = extractvalue { i1, i8 } %i.eh, 0
  br i1 %i.ei, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.noexc152
  %i.ej = extractvalue { i1, i8 } %i.eh, 1
  %i.ek = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i4.i, align 8, !alias.scope !6235, !noalias !6234, !noundef !5 ; 2 uses
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %.sroa.2.0..sroa_idx.i.i.i.i4.i, align 8, !alias.scope !6235, !noalias !6234
  %i.em = zext i8 %i.ej to i16
  %i.en = trunc i64 %i.ek to i16
  %i.eo = shl i16 %i.en, 3
  %i.ep = and i16 %i.eo, 8
  %i.eq = shl nuw i16 %i.em, %i.ep
  %i.er = add i16 %i.eq, %.sroa.0.08.i.i.i.i6.i   ; 2 uses
  %.pr.i.i.i.i8.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i3.i, align 8, !alias.scope !6233, !noalias !6234 ; 2 uses
  %i.es = icmp eq i64 %.pr.i.i.i.i8.i, 0
  br i1 %i.es, label %bb.y, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i5.i

bb.x:                                             ; preds = %.noexc151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6231
  br label %bb.aj

bb.y:                                             ; preds = %bb.w, %.noexc152
  %.sroa.0.0.lcssa.i.i.i.i7.i = phi i16 [ %i.er, %bb.w ], [ %.sroa.0.08.i.i.i.i6.i, %.noexc152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6231
  %i.et = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, i64 noundef 2)
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc153:                                        ; preds = %bb.y
  %i.eu = extractvalue { ptr, i64 } %i.et, 0      ; 4 uses
  %i.ev = extractvalue { ptr, i64 } %i.et, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6231
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !noalias !6230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6236
  store ptr %i.eu, ptr %i.r, align 8, !noalias !6237
  store i64 %i.ev, ptr %i.bx, align 8, !noalias !6237
  %i.ew = icmp samesign ult i64 %i.ev, 2
  br i1 %i.ew, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.noexc153
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6236
  store ptr %i.eu, ptr %i.q, align 8, !noalias !6236
  store ptr %i.ex, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i9.i, align 8, !noalias !6236
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i11.i, align 8, !noalias !6236
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i12.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i12.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.08.i.i.i.i13.i = phi i16 [ %i.fk, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.ey = phi i64 [ %.pr.i.i.i.i17.i, %bb.aa ], [ 2, %bb.z ]
  %i.ez = add i64 %i.ey, -1
  store i64 %i.ez, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i10.i, align 8, !alias.scope !6238, !noalias !6239
  %i.fa = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc154:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i12.i
  %i.fb = extractvalue { i1, i8 } %i.fa, 0
  br i1 %i.fb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.noexc154
  %i.fc = extractvalue { i1, i8 } %i.fa, 1
  %i.fd = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i11.i, align 8, !alias.scope !6240, !noalias !6239, !noundef !5 ; 2 uses
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %.sroa.2.0..sroa_idx.i.i.i.i11.i, align 8, !alias.scope !6240, !noalias !6239
  %i.ff = zext i8 %i.fc to i16
  %i.fg = trunc i64 %i.fd to i16
  %i.fh = shl i16 %i.fg, 3
  %i.fi = and i16 %i.fh, 8
  %i.fj = shl nuw i16 %i.ff, %i.fi
  %i.fk = add i16 %i.fj, %.sroa.0.08.i.i.i.i13.i  ; 2 uses
  %.pr.i.i.i.i17.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i10.i, align 8, !alias.scope !6238, !noalias !6239 ; 2 uses
  %i.fl = icmp eq i64 %.pr.i.i.i.i17.i, 0
  br i1 %i.fl, label %bb.ac, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i12.i

bb.ab:                                            ; preds = %.noexc153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6236
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa, %.noexc154
  %.sroa.0.0.lcssa.i.i.i.i14.i = phi i16 [ %i.fk, %bb.aa ], [ %.sroa.0.08.i.i.i.i13.i, %.noexc154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6236
  %i.fm = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i64 noundef 2)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc155:                                        ; preds = %bb.ac
  %i.fn = extractvalue { ptr, i64 } %i.fm, 0      ; 2 uses
  %i.fo = extractvalue { ptr, i64 } %i.fm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6236
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ], !noalias !6230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6241
  invoke fastcc void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1m_EENCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1X_2PE14parse_rsrc_dirs_0tEINtNtB8_8internal6ParserB1m_E7processINtB3d_7OutputMNtB3d_4EmitB40_NtB3d_9StreamingEEB23_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fo)
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc156:                                        ; preds = %.noexc155
  %i.fp = load i64, ptr %i.y, align 8, !range !12, !noalias !6241, !noundef !5
  %.not228.i.i.i = icmp eq i64 %i.fp, -1
  %.sroa.0187.0.copyload.i.i.i = load ptr, ptr %i.by, align 8, !noalias !6241 ; 3 uses
  %.sroa.4188.0.copyload.i.i.i = load i64, ptr %.sroa.4188.0..sroa_idx.i.i.i, align 8, !noalias !6241 ; 3 uses
  %.sroa.5189.0.copyload.i.i.i = load i16, ptr %.sroa.5189.0..sroa_idx.i.i.i, align 8, !noalias !6241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6241
  br i1 %.not228.i.i.i, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6242
  store ptr %.sroa.0187.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !6243
  store i64 %.sroa.4188.0.copyload.i.i.i, ptr %i.bz, align 8, !noalias !6243
  %i.fq = icmp samesign ult i64 %.sroa.4188.0.copyload.i.i.i, 2
  br i1 %i.fq, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0187.0.copyload.i.i.i, i64 %.sroa.4188.0.copyload.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6242
  store ptr %.sroa.0187.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !6242
  store ptr %i.fr, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i191, align 8, !noalias !6242
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i193, align 8, !noalias !6242
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i194

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i194: ; preds = %bb.af, %bb.ae
  %.sroa.0.08.i.i.i.i.i195 = phi i16 [ %i.ge, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.fs = phi i64 [ %.pr.i.i.i.i.i197, %bb.af ], [ 2, %bb.ae ]
  %i.ft = add i64 %i.fs, -1
  store i64 %i.ft, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i192, align 8, !alias.scope !6244, !noalias !6245
  %i.fu = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc198:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i194
  %i.fv = extractvalue { i1, i8 } %i.fu, 0
  br i1 %i.fv, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.noexc198
  %i.fw = extractvalue { i1, i8 } %i.fu, 1
  %i.fx = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i193, align 8, !alias.scope !6246, !noalias !6245, !noundef !5 ; 2 uses
  %i.fy = add i64 %i.fx, 1
  store i64 %i.fy, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i193, align 8, !alias.scope !6246, !noalias !6245
  %i.fz = zext i8 %i.fw to i16
  %i.ga = trunc i64 %i.fx to i16
  %i.gb = shl i16 %i.ga, 3
  %i.gc = and i16 %i.gb, 8
  %i.gd = shl nuw i16 %i.fz, %i.gc
  %i.ge = add i16 %i.gd, %.sroa.0.08.i.i.i.i.i195 ; 2 uses
  %.pr.i.i.i.i.i197 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i192, align 8, !alias.scope !6244, !noalias !6245 ; 2 uses
  %i.gf = icmp eq i64 %.pr.i.i.i.i.i197, 0
  br i1 %i.gf, label %bb.ah, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i194

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6242
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af, %.noexc198
  %.sroa.0.0.lcssa.i.i.i.i.i196 = phi i16 [ %i.ge, %bb.af ], [ %.sroa.0.08.i.i.i.i.i195, %.noexc198 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6242
  %i.gg = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 2)
          to label %.noexc199 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc199:                                        ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6242
  %i.gh = icmp ult i16 %.sroa.0.0.lcssa.i.i.i.i.i196, -32767
  br i1 %i.gh, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.gi = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, 104811045873349726
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp eq i64 %i.gi, 0
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.gk, label %bb.cf, label %bb.cc

bb.aj:                                            ; preds = %.noexc156, %bb.o, %.noexc149, %bb.t, %bb.x, %bb.ab, %bb.ag, %.noexc199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.j

bb.ak:                                            ; preds = %.noexc199
  %i.gm = zext i16 %.sroa.0.0.lcssa.i.i.i.i.i196 to i64
  %i.gn = zext i16 %.sroa.5189.0.copyload.i.i.i to i64
  %i.go = add nuw nsw i64 %i.gm, %i.gn            ; 3 uses
  %.sroa.14.32.insert.ext209 = zext i32 %.sroa.0.0.lcssa.i.i.i.i.i to i64
  %.sroa.14.36.insert.ext213 = zext i16 %.sroa.0.0.lcssa.i.i.i.i7.i to i64
  %.sroa.14.36.insert.shift214 = shl nuw nsw i64 %.sroa.14.36.insert.ext213, 32
  %.sroa.14.36.insert.insert216 = or disjoint i64 %.sroa.14.36.insert.shift214, %.sroa.14.32.insert.ext209
  %.sroa.14.38.insert.ext = zext i16 %.sroa.0.0.lcssa.i.i.i.i14.i to i64
  %.sroa.14.38.insert.shift = shl nuw i64 %.sroa.14.38.insert.ext, 48
  %.sroa.14.38.insert.insert = or disjoint i64 %.sroa.14.38.insert.shift, %.sroa.14.36.insert.insert216
  %i.gp = icmp eq i32 %i.cn, 0                    ; 2 uses
  %spec.select = select i1 %i.gp, i64 %.sroa.14.38.insert.insert, i64 %.sroa.4202.0.ph ; 2 uses
  %spec.select316 = select i1 %i.gp, i64 %i.go, i64 %.sroa.0200.0.ph ; 2 uses
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %.loopexit332, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak
  %i.gr = extractvalue { ptr, i64 } %i.gg, 0
  %i.gs = extractvalue { ptr, i64 } %i.gg, 1
  %i.gt = add nuw nsw i32 %i.cn, 1
  br label %bb.al

bb.al:                                            ; preds = %.backedge843, %.lr.ph
  %.sroa.4.0.i95.i.i = phi i64 [ %i.gs, %.lr.ph ], [ %.sroa.4.0.i.i.i, %.backedge843 ] ; 4 uses
  %.sroa.0.0.i93.i.i = phi ptr [ %i.gr, %.lr.ph ], [ %.sroa.0.0.i.i.i, %.backedge843 ] ; 4 uses
  %i.gu = phi i64 [ %i.go, %.lr.ph ], [ %i.ix, %.backedge843 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6247)
  call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6249
  store ptr %.sroa.0.0.i93.i.i, ptr %i.o, align 8, !noalias !6250
  store i64 %.sroa.4.0.i95.i.i, ptr %i.ca, align 8, !noalias !6250
  %i.gv = icmp samesign ult i64 %.sroa.4.0.i95.i.i, 4
  br i1 %i.gv, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i93.i.i, i64 %.sroa.4.0.i95.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6249
  store ptr %.sroa.0.0.i93.i.i, ptr %i.n, align 8, !noalias !6249
  store ptr %i.gw, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6249
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6249
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.0.08.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hj, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.gx = phi i64 [ %.pr.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ 4, %bb.am ]
  %i.gy = add i64 %i.gx, -1
  store i64 %i.gy, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6251, !noalias !6252
  %i.gz = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.noexc161 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc161:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = extractvalue { i1, i8 } %i.gz, 0
  br i1 %i.ha, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.noexc161
  %i.hb = extractvalue { i1, i8 } %i.gz, 1
  %i.hc = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6253, !noalias !6252, !noundef !5 ; 2 uses
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6253, !noalias !6252
  %i.he = zext i8 %i.hb to i32
  %i.hf = trunc i64 %i.hc to i32
  %i.hg = shl i32 %i.hf, 3
  %i.hh = and i32 %i.hg, 24
  %i.hi = shl nuw i32 %i.he, %i.hh
  %i.hj = add i32 %i.hi, %.sroa.0.08.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.pr.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !6251, !noalias !6252 ; 2 uses
  %i.hk = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hk, label %bb.ap, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6249
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an, %.noexc161
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hj, %bb.an ], [ %.sroa.0.08.i.i.i.i.i.i.i.i.i.i, %.noexc161 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6249
  %i.hl = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, i64 noundef 4)
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc162:                                        ; preds = %bb.ap
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0      ; 5 uses
  %i.hn = extractvalue { ptr, i64 } %i.hl, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6249
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ], !noalias !6254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6255
  store ptr %i.hm, ptr %i.m, align 8, !noalias !6256
  store i64 %i.hn, ptr %i.cb, align 8, !noalias !6256
  %i.ho = icmp samesign ult i64 %i.hn, 4
  br i1 %i.ho, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.noexc162
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6255
  store ptr %i.hm, ptr %i.l, align 8, !noalias !6255
  store ptr %i.hp, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i63.i.i.i.i.i.i, align 8, !noalias !6255
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i65.i.i.i.i.i.i, align 8, !noalias !6255
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i66.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i66.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.0.08.i.i.i.i67.i.i.i.i.i.i = phi i32 [ %i.ic, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.hq = phi i64 [ %.pr.i.i.i.i71.i.i.i.i.i.i, %bb.ar ], [ 4, %bb.aq ]
  %i.hr = add i64 %i.hq, -1
  store i64 %i.hr, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i64.i.i.i.i.i.i, align 8, !alias.scope !6257, !noalias !6258
  %i.hs = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.noexc163 unwind label %.loopexit ; 2 uses

.noexc163:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i66.i.i.i.i.i.i
  %i.ht = extractvalue { i1, i8 } %i.hs, 0
  br i1 %i.ht, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.noexc163
  %i.hu = extractvalue { i1, i8 } %i.hs, 1
  %i.hv = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i65.i.i.i.i.i.i, align 8, !alias.scope !6259, !noalias !6258, !noundef !5 ; 2 uses
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %.sroa.2.0..sroa_idx.i.i.i.i65.i.i.i.i.i.i, align 8, !alias.scope !6259, !noalias !6258
  %i.hx = zext i8 %i.hu to i32
  %i.hy = trunc i64 %i.hv to i32
  %i.hz = shl i32 %i.hy, 3
  %i.ia = and i32 %i.hz, 24
  %i.ib = shl nuw i32 %i.hx, %i.ia
  %i.ic = add i32 %i.ib, %.sroa.0.08.i.i.i.i67.i.i.i.i.i.i ; 2 uses
  %.pr.i.i.i.i71.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i64.i.i.i.i.i.i, align 8, !alias.scope !6257, !noalias !6258 ; 2 uses
  %i.id = icmp eq i64 %.pr.i.i.i.i71.i.i.i.i.i.i, 0
  br i1 %i.id, label %bb.at, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i66.i.i.i.i.i.i

bb.as:                                            ; preds = %.noexc162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6255
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar, %.noexc163
  %.sroa.0.0.lcssa.i.i.i.i68.i.i.i.i.i.i = phi i32 [ %i.ic, %bb.ar ], [ %.sroa.0.08.i.i.i.i67.i.i.i.i.i.i, %.noexc163 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6255
  %i.ie = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, i64 noundef 4)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc164:                                        ; preds = %bb.at
  %i.if = extractvalue { ptr, i64 } %i.ie, 0      ; 2 uses
  %i.ig = extractvalue { ptr, i64 } %i.ie, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.if) ], !noalias !6254
  %i.ih = icmp sgt i32 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ih, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.noexc164
  %i.ii = and i32 %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i, 2147483647
  %i.ij = zext nneg i32 %i.ii to i64              ; 3 uses
  %i.ik = icmp ult i64 %i.bg, %i.ij
  br i1 %i.ik, label %bb.av, label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.au
  %i.il = sub nuw i64 %i.bg, %i.ij
  %i.im = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6260
  invoke void @_RINvXsj_NtCsgkljs906P5b_3nom8internalINtB6_7FlatMapINtB6_3MapINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB1V_EENCNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2A_2PE20parse_rsrc_dir_entry000tENCB2q_s_0ENCINvNtB8_5multi11length_dataB1V_B1Y_BN_E0EINtB6_6ParserB1V_E7processINtB6_7OutputMNtB6_4EmitB5o_NtB6_9StreamingEEB2G_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.im, i64 noundef %i.il)
          to label %.noexc165 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc165:                                        ; preds = %.sink.split.i.i.i.i.i.i
  %i.in = load i64, ptr %i.p, align 8, !range !11, !noalias !6260, !noundef !5
  %i.io = trunc nuw i64 %i.in to i1               ; 3 uses
  %i.ip = load ptr, ptr %i.cc, align 8, !noalias !6260, !nonnull !5
  %i.iq = load i64, ptr %i.cd, align 8, !noalias !6260
  %.sroa.016.0.ph.i.i.i.i.i.i = select i1 %i.io, i32 0, i32 2
  %.sroa.521.sroa.2.0.ph.i.i.i.i.i.i = select i1 %i.io, i64 undef, i64 %i.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6260
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = select i1 %i.io, i64 undef, i64 %i.ir
  br label %bb.av

bb.av:                                            ; preds = %.noexc165, %bb.au, %.noexc164
  %.sroa.016.0.i.i.i.i.i.i = phi i32 [ 1, %.noexc164 ], [ 0, %bb.au ], [ %.sroa.016.0.ph.i.i.i.i.i.i, %.noexc165 ]
  %.sroa.521.sroa.0.0.i.i.i.i.i.i = phi i64 [ undef, %.noexc164 ], [ undef, %bb.au ], [ %i.is, %.noexc165 ]
  %.sroa.521.sroa.2.0.i.i.i.i.i.i = phi i64 [ undef, %.noexc164 ], [ undef, %bb.au ], [ %.sroa.521.sroa.2.0.ph.i.i.i.i.i.i, %.noexc165 ]
  %i.it = and i32 %.sroa.0.0.lcssa.i.i.i.i68.i.i.i.i.i.i, 2147483647
  %.sroa.0.0.lcssa.i.i.i.i68.lobit.i.i.i.i.i.i = lshr i32 %.sroa.0.0.lcssa.i.i.i.i68.i.i.i.i.i.i, 31
  %i.iu = zext nneg i32 %i.it to i64
  store i32 %.sroa.016.0.i.i.i.i.i.i, ptr %.sroa.6.i.i.i, align 8, !alias.scope !6261, !noalias !6262
  br label %_RNvYNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBa_2PE20parse_rsrc_dir_entry0INtNtCsgkljs906P5b_3nom8internal6ParserRShE5parseBg_.exit.i.i.i

bb.aw:                                            ; preds = %bb.as, %bb.ao
  %.sroa.12.0.ph.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i95.i.i, %bb.ao ], [ %i.hn, %bb.as ]
  %.sroa.7.0.ph.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i93.i.i, %bb.ao ], [ %i.hm, %bb.as ]
  %i.iv = ptrtoint ptr %.sroa.7.0.ph.i.i.i.i.i.i to i64
  store i32 24, ptr %.sroa.20.i.i.i, align 8, !alias.scope !6261, !noalias !6262
  br label %_RNvYNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBa_2PE20parse_rsrc_dir_entry0INtNtCsgkljs906P5b_3nom8internal6ParserRShE5parseBg_.exit.i.i.i

_RNvYNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBa_2PE20parse_rsrc_dir_entry0INtNtCsgkljs906P5b_3nom8internal6ParserRShE5parseBg_.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %.sroa.18.0.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i.i.i.i, %bb.aw ], [ %i.iu, %bb.av ] ; 4 uses
  %.sroa.14.0.i.i.i = phi i64 [ %i.iv, %bb.aw ], [ %.sroa.521.sroa.2.0.i.i.i.i.i.i, %bb.av ] ; 3 uses
  %.sroa.11.0.i.i.i = phi i64 [ 1, %bb.aw ], [ %.sroa.521.sroa.0.0.i.i.i.i.i.i, %bb.av ] ; 3 uses
  %.sroa.10.0.i.i.i = phi i32 [ undef, %bb.aw ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i, %bb.av ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ undef, %bb.aw ], [ %i.ig, %bb.av ]
  %.sroa.0.0.i.i.i = phi ptr [ undef, %bb.aw ], [ %i.if, %bb.av ] ; 2 uses
  %.sink68.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.6.i.i.i, %bb.aw ], [ %.sroa.20.i.i.i, %bb.av ]
  %.sink.i.i.i.i.i = phi i32 [ -1, %bb.aw ], [ %.sroa.0.0.lcssa.i.i.i.i68.lobit.i.i.i.i.i.i, %bb.av ]
  store i32 %.sink.i.i.i.i.i, ptr %.sink68.i.i.sroa.phi.i.i.i, align 8, !alias.scope !6261, !noalias !6262
  %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i = load i32, ptr %.sroa.6.i.i.i, align 8, !range !6219, !noalias !6263, !noundef !5 ; 5 uses
  %i.iw = icmp eq i32 %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.16..i.i.i, -1
  br i1 %i.iw, label %_RNvXs9_NtCsgkljs906P5b_3nom10combinatorINtB5_14ParserIteratorRShINtNtB7_5error5ErrorBX_ENCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1w_2PE20parse_rsrc_dir_entry0ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1C_.exit.thread39.i.i, label %bb.ax

_RNvXs9_NtCsgkljs906P5b_3nom10combinatorINtB5_14ParserIteratorRShINtNtB7_5error5ErrorBX_ENCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB1w_2PE20parse_rsrc_dir_entry0ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1C_.exit.thread39.i.i: ; preds = %_RNvYNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBa_2PE20parse_rsrc_dir_entry0INtNtCsgkljs906P5b_3nom8internal6ParserRShE5parseBg_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i.i)
  br label %.loopexit332

bb.ax:                                            ; preds = %_RNvYNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBa_2PE20parse_rsrc_dir_entry0INtNtCsgkljs906P5b_3nom8internal6ParserRShE5parseBg_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  %.sroa.20.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.i.0..sroa.20.i.i.0..sroa.20.i.i.0..sroa.20.i.0..sroa.20.i.0..sroa.20.0..sroa.20.0..sroa.20.16.copyload.i.i.i = load i32, ptr %.sroa.20.i.i.i, align 8, !noalias !6263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i.i)
  %i.ix = add nsw i64 %i.gu, -1                   ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %.sroa.18.0.i.i.i, 0
  %i.iy = icmp ult i64 %.sroa.18.0.i.i.i, %i.bg
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.iy, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.ay, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser16ResourceDirEntryQNCNvMs0_B1e_NtB1e_2PE15parse_resources0E0B1k_.exit.thread.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser16ResourceDirEntryQNCNvMs0_B1e_NtB1e_2PE15parse_resources0E0B1k_.exit.thread.i.i.i: ; preds = %bb.ax
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet5parse:bb.a
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [704 x i8], align 8              ; 79 uses
  %i.ac = alloca [704 x i8], align 8              ; 54 uses
  %.sroa.5316 = alloca i64, align 8               ; 5 uses
  %.sroa.17 = alloca i64, align 8                 ; 5 uses
  %i.ad = alloca [568 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.ae = alloca [568 x i8], align 8              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE5parse(ptr noalias nofree noundef nonnull sret([568 x i8]) align 8 captures(none) dereferenceable(568) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.af = load i64, ptr %i.ad, align 8, !range !7, !noundef !5 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(528) %.sroa.5140.0..sroa_idx, i64 528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.af, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !8089, !noundef !5 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 112
  br i1 %i.al, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !noalias !8089, !nonnull !5, !noundef !5
  %i.ao = add i64 %i.ak, -112
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8089
  invoke void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_dir_entry(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ao)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.aq = load i64, ptr %i.x, align 8, !range !12, !noalias !8089, !noundef !5
  %.not.i = icmp eq i64 %i.aq, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8089
  br label %bb.ae

bb.f:                                             ; preds = %.noexc
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.427.0.copyload.i = load i32, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8089
  %i.ar = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !8089, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !8089, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 5 uses
  %i.av = load i32, ptr %i.au, align 8, !noalias !8089, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 92 ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !8089, !noundef !5
  %i.ay = invoke { i32, i32 } @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe7rva2off13rva_to_offsetNtNtB4_6parser7SectionEB8_(i32 noundef %.sroa.427.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ar, i64 noundef %i.at, i32 noundef %i.av, i32 noundef %i.ax)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc231:                                        ; preds = %bb.f
  %i.az = extractvalue { i32, i32 } %i.ay, 0
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %.noexc231
  %i.bb = extractvalue { i32, i32 } %i.ay, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 152 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !8089, !noundef !5 ; 3 uses
  %i.be = zext i32 %i.bb to i64                   ; 3 uses
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.ae, label %bb.h

.thread384:                                       ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %.body
  %.pn222 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit400, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit403, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit405, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit408, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit410, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit413, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser2PEEBJ_(ptr noalias nofree noundef align 8 dereferenceable(568) %i.ae) #28
          to label %bb.db unwind label %bb.cb

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i268
  %lpad.loopexit400 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i264
  %lpad.loopexit403 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i255
  %lpad.loopexit405 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i
  %lpad.loopexit408 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %lpad.loopexit410 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i
  %lpad.loopexit413 = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.f, %bb.l, %bb.q, %bb.u, %.noexc237, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ag, %bb.ah, %bb.ak, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit246, %bb.as, %bb.ay, %bb.bc, %bb.bg, %.noexc285, %bb.bi, %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread384

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !8089, !nonnull !5, !noundef !5 ; 2 uses
  %i.bi = sub nuw i64 %i.bd, %i.be                ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8090
  store ptr %i.bj, ptr %i.u, align 8, !noalias !8091
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !noalias !8091
  %i.bl = icmp samesign ult i64 %i.bi, 4
  br i1 %i.bl, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8090
  store ptr %i.bj, ptr %i.t, align 8, !noalias !8090
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bm, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !8090
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !8090
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.08.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.bn = phi i64 [ %.pr.i.i.i.i.i.i, %bb.j ], [ 4, %bb.i ]
  %i.bo = add i64 %i.bn, -1
  store i64 %i.bo, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8092, !noalias !8093
  %i.bp = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc232:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i
  %i.bq = extractvalue { i1, i8 } %i.bp, 0
  br i1 %i.bq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc232
  %i.br = extractvalue { i1, i8 } %i.bp, 1
  %i.bs = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8094, !noalias !8093, !noundef !5 ; 2 uses
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8094, !noalias !8093
  %i.bu = zext i8 %i.br to i32
  %i.bv = trunc i64 %i.bs to i32
  %i.bw = shl i32 %i.bv, 3
  %i.bx = and i32 %i.bw, 24
  %i.by = shl nuw i32 %i.bu, %i.bx
  %i.bz = add i32 %i.by, %.sroa.0.08.i.i.i.i.i.i  ; 2 uses
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8092, !noalias !8093 ; 2 uses
  %i.ca = icmp eq i64 %.pr.i.i.i.i.i.i, 0
  br i1 %i.ca, label %bb.l, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8090
  br label %bb.da

bb.l:                                             ; preds = %bb.j, %.noexc232
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.j ], [ %.sroa.0.08.i.i.i.i.i.i, %.noexc232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8090
  %i.cb = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef 4)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc233:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8090
  %i.cc = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i.i.i, 72
  br i1 %i.cc, label %bb.m, label %bb.da

bb.m:                                             ; preds = %.noexc233
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1      ; 4 uses
  %i.ce = extractvalue { ptr, i64 } %i.cb, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8095
  store ptr %i.ce, ptr %i.s, align 8, !noalias !8096
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.cd, ptr %i.cf, align 8, !noalias !8096
  %i.cg = icmp samesign ult i64 %i.cd, 2
  br i1 %i.cg, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8095
  store ptr %i.ce, ptr %i.r, align 8, !noalias !8095
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ch, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8095
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8095
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.ci = phi i64 [ %.pr.i.i.i.i.i, %bb.o ], [ 2, %bb.n ]
  %i.cj = add i64 %i.ci, -1
  store i64 %i.cj, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8097, !noalias !8098
  %i.ck = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc234:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.cl = extractvalue { i1, i8 } %i.ck, 0
  br i1 %i.cl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.noexc234
  %i.cm = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8099, !noalias !8098, !noundef !5
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8099, !noalias !8098
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8097, !noalias !8098 ; 2 uses
  %i.co = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.co, label %bb.q, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8095
  br label %bb.da

bb.q:                                             ; preds = %bb.o, %.noexc234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8095
  %i.cp = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, i64 noundef 2)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc235:                                        ; preds = %bb.q
  %i.cq = extractvalue { ptr, i64 } %i.cp, 0      ; 5 uses
  %i.cr = extractvalue { ptr, i64 } %i.cp, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8095
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ], !noalias !8100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8101
  store ptr %i.cq, ptr %i.q, align 8, !noalias !8102
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !noalias !8102
  %i.ct = icmp samesign ult i64 %i.cr, 2
  br i1 %i.ct, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.noexc235
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8101
  store ptr %i.cq, ptr %i.p, align 8, !noalias !8101
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.cu, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i, align 8, !noalias !8101
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !noalias !8101
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i: ; preds = %bb.s, %bb.r
  %i.cv = phi i64 [ %.pr.i.i.i.i9.i, %bb.s ], [ 2, %bb.r ]
  %i.cw = add i64 %i.cv, -1
  store i64 %i.cw, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i, align 8, !alias.scope !8103, !noalias !8104
  %i.cx = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc236:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i
  %i.cy = extractvalue { i1, i8 } %i.cx, 0
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.noexc236
  %i.cz = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !alias.scope !8105, !noalias !8104, !noundef !5
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !alias.scope !8105, !noalias !8104
  %.pr.i.i.i.i9.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i, align 8, !alias.scope !8103, !noalias !8104 ; 2 uses
  %i.db = icmp eq i64 %.pr.i.i.i.i9.i, 0
  br i1 %i.db, label %bb.u, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i

bb.t:                                             ; preds = %.noexc235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8101
  br label %bb.da

bb.u:                                             ; preds = %bb.s, %.noexc236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8101
  %i.dc = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 2)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc237:                                        ; preds = %bb.u
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0      ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ], !noalias !8100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8106
  invoke void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_dir_entry(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.de)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %.noexc237
  %i.df = load i64, ptr %i.o, align 8, !range !12, !noalias !8106, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.df, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.034.0.copyload.i.i = load i64, ptr %i.dg, align 8, !noalias !8106 ; 3 uses
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.435.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !8106 ; 2 uses
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.435.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !8106 ; 4 uses
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %.sroa.435.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !8106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8106
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc238
  %.sink4.i.i = inttoptr i64 %.sroa.034.0.copyload.i.i to ptr
  %.sroa.41.sroa.13.0.extract.shift57.i = and i32 %.sroa.435.sroa.4.0.copyload.i.i, -65536
  br label %bb.da

bb.w:                                             ; preds = %.noexc238
  %i.dh = icmp ne i64 %.sroa.034.0.copyload.i.i, 0
  call void @llvm.assume(i1 %i.dh)
  %.sink4.i168.i = inttoptr i64 %.sroa.034.0.copyload.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8107
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink4.i168.i, i64 noundef %.sroa.435.sroa.0.0.copyload.i.i)
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc239:                                        ; preds = %bb.w
  %i.di = load i64, ptr %i.w, align 8, !range !12, !noalias !8107, !noundef !5 ; 2 uses
  %.not308.i.i.i = icmp eq i64 %i.di, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0229.0.copyload.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !8107 ; 2 uses
  %.sroa.4230.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4230.0.copyload.i.i.i = load i64, ptr %.sroa.4230.0..sroa_idx.i.i.i, align 8, !noalias !8107 ; 2 uses
  br i1 %.not308.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc239
  %.sroa.6241.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.6241.0.copyload.i.i.i = load i32, ptr %.sroa.6241.0..sroa_idx.i.i.i, align 8, !noalias !8107 ; 2 uses
  %.sroa.7242.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %.sroa.7242.0.copyload.i.i.i = load i32, ptr %.sroa.7242.0..sroa_idx.i.i.i, align 4, !noalias !8107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8107
  %.sroa.41.sroa.13.0.extract.shift59.i = and i32 %.sroa.6241.0.copyload.i.i.i, -65536
  br label %bb.da

bb.y:                                             ; preds = %.noexc239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8107
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0229.0.copyload.i.i.i, i64 noundef %.sroa.4230.0.copyload.i.i.i)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %bb.y
  %i.dk = load i64, ptr %i.v, align 8, !range !12, !noalias !8107, !noundef !5 ; 2 uses
  %.not309.i.i.i = icmp eq i64 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0248.0.copyload.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !8107 ; 2 uses
  %.sroa.4249.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4249.0.copyload.i.i.i = load i64, ptr %.sroa.4249.0..sroa_idx.i.i.i, align 8, !noalias !8107 ; 2 uses
  br i1 %.not309.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc240
  %.sroa.6260.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.6260.0.copyload.i.i.i = load i32, ptr %.sroa.6260.0..sroa_idx.i.i.i, align 8, !noalias !8107 ; 2 uses
  %.sroa.7261.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %.sroa.7261.0.copyload.i.i.i = load i32, ptr %.sroa.7261.0..sroa_idx.i.i.i, align 4, !noalias !8107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8107
  %.sroa.41.sroa.13.0.extract.shift61.i = and i32 %.sroa.6260.0.copyload.i.i.i, -65536
  br label %bb.da

bb.aa:                                            ; preds = %.noexc240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8108
  invoke void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_dir_entry(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0248.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4249.0.copyload.i.i.i)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %bb.aa
  %i.dm = load i64, ptr %i.n, align 8, !range !12, !noalias !8108, !noundef !5 ; 2 uses
  %.not.i14.i = icmp eq i64 %i.dm, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.034.0.copyload.i15.i = load i64, ptr %i.dn, align 8, !noalias !8108 ; 3 uses
  %.sroa.435.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.435.sroa.0.0.copyload.i17.i = load i64, ptr %.sroa.435.0..sroa_idx.i16.i, align 8, !noalias !8108 ; 2 uses
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.435.sroa.4.0.copyload.i19.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i18.i, align 8, !noalias !8108 ; 4 uses
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.sroa.435.sroa.5.0.copyload.i21.i = load i32, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i20.i, align 4, !noalias !8108 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8108
  br i1 %.not.i14.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc241
  %.sink4.i22.i = inttoptr i64 %.sroa.034.0.copyload.i15.i to ptr
  %.sroa.41.sroa.13.0.extract.shift63.i = and i32 %.sroa.435.sroa.4.0.copyload.i19.i, -65536
  br label %bb.da

end_hunk_9
begin_hunk_10_@_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB5_6Dotnet5parse:bb.a
  %.sink4.i22170.i = inttoptr i64 %.sroa.034.0.copyload.i15.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8109
  invoke void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_dir_entry(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink4.i22170.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.435.sroa.0.0.copyload.i17.i)
          to label %.noexc242 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc242:                                        ; preds = %bb.ac
  %i.dp = load i64, ptr %i.m, align 8, !range !12, !noalias !8109, !noundef !5 ; 2 uses
  %.not.i24.i = icmp eq i64 %i.dp, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.034.0.copyload.i25.i = load i64, ptr %i.dq, align 8, !noalias !8109 ; 2 uses
  %.sroa.435.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.435.sroa.0.0.copyload.i27.i = load i64, ptr %.sroa.435.0..sroa_idx.i26.i, align 8, !noalias !8109
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.435.sroa.4.0.copyload.i29.i = load i32, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i28.i, align 8, !noalias !8109 ; 2 uses
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %.sroa.435.sroa.5.0.copyload.i31.i = load i32, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i30.i, align 4, !noalias !8109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8109
  br i1 %.not.i24.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.noexc242
  %.sink4.i32.i = inttoptr i64 %.sroa.034.0.copyload.i25.i to ptr
  %.sroa.41.sroa.13.0.extract.shift65.i = and i32 %.sroa.435.sroa.4.0.copyload.i29.i, -65536
  br label %bb.da

bb.ae:                                            ; preds = %bb.g, %.noexc231, %bb.e, %bb.c
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.dr, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.da, %bb.cz, %bb.al, %bb.aj, %bb.ae
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser2PEEBJ_(ptr noalias nofree noundef align 8 dereferenceable(568) %i.ae)
  br label %bb.ca

bb.ag:                                            ; preds = %.noexc242
  %i.ds = icmp ne i64 %.sroa.034.0.copyload.i25.i, 0
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.du = load i64, ptr %i.as, align 8, !noundef !5
  %i.dv = load i32, ptr %i.au, align 8, !noundef !5
  %i.dw = load i32, ptr %i.aw, align 4, !noundef !5
  %i.dx = invoke { i32, i32 } @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe7rva2off13rva_to_offsetNtNtB4_6parser7SectionEB8_(i32 noundef %.sroa.435.sroa.4.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dt, i64 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dw)
          to label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit: ; preds = %bb.ag
  %i.dy = extractvalue { i32, i32 } %i.dx, 0
  %i.dz = extractvalue { i32, i32 } %i.dx, 1
  %i.ea = trunc i32 %i.dy to i1
  br i1 %i.ea, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit
  %i.eb = zext i32 %.sroa.435.sroa.5.0.copyload.i.i to i64
  %i.ec = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.ed = load i64, ptr %i.as, align 8, !noundef !5
  %i.ee = load i32, ptr %i.au, align 8, !noundef !5
  %i.ef = load i32, ptr %i.aw, align 4, !noundef !5
  %i.eg = invoke { i32, i32 } @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe7rva2off13rva_to_offsetNtNtB4_6parser7SectionEB8_(i32 noundef %.sroa.435.sroa.4.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ed, i32 noundef %i.ee, i32 noundef %i.ef)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc244:                                        ; preds = %bb.ah
  %i.eh = extractvalue { i32, i32 } %i.eg, 0
  %i.ei = trunc i32 %i.eh to i1
  br i1 %i.ei, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.noexc244
  %i.ej = extractvalue { i32, i32 } %i.eg, 1
  %i.ek = zext i32 %i.ej to i64                   ; 4 uses
  %i.el = load i64, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  br i1 %i.em, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.en, align 8
  br label %bb.af

bb.ak:                                            ; preds = %bb.ai
  %i.eo = add nuw nsw i64 %i.ek, %i.eb
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.el, i64 %i.eo) ; 2 uses
  %i.ep = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = sub nuw nsw i64 %..i.i, %i.ek           ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ek ; 3 uses
  %i.es = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.et = load i64, ptr %i.as, align 8, !noundef !5
  %i.eu = load i32, ptr %i.au, align 8, !noundef !5
  %i.ev = load i32, ptr %i.aw, align 4, !noundef !5
  %i.ew = invoke { i32, i32 } @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe7rva2off13rva_to_offsetNtNtB4_6parser7SectionEB8_(i32 noundef %.sroa.435.sroa.4.0.copyload.i19.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.es, i64 noundef %i.et, i32 noundef %i.eu, i32 noundef %i.ev)
          to label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %.noexc244, %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ex, align 8
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.4206.0..sroa_idx, align 8
  br label %bb.af

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit246: ; preds = %bb.ak
  %i.ey = extractvalue { i32, i32 } %i.ew, 0
  %i.ez = extractvalue { i32, i32 } %i.ew, 1
  %i.fa = zext i32 %.sroa.435.sroa.5.0.copyload.i21.i to i64
  %i.fb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.fc = load i64, ptr %i.as, align 8, !noundef !5
  %i.fd = load i32, ptr %i.au, align 8, !noundef !5
  %i.fe = load i32, ptr %i.aw, align 4, !noundef !5
  %i.ff = invoke { i32, i32 } @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe7rva2off13rva_to_offsetNtNtB4_6parser7SectionEB8_(i32 noundef %.sroa.435.sroa.4.0.copyload.i19.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fb, i64 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.fe)
          to label %.noexc250 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc250:                                        ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE13rva_to_offset.exit246
  %i.fg = extractvalue { i32, i32 } %i.ff, 0
  %i.fh = trunc i32 %i.fg to i1
  br i1 %i.fh, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.noexc250
  %i.fi = extractvalue { i32, i32 } %i.ff, 1
  %i.fj = zext i32 %i.fi to i64                   ; 4 uses
  %i.fk = load i64, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  br i1 %i.fl, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = add nuw nsw i64 %i.fj, %i.fa
  %..i.i249 = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fm)
  %i.fn = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.fo = sub nuw nsw i64 %..i.i249, %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.noexc250
  %.sroa.4.0.i247 = phi i64 [ undef, %.noexc250 ], [ %i.fo, %bb.an ], [ undef, %bb.am ]
  %.sroa.0.0.i248 = phi ptr [ null, %.noexc250 ], [ %i.fp, %bb.an ], [ null, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5316)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.experimental.noalias.scope.decl(metadata !8110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8111
  store ptr %i.er, ptr %i.i, align 8, !noalias !8112
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.eq, ptr %i.fq, align 8, !noalias !8112
  %i.fr = icmp samesign ult i64 %i.eq, 4
  br i1 %i.fr, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 %..i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8111
  store ptr %i.er, ptr %i.h, align 8, !noalias !8111
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i252 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.fs, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i252, align 8, !noalias !8111
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i254 = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i254, align 8, !noalias !8111
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i255

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i255: ; preds = %bb.aq, %bb.ap
  %.sroa.0.08.i.i.i.i.i.i256 = phi i32 [ %i.gf, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %i.ft = phi i64 [ %.pr.i.i.i.i.i.i277, %bb.aq ], [ 4, %bb.ap ]
  %i.fu = add i64 %i.ft, -1
  store i64 %i.fu, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i253, align 8, !alias.scope !8113, !noalias !8114
  %i.fv = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc278 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc278:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i255
  %i.fw = extractvalue { i1, i8 } %i.fv, 0
  br i1 %i.fw, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc278
  %i.fx = extractvalue { i1, i8 } %i.fv, 1
  %i.fy = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i254, align 8, !alias.scope !8115, !noalias !8114, !noundef !5 ; 2 uses
  %i.fz = add i64 %i.fy, 1
  store i64 %i.fz, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i254, align 8, !alias.scope !8115, !noalias !8114
  %i.ga = zext i8 %i.fx to i32
  %i.gb = trunc i64 %i.fy to i32
  %i.gc = shl i32 %i.gb, 3
  %i.gd = and i32 %i.gc, 24
  %i.ge = shl nuw i32 %i.ga, %i.gd
  %i.gf = add i32 %i.ge, %.sroa.0.08.i.i.i.i.i.i256 ; 2 uses
  %.pr.i.i.i.i.i.i277 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i253, align 8, !alias.scope !8113, !noalias !8114 ; 2 uses
  %i.gg = icmp eq i64 %.pr.i.i.i.i.i.i277, 0
  br i1 %i.gg, label %bb.as, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i255

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8111
  br label %bb.at

bb.as:                                            ; preds = %bb.aq, %.noexc278
  %.sroa.0.0.lcssa.i.i.i.i.i.i257 = phi i32 [ %i.gf, %bb.aq ], [ %.sroa.0.08.i.i.i.i.i.i256, %.noexc278 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8111
  %i.gh = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef 4)
          to label %.noexc279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc279:                                        ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8111
  %i.gi = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i.i.i257, 1112167234
  br i1 %i.gi, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc279, %bb.ar
  %.sroa.17.0.ph.i = phi i16 [ 45, %.noexc279 ], [ 24, %bb.ar ]
  %i.gj = ptrtoint ptr %i.er to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1y_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB29_6Dotnet19parse_metadata_root0mEINvB14_6le_u16B1y_B1B_EB3x_B11_INtB6_6MapResINtB6_7AndThenINtB6_7FlatMapIBB_B11_NCB23_s_0mENCINvNtB8_5multi11length_dataB1y_B1B_B4H_E0ENCINvNtNtB8_5bytes8complete9take_tillNCB23_s0_0B1y_B1B_E0ENvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8EB3x_INtB55_11LengthCountIBB_B3x_NCB23_s1_0tENvB25_19parse_stream_headerB1B_EEINtB6_6ParserB1y_E7processINtB6_7OutputMNtB6_4EmitB9k_NtB6_9StreamingEEB2f_.exit.i.thread.i

bb.au:                                            ; preds = %.noexc279
  %i.gk = extractvalue { ptr, i64 } %i.gh, 1      ; 4 uses
  %i.gl = extractvalue { ptr, i64 } %i.gh, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8116
  store ptr %i.gl, ptr %i.g, align 8, !noalias !8117
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.gk, ptr %i.gm, align 8, !noalias !8117
  %i.gn = icmp samesign ult i64 %i.gk, 2
  br i1 %i.gn, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8116
  store ptr %i.gl, ptr %i.f, align 8, !noalias !8116
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i261 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.go, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i261, align 8, !noalias !8116
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i262 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i263 = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i263, align 8, !noalias !8116
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i264

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i264: ; preds = %bb.aw, %bb.av
  %i.gp = phi i64 [ %.pr.i.i.i.i.i276, %bb.aw ], [ 2, %bb.av ]
  %i.gq = add i64 %i.gp, -1
  store i64 %i.gq, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i262, align 8, !alias.scope !8118, !noalias !8119
  %i.gr = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc280 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc280:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i264
  %i.gs = extractvalue { i1, i8 } %i.gr, 0
  br i1 %i.gs, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.noexc280
  %i.gt = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i263, align 8, !alias.scope !8120, !noalias !8119, !noundef !5
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i263, align 8, !alias.scope !8120, !noalias !8119
  %.pr.i.i.i.i.i276 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i262, align 8, !alias.scope !8118, !noalias !8119 ; 2 uses
  %i.gv = icmp eq i64 %.pr.i.i.i.i.i276, 0
  br i1 %i.gv, label %bb.ay, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i264

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8116
  %i.gw = ptrtoint ptr %i.gl to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1y_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB29_6Dotnet19parse_metadata_root0mEINvB14_6le_u16B1y_B1B_EB3x_B11_INtB6_6MapResINtB6_7AndThenINtB6_7FlatMapIBB_B11_NCB23_s_0mENCINvNtB8_5multi11length_dataB1y_B1B_B4H_E0ENCINvNtNtB8_5bytes8complete9take_tillNCB23_s0_0B1y_B1B_E0ENvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8EB3x_INtB55_11LengthCountIBB_B3x_NCB23_s1_0tENvB25_19parse_stream_headerB1B_EEINtB6_6ParserB1y_E7processINtB6_7OutputMNtB6_4EmitB9k_NtB6_9StreamingEEB2f_.exit.i.thread.i

bb.ay:                                            ; preds = %bb.aw, %.noexc280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8116
  %i.gx = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 2)
          to label %.noexc281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc281:                                        ; preds = %bb.ay
  %i.gy = extractvalue { ptr, i64 } %i.gx, 0      ; 5 uses
  %i.gz = extractvalue { ptr, i64 } %i.gx, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gy) ], !noalias !8121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8122
  store ptr %i.gy, ptr %i.e, align 8, !noalias !8123
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !noalias !8123
  %i.hb = icmp samesign ult i64 %i.gz, 2
  br i1 %i.hb, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.noexc281
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8122
  store ptr %i.gy, ptr %i.d, align 8, !noalias !8122
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i265 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.hc, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i265, align 8, !noalias !8122
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i266 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i3.i267 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i267, align 8, !noalias !8122
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i268

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i268: ; preds = %bb.ba, %bb.az
  %i.hd = phi i64 [ %.pr.i.i.i.i9.i275, %bb.ba ], [ 2, %bb.az ]
  %i.he = add i64 %i.hd, -1
  store i64 %i.he, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i266, align 8, !alias.scope !8124, !noalias !8125
  %i.hf = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc282 unwind label %.loopexit.split-lp.loopexit

.noexc282:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i268
  %i.hg = extractvalue { i1, i8 } %i.hf, 0
  br i1 %i.hg, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.noexc282
  %i.hh = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i267, align 8, !alias.scope !8126, !noalias !8125, !noundef !5
  %i.hi = add i64 %i.hh, 1
  store i64 %i.hi, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i267, align 8, !alias.scope !8126, !noalias !8125
  %.pr.i.i.i.i9.i275 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i266, align 8, !alias.scope !8124, !noalias !8125 ; 2 uses
  %i.hj = icmp eq i64 %.pr.i.i.i.i9.i275, 0
  br i1 %i.hj, label %bb.bc, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i268

bb.bb:                                            ; preds = %.noexc281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8122
  %i.hk = ptrtoint ptr %i.gy to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1y_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB29_6Dotnet19parse_metadata_root0mEINvB14_6le_u16B1y_B1B_EB3x_B11_INtB6_6MapResINtB6_7AndThenINtB6_7FlatMapIBB_B11_NCB23_s_0mENCINvNtB8_5multi11length_dataB1y_B1B_B4H_E0ENCINvNtNtB8_5bytes8complete9take_tillNCB23_s0_0B1y_B1B_E0ENvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8EB3x_INtB55_11LengthCountIBB_B3x_NCB23_s1_0tENvB25_19parse_stream_headerB1B_EEINtB6_6ParserB1y_E7processINtB6_7OutputMNtB6_4EmitB9k_NtB6_9StreamingEEB2f_.exit.i.thread.i

bb.bc:                                            ; preds = %bb.ba, %.noexc282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8122
  %i.hl = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef 2)
          to label %.noexc283 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc283:                                        ; preds = %bb.bc
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0      ; 5 uses
  %i.hn = extractvalue { ptr, i64 } %i.hl, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ], !noalias !8121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8127
  store ptr %i.hm, ptr %i.c, align 8, !noalias !8128
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !noalias !8128
  %i.hp = icmp samesign ult i64 %i.hn, 4
  br i1 %i.hp, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.noexc283
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8127
  store ptr %i.hm, ptr %i.b, align 8, !noalias !8127
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.hq, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i14.i, align 8, !noalias !8127
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i16.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !noalias !8127
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i: ; preds = %bb.be, %bb.bd
  %i.hr = phi i64 [ %.pr.i.i.i.i21.i, %bb.be ], [ 4, %bb.bd ]
  %i.hs = add i64 %i.hr, -1
  store i64 %i.hs, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i, align 8, !alias.scope !8129, !noalias !8130
  %i.ht = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc284 unwind label %.loopexit

.noexc284:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i
  %i.hu = extractvalue { i1, i8 } %i.ht, 0
  br i1 %i.hu, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.noexc284
  %i.hv = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !alias.scope !8131, !noalias !8130, !noundef !5
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !alias.scope !8131, !noalias !8130
  %.pr.i.i.i.i21.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i, align 8, !alias.scope !8129, !noalias !8130 ; 2 uses
  %i.hx = icmp eq i64 %.pr.i.i.i.i21.i, 0
  br i1 %i.hx, label %bb.bg, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i

bb.bf:                                            ; preds = %.noexc283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8127
  %i.hy = ptrtoint ptr %i.hm to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1y_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB29_6Dotnet19parse_metadata_root0mEINvB14_6le_u16B1y_B1B_EB3x_B11_INtB6_6MapResINtB6_7AndThenINtB6_7FlatMapIBB_B11_NCB23_s_0mENCINvNtB8_5multi11length_dataB1y_B1B_B4H_E0ENCINvNtNtB8_5bytes8complete9take_tillNCB23_s0_0B1y_B1B_E0ENvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8EB3x_INtB55_11LengthCountIBB_B3x_NCB23_s1_0tENvB25_19parse_stream_headerB1B_EEINtB6_6ParserB1y_E7processINtB6_7OutputMNtB6_4EmitB9k_NtB6_9StreamingEEB2f_.exit.i.thread.i

bb.bg:                                            ; preds = %bb.be, %.noexc284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8127
  %i.hz = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 4)
          to label %.noexc285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc285:                                        ; preds = %bb.bg
  %i.ia = extractvalue { ptr, i64 } %i.hz, 0      ; 2 uses
  %i.ib = extractvalue { ptr, i64 } %i.hz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8127
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ia) ], !noalias !8121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8132
  invoke void @_RINvXsh_NtCsgkljs906P5b_3nom8internalINtB6_6MapResINtB6_7AndThenINtB6_7FlatMapINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB2c_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB2N_6Dotnet19parse_metadata_roots_0mENCINvNtB8_5multi11length_dataB2c_B2f_B1e_E0ENCINvNtNtB8_5bytes8complete9take_tillNCB2H_s0_0B2c_B2f_E0ENvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8EINtB6_6ParserB2c_E7processINtB6_7OutputMNtB6_4EmitB7i_NtB6_9StreamingEEB2T_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ia, i64 noundef %i.ib)
          to label %.noexc286 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc286:                                        ; preds = %.noexc285
  %i.ic = load i64, ptr %i.l, align 8, !range !11, !noalias !8132, !noundef !5
  %i.id = trunc nuw i64 %i.ic to i1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0215.0.copyload.i.i.i = load ptr, ptr %i.ie, align 8, !noalias !8132 ; 2 uses
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4216.0.copyload.i.i.i = load i64, ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !8132 ; 2 uses
  %.sroa.5217.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.5217.0.copyload.i.i.i = load ptr, ptr %.sroa.5217.0..sroa_idx.i.i.i, align 8, !noalias !8132 ; 2 uses
  %.sroa.6218.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6218.0.copyload.i.i.i = load i64, ptr %.sroa.6218.0..sroa_idx.i.i.i, align 8, !noalias !8132 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8132
  br i1 %i.id, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.noexc286
  %i.if = ptrtoint ptr %.sroa.0215.0.copyload.i.i.i to i64
  %i.ig = ptrtoint ptr %.sroa.5217.0.copyload.i.i.i to i64
  %.sroa.30.sroa.0.sroa.0.0.extract.trunc55.i = trunc i64 %.sroa.6218.0.copyload.i.i.i to i16
  %.sroa.30.sroa.0.sroa.12.0.extract.shift66188.i = lshr i64 %.sroa.6218.0.copyload.i.i.i, 16
  %.sroa.30.sroa.0.sroa.12.0.extract.trunc67.i = trunc i64 %.sroa.30.sroa.0.sroa.12.0.extract.shift66188.i to i16
  %.sroa.30.sroa.15.0.extract.shift45.i = lshr i64 %.sroa.6218.0.copyload.i.i.i, 32
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1y_EENCNvMs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parserNtB29_6Dotnet19parse_metadata_root0mEINvB14_6le_u16B1y_B1B_EB3x_B11_INtB6_6MapResINtB6_7AndThenINtB6_7FlatMapIBB_B11_NCB23_s_0mENCINvNtB8_5multi11length_dataB1y_B1B_B4H_E0ENCINvNtNtB8_5bytes8complete9take_tillNCB23_s0_0B1y_B1B_E0ENvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8EB3x_INtB55_11LengthCountIBB_B3x_NCB23_s1_0tENvB25_19parse_stream_headerB1B_EEINtB6_6ParserB1y_E7processINtB6_7OutputMNtB6_4EmitB9k_NtB6_9StreamingEEB2f_.exit.i.thread.i

bb.bi:                                            ; preds = %.noexc286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8132
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u16RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0215.0.copyload.i.i.i, i64 noundef %.sroa.4216.0.copyload.i.i.i)
          to label %.noexc287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc287:                                        ; preds = %bb.bi
  %i.ih = load i64, ptr %i.k, align 8, !range !12, !noalias !8132, !noundef !5 ; 2 uses
  %.not257.i.i.i = icmp eq i64 %i.ih, -1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0223.0.copyload.i.i.i = load ptr, ptr %i.ii, align 8, !noalias !8132 ; 2 uses
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4224.0.copyload.i.i.i = load i64, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !8132 ; 2 uses
  br i1 %.not257.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc287
  %.sroa.6235.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6235.0.copyload.i.i.i = load i16, ptr %.sroa.6235.0..sroa_idx.i.i.i, align 8, !noalias !8132
end_hunk_10
begin_hunk_11_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE19get_delayed_imports:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMNtNtCskKLDkoKarTP_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecTReIB1c_NtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser12ImportedFuncEEEEE15get_or_try_initNCINvB2_11get_or_initNCNvMs_B1S_NtB1S_2PE19get_delayed_imports0E0zEB1Y_(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %0) ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([568 x i8]) align 8 captures(none) dereferenceable(568) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [88 x i8], align 8               ; 22 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 3 uses
  %i.ae = alloca [24 x i8], align 8               ; 13 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [32 x i8], align 8               ; 8 uses
  %i.bh = alloca [32 x i8], align 8               ; 8 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [32 x i8], align 8               ; 8 uses
  %i.bk = alloca [32 x i8], align 8               ; 8 uses
  %i.bl = alloca [32 x i8], align 8               ; 8 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 8 uses
  %i.bp = alloca [32 x i8], align 8               ; 8 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [32 x i8], align 8               ; 8 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.10251.i = alloca i64, align 8            ; 7 uses
  %.sroa.15252.i = alloca i64, align 8            ; 7 uses
  %.sroa.20253.i = alloca i64, align 8            ; 6 uses
  %i.bu = alloca [32 x i8], align 8               ; 7 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [16 x i8], align 8               ; 6 uses
  %i.by = alloca [32 x i8], align 8               ; 7 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 10 uses
  %i.cd = alloca [32 x i8], align 8               ; 10 uses
  %i.ce = alloca [32 x i8], align 8               ; 9 uses
  %i.cf = alloca [32 x i8], align 8               ; 9 uses
  %i.cg = alloca [16 x i8], align 8               ; 6 uses
  %i.ch = alloca [88 x i8], align 8               ; 29 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [32 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 6 uses
  %i.co = alloca [32 x i8], align 8               ; 7 uses
  %i.cp = alloca [16 x i8], align 8               ; 6 uses
  %i.cq = alloca [32 x i8], align 8               ; 9 uses
  %i.cr = alloca [48 x i8], align 8               ; 11 uses
  %i.cs = alloca [24 x i8], align 8               ; 9 uses
  %i.ct = alloca [32 x i8], align 8               ; 10 uses
  %i.cu = alloca [32 x i8], align 8               ; 10 uses
  %i.cv = alloca [48 x i8], align 8               ; 11 uses
  %i.cw = alloca [24 x i8], align 8               ; 10 uses
  %i.cx = alloca [32 x i8], align 8               ; 10 uses
  %i.cy = alloca [32 x i8], align 8               ; 10 uses
  %i.cz = alloca [32 x i8], align 8               ; 10 uses
  %i.da = alloca [32 x i8], align 8               ; 10 uses
  %i.db = alloca [32 x i8], align 8               ; 10 uses
  %i.dc = alloca [32 x i8], align 8               ; 10 uses
  %i.dd = alloca [32 x i8], align 8               ; 10 uses
  %i.de = alloca [32 x i8], align 8               ; 10 uses
  %i.df = alloca [32 x i8], align 8               ; 10 uses
  %i.dg = alloca [568 x i8], align 8              ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !9972
  store ptr %1, ptr %i.cp, align 8, !noalias !9973
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %2, ptr %i.dh, align 8, !noalias !9973
  %i.di = icmp samesign ult i64 %2, 2
  br i1 %i.di, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !9972
  store ptr %1, ptr %i.co, align 8, !noalias !9972
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.dj, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9972
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !9972
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.08.i.i.i.i.i.i = phi i16 [ %i.dw, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.dk = phi i64 [ %.pr.i.i.i.i.i.i, %bb.c ], [ 2, %bb.b ]
  %i.dl = add i64 %i.dk, -1
  store i64 %i.dl, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !9974, !noalias !9975
  %i.dm = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.co), !noalias !9976 ; 2 uses
  %i.dn = extractvalue { i1, i8 } %i.dm, 0
  br i1 %i.dn, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i
  %i.do = extractvalue { i1, i8 } %i.dm, 1
  %i.dp = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !9977, !noalias !9975, !noundef !5 ; 2 uses
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !9977, !noalias !9975
  %i.dr = zext i8 %i.do to i16
  %i.ds = trunc i64 %i.dp to i16
  %i.dt = shl i16 %i.ds, 3
  %i.du = and i16 %i.dt, 8
  %i.dv = shl nuw i16 %i.dr, %i.du
  %i.dw = add i16 %i.dv, %.sroa.0.08.i.i.i.i.i.i  ; 2 uses
  %.pr.i.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !9974, !noalias !9975 ; 2 uses
  %i.dx = icmp eq i64 %.pr.i.i.i.i.i.i, 0
  br i1 %i.dx, label %bb.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !9972
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i16 [ %i.dw, %bb.c ], [ %.sroa.0.08.i.i.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !9972
  %i.dy = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cp, i64 noundef 2), !noalias !9978 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !9972
  %i.dz = icmp eq i16 %.sroa.0.0.lcssa.i.i.i.i.i.i, 23117
  br i1 %i.dz, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.18119.0.ph.i = phi i16 [ 45, %bb.e ], [ 24, %bb.d ]
  %i.ea = ptrtoint ptr %1 to i64
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.eb = extractvalue { ptr, i64 } %i.dy, 1      ; 4 uses
  %i.ec = extractvalue { ptr, i64 } %i.dy, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !9979
  store ptr %i.ec, ptr %i.cn, align 8, !noalias !9980
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.eb, ptr %i.ed, align 8, !noalias !9980
  %i.ee = icmp samesign ult i64 %i.eb, 2
  br i1 %i.ee, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !9979
  store ptr %i.ec, ptr %i.cm, align 8, !noalias !9979
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ef, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9979
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9979
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.08.i.i.i.i.i = phi i16 [ %i.es, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.eg = phi i64 [ %.pr.i.i.i.i.i, %bb.i ], [ 2, %bb.h ]
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9981, !noalias !9982
  %i.ei = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cm), !noalias !9983 ; 2 uses
  %i.ej = extractvalue { i1, i8 } %i.ei, 0
  br i1 %i.ej, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.ek = extractvalue { i1, i8 } %i.ei, 1
  %i.el = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9984, !noalias !9982, !noundef !5 ; 2 uses
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9984, !noalias !9982
  %i.en = zext i8 %i.ek to i16
  %i.eo = trunc i64 %i.el to i16
  %i.ep = shl i16 %i.eo, 3
  %i.eq = and i16 %i.ep, 8
  %i.er = shl nuw i16 %i.en, %i.eq
  %i.es = add i16 %i.er, %.sroa.0.08.i.i.i.i.i    ; 2 uses
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9981, !noalias !9982 ; 2 uses
  %i.et = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.et, label %bb.k, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !9979
  %i.eu = ptrtoint ptr %i.ec to i64
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread

bb.k:                                             ; preds = %bb.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i16 [ %i.es, %bb.i ], [ %.sroa.0.08.i.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !9979
  %i.ev = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cn, i64 noundef 2), !noalias !9985 ; 2 uses
  %i.ew = extractvalue { ptr, i64 } %i.ev, 0      ; 5 uses
  %i.ex = extractvalue { ptr, i64 } %i.ev, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !9979
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ], !noalias !9986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !9987
  store ptr %i.ew, ptr %i.cl, align 8, !noalias !9988
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !noalias !9988
  %i.ez = icmp samesign ult i64 %i.ex, 2
  br i1 %i.ez, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !9987
  store ptr %i.ew, ptr %i.ck, align 8, !noalias !9987
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.fa, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !noalias !9987
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i4.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i5.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i5.i, align 8, !noalias !9987
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i6.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i6.i: ; preds = %bb.m, %bb.l
  %.sroa.0.08.i.i.i.i7.i = phi i16 [ %i.fn, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.fb = phi i64 [ %.pr.i.i.i.i11.i, %bb.m ], [ 2, %bb.l ]
  %i.fc = add i64 %i.fb, -1
  store i64 %i.fc, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i4.i, align 8, !alias.scope !9989, !noalias !9990
  %i.fd = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ck), !noalias !9991 ; 2 uses
  %i.fe = extractvalue { i1, i8 } %i.fd, 0
  br i1 %i.fe, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i6.i
  %i.ff = extractvalue { i1, i8 } %i.fd, 1
  %i.fg = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i5.i, align 8, !alias.scope !9992, !noalias !9990, !noundef !5 ; 2 uses
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %.sroa.2.0..sroa_idx.i.i.i.i5.i, align 8, !alias.scope !9992, !noalias !9990
  %i.fi = zext i8 %i.ff to i16
  %i.fj = trunc i64 %i.fg to i16
  %i.fk = shl i16 %i.fj, 3
  %i.fl = and i16 %i.fk, 8
  %i.fm = shl nuw i16 %i.fi, %i.fl
  %i.fn = add i16 %i.fm, %.sroa.0.08.i.i.i.i7.i   ; 2 uses
  %.pr.i.i.i.i11.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i4.i, align 8, !alias.scope !9989, !noalias !9990 ; 2 uses
  %i.fo = icmp eq i64 %.pr.i.i.i.i11.i, 0
  br i1 %i.fo, label %bb.o, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i6.i

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !9987
  %i.fp = ptrtoint ptr %i.ew to i64
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread

bb.o:                                             ; preds = %bb.m, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i6.i
  %.sroa.0.0.lcssa.i.i.i.i8.i = phi i16 [ %i.fn, %bb.m ], [ %.sroa.0.08.i.i.i.i7.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i6.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !9987
  %i.fq = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cl, i64 noundef 2), !noalias !9993 ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0      ; 5 uses
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !9987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ], !noalias !9986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !9994
  store ptr %i.fr, ptr %i.cj, align 8, !noalias !9995
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.fs, ptr %i.ft, align 8, !noalias !9995
  %i.fu = icmp samesign ult i64 %i.fs, 2
  br i1 %i.fu, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !9994
  store ptr %i.fr, ptr %i.ci, align 8, !noalias !9994
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i16.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.fv, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !noalias !9994
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i18.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i18.i, align 8, !noalias !9994
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i19.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i19.i: ; preds = %bb.q, %bb.p
  %.sroa.0.08.i.i.i.i20.i = phi i16 [ %i.gi, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.fw = phi i64 [ %.pr.i.i.i.i24.i, %bb.q ], [ 2, %bb.p ]
  %i.fx = add i64 %i.fw, -1
  store i64 %i.fx, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i17.i, align 8, !alias.scope !9996, !noalias !9997
  %i.fy = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci), !noalias !9998 ; 2 uses
  %i.fz = extractvalue { i1, i8 } %i.fy, 0
  br i1 %i.fz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i19.i
  %i.ga = extractvalue { i1, i8 } %i.fy, 1
  %i.gb = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i18.i, align 8, !alias.scope !9999, !noalias !9997, !noundef !5 ; 2 uses
  %i.gc = add i64 %i.gb, 1
  store i64 %i.gc, ptr %.sroa.2.0..sroa_idx.i.i.i.i18.i, align 8, !alias.scope !9999, !noalias !9997
  %i.gd = zext i8 %i.ga to i16
  %i.ge = trunc i64 %i.gb to i16
  %i.gf = shl i16 %i.ge, 3
  %i.gg = and i16 %i.gf, 8
  %i.gh = shl nuw i16 %i.gd, %i.gg
  %i.gi = add i16 %i.gh, %.sroa.0.08.i.i.i.i20.i  ; 2 uses
  %.pr.i.i.i.i24.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i17.i, align 8, !alias.scope !9996, !noalias !9997 ; 2 uses
  %i.gj = icmp eq i64 %.pr.i.i.i.i24.i, 0
  br i1 %i.gj, label %bb.s, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i19.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !9994
  %i.gk = ptrtoint ptr %i.fr to i64
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread

bb.s:                                             ; preds = %bb.q, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i19.i
  %.sroa.0.0.lcssa.i.i.i.i21.i = phi i16 [ %i.gi, %bb.q ], [ %.sroa.0.08.i.i.i.i20.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i19.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !9994
  %i.gl = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cj, i64 noundef 2), !noalias !10000 ; 2 uses
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0      ; 5 uses
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !9994
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ], !noalias !9986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10001
  store ptr %i.gm, ptr %i.h, align 8, !noalias !10002
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !noalias !10002
  %i.gp = icmp samesign ult i64 %i.gn, 2
  br i1 %i.gp, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10001
  store ptr %i.gm, ptr %i.g, align 8, !noalias !10001
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.gq, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !10001
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !10001
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.0.08.i.i.i.i = phi i16 [ %i.hd, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.gr = phi i64 [ %.pr.i.i.i.i190, %bb.u ], [ 2, %bb.t ]
  %i.gs = add i64 %i.gr, -1
  store i64 %i.gs, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10003, !noalias !10004
  %i.gt = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g), !noalias !10005 ; 2 uses
  %i.gu = extractvalue { i1, i8 } %i.gt, 0
  br i1 %i.gu, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.gv = extractvalue { i1, i8 } %i.gt, 1
  %i.gw = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10006, !noalias !10004, !noundef !5 ; 2 uses
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10006, !noalias !10004
  %i.gy = zext i8 %i.gv to i16
  %i.gz = trunc i64 %i.gw to i16
  %i.ha = shl i16 %i.gz, 3
end_hunk_11
begin_hunk_12_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE5parse:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10013
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.bo, %bb.bl
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.jj, %bb.bo ], [ %i.jh, %bb.bl ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.6235.0..sroa_idx.i) #28
          to label %common.resume unwind label %bb.br, !noalias !10013

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.bm
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.6235.0..sroa_idx.i)
          to label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit unwind label %bb.bp, !noalias !10013

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.6235.0..sroa_idx.i)
          to label %common.resume unwind label %bb.bq, !noalias !10013

bb.bq:                                            ; preds = %bb.bp
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10013
  unreachable

bb.br:                                            ; preds = %.body.i.i.i.i
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10013
  unreachable

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.6235.0..sroa_idx.i), !noalias !10013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !10011
  %i.jn = icmp eq ptr %.sroa.0679.0.copyload.i.i.i, null
  br i1 %i.jn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit
  %.sroa.6.0437 = phi i64 [ %.sroa.28.0330.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.4680.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.25.sroa.0.0436 = phi i16 [ %.sroa.25.sroa.0.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.5505.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.25.sroa.7.0435 = phi i16 [ %.sroa.25.sroa.7.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.5524.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.22233.sroa.0.0434 = phi i16 [ %.sroa.86.sroa.0.0326.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.5467.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.22233.sroa.7.0433 = phi i16 [ %.sroa.86.sroa.24.0325.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.5486.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.17231.sroa.0.0432 = phi i16 [ %.sroa.17231.sroa.0.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.0.0.lcssa.i.i.i.i8.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.17231.sroa.7.0431 = phi i16 [ %.sroa.17231.sroa.7.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.0.0.lcssa.i.i.i.i21.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.17231.sroa.8.0430 = phi i16 [ %.sroa.17231.sroa.8.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.0.0.lcssa.i.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.17231.sroa.9.0429 = phi i16 [ %.sroa.17231.sroa.9.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.5448.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.9.sroa.0.0428 = phi i32 [ %.sroa.9.sroa.0.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.5681.0.copyload.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.9.sroa.7265.0427 = phi i16 [ %.sroa.9.sroa.7265.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ 23117, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.9.sroa.10.0426 = phi i16 [ %.sroa.9.sroa.10.0.extract.trunc, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit.thread ], [ %.sroa.0.0.lcssa.i.i.i.i.i, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit ]
  %.sroa.17231.sroa.9.0.insert.ext261 = zext i16 %.sroa.17231.sroa.9.0429 to i64
  %.sroa.17231.sroa.9.0.insert.shift262 = shl nuw i64 %.sroa.17231.sroa.9.0.insert.ext261, 48
  %.sroa.17231.sroa.8.0.insert.ext257 = zext i16 %.sroa.17231.sroa.8.0430 to i64
  %.sroa.17231.sroa.8.0.insert.shift258 = shl nuw nsw i64 %.sroa.17231.sroa.8.0.insert.ext257, 32
  %.sroa.17231.sroa.8.0.insert.insert260 = or disjoint i64 %.sroa.17231.sroa.9.0.insert.shift262, %.sroa.17231.sroa.8.0.insert.shift258
  %.sroa.17231.sroa.7.0.insert.ext253 = zext i16 %.sroa.17231.sroa.7.0431 to i64
  %.sroa.17231.sroa.7.0.insert.shift254 = shl nuw nsw i64 %.sroa.17231.sroa.7.0.insert.ext253, 16
  %.sroa.17231.sroa.7.0.insert.insert256 = or disjoint i64 %.sroa.17231.sroa.8.0.insert.insert260, %.sroa.17231.sroa.7.0.insert.shift254
  %.sroa.17231.sroa.0.0.insert.ext250 = zext i16 %.sroa.17231.sroa.0.0432 to i64
  %.sroa.17231.sroa.0.0.insert.insert252 = or disjoint i64 %.sroa.17231.sroa.7.0.insert.insert256, %.sroa.17231.sroa.0.0.insert.ext250
  %i.jo = insertelement <2 x i16> poison, i16 %.sroa.22233.sroa.7.0433, i64 0
  %i.jp = insertelement <2 x i16> %i.jo, i16 %.sroa.25.sroa.7.0435, i64 1
  %i.jq = zext <2 x i16> %i.jp to <2 x i32>
  %i.jr = insertelement <2 x i16> poison, i16 %.sroa.22233.sroa.0.0434, i64 0
  %i.js = insertelement <2 x i16> %i.jr, i16 %.sroa.25.sroa.0.0436, i64 1
  %i.jt = zext <2 x i16> %i.js to <2 x i32>
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0437, ptr %i.ju, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.9.sroa.0.0428, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.9.sroa.7265.0427, ptr %.sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx, align 4
  %.sroa.457.sroa.4.sroa.4.0..sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %.sroa.9.sroa.10.0426, ptr %.sroa.457.sroa.4.sroa.4.0..sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.sroa_idx, align 2
  %.sroa.457.sroa.4.sroa.5.0..sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.17231.sroa.0.0.insert.insert252, ptr %.sroa.457.sroa.4.sroa.5.0..sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.457.sroa.4.sroa.6.0..sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jv = shl nuw <2 x i32> %i.jq, splat (i32 16)
  %i.jw = or disjoint <2 x i32> %i.jv, %i.jt
  store <2 x i32> %i.jw, ptr %.sroa.457.sroa.4.sroa.6.0..sroa.457.sroa.4.0..sroa.457.0..sroa_idx.sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jb

bb.bt:                                            ; preds = %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE16parse_dos_header.exit
  %.sroa.17231.sroa.9.0.insert.ext = zext i16 %.sroa.5448.0.copyload.i.i.i to i64
  %.sroa.17231.sroa.9.0.insert.shift = shl nuw i64 %.sroa.17231.sroa.9.0.insert.ext, 48
  %.sroa.17231.sroa.8.0.insert.ext = zext i16 %.sroa.0.0.lcssa.i.i.i.i to i64
  %.sroa.17231.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.17231.sroa.8.0.insert.ext, 32
  %.sroa.17231.sroa.8.0.insert.insert = or disjoint i64 %.sroa.17231.sroa.9.0.insert.shift, %.sroa.17231.sroa.8.0.insert.shift
  %.sroa.17231.sroa.7.0.insert.ext = zext i16 %.sroa.0.0.lcssa.i.i.i.i21.i to i64
  %.sroa.17231.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.17231.sroa.7.0.insert.ext, 16
  %.sroa.17231.sroa.7.0.insert.insert = or disjoint i64 %.sroa.17231.sroa.8.0.insert.insert, %.sroa.17231.sroa.7.0.insert.shift
  %.sroa.17231.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.lcssa.i.i.i.i8.i to i64
  %.sroa.17231.sroa.0.0.insert.insert = or disjoint i64 %.sroa.17231.sroa.7.0.insert.insert, %.sroa.17231.sroa.0.0.insert.ext
  %.sroa.22233.sroa.7.0.insert.ext = zext i16 %.sroa.5486.0.copyload.i.i.i to i32
  %.sroa.22233.sroa.7.0.insert.shift = shl nuw i32 %.sroa.22233.sroa.7.0.insert.ext, 16
  %.sroa.22233.sroa.0.0.insert.ext = zext i16 %.sroa.5467.0.copyload.i.i.i to i32
  %.sroa.22233.sroa.0.0.insert.insert = or disjoint i32 %.sroa.22233.sroa.7.0.insert.shift, %.sroa.22233.sroa.0.0.insert.ext
  %.sroa.25.sroa.7.0.insert.ext = zext i16 %.sroa.5524.0.copyload.i.i.i to i32
  %.sroa.25.sroa.7.0.insert.shift = shl nuw i32 %.sroa.25.sroa.7.0.insert.ext, 16
  %.sroa.25.sroa.0.0.insert.ext = zext i16 %.sroa.5505.0.copyload.i.i.i to i32
  %.sroa.25.sroa.0.0.insert.insert = or disjoint i32 %.sroa.25.sroa.7.0.insert.shift, %.sroa.25.sroa.0.0.insert.ext
  %i.jx = zext i32 %.sroa.5681.0.copyload.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %1, ptr %i.cg, align 8, !noalias !10014
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %2, ptr %i.jy, align 8, !noalias !10014
  %.not.i.i = icmp samesign ult i64 %2, %i.jx     ; 2 uses
  %i.jz = select i1 %.not.i.i, i64 %2, i64 0
  %.sroa.3.0.i.i = sub nuw nsw i64 %i.jx, %i.jz   ; 4 uses
  br i1 %.not.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ka = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cg, i64 noundef %.sroa.3.0.i.i), !noalias !10015 ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %.sroa.3.0.i.i, %2
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bx, !prof !6

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.3.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26, !noalias !10016
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.kb = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.kc = inttoptr i64 %2 to ptr
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.kd, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kb, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.kc, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 24, ptr %.sroa.673.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jb

bb.bx:                                            ; preds = %bb.bu
  %i.ke = extractvalue { ptr, i64 } %i.ka, 1      ; 7 uses
  %i.kf = extractvalue { ptr, i64 } %i.ka, 0      ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !10017
  store ptr %i.kf, ptr %i.cb, align 8, !noalias !10018
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ke, ptr %i.kg, align 8, !noalias !10018
  %i.kh = icmp samesign ult i64 %i.ke, 4
  br i1 %i.kh, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !10017
  store ptr %i.kf, ptr %i.ca, align 8, !noalias !10017
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.ki, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i.i128, align 8, !noalias !10017
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i129 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i130 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i130, align 8, !noalias !10017
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i131

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i131: ; preds = %bb.bz, %bb.by
  %.sroa.0.08.i.i.i.i.i.i132 = phi i32 [ %i.kv, %bb.bz ], [ 0, %bb.by ] ; 2 uses
  %i.kj = phi i64 [ %.pr.i.i.i.i.i.i152, %bb.bz ], [ 4, %bb.by ]
  %i.kk = add i64 %i.kj, -1
  store i64 %i.kk, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i129, align 8, !alias.scope !10019, !noalias !10020
  %i.kl = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ca), !noalias !10021 ; 2 uses
  %i.km = extractvalue { i1, i8 } %i.kl, 0
  br i1 %i.km, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i131
  %i.kn = extractvalue { i1, i8 } %i.kl, 1
  %i.ko = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i130, align 8, !alias.scope !10022, !noalias !10020, !noundef !5 ; 2 uses
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i130, align 8, !alias.scope !10022, !noalias !10020
  %i.kq = zext i8 %i.kn to i32
  %i.kr = trunc i64 %i.ko to i32
  %i.ks = shl i32 %i.kr, 3
  %i.kt = and i32 %i.ks, 24
  %i.ku = shl nuw i32 %i.kq, %i.kt
  %i.kv = add i32 %i.ku, %.sroa.0.08.i.i.i.i.i.i132 ; 2 uses
  %.pr.i.i.i.i.i.i152 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i.i129, align 8, !alias.scope !10019, !noalias !10020 ; 2 uses
  %i.kw = icmp eq i64 %.pr.i.i.i.i.i.i152, 0
  br i1 %i.kw, label %bb.cb, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i131

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !10017
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_pe_header.exit.thread

bb.cb:                                            ; preds = %bb.bz, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i131
  %.sroa.0.0.lcssa.i.i.i.i.i.i133 = phi i32 [ %i.kv, %bb.bz ], [ %.sroa.0.08.i.i.i.i.i.i132, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i.i131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !10017
  %i.kx = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cb, i64 noundef 4), !noalias !10023 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !10017
  %i.ky = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i.i.i133, 17744
  br i1 %i.ky, label %bb.cc, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_pe_header.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.kz = extractvalue { ptr, i64 } %i.kx, 1      ; 4 uses
  %i.la = extractvalue { ptr, i64 } %i.kx, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !10024
  store ptr %i.la, ptr %i.bz, align 8, !noalias !10025
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.kz, ptr %i.lb, align 8, !noalias !10025
  %i.lc = icmp samesign ult i64 %i.kz, 2
  br i1 %i.lc, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !10024
  store ptr %i.la, ptr %i.by, align 8, !noalias !10024
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ld, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i.i137, align 8, !noalias !10024
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i138 = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i139 = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i139, align 8, !noalias !10024
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i140

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i140: ; preds = %bb.ce, %bb.cd
  %.sroa.0.08.i.i.i.i.i141 = phi i16 [ %i.lq, %bb.ce ], [ 0, %bb.cd ] ; 2 uses
  %i.le = phi i64 [ %.pr.i.i.i.i.i151, %bb.ce ], [ 2, %bb.cd ]
  %i.lf = add i64 %i.le, -1
  store i64 %i.lf, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i138, align 8, !alias.scope !10026, !noalias !10027
  %i.lg = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by), !noalias !10028 ; 2 uses
  %i.lh = extractvalue { i1, i8 } %i.lg, 0
  br i1 %i.lh, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i140
  %i.li = extractvalue { i1, i8 } %i.lg, 1
  %i.lj = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i139, align 8, !alias.scope !10029, !noalias !10027, !noundef !5 ; 2 uses
  %i.lk = add i64 %i.lj, 1
  store i64 %i.lk, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i139, align 8, !alias.scope !10029, !noalias !10027
  %i.ll = zext i8 %i.li to i16
  %i.lm = trunc i64 %i.lj to i16
  %i.ln = shl i16 %i.lm, 3
  %i.lo = and i16 %i.ln, 8
  %i.lp = shl nuw i16 %i.ll, %i.lo
  %i.lq = add i16 %i.lp, %.sroa.0.08.i.i.i.i.i141 ; 2 uses
  %.pr.i.i.i.i.i151 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i138, align 8, !alias.scope !10026, !noalias !10027 ; 2 uses
  %i.lr = icmp eq i64 %.pr.i.i.i.i.i151, 0
  br i1 %i.lr, label %bb.cg, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i140

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !10024
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_pe_header.exit.thread

bb.cg:                                            ; preds = %bb.ce, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i140
  %.sroa.0.0.lcssa.i.i.i.i.i142 = phi i16 [ %i.lq, %bb.ce ], [ %.sroa.0.08.i.i.i.i.i141, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i140 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !10024
  %i.ls = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bz, i64 noundef 2), !noalias !10030 ; 2 uses
  %i.lt = extractvalue { ptr, i64 } %i.ls, 0      ; 5 uses
  %i.lu = extractvalue { ptr, i64 } %i.ls, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !10024
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lt) ], !noalias !10031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !10032
  store ptr %i.lt, ptr %i.bx, align 8, !noalias !10033
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.lu, ptr %i.lv, align 8, !noalias !10033
  %i.lw = icmp samesign ult i64 %i.lu, 2
  br i1 %i.lw, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !10032
  store ptr %i.lt, ptr %i.bw, align 8, !noalias !10032
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.lx, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i1.i, align 8, !noalias !10032
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !noalias !10032
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i: ; preds = %bb.ci, %bb.ch
  %.sroa.0.08.i.i.i.i5.i = phi i16 [ %i.mk, %bb.ci ], [ 0, %bb.ch ] ; 2 uses
  %i.ly = phi i64 [ %.pr.i.i.i.i9.i, %bb.ci ], [ 2, %bb.ch ]
  %i.lz = add i64 %i.ly, -1
  store i64 %i.lz, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i, align 8, !alias.scope !10034, !noalias !10035
  %i.ma = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bw), !noalias !10036 ; 2 uses
  %i.mb = extractvalue { i1, i8 } %i.ma, 0
  br i1 %i.mb, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i
  %i.mc = extractvalue { i1, i8 } %i.ma, 1
  %i.md = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !alias.scope !10037, !noalias !10035, !noundef !5 ; 2 uses
  %i.me = add i64 %i.md, 1
  store i64 %i.me, ptr %.sroa.2.0..sroa_idx.i.i.i.i3.i, align 8, !alias.scope !10037, !noalias !10035
  %i.mf = zext i8 %i.mc to i16
  %i.mg = trunc i64 %i.md to i16
  %i.mh = shl i16 %i.mg, 3
  %i.mi = and i16 %i.mh, 8
  %i.mj = shl nuw i16 %i.mf, %i.mi
  %i.mk = add i16 %i.mj, %.sroa.0.08.i.i.i.i5.i   ; 2 uses
  %.pr.i.i.i.i9.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i2.i, align 8, !alias.scope !10034, !noalias !10035 ; 2 uses
  %i.ml = icmp eq i64 %.pr.i.i.i.i9.i, 0
  br i1 %i.ml, label %bb.ck, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i

bb.cj:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !10032
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_pe_header.exit.thread

bb.ck:                                            ; preds = %bb.ci, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i
  %.sroa.0.0.lcssa.i.i.i.i6.i = phi i16 [ %i.mk, %bb.ci ], [ %.sroa.0.08.i.i.i.i5.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i4.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !10032
  %i.mm = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx, i64 noundef 2), !noalias !10038 ; 2 uses
  %i.mn = extractvalue { ptr, i64 } %i.mm, 0      ; 5 uses
  %i.mo = extractvalue { ptr, i64 } %i.mm, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !10032
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mn) ], !noalias !10031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !10039
  store ptr %i.mn, ptr %i.bv, align 8, !noalias !10040
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.mo, ptr %i.mp, align 8, !noalias !10040
  %i.mq = icmp samesign ult i64 %i.mo, 4
  br i1 %i.mq, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !10039
  store ptr %i.mn, ptr %i.bu, align 8, !noalias !10039
  %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i14.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.mr, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i14.i, align 8, !noalias !10039
  %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i16.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !noalias !10039
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i: ; preds = %bb.cm, %bb.cl
  %.sroa.0.08.i.i.i.i18.i = phi i32 [ %i.ne, %bb.cm ], [ 0, %bb.cl ] ; 2 uses
  %i.ms = phi i64 [ %.pr.i.i.i.i21.i, %bb.cm ], [ 4, %bb.cl ]
  %i.mt = add i64 %i.ms, -1
  store i64 %i.mt, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i, align 8, !alias.scope !10041, !noalias !10042
  %i.mu = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu), !noalias !10043 ; 2 uses
  %i.mv = extractvalue { i1, i8 } %i.mu, 0
  br i1 %i.mv, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i
  %i.mw = extractvalue { i1, i8 } %i.mu, 1
  %i.mx = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !alias.scope !10044, !noalias !10042, !noundef !5 ; 2 uses
  %i.my = add i64 %i.mx, 1
  store i64 %i.my, ptr %.sroa.2.0..sroa_idx.i.i.i.i16.i, align 8, !alias.scope !10044, !noalias !10042
  %i.mz = zext i8 %i.mw to i32
  %i.na = trunc i64 %i.mx to i32
  %i.nb = shl i32 %i.na, 3
  %i.nc = and i32 %i.nb, 24
  %i.nd = shl nuw i32 %i.mz, %i.nc
  %i.ne = add i32 %i.nd, %.sroa.0.08.i.i.i.i18.i  ; 2 uses
  %.pr.i.i.i.i21.i = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i15.i, align 8, !alias.scope !10041, !noalias !10042 ; 2 uses
  %i.nf = icmp eq i64 %.pr.i.i.i.i21.i, 0
  br i1 %i.nf, label %bb.co, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !10039
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_pe_header.exit.thread

bb.co:                                            ; preds = %bb.cm, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i
  %.sroa.0.0.lcssa.i.i.i.i19.i = phi i32 [ %i.ne, %bb.cm ], [ %.sroa.0.08.i.i.i.i18.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i17.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !10039
  %i.ng = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, i64 noundef 4), !noalias !10045 ; 2 uses
  %i.nh = extractvalue { ptr, i64 } %i.ng, 0      ; 2 uses
  %i.ni = extractvalue { ptr, i64 } %i.ng, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !10039
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nh) ], !noalias !10031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !10046
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cf, ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nh, i64 noundef %i.ni), !noalias !10047
  %i.nj = load i64, ptr %i.cf, align 8, !range !12, !noalias !10046, !noundef !5 ; 2 uses
  %.not306.i.i.i = icmp eq i64 %i.nj, -1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.0227.0.copyload.i.i.i = load ptr, ptr %i.nk, align 8, !noalias !10046 ; 2 uses
  %.sroa.4228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.4228.0.copyload.i.i.i = load i64, ptr %.sroa.4228.0..sroa_idx.i.i.i, align 8, !noalias !10046 ; 2 uses
  %.sroa.5229.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.5229.0.copyload.i.i.i = load i32, ptr %.sroa.5229.0..sroa_idx.i.i.i, align 8, !noalias !10046 ; 5 uses
  br i1 %.not306.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.sroa.7240.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %.sroa.7240.0.copyload.i.i.i = load i32, ptr %.sroa.7240.0..sroa_idx.i.i.i, align 4, !noalias !10046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !10046
  %.sroa.41.sroa.0.0.extract.trunc39.i = trunc i32 %.sroa.5229.0.copyload.i.i.i to i16
  %.sroa.41.sroa.13.0.extract.shift49.i = lshr i32 %.sroa.5229.0.copyload.i.i.i, 16
  %.sroa.41.sroa.13.0.extract.trunc50.i = trunc nuw i32 %.sroa.41.sroa.13.0.extract.shift49.i to i16
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB5_2PE15parse_pe_header.exit.thread

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !10046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !10046
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB16_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ce, ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0227.0.copyload.i.i.i, i64 noundef %.sroa.4228.0.copyload.i.i.i), !noalias !10047
  %i.nl = load i64, ptr %i.ce, align 8, !range !12, !noalias !10046, !noundef !5 ; 2 uses
  %.not307.i.i.i = icmp eq i64 %i.nl, -1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.0246.0.copyload.i.i.i = load ptr, ptr %i.nm, align 8, !noalias !10046 ; 2 uses
  %.sroa.4247.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.4247.0.copyload.i.i.i = load i64, ptr %.sroa.4247.0..sroa_idx.i.i.i, align 8, !noalias !10046 ; 2 uses
  %.sroa.5248.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.5248.0.copyload.i.i.i = load i32, ptr %.sroa.5248.0..sroa_idx.i.i.i, align 8, !noalias !10046 ; 5 uses
  br i1 %.not307.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.7259.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %.sroa.7259.0.copyload.i.i.i = load i32, ptr %.sroa.7259.0..sroa_idx.i.i.i, align 4, !noalias !10046
end_hunk_12
begin_hunk_13_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO16parse_macho_file:bb.a
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [7 x i8], align 8                ; 11 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 8 uses
  %i.bw = alloca [32 x i8], align 8               ; 9 uses
  %i.bx = alloca [32 x i8], align 8               ; 9 uses
  %i.by = alloca [32 x i8], align 8               ; 6 uses
  %i.bz = alloca [32 x i8], align 8               ; 8 uses
  %i.ca = alloca [32 x i8], align 8               ; 9 uses
  %i.cb = alloca [32 x i8], align 8               ; 9 uses
  %i.cc = alloca [32 x i8], align 8               ; 9 uses
  %i.cd = alloca [32 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [2 x i8], align 1                ; 5 uses
  %i.cg = alloca [48 x i8], align 8               ; 12 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [40 x i8], align 8               ; 8 uses
  %i.cj = alloca [88 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 7 uses
  %i.cl = alloca [136 x i8], align 8              ; 10 uses
  %i.cm = alloca [136 x i8], align 8              ; 9 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [2 x i8], align 1                ; 6 uses
  %i.cq = alloca [40 x i8], align 8               ; 17 uses
  %i.cr = alloca [3 x i8], align 1                ; 7 uses
  %i.cs = alloca [48 x i8], align 8               ; 8 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 8 uses
  %i.cw = alloca [16 x i8], align 8               ; 6 uses
  %i.cx = alloca [24 x i8], align 8               ; 8 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [32 x i8], align 8               ; 8 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [32 x i8], align 8               ; 8 uses
  %i.dc = alloca [4 x i8], align 4                ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [40 x i8], align 8               ; 7 uses
  %i.df = alloca [32 x i8], align 8               ; 7 uses
  %i.dg = alloca [40 x i8], align 8               ; 7 uses
  %i.dh = alloca [32 x i8], align 8               ; 7 uses
  %i.di = alloca [32 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 8 uses
  %i.dk = alloca [32 x i8], align 8               ; 6 uses
  %i.dl = alloca [32 x i8], align 8               ; 8 uses
  %i.dm = alloca [32 x i8], align 8               ; 6 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [32 x i8], align 8               ; 6 uses
  %i.dp = alloca [32 x i8], align 8               ; 8 uses
  %i.dq = alloca [48 x i8], align 8               ; 7 uses
  %i.dr = alloca [32 x i8], align 8               ; 8 uses
  %i.ds = alloca [32 x i8], align 8               ; 8 uses
  %i.dt = alloca [32 x i8], align 8               ; 8 uses
  %i.du = alloca [40 x i8], align 8               ; 7 uses
  %i.dv = alloca [32 x i8], align 8               ; 8 uses
  %i.dw = alloca [32 x i8], align 8               ; 8 uses
  %i.dx = alloca [32 x i8], align 8               ; 8 uses
  %i.dy = alloca [32 x i8], align 8               ; 7 uses
  %i.dz = alloca [32 x i8], align 8               ; 6 uses
  %i.ea = alloca [32 x i8], align 8               ; 8 uses
  %i.eb = alloca [32 x i8], align 8               ; 8 uses
  %i.ec = alloca [32 x i8], align 8               ; 8 uses
  %i.ed = alloca [32 x i8], align 8               ; 6 uses
  %i.ee = alloca [32 x i8], align 8               ; 8 uses
  %i.ef = alloca [32 x i8], align 8               ; 8 uses
  %i.eg = alloca [32 x i8], align 8               ; 8 uses
  %i.eh = alloca [32 x i8], align 8               ; 8 uses
  %i.ei = alloca [32 x i8], align 8               ; 8 uses
  %i.ej = alloca [32 x i8], align 8               ; 8 uses
  %i.ek = alloca [32 x i8], align 8               ; 8 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  %i.em = alloca [32 x i8], align 8               ; 8 uses
  %i.en = alloca [32 x i8], align 8               ; 6 uses
  %i.eo = alloca [32 x i8], align 8               ; 8 uses
  %i.ep = alloca [32 x i8], align 8               ; 8 uses
  %i.eq = alloca [32 x i8], align 8               ; 8 uses
  %i.er = alloca [32 x i8], align 8               ; 8 uses
  %i.es = alloca [32 x i8], align 8               ; 8 uses
  %i.et = alloca [32 x i8], align 8               ; 8 uses
  %i.eu = alloca [32 x i8], align 8               ; 8 uses
  %i.ev = alloca [32 x i8], align 8               ; 8 uses
  %i.ew = alloca [32 x i8], align 8               ; 8 uses
  %i.ex = alloca [32 x i8], align 8               ; 8 uses
  %i.ey = alloca [32 x i8], align 8               ; 8 uses
  %i.ez = alloca [32 x i8], align 8               ; 8 uses
  %i.fa = alloca [32 x i8], align 8               ; 8 uses
  %i.fb = alloca [32 x i8], align 8               ; 8 uses
  %i.fc = alloca [32 x i8], align 8               ; 8 uses
  %i.fd = alloca [40 x i8], align 8               ; 7 uses
  %i.fe = alloca [32 x i8], align 8               ; 6 uses
  %i.ff = alloca [32 x i8], align 8               ; 8 uses
  %i.fg = alloca [32 x i8], align 8               ; 7 uses
  %i.fh = alloca [32 x i8], align 8               ; 8 uses
  %i.fi = alloca [32 x i8], align 8               ; 7 uses
  %i.fj = alloca [48 x i8], align 8               ; 7 uses
  %i.fk = alloca [2 x i8], align 1                ; 6 uses
  %i.fl = alloca [6 x i8], align 8                ; 8 uses
  %i.fm = alloca [8 x i8], align 8                ; 5 uses
  %i.fn = alloca [10 x i8], align 1               ; 14 uses
  %i.fo = alloca [2 x i8], align 1                ; 6 uses
  %i.fp = alloca [2 x i8], align 1                ; 6 uses
  %i.fq = alloca [2 x i8], align 1                ; 6 uses
  %i.fr = alloca [16 x i8], align 1               ; 20 uses
  %i.fs = alloca [4 x i8], align 4                ; 8 uses
  %i.ft = alloca [1 x i8], align 1                ; 5 uses
  %i.fu = alloca [24 x i8], align 8               ; 5 uses
  %i.fv = alloca [1 x i8], align 1                ; 4 uses
  %i.fw = alloca [32 x i8], align 8               ; 5 uses
  %i.fx = alloca [4 x i8], align 4                ; 8 uses
  %i.fy = alloca [1 x i8], align 1                ; 5 uses
  %i.fz = alloca [88 x i8], align 8               ; 4 uses
  %i.ga = alloca [104 x i8], align 8              ; 4 uses
  %i.gb = alloca [32 x i8], align 8               ; 5 uses
  %i.gc = alloca [2 x i8], align 1                ; 6 uses
  %i.gd = alloca [2 x i8], align 1                ; 6 uses
  %i.ge = alloca [24 x i8], align 8               ; 6 uses
  %i.gf = alloca [16 x i8], align 8               ; 6 uses
  %i.gg = alloca [32 x i8], align 8               ; 8 uses
  %i.gh = alloca [32 x i8], align 8               ; 9 uses
  %i.gi = alloca [32 x i8], align 8               ; 9 uses
  %i.gj = alloca [32 x i8], align 8               ; 9 uses
  %i.gk = alloca [32 x i8], align 8               ; 9 uses
  %i.gl = alloca [32 x i8], align 8               ; 9 uses
  %i.gm = alloca [32 x i8], align 8               ; 9 uses
  %i.gn = alloca [200 x i8], align 8              ; 9 uses
  %i.go = alloca [48 x i8], align 8               ; 9 uses
  %i.gp = alloca [120 x i8], align 8              ; 14 uses
  %i.gq = alloca [56 x i8], align 8               ; 18 uses
  %i.gr = alloca [608 x i8], align 8              ; 120 uses
  %i.gs = alloca [16 x i8], align 8               ; 11 uses
  %i.gt = alloca [4 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !noalias !10831
  store ptr %1, ptr %i.gf, align 8, !noalias !10832
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %2, ptr %i.gu, align 8, !noalias !10832
  %i.gv = icmp samesign ult i64 %2, 4
  br i1 %i.gv, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge), !noalias !10831
  store ptr %1, ptr %i.ge, align 8, !noalias !10831
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gw, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10831
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.210.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ %i.he, %bb.d ] ; 2 uses
  %i.gx = phi i64 [ 4, %bb.b ], [ %.pr6.i.i.i.i.i, %bb.d ]
  %i.gy = add i64 %i.gx, -1
  store i64 %i.gy, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10831
  %i.gz = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ge), !noalias !10833 ; 2 uses
  %i.ha = extractvalue { i1, i8 } %i.gz, 0
  br i1 %i.ha, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.hb = extractvalue { i1, i8 } %i.gz, 1
  %i.hc = shl i32 %.sroa.0.210.i.i.i.i.i, 8
  %i.hd = zext i8 %i.hb to i32
  %i.he = or disjoint i32 %i.hc, %i.hd            ; 2 uses
  %.pr6.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10831 ; 2 uses
  %i.hf = icmp eq i64 %.pr6.i.i.i.i.i, 0
  br i1 %i.hf, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !noalias !10831
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.2.lcssa.i.i.i.i.i = phi i32 [ %i.he, %bb.d ], [ %.sroa.0.210.i.i.i.i.i, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge), !noalias !10831
  %i.hg = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gf, i64 noundef 4), !noalias !10834 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !noalias !10831
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i, label %bb.g [
    i32 -17958194, label %bb.h
    i32 -822415874, label %bb.h
    i32 -17958193, label %bb.h
    i32 -805638658, label %bb.h
  ]

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.17.0.ph = phi i32 [ 45, %bb.f ], [ 24, %bb.e ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.hh, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.4148.0..sroa_idx, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5149.0..sroa_idx, align 8
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.17.0.ph, ptr %.sroa.6150.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.mn

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1
  %i.hj = extractvalue { ptr, i64 } %i.hg, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  store i32 %.sroa.0.2.lcssa.i.i.i.i.i, ptr %i.gt, align 4
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i, label %bb.i [
    i32 -17958194, label %bb.k
    i32 -17958193, label %bb.k
    i32 -822415874, label %bb.j
    i32 -805638658, label %bb.j
  ], !prof !31

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @504) #26
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.h, %bb.j
  %.sroa.012.0 = phi i8 [ 1, %bb.j ], [ 0, %bb.h ], [ 0, %bb.h ] ; 3 uses
  switch i32 %.sroa.0.2.lcssa.i.i.i.i.i, label %bb.l [
    i32 -17958194, label %bb.n
    i32 -822415874, label %bb.n
    i32 -17958193, label %bb.m
    i32 -805638658, label %bb.m
  ], !prof !31

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @503) #26
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.k, %bb.m
  %.sroa.057.0 = phi i8 [ %.sroa.012.0, %bb.m ], [ -1, %bb.k ], [ -1, %bb.k ]
  %.sroa.026.0 = phi i8 [ 0, %bb.m ], [ 1, %bb.k ], [ 1, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 11
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 13
  %.sroa.1038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 14 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.hk, i8 %.sroa.012.0, i64 6, i1 false)
  store i8 %.sroa.057.0, ptr %.sroa.1038.0..sroa_idx, align 2
  store ptr %i.gt, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !noalias !10835
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gm, ptr noalias nofree noundef nonnull dereferenceable(7) %i.hk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hj, i64 noundef range(i64 0, -9223372036854775808) %i.hi), !noalias !10836
  %i.hl = load i64, ptr %i.gm, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.hl, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.sroa.0135.0.copyload.i.i = load ptr, ptr %i.hm, align 8, !noalias !10835 ; 2 uses
  %.sroa.4136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %.sroa.4136.0.copyload.i.i = load i64, ptr %.sroa.4136.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  %.sroa.5137.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %.sroa.5137.0.copyload.i.i = load i32, ptr %.sroa.5137.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.7148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %.sroa.7148.0.copyload.i.i = load i32, ptr %.sroa.7148.0..sroa_idx.i.i, align 4, !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !10835
  %i.hn = ptrtoint ptr %.sroa.0135.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

bb.p:                                             ; preds = %bb.n
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !noalias !10835
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gl, ptr noalias nofree noundef nonnull dereferenceable(1) %.sroa.533.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0135.0.copyload.i.i, i64 noundef %.sroa.4136.0.copyload.i.i), !noalias !10836
  %i.ho = load i64, ptr %i.gl, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not268.i.i = icmp eq i64 %i.ho, -1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.0154.0.copyload.i.i = load ptr, ptr %i.hp, align 8, !noalias !10835 ; 2 uses
  %.sroa.4155.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %.sroa.4155.0.copyload.i.i = load i64, ptr %.sroa.4155.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  %.sroa.5156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %.sroa.5156.0.copyload.i.i = load i32, ptr %.sroa.5156.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  br i1 %.not268.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.7167.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %.sroa.7167.0.copyload.i.i = load i32, ptr %.sroa.7167.0..sroa_idx.i.i, align 4, !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !noalias !10835
  %i.hq = ptrtoint ptr %.sroa.0154.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !noalias !10835
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gk, ptr noalias nofree noundef nonnull dereferenceable(1) %.sroa.634.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0154.0.copyload.i.i, i64 noundef %.sroa.4155.0.copyload.i.i), !noalias !10836
  %i.hr = load i64, ptr %i.gk, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not269.i.i = icmp eq i64 %i.hr, -1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.0173.0.copyload.i.i = load ptr, ptr %i.hs, align 8, !noalias !10835 ; 2 uses
  %.sroa.4174.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %.sroa.4174.0.copyload.i.i = load i64, ptr %.sroa.4174.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  %.sroa.5175.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %.sroa.5175.0.copyload.i.i = load i32, ptr %.sroa.5175.0..sroa_idx.i.i, align 8, !noalias !10835 ; 3 uses
  br i1 %.not269.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.7186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  %.sroa.7186.0.copyload.i.i = load i32, ptr %.sroa.7186.0..sroa_idx.i.i, align 4, !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !10835
  %i.ht = ptrtoint ptr %.sroa.0173.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !noalias !10835
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gj, ptr noalias nofree noundef nonnull dereferenceable(1) %.sroa.735.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0173.0.copyload.i.i, i64 noundef %.sroa.4174.0.copyload.i.i), !noalias !10836
  %i.hu = load i64, ptr %i.gj, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not270.i.i = icmp eq i64 %i.hu, -1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.0192.0.copyload.i.i = load ptr, ptr %i.hv, align 8, !noalias !10835 ; 2 uses
  %.sroa.4193.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %.sroa.4193.0.copyload.i.i = load i64, ptr %.sroa.4193.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  %.sroa.5194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %.sroa.5194.0.copyload.i.i = load i32, ptr %.sroa.5194.0..sroa_idx.i.i, align 8, !noalias !10835 ; 5 uses
  br i1 %.not270.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.7205.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 28
  %.sroa.7205.0.copyload.i.i = load i32, ptr %.sroa.7205.0..sroa_idx.i.i, align 4, !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !10835
  %i.hw = ptrtoint ptr %.sroa.0192.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !noalias !10835
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gi, ptr noalias nofree noundef nonnull dereferenceable(1) %.sroa.836.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0192.0.copyload.i.i, i64 noundef %.sroa.4193.0.copyload.i.i), !noalias !10836
  %i.hx = load i64, ptr %i.gi, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not271.i.i = icmp eq i64 %i.hx, -1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.0211.0.copyload.i.i = load ptr, ptr %i.hy, align 8, !noalias !10835 ; 2 uses
  %.sroa.4212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %.sroa.4212.0.copyload.i.i = load i64, ptr %.sroa.4212.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  %.sroa.5213.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %.sroa.5213.0.copyload.i.i = load i32, ptr %.sroa.5213.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  br i1 %.not271.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.7224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %.sroa.7224.0.copyload.i.i = load i32, ptr %.sroa.7224.0..sroa_idx.i.i, align 4, !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !noalias !10835
  %i.hz = ptrtoint ptr %.sroa.0211.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !10835
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gh, ptr noalias nofree noundef nonnull dereferenceable(1) %.sroa.937.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0211.0.copyload.i.i, i64 noundef %.sroa.4212.0.copyload.i.i), !noalias !10836
  %i.ia = load i64, ptr %i.gh, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not272.i.i = icmp eq i64 %i.ia, -1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.0230.0.copyload.i.i = load ptr, ptr %i.ib, align 8, !noalias !10835 ; 2 uses
  %.sroa.4231.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %.sroa.4231.0.copyload.i.i = load i64, ptr %.sroa.4231.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  %.sroa.5232.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %.sroa.5232.0.copyload.i.i = load i32, ptr %.sroa.5232.0..sroa_idx.i.i, align 8, !noalias !10835 ; 2 uses
  br i1 %.not272.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.7243.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 28
  %.sroa.7243.0.copyload.i.i = load i32, ptr %.sroa.7243.0..sroa_idx.i.i, align 4, !noalias !10835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !10835
  %i.ic = ptrtoint ptr %.sroa.0230.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !10835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !noalias !10835
  call fastcc void @_RINvXs_NtCsgkljs906P5b_3nom10combinatorINtB5_4CondNCINvNtNtB7_6number8complete3u32RShINtNtB7_5error5ErrorB1i_EE0EINtNtB7_8internal6ParserB1i_E7processINtB1Q_7OutputMNtB1Q_4EmitB2D_NtB1Q_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.gg, ptr noalias nofree noundef dereferenceable(1) %.sroa.1038.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0230.0.copyload.i.i, i64 noundef %.sroa.4231.0.copyload.i.i), !noalias !10836
  %i.id = load i64, ptr %i.gg, align 8, !range !12, !noalias !10835, !noundef !5 ; 2 uses
  %.not273.i.i = icmp eq i64 %i.id, -1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.0249.0.copyload.i.i = load ptr, ptr %i.ie, align 8, !noalias !10835 ; 3 uses
  %.sroa.4250.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %.sroa.4250.0.copyload.i.i = load i64, ptr %.sroa.4250.0..sroa_idx.i.i, align 8, !noalias !10835 ; 3 uses
  %.sroa.5251.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %.sroa.5251.0.copyload.i.i = load i32, ptr %.sroa.5251.0..sroa_idx.i.i, align 8, !noalias !10835 ; 3 uses
  %.sroa.6252.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  %.sroa.6252.0.copyload.i.i = load i32, ptr %.sroa.6252.0..sroa_idx.i.i, align 4, !noalias !10835 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg), !noalias !10835
  br i1 %.not273.i.i, label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = ptrtoint ptr %.sroa.0249.0.copyload.i.i to i64
  br label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread

_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.z
  %.sroa.0665.0.insert.ext = zext i32 %.sroa.5137.0.copyload.i.i to i64 ; 2 uses
  %.sroa.0665.4.insert.ext = zext i32 %.sroa.5156.0.copyload.i.i to i64 ; 2 uses
  %.sroa.0665.4.insert.shift = shl nuw i64 %.sroa.0665.4.insert.ext, 32
  %.sroa.0665.4.insert.insert = or disjoint i64 %.sroa.0665.4.insert.shift, %.sroa.0665.0.insert.ext
  %i.ig = ptrtoint ptr %.sroa.0249.0.copyload.i.i to i64
  %i.ih = icmp eq i32 %.sroa.5251.0.copyload.i.i, 2
  br i1 %i.ih, label %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread, label %bb.ab

end_hunk_13
begin_hunk_14_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO16parse_macho_file:bb.a
  %.sroa.18239.2.i = phi i32 [ %.sroa.0.2.lcssa.i.i.i, %.noexc455 ], [ %.sroa.0.0.lcssa.i.i.i, %.noexc453 ]
  %i.akw = zext i32 %.sroa.18239.2.i to i64
  br label %bb.ly

bb.ly:                                            ; preds = %_RNCINvNtNtCsgkljs906P5b_3nom6number8complete3u32RShINtNtB8_5error5ErrorBK_EE0Cs7gfv9tzbXmh_6yara_x.exit.i, %_RNCINvNtNtCsgkljs906P5b_3nom6number8complete3u64RShINtNtB8_5error5ErrorBK_EE0Cs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.0180.0.i = phi i64 [ %i.akw, %_RNCINvNtNtCsgkljs906P5b_3nom6number8complete3u32RShINtNtB8_5error5ErrorBK_EE0Cs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.18230.2.i, %_RNCINvNtNtCsgkljs906P5b_3nom6number8complete3u64RShINtNtB8_5error5ErrorBK_EE0Cs7gfv9tzbXmh_6yara_x.exit.i ]
  %i.akx = lshr i64 %.sroa.0180.0.i, %.sroa.0176.0.i
  %i.aky = and i64 %i.akx, %.sroa.0177.0.i
  %i.akz = trunc nuw i64 %i.aky to i32
  %i.ala = call i32 @llvm.uadd.sat.i32(i32 %.sroa.5195.0.copyload.i.i.i, i32 %i.akz) ; 2 uses
  %i.alb = icmp ult i32 %i.ahf, %i.ala
  br i1 %i.alb, label %bb.mm, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.alc = zext i32 %i.ala to i64                 ; 2 uses
  %i.ald = sub nuw nsw i64 %i.ahg, %i.alc         ; 4 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.alc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10958)
  call void @llvm.experimental.noalias.scope.decl(metadata !10959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !10960
  store ptr %i.ale, ptr %i.az, align 8, !noalias !10961
  store i64 %i.ald, ptr %i.ain, align 8, !noalias !10961
  %i.alf = icmp samesign eq i64 %i.ald, 0
  br i1 %i.alf, label %.loopexit.i429, label %.lr.ph.i.i.i.i426

.lr.ph.i.i.i.i426:                                ; preds = %bb.lz, %bb.ma
  %.sroa.02.07.i.i.i.i427 = phi i64 [ %i.alj, %bb.ma ], [ 0, %bb.lz ] ; 3 uses
  %i.alg = phi ptr [ %i.ali, %bb.ma ], [ %i.ale, %bb.lz ] ; 2 uses
  %.val.i.i.i.i428 = load i8, ptr %i.alg, align 1, !alias.scope !10962, !noalias !10963, !noundef !5
  %i.alh = icmp eq i8 %.val.i.i.i.i428, 0
  br i1 %i.alh, label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile20parse_chained_fixups0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4f_Es_0B2W_.exit.i.i.i, label %bb.ma

bb.ma:                                            ; preds = %.lr.ph.i.i.i.i426
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 1 ; 2 uses
  %i.alj = add nuw nsw i64 %.sroa.02.07.i.i.i.i427, 1
  %i.alk = icmp eq ptr %i.ali, %i.aio
  br i1 %i.alk, label %.loopexit.i429, label %.lr.ph.i.i.i.i426

_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile20parse_chained_fixups0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4f_Es_0B2W_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i426
  %i.all = icmp samesign ult i64 %.sroa.02.07.i.i.i.i427, %i.ald
  call void @llvm.assume(i1 %i.all), !noalias !10964
  br label %.loopexit.i429

.loopexit.i429:                                   ; preds = %bb.ma, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile20parse_chained_fixups0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4f_Es_0B2W_.exit.i.i.i, %bb.lz
  %.sroa.02.07.i.i.lcssa.sink.i.i430 = phi i64 [ %.sroa.02.07.i.i.i.i427, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile20parse_chained_fixups0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B4f_Es_0B2W_.exit.i.i.i ], [ 0, %bb.lz ], [ %i.ald, %bb.ma ] ; 7 uses
  %i.alm = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.az, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i430)
          to label %.noexc460 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc460:                                        ; preds = %.loopexit.i429
  %.sink.i.i.i431 = extractvalue { ptr, i64 } %i.alm, 1 ; 3 uses
  %.sink13.i.i.i432 = extractvalue { ptr, i64 } %i.alm, 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !10960
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i.i432) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !10965
  store ptr %.sink13.i.i.i432, ptr %i.ay, align 8, !noalias !10966
  store i64 %.sink.i.i.i431, ptr %i.aip, align 8, !noalias !10966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !10967
  %i.aln = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i432, i64 %.sink.i.i.i431
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ax, ptr noundef nonnull readonly %.sink13.i.i.i432, ptr noundef nonnull readonly %i.aln, ptr noundef nonnull readonly @33, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @33, i64 1))
          to label %.noexc461 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc461:                                        ; preds = %.noexc460
  call void @llvm.experimental.noalias.scope.decl(metadata !10968)
  %i.alo = load i64, ptr %i.air, align 8, !alias.scope !10969, !noalias !10970, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i433 = load i64, ptr %i.aiq, align 8, !alias.scope !10969, !noalias !10970 ; 2 uses
  %i.alp = icmp ult i64 %.promoted.i.i.i.i.i433, %i.alo
  br i1 %i.alp, label %.lr.ph.i.i.i.i.i437, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i434

.lr.ph.i.i.i.i.i437:                              ; preds = %.noexc461
  %.val1.i.i.i.i.i.i.i438 = load ptr, ptr %i.ax, align 8, !alias.scope !10969, !noalias !10970, !nonnull !5, !noundef !5
  %.val.i.i.i.i.i.i.i439 = load ptr, ptr %i.ais, align 8, !alias.scope !10969, !noalias !10970, !nonnull !5, !noundef !5
  br label %bb.mb

bb.mb:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i443, %.lr.ph.i.i.i.i.i437
  %i.alq = phi i64 [ %.promoted.i.i.i.i.i433, %.lr.ph.i.i.i.i.i437 ], [ %i.alt, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i443 ] ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i438, i64 %i.alq
  %i.als = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i439, i64 %i.alq
  %.val7.i.i.i.i.i440 = load i8, ptr %i.alr, align 1, !noalias !10971, !noundef !5
  %.val8.i.i.i.i.i441 = load i8, ptr %i.als, align 1, !noalias !10971, !noundef !5
  %.not.i.i15.i.i.i.i442 = icmp eq i8 %.val7.i.i.i.i.i440, %.val8.i.i.i.i.i441
  br i1 %.not.i.i15.i.i.i.i442, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i443, label %bb.mc

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i443: ; preds = %bb.mb
  %i.alt = add i64 %i.alq, 1                      ; 2 uses
  %exitcond.not.i.i.i.i.i444 = icmp eq i64 %i.alt, %i.alo
  br i1 %exitcond.not.i.i.i.i.i444, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i434, label %bb.mb

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i434: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i443, %.noexc461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !10967
  %.not.i.i.i.i.i.i435 = icmp eq i64 %.sink.i.i.i431, 0
  br i1 %.not.i.i.i.i.i.i435, label %.loopexit390.i, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !10967
  br label %.loopexit390.i

.loopexit390.i:                                   ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i434, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !10965
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile20parse_chained_fixups.exit

bb.md:                                            ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i434
  %i.alu = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ay, i64 noundef 1)
          to label %.noexc462 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc462:                                        ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !10965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !10943
  invoke void @_RNvNtCs2AhGS15tZfv_4bstr4utf88validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ale, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i430)
          to label %.noexc463 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc463:                                        ; preds = %.noexc462
  %i.alv = load i64, ptr %i.bq, align 8, !range !9, !noalias !10943, !noundef !5
  %.not191.i = icmp eq i64 %i.alv, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !10943
  br i1 %.not191.i, label %bb.me, label %bb.mm

bb.me:                                            ; preds = %.noexc463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !10943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !10943
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bp, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i430, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc464 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc464:                                        ; preds = %bb.me
  %i.alw = load i64, ptr %i.bp, align 8, !range !11, !noalias !10943, !noundef !5
  %i.alx = trunc nuw i64 %i.alw to i1
  %i.aly = load i64, ptr %i.ait, align 8, !range !18, !noalias !10943, !noundef !5 ; 3 uses
  br i1 %i.alx, label %bb.mf, label %bb.mg, !prof !6

bb.mf:                                            ; preds = %.noexc464
  %i.alz = load i64, ptr %i.aiu, align 8, !noalias !10943
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aly, i64 %i.alz) #31
          to label %.noexc465 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc465:                                        ; preds = %bb.mf
  unreachable

bb.mg:                                            ; preds = %.noexc464
  %i.ama = load ptr, ptr %i.aiu, align 8, !noalias !10943, !nonnull !5, !noundef !5 ; 2 uses
  %i.amb = icmp samesign ule i64 %.sroa.02.07.i.i.lcssa.sink.i.i430, %i.aly
  call void @llvm.assume(i1 %i.amb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !10943
  %.not192.i = icmp eq i64 %.sroa.02.07.i.i.lcssa.sink.i.i430, 0
  br i1 %.not192.i, label %bb.mh, label %bb.ml

bb.mh:                                            ; preds = %bb.ml, %bb.mg
  store i64 %i.aly, ptr %i.br, align 8, !noalias !10943
  store ptr %i.ama, ptr %.sroa.4174.0..sroa_idx.i, align 8, !noalias !10943
  store i64 %.sroa.02.07.i.i.lcssa.sink.i.i430, ptr %.sroa.6175.0..sroa_idx.i, align 8, !noalias !10943
  %i.amc = load i64, ptr %.sroa.599.0..sroa_idx, align 8, !alias.scope !10972, !noalias !10973, !noundef !5 ; 3 uses
  %i.amd = load i64, ptr %i.jj, align 8, !range !19, !alias.scope !10972, !noalias !10973, !noundef !5
  %i.ame = icmp eq i64 %i.amc, %i.amd
  br i1 %i.ame, label %bb.mi, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.mj, !noalias !10974

bb.mj:                                            ; preds = %bb.mi
  %i.amf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br) #28
          to label %.body466 unwind label %bb.mk, !noalias !10975

bb.mk:                                            ; preds = %bb.mj
  %i.amg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10975
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.mi, %bb.mh
  %i.amh = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !alias.scope !10972, !noalias !10973, !nonnull !5, !noundef !5
  %i.ami = getelementptr inbounds nuw [24 x i8], ptr %i.amh, i64 %i.amc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ami, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !10975
  %i.amj = add i64 %i.amc, 1
  store i64 %i.amj, ptr %.sroa.599.0..sroa_idx, align 8, !alias.scope !10972, !noalias !10973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !10943
  br label %bb.mm

bb.ml:                                            ; preds = %bb.mg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ama, ptr nonnull readonly align 1 %i.ale, i64 %.sroa.02.07.i.i.lcssa.sink.i.i430, i1 false), !noalias !10975
  br label %bb.mh

bb.mm:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i, %.noexc463, %bb.ly
  %.not188.i = icmp ugt i64 %.sroa.019.1.i, %i.aiw
  br i1 %.not188.i, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile20parse_chained_fixups.exit, label %bb.lj

bb.mn:                                            ; preds = %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile20parse_chained_fixups.exit, %_RINvXsG_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_BA_BA_BA_INtNtB8_10combinator4CondBA_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2X_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.i.thread, %bb.g
  ret void

bb.mo:                                            ; preds = %bb.ko
  %i.amk = sub nuw i64 %i.agz, %i.agw             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10976)
  %i.aml = icmp eq i64 %i.amk, 0
  br i1 %i.aml, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge, label %.lr.ph540.i

.lr.ph540.i:                                      ; preds = %bb.mo
  %i.amm = getelementptr inbounds nuw i8, ptr %1, i64 %i.agw
  br label %bb.mp

bb.mp:                                            ; preds = %.loopexit432.i, %.lr.ph540.i
  %.sroa.0.0538.i = phi ptr [ %i.amm, %.lr.ph540.i ], [ %.sroa.0.1.i, %.loopexit432.i ] ; 4 uses
  %.sroa.15.0537.i = phi i64 [ %i.amk, %.lr.ph540.i ], [ %.sroa.15.1.i, %.loopexit432.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !10977
  store ptr %.sroa.0.0538.i, ptr %i.at, align 8, !noalias !10978
  store i64 %.sroa.15.0537.i, ptr %i.afw, align 8, !noalias !10978
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0538.i) ]
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.0.0538.i, i64 %.sroa.15.0537.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !10977
  store ptr %.sroa.0.0538.i, ptr %i.as, align 8, !noalias !10977
  store ptr %i.amn, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !noalias !10977
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !10977
  %i.amo = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %.noexc495 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc495:                                        ; preds = %bb.mp
  %i.amp = extractvalue { i1, i8 } %i.amo, 0
  br i1 %i.amp, label %.lr.ph.i469.preheader, label %.lr.ph.i._crit_edge.thread.i

.lr.ph.i469.preheader:                            ; preds = %.noexc495
  %.pr.i.i1044 = load i64, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !10977 ; 2 uses
  %i.amq = icmp eq i64 %.pr.i.i1044, 0
  br i1 %i.amq, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i.i470

.lr.ph.i._crit_edge.thread.i:                     ; preds = %.noexc495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10977
  %i.amr = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at, i64 noundef 1)
          to label %.noexc496 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc496:                                        ; preds = %.lr.ph.i._crit_edge.thread.i
  %3 = extractvalue { ptr, i64 } %i.amr, 0        ; 2 uses
  %4 = extractvalue { ptr, i64 } %i.amr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10977
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %.loopexit432.i

.lr.ph.i.i470:                                    ; preds = %.lr.ph.i469.preheader, %.lr.ph.i469
  %.pr.i.i1045 = phi i64 [ %.pr.i.i, %.lr.ph.i469 ], [ %.pr.i.i1044, %.lr.ph.i469.preheader ]
  %i.ams = phi { i1, i8 } [ %i.amu, %.lr.ph.i469 ], [ %i.amo, %.lr.ph.i469.preheader ]
  %i.amt = add i64 %.pr.i.i1045, -1
  store i64 %i.amt, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !10977
  %i.amu = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %.noexc497 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc497:                                        ; preds = %.lr.ph.i.i470
  %i.amv = extractvalue { i1, i8 } %i.amu, 0
  br i1 %i.amv, label %.lr.ph.i469, label %.lr.ph.i._crit_edge.i

.lr.ph.i469:                                      ; preds = %.noexc497
  %.pr.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !10977 ; 2 uses
  %i.amw = icmp eq i64 %.pr.i.i, 0
  br i1 %i.amw, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i.i470

.lr.ph.i._crit_edge.i:                            ; preds = %.noexc497, %.lr.ph.i469, %.lr.ph.i469.preheader
  %.lcssa838 = phi { i1, i8 } [ %i.amo, %.lr.ph.i469.preheader ], [ %i.amu, %.lr.ph.i469 ], [ %i.ams, %.noexc497 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !10977
  %i.amx = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at, i64 noundef 1)
          to label %.noexc498 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc498:                                        ; preds = %.lr.ph.i._crit_edge.i
  %i.amy = extractvalue { i1, i8 } %.lcssa838, 1
  %i.amz = lshr i8 %i.amy, 4
  %i.ana = extractvalue { ptr, i64 } %i.amx, 0    ; 14 uses
  %i.anb = extractvalue { ptr, i64 } %i.amx, 1    ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !10977
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ana) ]
  switch i8 %i.amz, label %.loopexit432.i [
    i8 2, label %bb.mq
    i8 7, label %bb.mq
    i8 8, label %bb.mq
    i8 10, label %bb.mq
    i8 12, label %bb.mt
    i8 6, label %.preheader.i
    i8 4, label %bb.mz
  ]

.loopexit432.i:                                   ; preds = %bb.my, %bb.ne, %bb.ms, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i480, %.noexc519, %.noexc518, %.thread634.i, %.thread629.i, %.thread.i, %.noexc498, %.noexc496
  %.sroa.15.1.i = phi i64 [ %i.anb, %.noexc498 ], [ %i.anu, %bb.ms ], [ %9, %.thread634.i ], [ %4, %.noexc496 ], [ %i.aqw, %.noexc518 ], [ %i.aqw, %.noexc519 ], [ %i.aqs, %bb.ne ], [ %i.aqw, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i480 ], [ %5, %.thread.i ], [ %7, %.thread629.i ], [ %i.aph, %bb.my ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.ana, %.noexc498 ], [ %i.anv, %bb.ms ], [ %10, %.thread634.i ], [ %3, %.noexc496 ], [ %i.aqv, %.noexc518 ], [ %i.aqv, %.noexc519 ], [ %i.aqt, %bb.ne ], [ %i.aqv, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i480 ], [ %6, %.thread.i ], [ %8, %.thread629.i ], [ %i.api, %bb.my ]
  %i.anc = icmp eq i64 %.sroa.15.1.i, 0
  br i1 %i.anc, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge, label %bb.mp

bb.mq:                                            ; preds = %.noexc498, %.noexc498, %.noexc498, %.noexc498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !10979
  store ptr %i.ana, ptr %i.ar, align 8, !noalias !10980
  store i64 %i.anb, ptr %i.agh, align 8, !noalias !10980
  %i.and = icmp eq i64 %i.anb, 0
  br i1 %i.and, label %._crit_edge115.i.i, label %.lr.ph114.i.i

bb.mr:                                            ; preds = %bb.ms
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !10979
  store ptr %i.anv, ptr %i.ar, align 8, !noalias !10980
  store i64 %i.anu, ptr %i.agh, align 8, !noalias !10980
  %i.ane = icmp eq i64 %i.anu, 0
  br i1 %i.ane, label %._crit_edge115.i.i, label %.lr.ph114.i.i

.lr.ph114.i.i:                                    ; preds = %bb.mq, %bb.mr
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.mr ], [ 0, %bb.mq ] ; 3 uses
  %.sroa.480.0110.i.i = phi i64 [ %i.anu, %bb.mr ], [ %i.anb, %bb.mq ]
  %.sroa.078.0109.i.i = phi ptr [ %i.anv, %bb.mr ], [ %i.ana, %bb.mq ] ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i.i, i64 %.sroa.480.0110.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !10979
  store ptr %.sroa.078.0109.i.i, ptr %i.aq, align 8, !noalias !10979
  store ptr %i.anf, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !noalias !10979
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i, align 8, !noalias !10979
  %i.ang = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc499 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc499:                                        ; preds = %.lr.ph114.i.i
  %i.anh = extractvalue { i1, i8 } %i.ang, 0
  br i1 %i.anh, label %.lr.ph.i220.preheader.i, label %.lr.ph.i._crit_edge.i.thread.i

.lr.ph.i220.preheader.i:                          ; preds = %.noexc499
  %.pr.i.i533.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i, align 8, !noalias !10979 ; 2 uses
  %i.ani = icmp eq i64 %.pr.i.i533.i, 0
  br i1 %i.ani, label %.lr.ph.i._crit_edge.i.i, label %.lr.ph.i.i.i493

.lr.ph.i.i.i493:                                  ; preds = %.lr.ph.i220.preheader.i, %.lr.ph.i220.i
  %.pr.i.i534.i = phi i64 [ %.pr.i.i.i494, %.lr.ph.i220.i ], [ %.pr.i.i533.i, %.lr.ph.i220.preheader.i ]
  %i.anj = phi { i1, i8 } [ %i.anl, %.lr.ph.i220.i ], [ %i.ang, %.lr.ph.i220.preheader.i ]
  %i.ank = add i64 %.pr.i.i534.i, -1
  store i64 %i.ank, ptr %.sroa.35.0..sroa_idx.i.i.i, align 8, !noalias !10979
  %i.anl = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc500 unwind label %.loopexit761 ; 3 uses

.noexc500:                                        ; preds = %.lr.ph.i.i.i493
  %i.anm = extractvalue { i1, i8 } %i.anl, 0
  br i1 %i.anm, label %.lr.ph.i220.i, label %.lr.ph.i._crit_edge.i.i

.lr.ph.i220.i:                                    ; preds = %.noexc500
  %.pr.i.i.i494 = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i, align 8, !noalias !10979 ; 2 uses
  %i.ann = icmp eq i64 %.pr.i.i.i494, 0
  br i1 %i.ann, label %.lr.ph.i._crit_edge.i.i, label %.lr.ph.i.i.i493

._crit_edge115.i.i:                               ; preds = %bb.mq, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10979
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i.i:                          ; preds = %.lr.ph.i220.i, %.noexc500, %.lr.ph.i220.preheader.i
  %.lcssa462.i = phi { i1, i8 } [ %i.ang, %.lr.ph.i220.preheader.i ], [ %i.anj, %.noexc500 ], [ %i.anl, %.lr.ph.i220.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10979
  %i.ano = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar, i64 noundef 1)
          to label %.noexc501 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc501:                                        ; preds = %.lr.ph.i._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10979
  %i.anp = icmp samesign ult i64 %indvars.iv.i.i, 64
  br i1 %i.anp, label %bb.ms, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i.thread.i:                   ; preds = %.noexc499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !10979
  %i.anq = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar, i64 noundef 1)
          to label %.noexc502 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc502:                                        ; preds = %.lr.ph.i._crit_edge.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !10979
  %i.anr = icmp samesign ult i64 %indvars.iv.i.i, 64
  br i1 %i.anr, label %.thread.i, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.thread.i:                                        ; preds = %.noexc502
  %5 = extractvalue { ptr, i64 } %i.anq, 1
  %6 = extractvalue { ptr, i64 } %i.anq, 0
  br label %.loopexit432.i

bb.ms:                                            ; preds = %.noexc501
  %i.ans = extractvalue { i1, i8 } %.lcssa462.i, 1
  %i.ant = icmp sgt i8 %i.ans, -1
  %i.anu = extractvalue { ptr, i64 } %i.ano, 1    ; 4 uses
  %i.anv = extractvalue { ptr, i64 } %i.ano, 0    ; 3 uses
  br i1 %i.ant, label %.loopexit432.i, label %bb.mr

bb.mt:                                            ; preds = %.noexc498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !10981
  store ptr %i.ana, ptr %i.ap, align 8, !noalias !10982
  store i64 %i.anb, ptr %i.agf, align 8, !noalias !10982
  %i.anw = icmp eq i64 %i.anb, 0
  br i1 %i.anw, label %._crit_edge115.i234.i, label %.lr.ph114.i221.i

bb.mu:                                            ; preds = %bb.mv
  %indvars.iv.next.i233.i = add nuw nsw i64 %indvars.iv.i224.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !10981
  store ptr %i.aoq, ptr %i.ap, align 8, !noalias !10982
  store i64 %i.aop, ptr %i.agf, align 8, !noalias !10982
  %i.anx = icmp eq i64 %i.aop, 0
  br i1 %i.anx, label %._crit_edge115.i234.i, label %.lr.ph114.i221.i

.lr.ph114.i221.i:                                 ; preds = %bb.mt, %bb.mu
  %indvars.iv.i224.i = phi i64 [ %indvars.iv.next.i233.i, %bb.mu ], [ 0, %bb.mt ] ; 3 uses
  %.sroa.480.0110.i226.i = phi i64 [ %i.aop, %bb.mu ], [ %i.anb, %bb.mt ]
  %.sroa.078.0109.i227.i = phi ptr [ %i.aoq, %bb.mu ], [ %i.ana, %bb.mt ] ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i227.i, i64 %.sroa.480.0110.i226.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !10981
  store ptr %.sroa.078.0109.i227.i, ptr %i.ao, align 8, !noalias !10981
  store ptr %i.any, ptr %.sroa.24.0..sroa_idx.i.i222.i, align 8, !noalias !10981
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i223.i, align 8, !noalias !10981
  %i.anz = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc503 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc503:                                        ; preds = %.lr.ph114.i221.i
  %i.aoa = extractvalue { i1, i8 } %i.anz, 0
  br i1 %i.aoa, label %.lr.ph.i241.preheader.i, label %.lr.ph.i._crit_edge.i228.thread.i

.lr.ph.i241.preheader.i:                          ; preds = %.noexc503
  %.pr.i.i242525.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i223.i, align 8, !noalias !10981 ; 2 uses
  %i.aob = icmp eq i64 %.pr.i.i242525.i, 0
  br i1 %i.aob, label %.lr.ph.i._crit_edge.i228.i, label %.lr.ph.i.i243.i

.lr.ph.i.i243.i:                                  ; preds = %.lr.ph.i241.preheader.i, %.lr.ph.i241.i
  %.pr.i.i242526.i = phi i64 [ %.pr.i.i242.i, %.lr.ph.i241.i ], [ %.pr.i.i242525.i, %.lr.ph.i241.preheader.i ]
  %i.aoc = phi { i1, i8 } [ %i.aoe, %.lr.ph.i241.i ], [ %i.anz, %.lr.ph.i241.preheader.i ]
  %i.aod = add i64 %.pr.i.i242526.i, -1
  store i64 %i.aod, ptr %.sroa.35.0..sroa_idx.i.i223.i, align 8, !noalias !10981
  %i.aoe = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc504 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit ; 3 uses

.noexc504:                                        ; preds = %.lr.ph.i.i243.i
  %i.aof = extractvalue { i1, i8 } %i.aoe, 0
  br i1 %i.aof, label %.lr.ph.i241.i, label %.lr.ph.i._crit_edge.i228.i

.lr.ph.i241.i:                                    ; preds = %.noexc504
  %.pr.i.i242.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i223.i, align 8, !noalias !10981 ; 2 uses
  %i.aog = icmp eq i64 %.pr.i.i242.i, 0
  br i1 %i.aog, label %.lr.ph.i._crit_edge.i228.i, label %.lr.ph.i.i243.i

._crit_edge115.i234.i:                            ; preds = %bb.mt, %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10981
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i228.i:                       ; preds = %.lr.ph.i241.i, %.noexc504, %.lr.ph.i241.preheader.i
  %.lcssa448.i = phi { i1, i8 } [ %i.anz, %.lr.ph.i241.preheader.i ], [ %i.aoc, %.noexc504 ], [ %i.aoe, %.lr.ph.i241.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10981
  %i.aoh = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap, i64 noundef 1)
          to label %.noexc505 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc505:                                        ; preds = %.lr.ph.i._crit_edge.i228.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10981
  %i.aoi = icmp samesign ult i64 %indvars.iv.i224.i, 64
  br i1 %i.aoi, label %bb.mv, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i228.thread.i:                ; preds = %.noexc503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10981
  %i.aoj = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap, i64 noundef 1)
          to label %.noexc506 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc506:                                        ; preds = %.lr.ph.i._crit_edge.i228.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !10981
  %i.aok = icmp samesign ult i64 %indvars.iv.i224.i, 64
  br i1 %i.aok, label %.thread625.i, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.thread625.i:                                     ; preds = %.noexc506
  %i.aol = extractvalue { ptr, i64 } %i.aoj, 1
  %i.aom = extractvalue { ptr, i64 } %i.aoj, 0
  br label %.loopexit637.i

bb.mv:                                            ; preds = %.noexc505
  %i.aon = extractvalue { i1, i8 } %.lcssa448.i, 1
  %i.aoo = icmp sgt i8 %i.aon, -1
  %i.aop = extractvalue { ptr, i64 } %i.aoh, 1    ; 4 uses
  %i.aoq = extractvalue { ptr, i64 } %i.aoh, 0    ; 3 uses
  br i1 %i.aoo, label %.loopexit637.i, label %bb.mu

.preheader.i:                                     ; preds = %.noexc498, %bb.my
  %indvars.iv.i248.i = phi i64 [ %indvars.iv.next.i251.i, %bb.my ], [ 0, %.noexc498 ] ; 3 uses
  %.sroa.082.0.i.i = phi ptr [ %i.api, %bb.my ], [ %i.ana, %.noexc498 ] ; 3 uses
  %.sroa.484.0.i.i = phi i64 [ %i.aph, %bb.my ], [ %i.anb, %.noexc498 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !10983
  store ptr %.sroa.082.0.i.i, ptr %i.an, align 8, !noalias !10984
  store i64 %.sroa.484.0.i.i, ptr %i.age, align 8, !noalias !10984
  %i.aor = icmp eq i64 %.sroa.484.0.i.i, 0
  br i1 %i.aor, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %.preheader.i
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.082.0.i.i, i64 %.sroa.484.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !10983
  store ptr %.sroa.082.0.i.i, ptr %i.am, align 8, !noalias !10983
  store ptr %i.aos, ptr %.sroa.24.0..sroa_idx.i.i246.i, align 8, !noalias !10983
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i247.i, align 8, !noalias !10983
  %i.aot = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %.noexc507 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc507:                                        ; preds = %bb.mw
  %i.aou = extractvalue { i1, i8 } %i.aot, 0
  br i1 %i.aou, label %.lr.ph.i253.preheader.i, label %.lr.ph.i._crit_edge.i249.thread.i

.lr.ph.i253.preheader.i:                          ; preds = %.noexc507
  %.pr.i.i254521.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i247.i, align 8, !noalias !10983 ; 2 uses
  %i.aov = icmp eq i64 %.pr.i.i254521.i, 0
  br i1 %i.aov, label %.lr.ph.i._crit_edge.i249.i, label %.lr.ph.i.i255.i

.lr.ph.i.i255.i:                                  ; preds = %.lr.ph.i253.preheader.i, %.lr.ph.i253.i
  %.pr.i.i254522.i = phi i64 [ %.pr.i.i254.i, %.lr.ph.i253.i ], [ %.pr.i.i254521.i, %.lr.ph.i253.preheader.i ]
  %i.aow = phi { i1, i8 } [ %i.aoy, %.lr.ph.i253.i ], [ %i.aot, %.lr.ph.i253.preheader.i ]
  %i.aox = add i64 %.pr.i.i254522.i, -1
  store i64 %i.aox, ptr %.sroa.35.0..sroa_idx.i.i247.i, align 8, !noalias !10983
  %i.aoy = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %.noexc508 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc508:                                        ; preds = %.lr.ph.i.i255.i
  %i.aoz = extractvalue { i1, i8 } %i.aoy, 0
  br i1 %i.aoz, label %.lr.ph.i253.i, label %.lr.ph.i._crit_edge.i249.i

.lr.ph.i253.i:                                    ; preds = %.noexc508
  %.pr.i.i254.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i247.i, align 8, !noalias !10983 ; 2 uses
  %i.apa = icmp eq i64 %.pr.i.i254.i, 0
  br i1 %i.apa, label %.lr.ph.i._crit_edge.i249.i, label %.lr.ph.i.i255.i

bb.mx:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !10983
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge: ; preds = %.loopexit432.i, %.noexc502, %.noexc506, %.noexc516, %.noexc510, %.noexc509, %.noexc505, %.noexc515, %.noexc501, %bb.mx, %._crit_edge115.i271.i, %._crit_edge115.i234.i, %._crit_edge115.i.i, %bb.mo, %.loopexit439.i, %bb.ko
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit

.lr.ph.i._crit_edge.i249.i:                       ; preds = %.lr.ph.i253.i, %.noexc508, %.lr.ph.i253.preheader.i
  %.lcssa.i490 = phi { i1, i8 } [ %i.aot, %.lr.ph.i253.preheader.i ], [ %i.aow, %.noexc508 ], [ %i.aoy, %.lr.ph.i253.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10983
  %i.apb = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an, i64 noundef 1)
          to label %.noexc509 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc509:                                        ; preds = %.lr.ph.i._crit_edge.i249.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !10983
  %i.apc = icmp samesign ult i64 %indvars.iv.i248.i, 64
  br i1 %i.apc, label %bb.my, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i249.thread.i:                ; preds = %.noexc507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10983
  %i.apd = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an, i64 noundef 1)
          to label %.noexc510 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc510:                                        ; preds = %.lr.ph.i._crit_edge.i249.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !10983
  %i.ape = icmp samesign ult i64 %indvars.iv.i248.i, 64
  br i1 %i.ape, label %.thread629.i, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.thread629.i:                                     ; preds = %.noexc510
  %7 = extractvalue { ptr, i64 } %i.apd, 1
  %8 = extractvalue { ptr, i64 } %i.apd, 0
  br label %.loopexit432.i

bb.my:                                            ; preds = %.noexc509
  %i.apf = extractvalue { i1, i8 } %.lcssa.i490, 1
  %i.apg = icmp sgt i8 %i.apf, -1
  %i.aph = extractvalue { ptr, i64 } %i.apb, 1    ; 2 uses
  %i.api = extractvalue { ptr, i64 } %i.apb, 0    ; 2 uses
  %indvars.iv.next.i251.i = add nuw nsw i64 %indvars.iv.i248.i, 7
  br i1 %i.apg, label %.loopexit432.i, label %.preheader.i

bb.mz:                                            ; preds = %.noexc498
  call void @llvm.experimental.noalias.scope.decl(metadata !10985)
  call void @llvm.experimental.noalias.scope.decl(metadata !10986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !10987
  store ptr %i.ana, ptr %i.al, align 8, !noalias !10988
  store i64 %i.anb, ptr %i.afx, align 8, !noalias !10988
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.anb
  %i.apk = icmp samesign eq i64 %i.anb, 0
  br i1 %i.apk, label %.loopexit438.i, label %.lr.ph.i.i.i.i471

.lr.ph.i.i.i.i471:                                ; preds = %bb.mz, %bb.na
  %.sroa.02.07.i.i.i.i472 = phi i64 [ %i.apo, %bb.na ], [ 0, %bb.mz ] ; 3 uses
  %i.apl = phi ptr [ %i.apn, %bb.na ], [ %i.ana, %bb.mz ] ; 2 uses
  %.val.i.i.i.i473 = load i8, ptr %i.apl, align 1, !alias.scope !10989, !noalias !10990, !noundef !5
  %i.apm = icmp eq i8 %.val.i.i.i.i473, 0
  br i1 %i.apm, label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_imports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i, label %bb.na

bb.na:                                            ; preds = %.lr.ph.i.i.i.i471
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 1 ; 2 uses
  %i.apo = add nuw nsw i64 %.sroa.02.07.i.i.i.i472, 1
  %i.app = icmp eq ptr %i.apn, %i.apj
  br i1 %i.app, label %.loopexit438.i, label %.lr.ph.i.i.i.i471

_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_imports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i471
  %i.apq = icmp samesign ult i64 %.sroa.02.07.i.i.i.i472, %i.anb
  call void @llvm.assume(i1 %i.apq), !noalias !10991
  br label %.loopexit438.i

.loopexit438.i:                                   ; preds = %bb.na, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_imports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i, %bb.mz
  %.sroa.02.07.i.i.lcssa.sink.i.i474 = phi i64 [ %.sroa.02.07.i.i.i.i472, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_imports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i ], [ 0, %bb.mz ], [ %i.anb, %bb.na ] ; 9 uses
  %i.apr = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i474)
          to label %.noexc511 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc511:                                        ; preds = %.loopexit438.i
  %.sink.i.i.i475 = extractvalue { ptr, i64 } %i.apr, 1 ; 3 uses
  %.sink13.i.i.i476 = extractvalue { ptr, i64 } %i.apr, 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i.i476) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10992
  store ptr %.sink13.i.i.i476, ptr %i.ak, align 8, !noalias !10993
  store i64 %.sink.i.i.i475, ptr %i.afy, align 8, !noalias !10993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10994
  %i.aps = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i476, i64 %.sink.i.i.i475
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noundef nonnull readonly %.sink13.i.i.i476, ptr noundef nonnull readonly %i.aps, ptr noundef nonnull readonly @33, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @33, i64 1))
          to label %.noexc512 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc512:                                        ; preds = %.noexc511
  call void @llvm.experimental.noalias.scope.decl(metadata !10995)
  %i.apt = load i64, ptr %i.aga, align 8, !alias.scope !10996, !noalias !10997, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i477 = load i64, ptr %i.afz, align 8, !alias.scope !10996, !noalias !10997 ; 2 uses
  %i.apu = icmp ult i64 %.promoted.i.i.i.i.i477, %i.apt
  br i1 %i.apu, label %.lr.ph.i.i.i.i.i482, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i478

.lr.ph.i.i.i.i.i482:                              ; preds = %.noexc512
  %.val1.i.i.i.i.i.i.i483 = load ptr, ptr %i.aj, align 8, !alias.scope !10996, !noalias !10997, !nonnull !5, !noundef !5
  %.val.i.i.i.i.i.i.i484 = load ptr, ptr %i.agb, align 8, !alias.scope !10996, !noalias !10997, !nonnull !5, !noundef !5
  br label %bb.nb

bb.nb:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i488, %.lr.ph.i.i.i.i.i482
  %i.apv = phi i64 [ %.promoted.i.i.i.i.i477, %.lr.ph.i.i.i.i.i482 ], [ %i.apy, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i488 ] ; 3 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i483, i64 %i.apv
  %i.apx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i484, i64 %i.apv
  %.val7.i.i.i.i.i485 = load i8, ptr %i.apw, align 1, !noalias !10998, !noundef !5
  %.val8.i.i.i.i.i486 = load i8, ptr %i.apx, align 1, !noalias !10998, !noundef !5
  %.not.i.i15.i.i.i.i487 = icmp eq i8 %.val7.i.i.i.i.i485, %.val8.i.i.i.i.i486
  br i1 %.not.i.i15.i.i.i.i487, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i488, label %bb.nc

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i488: ; preds = %bb.nb
  %i.apy = add i64 %i.apv, 1                      ; 2 uses
  %exitcond.not.i.i.i.i.i489 = icmp eq i64 %i.apy, %i.apt
  br i1 %exitcond.not.i.i.i.i.i489, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i478, label %bb.nb

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i478: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i488, %.noexc512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10994
  %.not.i.i.i.i.i.i479 = icmp eq i64 %.sink.i.i.i475, 0
  br i1 %.not.i.i.i.i.i.i479, label %.loopexit439.i, label %bb.nf

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10994
  br label %.loopexit439.i

.loopexit637.i:                                   ; preds = %bb.mv, %.thread625.i
  %i.apz = phi ptr [ %i.aom, %.thread625.i ], [ %i.aoq, %bb.mv ] ; 2 uses
  %i.aqa = phi i64 [ %i.aol, %.thread625.i ], [ %i.aop, %bb.mv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10999
  store ptr %i.apz, ptr %i.ai, align 8, !noalias !11000
  store i64 %i.aqa, ptr %i.agg, align 8, !noalias !11000
  %i.aqb = icmp eq i64 %i.aqa, 0
  br i1 %i.aqb, label %._crit_edge115.i271.i, label %.lr.ph114.i258.i

bb.nd:                                            ; preds = %bb.ne
  %indvars.iv.next.i270.i = add nuw nsw i64 %indvars.iv.i261.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10999
  store ptr %i.aqt, ptr %i.ai, align 8, !noalias !11000
  store i64 %i.aqs, ptr %i.agg, align 8, !noalias !11000
  %i.aqc = icmp eq i64 %i.aqs, 0
  br i1 %i.aqc, label %._crit_edge115.i271.i, label %.lr.ph114.i258.i

.lr.ph114.i258.i:                                 ; preds = %.loopexit637.i, %bb.nd
  %indvars.iv.i261.i = phi i64 [ %indvars.iv.next.i270.i, %bb.nd ], [ 0, %.loopexit637.i ] ; 3 uses
  %.sroa.480.0110.i263.i = phi i64 [ %i.aqs, %bb.nd ], [ %i.aqa, %.loopexit637.i ]
  %.sroa.078.0109.i264.i = phi ptr [ %i.aqt, %bb.nd ], [ %i.apz, %.loopexit637.i ] ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i264.i, i64 %.sroa.480.0110.i263.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10999
  store ptr %.sroa.078.0109.i264.i, ptr %i.ah, align 8, !noalias !10999
  store ptr %i.aqd, ptr %.sroa.24.0..sroa_idx.i.i259.i, align 8, !noalias !10999
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i260.i, align 8, !noalias !10999
  %i.aqe = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %.noexc513 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc513:                                        ; preds = %.lr.ph114.i258.i
  %i.aqf = extractvalue { i1, i8 } %i.aqe, 0
  br i1 %i.aqf, label %.lr.ph.i278.preheader.i, label %.lr.ph.i._crit_edge.i265.thread.i

.lr.ph.i278.preheader.i:                          ; preds = %.noexc513
  %.pr.i.i279529.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i260.i, align 8, !noalias !10999 ; 2 uses
  %i.aqg = icmp eq i64 %.pr.i.i279529.i, 0
  br i1 %i.aqg, label %.lr.ph.i._crit_edge.i265.i, label %.lr.ph.i.i280.i

.lr.ph.i.i280.i:                                  ; preds = %.lr.ph.i278.preheader.i, %.lr.ph.i278.i
  %.pr.i.i279530.i = phi i64 [ %.pr.i.i279.i, %.lr.ph.i278.i ], [ %.pr.i.i279529.i, %.lr.ph.i278.preheader.i ]
  %i.aqh = phi { i1, i8 } [ %i.aqj, %.lr.ph.i278.i ], [ %i.aqe, %.lr.ph.i278.preheader.i ]
  %i.aqi = add i64 %.pr.i.i279530.i, -1
  store i64 %i.aqi, ptr %.sroa.35.0..sroa_idx.i.i260.i, align 8, !noalias !10999
  %i.aqj = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %.noexc514 unwind label %.loopexit.split-lp762.loopexit ; 3 uses

.noexc514:                                        ; preds = %.lr.ph.i.i280.i
  %i.aqk = extractvalue { i1, i8 } %i.aqj, 0
  br i1 %i.aqk, label %.lr.ph.i278.i, label %.lr.ph.i._crit_edge.i265.i

.lr.ph.i278.i:                                    ; preds = %.noexc514
  %.pr.i.i279.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i260.i, align 8, !noalias !10999 ; 2 uses
  %i.aql = icmp eq i64 %.pr.i.i279.i, 0
  br i1 %i.aql, label %.lr.ph.i._crit_edge.i265.i, label %.lr.ph.i.i280.i

._crit_edge115.i271.i:                            ; preds = %.loopexit637.i, %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10999
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i265.i:                       ; preds = %.lr.ph.i278.i, %.noexc514, %.lr.ph.i278.preheader.i
  %.lcssa457.i = phi { i1, i8 } [ %i.aqe, %.lr.ph.i278.preheader.i ], [ %i.aqh, %.noexc514 ], [ %i.aqj, %.lr.ph.i278.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10999
  %i.aqm = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, i64 noundef 1)
          to label %.noexc515 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc515:                                        ; preds = %.lr.ph.i._crit_edge.i265.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10999
  %i.aqn = icmp samesign ult i64 %indvars.iv.i261.i, 64
  br i1 %i.aqn, label %bb.ne, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.lr.ph.i._crit_edge.i265.thread.i:                ; preds = %.noexc513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10999
  %i.aqo = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, i64 noundef 1)
          to label %.noexc516 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc516:                                        ; preds = %.lr.ph.i._crit_edge.i265.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10999
  %i.aqp = icmp samesign ult i64 %indvars.iv.i261.i, 64
  br i1 %i.aqp, label %.thread634.i, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

.thread634.i:                                     ; preds = %.noexc516
  %9 = extractvalue { ptr, i64 } %i.aqo, 1
  %10 = extractvalue { ptr, i64 } %i.aqo, 0
  br label %.loopexit432.i

bb.ne:                                            ; preds = %.noexc515
  %i.aqq = extractvalue { i1, i8 } %.lcssa457.i, 1
  %i.aqr = icmp sgt i8 %i.aqq, -1
  %i.aqs = extractvalue { ptr, i64 } %i.aqm, 1    ; 4 uses
  %i.aqt = extractvalue { ptr, i64 } %i.aqm, 0    ; 3 uses
  br i1 %i.aqr, label %.loopexit432.i, label %bb.nd

.loopexit439.i:                                   ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i478, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10992
  br label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile13parse_imports.exit.backedge

bb.nf:                                            ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i478
  %i.aqu = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak, i64 noundef 1)
          to label %.noexc517 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc517:                                        ; preds = %bb.nf
  %i.aqv = extractvalue { ptr, i64 } %i.aqu, 0    ; 4 uses
  %i.aqw = extractvalue { ptr, i64 } %i.aqu, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10992
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aqv) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !10977
  invoke void @_RNvNtCs2AhGS15tZfv_4bstr4utf88validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ana, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i474)
          to label %.noexc518 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc518:                                        ; preds = %.noexc517
  %i.aqx = load i64, ptr %i.av, align 8, !range !9, !noalias !10977, !noundef !5
  %.not209.i = icmp eq i64 %i.aqx, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10977
  br i1 %.not209.i, label %bb.ng, label %.loopexit432.i

bb.ng:                                            ; preds = %.noexc518
  %i.aqy = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapReuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ana, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i474)
          to label %.noexc519 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc519:                                        ; preds = %bb.ng
  br i1 %i.aqy, label %.loopexit432.i, label %bb.nh

bb.nh:                                            ; preds = %.noexc519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !10977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !10977
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i474, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc520 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc520:                                        ; preds = %bb.nh
  %i.aqz = load i64, ptr %i.au, align 8, !range !11, !noalias !10977, !noundef !5
  %i.ara = trunc nuw i64 %i.aqz to i1
  %i.arb = load i64, ptr %i.agc, align 8, !range !18, !noalias !10977, !noundef !5 ; 3 uses
  br i1 %i.ara, label %bb.ni, label %bb.nj, !prof !6

bb.ni:                                            ; preds = %.noexc520
  %i.arc = load i64, ptr %i.agd, align 8, !noalias !10977
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.arb, i64 %i.arc) #31
          to label %.noexc521 unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc521:                                        ; preds = %bb.ni
  unreachable

bb.nj:                                            ; preds = %.noexc520
  %i.ard = load ptr, ptr %i.agd, align 8, !noalias !10977, !nonnull !5, !noundef !5 ; 2 uses
  %i.are = icmp ule i64 %.sroa.02.07.i.i.lcssa.sink.i.i474, %i.arb
  call void @llvm.assume(i1 %i.are)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !10977
  %.not210.i = icmp eq i64 %.sroa.02.07.i.i.lcssa.sink.i.i474, 0
  br i1 %.not210.i, label %bb.nk, label %bb.no

bb.nk:                                            ; preds = %bb.no, %bb.nj
  store i64 %i.arb, ptr %i.aw, align 8, !noalias !10977
  store ptr %i.ard, ptr %.sroa.4207.0..sroa_idx.i, align 8, !noalias !10977
  store i64 %.sroa.02.07.i.i.lcssa.sink.i.i474, ptr %.sroa.6208.0..sroa_idx.i, align 8, !noalias !10977
  %i.arf = load i64, ptr %.sroa.599.0..sroa_idx, align 8, !alias.scope !11001, !noalias !11002, !noundef !5 ; 3 uses
  %i.arg = load i64, ptr %i.jj, align 8, !range !19, !alias.scope !11001, !noalias !11002, !noundef !5
  %i.arh = icmp eq i64 %i.arf, %i.arg
  br i1 %i.arh, label %bb.nl, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i480

bb.nl:                                            ; preds = %bb.nk
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i480 unwind label %bb.nm, !noalias !11003

bb.nm:                                            ; preds = %bb.nl
  %i.ari = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw) #28
          to label %.body466 unwind label %bb.nn, !noalias !11004

bb.nn:                                            ; preds = %bb.nm
  %i.arj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11004
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i480: ; preds = %bb.nl, %bb.nk
  %i.ark = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !alias.scope !11001, !noalias !11002, !nonnull !5, !noundef !5
  %i.arl = getelementptr inbounds nuw [24 x i8], ptr %i.ark, i64 %i.arf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arl, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !11004
  %i.arm = add i64 %i.arf, 1
  store i64 %i.arm, ptr %.sroa.599.0..sroa_idx, align 8, !alias.scope !11001, !noalias !11002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !10977
  %i.arn = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.go, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ana, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i474)
          to label %.loopexit432.i unwind label %.loopexit.split-lp762.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.no:                                            ; preds = %bb.nj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ard, ptr nonnull align 1 %i.ana, i64 %.sroa.02.07.i.i.lcssa.sink.i.i474, i1 false), !noalias !11004
  br label %bb.nk

bb.np:                                            ; preds = %.body466, %.thread724
  %i.aro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.nq:                                            ; preds = %.loopexit1364
  %i.arp = sub nuw i64 %i.afn, %.sroa.6588.8.copyload ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.6588.8.copyload
  call void @llvm.experimental.noalias.scope.decl(metadata !11005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11006
  store i64 0, ptr %i.ag, align 8, !noalias !11006
  store ptr inttoptr (i64 8 to ptr), ptr %i.xn, align 8, !noalias !11006
  store i64 0, ptr %i.xo, align 8, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11006
  %i.arr = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @43)
          to label %bb.ns unwind label %bb.nr, !noalias !11006 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.body.i, %bb.nr
  %.pn.pn.i = phi { ptr, i32 } [ %i.ars, %bb.nr ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #28
          to label %.thread724 unwind label %bb.qn, !noalias !11007

bb.nr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEBJ_.exit631.i, %._crit_edge1338.i, %bb.nq
  %i.ars = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit.i

bb.ns:                                            ; preds = %bb.nq
  %i.art = extractvalue { i64, i64 } %i.arr, 0
  %i.aru = extractvalue { i64, i64 } %i.arr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false), !noalias !11006
  store i64 %i.art, ptr %.sroa.4165.0..sroa_idx.i, align 8, !noalias !11006
  store i64 %i.aru, ptr %.sroa.5166.0..sroa_idx.i, align 8, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !11006
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.nt unwind label %.loopexit.split-lp991.i.loopexit, !noalias !11007

.body.i:                                          ; preds = %.loopexit.split-lp991.i.loopexit, %.loopexit.split-lp991.i.loopexit.split-lp, %.loopexit.split-lp.i, %bb.qj, %bb.pv, %bb.ps, %bb.oe, %bb.nx, %.loopexit990.i
  %.pn.i = phi { ptr, i32 } [ %i.asd, %bb.nx ], [ %eh.lpad-body590.ph.i, %.loopexit.split-lp.i ], [ %i.aze, %bb.pv ], [ %i.ayz, %bb.ps ], [ %i.asv, %bb.oe ], [ %i.bap, %bb.qj ], [ %lpad.loopexit992.i, %.loopexit990.i ], [ %lpad.loopexit816, %.loopexit.split-lp991.i.loopexit ], [ %lpad.loopexit.split-lp817, %.loopexit.split-lp991.i.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.qn, !noalias !11007

.loopexit990.i:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.invoke.i
  %lpad.loopexit992.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp991.i.loopexit:                 ; preds = %bb.ns, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i627.i
  %lpad.loopexit816 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp991.i.loopexit.split-lp:        ; preds = %bb.nu
  %lpad.loopexit.split-lp817 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.nt:                                            ; preds = %bb.ns
  %i.arv = load i64, ptr %i.x, align 8, !range !11, !noalias !11006, !noundef !5
  %i.arw = trunc nuw i64 %i.arv to i1
  %i.arx = load i64, ptr %i.xp, align 8, !range !18, !noalias !11006, !noundef !5 ; 2 uses
  br i1 %i.arw, label %bb.nu, label %bb.nv, !prof !6

bb.nu:                                            ; preds = %bb.nt
  %i.ary = load i64, ptr %i.xq, align 8, !noalias !11006
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.arx, i64 %i.ary) #31
          to label %bb.oa unwind label %.loopexit.split-lp991.i.loopexit.split-lp, !noalias !11007

bb.nv:                                            ; preds = %bb.nt
  %i.arz = load ptr, ptr %i.xq, align 8, !noalias !11006, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11006
  store i64 0, ptr %i.xr, align 8, !noalias !11006
  store i64 %i.arx, ptr %i.ae, align 8, !noalias !11006
  store ptr %i.arz, ptr %.sroa.4171.0..sroa_idx.i, align 8, !noalias !11006
  store i64 0, ptr %.sroa.5172.0..sroa_idx.i, align 8, !noalias !11006
  %i.asa = load i64, ptr %i.xo, align 8, !alias.scope !11008, !noalias !11009, !noundef !5 ; 4 uses
  %i.asb = load i64, ptr %i.ag, align 8, !range !19, !alias.scope !11008, !noalias !11009, !noundef !5
  %i.asc = icmp eq i64 %i.asa, %i.asb
  br i1 %i.asc, label %bb.nw, label %bb.nz

bb.nw:                                            ; preds = %bb.nv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.nz unwind label %bb.nx, !noalias !11010

bb.nx:                                            ; preds = %bb.nw
  %i.asd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae) #28
          to label %.body.i unwind label %bb.ny, !noalias !11007

bb.ny:                                            ; preds = %bb.nx
  %i.ase = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

bb.nz:                                            ; preds = %bb.nw, %bb.nv
  %i.asf = load ptr, ptr %i.xn, align 8, !alias.scope !11008, !noalias !11009, !nonnull !5, !noundef !5
end_hunk_14
begin_hunk_15_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO16parse_macho_file:bb.a
  %i.asq = getelementptr inbounds nuw [32 x i8], ptr %i.asp, i64 %i.asm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.asq, i64 32, i1 false), !noalias !11007
  %i.asr = load i64, ptr %i.xs, align 8, !noalias !11006, !noundef !5
  %i.ass = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapjuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af, i64 noundef %i.asr)
          to label %bb.ob unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !11007

bb.oa:                                            ; preds = %bb.nu
  unreachable

.loopexit.i554:                                   ; preds = %.lr.ph.i.i616.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i._crit_edge.i601.i, %.lr.ph114.i594.i
  %lpad.loopexit936.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.lr.ph.i.i476.i
  %lpad.loopexit940.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i.i509.i
  %lpad.loopexit942.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i.i.i567
  %lpad.loopexit945.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i541.i
  %lpad.loopexit947.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i448.i
  %lpad.loopexit950.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i.i568
  %lpad.loopexit952.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.qd, %bb.qb, %bb.pp, %bb.pm, %.loopexit.i.i555.i
  %lpad.loopexit955.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i423.i
  %lpad.loopexit959.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i._crit_edge.i461.i, %.lr.ph114.i454.i
  %lpad.loopexit962.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i._crit_edge.i.i493.i, %.lr.ph114.i.i486.i
  %lpad.loopexit965.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i._crit_edge.i.i.i, %.lr.ph114.i.i.i
  %lpad.loopexit969.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i._crit_edge.i526.i, %.lr.ph114.i519.i
  %lpad.loopexit972.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i._crit_edge.i433.i, %.lr.ph114.i426.i
  %lpad.loopexit976.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i._crit_edge.i.i533, %.lr.ph114.i.i529
  %lpad.loopexit979.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ph, %bb.pe, %.loopexit.i.i.i541, %._crit_edge.i.i549, %.lr.ph1337.i
  %lpad.loopexit.split-lp980.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ob:                                            ; preds = %.lr.ph1337.i
  br i1 %i.ass, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.ast = load i64, ptr %i.xs, align 8, !noalias !11006, !noundef !5 ; 3 uses
  %i.asu = icmp ult i64 %i.arp, %i.ast
  br i1 %i.asu, label %bb.od, label %bb.og

bb.od:                                            ; preds = %bb.oc, %bb.ob
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.invoke.i unwind label %bb.oe, !noalias !11007

bb.oe:                                            ; preds = %bb.od
  %i.asv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body.i unwind label %bb.of, !noalias !11007

bb.of:                                            ; preds = %bb.oe
  %i.asw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.invoke.i: ; preds = %bb.pu, %bb.od
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.backedge.i unwind label %.loopexit990.i, !noalias !11007

bb.og:                                            ; preds = %bb.oc
  %i.asx = sub nuw nsw i64 %i.arp, %i.ast         ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.ast ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11011
  store ptr %i.asy, ptr %i.u, align 8, !noalias !11012
  store i64 %i.asx, ptr %i.xt, align 8, !noalias !11012
  %i.asz = icmp eq i64 %i.asx, 0
  br i1 %i.asz, label %._crit_edge115.i.i537, label %.lr.ph114.i.i529

bb.oh:                                            ; preds = %bb.oi
  %indvars.iv.next.i.i536 = add nuw nsw i64 %indvars.iv.i.i530, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11011
  store ptr %i.ato, ptr %i.u, align 8, !noalias !11012
  store i64 %i.atn, ptr %i.xt, align 8, !noalias !11012
  %i.ata = icmp eq i64 %i.atn, 0
  br i1 %i.ata, label %._crit_edge115.i.i537, label %.lr.ph114.i.i529

.lr.ph114.i.i529:                                 ; preds = %bb.og, %bb.oh
  %indvars.iv.i.i530 = phi i64 [ %indvars.iv.next.i.i536, %bb.oh ], [ 0, %bb.og ] ; 3 uses
  %.sroa.0.0112.i.i = phi i64 [ %i.ats, %bb.oh ], [ 0, %bb.og ]
  %.sroa.480.0110.i.i531 = phi i64 [ %i.atn, %bb.oh ], [ %i.asx, %bb.og ]
  %.sroa.078.0109.i.i532 = phi ptr [ %i.ato, %bb.oh ], [ %i.asy, %bb.og ] ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i.i532, i64 %.sroa.480.0110.i.i531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11011
  store ptr %.sroa.078.0109.i.i532, ptr %i.t, align 8, !noalias !11011
  store ptr %i.atb, ptr %.sroa.24.0..sroa_idx.i.i.i525, align 8, !noalias !11011
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i526, align 8, !noalias !11011
  %i.atc = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc420.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc420.i:                                      ; preds = %.lr.ph114.i.i529
  %i.atd = extractvalue { i1, i8 } %i.atc, 0
  br i1 %i.atd, label %.lr.ph.i.preheader.i, label %.lr.ph.i._crit_edge.i.i533

.lr.ph.i.preheader.i:                             ; preds = %.noexc420.i
  %.pr.i.i1313.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i526, align 8, !noalias !11011 ; 2 uses
  %i.ate = icmp eq i64 %.pr.i.i1313.i, 0
  br i1 %i.ate, label %.lr.ph.i._crit_edge.loopexit.i.i, label %.lr.ph.i.i.i568

.lr.ph.i.i.i568:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i570
  %.pr.i.i1314.i = phi i64 [ %.pr.i.i.i571, %.lr.ph.i.i570 ], [ %.pr.i.i1313.i, %.lr.ph.i.preheader.i ]
  %i.atf = phi { i1, i8 } [ %i.ath, %.lr.ph.i.i570 ], [ %i.atc, %.lr.ph.i.preheader.i ]
  %i.atg = add i64 %.pr.i.i1314.i, -1
  store i64 %i.atg, ptr %.sroa.35.0..sroa_idx.i.i.i526, align 8, !noalias !11011
  %i.ath = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc421.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc421.i:                                      ; preds = %.lr.ph.i.i.i568
  %i.ati = extractvalue { i1, i8 } %i.ath, 0
  br i1 %i.ati, label %.lr.ph.i.i570, label %.lr.ph.i._crit_edge.loopexit.i.i

.lr.ph.i.i570:                                    ; preds = %.noexc421.i
  %.pr.i.i.i571 = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i526, align 8, !noalias !11011 ; 2 uses
  %i.atj = icmp eq i64 %.pr.i.i.i571, 0
  br i1 %i.atj, label %.lr.ph.i._crit_edge.loopexit.i.i, label %.lr.ph.i.i.i568

._crit_edge115.i.i537:                            ; preds = %bb.og, %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11011
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i.i:                 ; preds = %.lr.ph.i.i570, %.noexc421.i, %.lr.ph.i.preheader.i
  %.lcssa.i569 = phi { i1, i8 } [ %i.atc, %.lr.ph.i.preheader.i ], [ %i.atf, %.noexc421.i ], [ %i.ath, %.lr.ph.i.i570 ]
  %i.atk = extractvalue { i1, i8 } %.lcssa.i569, 1
  br label %.lr.ph.i._crit_edge.i.i533

.lr.ph.i._crit_edge.i.i533:                       ; preds = %.lr.ph.i._crit_edge.loopexit.i.i, %.noexc420.i
  %.sroa.0.0.lcssa.i.i.i534 = phi i8 [ 0, %.noexc420.i ], [ %i.atk, %.lr.ph.i._crit_edge.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11011
  %i.atl = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef 1)
          to label %.noexc422.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc422.i:                                      ; preds = %.lr.ph.i._crit_edge.i.i533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11011
  %i.atm = icmp samesign ult i64 %indvars.iv.i.i530, 64
  br i1 %i.atm, label %bb.oi, label %.loopexit982.i

bb.oi:                                            ; preds = %.noexc422.i
  %i.atn = extractvalue { ptr, i64 } %i.atl, 1    ; 7 uses
  %i.ato = extractvalue { ptr, i64 } %i.atl, 0    ; 5 uses
  %i.atp = and i8 %.sroa.0.0.lcssa.i.i.i534, 127
  %i.atq = zext nneg i8 %i.atp to i64
  %i.atr = shl i64 %i.atq, %indvars.iv.i.i530
  %i.ats = or i64 %i.atr, %.sroa.0.0112.i.i       ; 2 uses
  %i.att = icmp sgt i8 %.sroa.0.0.lcssa.i.i.i534, -1
  br i1 %i.att, label %bb.oj, label %bb.oh

bb.oj:                                            ; preds = %bb.oi
  %.not336.i = icmp eq i64 %i.ats, 0              ; 2 uses
  br i1 %.not336.i, label %.noexc.i, label %bb.om

.noexc.sink.split.i:                              ; preds = %bb.oy, %bb.pi
  %.sink.i548 = phi ptr [ %i.ayb, %bb.pi ], [ %i.awt, %bb.oy ] ; 2 uses
  %.sroa.6329.0.ph.i = phi i64 [ %i.ayc, %bb.pi ], [ %i.aws, %bb.oy ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i548) ]
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.os, %.noexc.sink.split.i, %bb.oj
  %.sroa.0327.0.i = phi ptr [ %i.ato, %bb.oj ], [ %.sink.i548, %.noexc.sink.split.i ], [ %i.avo, %bb.os ] ; 4 uses
  %.sroa.6329.0.i = phi i64 [ %i.atn, %bb.oj ], [ %.sroa.6329.0.ph.i, %.noexc.sink.split.i ], [ %i.avn, %bb.os ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11006
  store ptr %.sroa.0327.0.i, ptr %i.v, align 8, !noalias !11013
  store i64 %.sroa.6329.0.i, ptr %i.ye, align 8, !noalias !11013
  %i.atu = icmp eq i64 %.sroa.6329.0.i, 0
  br i1 %i.atu, label %bb.pj, label %bb.ok

bb.ok:                                            ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0327.0.i) ]
  %i.atv = getelementptr inbounds nuw i8, ptr %.sroa.0327.0.i, i64 %.sroa.6329.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11006
  store ptr %.sroa.0327.0.i, ptr %i.s, align 8, !noalias !11006
  store ptr %i.atv, ptr %.sroa.24.0..sroa_idx.i.i527, align 8, !noalias !11006
  br label %.lr.ph.i423.i

.lr.ph.i423.i:                                    ; preds = %bb.ol, %bb.ok
  %.sroa.0.07.i.i = phi i8 [ %i.aub, %bb.ol ], [ 0, %bb.ok ]
  %i.atw = phi i64 [ %.pr.i.i555, %bb.ol ], [ 1, %bb.ok ]
  %i.atx = add i64 %i.atw, -1
  store i64 %i.atx, ptr %.sroa.35.0..sroa_idx.i.i528, align 8, !noalias !11006
  %i.aty = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc424.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc424.i:                                      ; preds = %.lr.ph.i423.i
  %i.atz = extractvalue { i1, i8 } %i.aty, 0
  br i1 %i.atz, label %bb.ol, label %._crit_edge.i.i549

._crit_edge.i.i549:                               ; preds = %bb.ol, %.noexc424.i
  %.sroa.0.0.lcssa.i.i = phi i8 [ %.sroa.0.07.i.i, %.noexc424.i ], [ %i.aub, %bb.ol ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11006
  %i.aua = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, i64 noundef 1)
          to label %bb.pk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !11007 ; 2 uses

bb.ol:                                            ; preds = %.noexc424.i
  %i.aub = extractvalue { i1, i8 } %i.aty, 1      ; 2 uses
  %.pr.i.i555 = load i64, ptr %.sroa.35.0..sroa_idx.i.i528, align 8, !noalias !11006 ; 2 uses
  %i.auc = icmp eq i64 %.pr.i.i555, 0
  br i1 %i.auc, label %._crit_edge.i.i549, label %.lr.ph.i423.i

bb.om:                                            ; preds = %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11014
  store ptr %i.ato, ptr %i.r, align 8, !noalias !11015
  store i64 %i.atn, ptr %i.xu, align 8, !noalias !11015
  %i.aud = icmp eq i64 %i.atn, 0
  br i1 %i.aud, label %._crit_edge115.i439.i, label %.lr.ph114.i426.i

bb.on:                                            ; preds = %bb.oo
  %indvars.iv.next.i438.i = add nuw nsw i64 %indvars.iv.i429.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11014
  store ptr %i.aus, ptr %i.r, align 8, !noalias !11015
  store i64 %i.aur, ptr %i.xu, align 8, !noalias !11015
  %i.aue = icmp eq i64 %i.aur, 0
  br i1 %i.aue, label %._crit_edge115.i439.i, label %.lr.ph114.i426.i

.lr.ph114.i426.i:                                 ; preds = %bb.om, %bb.on
  %indvars.iv.i429.i = phi i64 [ %indvars.iv.next.i438.i, %bb.on ], [ 0, %bb.om ] ; 3 uses
  %.sroa.0.0112.i430.i = phi i64 [ %i.auw, %bb.on ], [ 0, %bb.om ]
  %.sroa.480.0110.i431.i = phi i64 [ %i.aur, %bb.on ], [ %i.atn, %bb.om ]
  %.sroa.078.0109.i432.i = phi ptr [ %i.aus, %bb.on ], [ %i.ato, %bb.om ] ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i432.i, i64 %.sroa.480.0110.i431.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11014
  store ptr %.sroa.078.0109.i432.i, ptr %i.q, align 8, !noalias !11014
  store ptr %i.auf, ptr %.sroa.24.0..sroa_idx.i.i427.i, align 8, !noalias !11014
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i428.i, align 8, !noalias !11014
  %i.aug = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc450.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc450.i:                                      ; preds = %.lr.ph114.i426.i
  %i.auh = extractvalue { i1, i8 } %i.aug, 0
  br i1 %i.auh, label %.lr.ph.i446.preheader.i, label %.lr.ph.i._crit_edge.i433.i

.lr.ph.i446.preheader.i:                          ; preds = %.noexc450.i
  %.pr.i.i4471316.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i428.i, align 8, !noalias !11014 ; 2 uses
  %i.aui = icmp eq i64 %.pr.i.i4471316.i, 0
  br i1 %i.aui, label %.lr.ph.i._crit_edge.loopexit.i449.i, label %.lr.ph.i.i448.i

.lr.ph.i.i448.i:                                  ; preds = %.lr.ph.i446.preheader.i, %.lr.ph.i446.i
  %.pr.i.i4471317.i = phi i64 [ %.pr.i.i447.i, %.lr.ph.i446.i ], [ %.pr.i.i4471316.i, %.lr.ph.i446.preheader.i ]
  %i.auj = phi { i1, i8 } [ %i.aul, %.lr.ph.i446.i ], [ %i.aug, %.lr.ph.i446.preheader.i ]
  %i.auk = add i64 %.pr.i.i4471317.i, -1
  store i64 %i.auk, ptr %.sroa.35.0..sroa_idx.i.i428.i, align 8, !noalias !11014
  %i.aul = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc451.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc451.i:                                      ; preds = %.lr.ph.i.i448.i
  %i.aum = extractvalue { i1, i8 } %i.aul, 0
  br i1 %i.aum, label %.lr.ph.i446.i, label %.lr.ph.i._crit_edge.loopexit.i449.i

.lr.ph.i446.i:                                    ; preds = %.noexc451.i
  %.pr.i.i447.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i428.i, align 8, !noalias !11014 ; 2 uses
  %i.aun = icmp eq i64 %.pr.i.i447.i, 0
  br i1 %i.aun, label %.lr.ph.i._crit_edge.loopexit.i449.i, label %.lr.ph.i.i448.i

._crit_edge115.i439.i:                            ; preds = %bb.om, %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11014
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i449.i:              ; preds = %.lr.ph.i446.i, %.noexc451.i, %.lr.ph.i446.preheader.i
  %.lcssa1079.i = phi { i1, i8 } [ %i.aug, %.lr.ph.i446.preheader.i ], [ %i.auj, %.noexc451.i ], [ %i.aul, %.lr.ph.i446.i ]
  %i.auo = extractvalue { i1, i8 } %.lcssa1079.i, 1
  br label %.lr.ph.i._crit_edge.i433.i

.lr.ph.i._crit_edge.i433.i:                       ; preds = %.lr.ph.i._crit_edge.loopexit.i449.i, %.noexc450.i
  %.sroa.0.0.lcssa.i.i434.i = phi i8 [ 0, %.noexc450.i ], [ %i.auo, %.lr.ph.i._crit_edge.loopexit.i449.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11014
  %i.aup = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i64 noundef 1)
          to label %.noexc452.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc452.i:                                      ; preds = %.lr.ph.i._crit_edge.i433.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11014
  %i.auq = icmp samesign ult i64 %indvars.iv.i429.i, 64
  br i1 %i.auq, label %bb.oo, label %.loopexit982.i

bb.oo:                                            ; preds = %.noexc452.i
  %i.aur = extractvalue { ptr, i64 } %i.aup, 1    ; 10 uses
  %i.aus = extractvalue { ptr, i64 } %i.aup, 0    ; 8 uses
  %i.aut = and i8 %.sroa.0.0.lcssa.i.i434.i, 127
  %i.auu = zext nneg i8 %i.aut to i64
  %i.auv = shl i64 %i.auu, %indvars.iv.i429.i
  %i.auw = or i64 %i.auv, %.sroa.0.0112.i430.i    ; 2 uses
  %i.aux = icmp sgt i8 %.sroa.0.0.lcssa.i.i434.i, -1
  br i1 %i.aux, label %bb.op, label %bb.on

bb.op:                                            ; preds = %bb.oo
  %i.auy = icmp eq i64 %i.aur, 0                  ; 3 uses
  switch i64 %i.auw, label %bb.oq [
    i64 16, label %bb.ot
    i64 8, label %bb.oz
  ]

bb.oq:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11016
  store ptr %i.aus, ptr %i.p, align 8, !noalias !11017
  store i64 %i.aur, ptr %i.yd, align 8, !noalias !11017
  br i1 %i.auy, label %._crit_edge115.i467.i, label %.lr.ph114.i454.i

bb.or:                                            ; preds = %bb.os
  %indvars.iv.next.i466.i = add nuw nsw i64 %indvars.iv.i457.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11016
  store ptr %i.avo, ptr %i.p, align 8, !noalias !11017
  store i64 %i.avn, ptr %i.yd, align 8, !noalias !11017
  %i.auz = icmp eq i64 %i.avn, 0
  br i1 %i.auz, label %._crit_edge115.i467.i, label %.lr.ph114.i454.i

.lr.ph114.i454.i:                                 ; preds = %bb.oq, %bb.or
  %indvars.iv.i457.i = phi i64 [ %indvars.iv.next.i466.i, %bb.or ], [ 0, %bb.oq ] ; 2 uses
  %.sroa.480.0110.i459.i = phi i64 [ %i.avn, %bb.or ], [ %i.aur, %bb.oq ]
  %.sroa.078.0109.i460.i = phi ptr [ %i.avo, %bb.or ], [ %i.aus, %bb.oq ] ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i460.i, i64 %.sroa.480.0110.i459.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11016
  store ptr %.sroa.078.0109.i460.i, ptr %i.o, align 8, !noalias !11016
  store ptr %i.ava, ptr %.sroa.24.0..sroa_idx.i.i455.i, align 8, !noalias !11016
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i456.i, align 8, !noalias !11016
  %i.avb = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.noexc478.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc478.i:                                      ; preds = %.lr.ph114.i454.i
  %i.avc = extractvalue { i1, i8 } %i.avb, 0
  br i1 %i.avc, label %.lr.ph.i474.preheader.i, label %.lr.ph.i._crit_edge.i461.i

.lr.ph.i474.preheader.i:                          ; preds = %.noexc478.i
  %.pr.i.i4751324.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i456.i, align 8, !noalias !11016 ; 2 uses
  %i.avd = icmp eq i64 %.pr.i.i4751324.i, 0
  br i1 %i.avd, label %.lr.ph.i._crit_edge.loopexit.i477.i, label %.lr.ph.i.i476.i

.lr.ph.i.i476.i:                                  ; preds = %.lr.ph.i474.preheader.i, %.lr.ph.i474.i
  %.pr.i.i4751325.i = phi i64 [ %.pr.i.i475.i, %.lr.ph.i474.i ], [ %.pr.i.i4751324.i, %.lr.ph.i474.preheader.i ]
  %i.ave = phi { i1, i8 } [ %i.avg, %.lr.ph.i474.i ], [ %i.avb, %.lr.ph.i474.preheader.i ]
  %i.avf = add i64 %.pr.i.i4751325.i, -1
  store i64 %i.avf, ptr %.sroa.35.0..sroa_idx.i.i456.i, align 8, !noalias !11016
  %i.avg = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.noexc479.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc479.i:                                      ; preds = %.lr.ph.i.i476.i
  %i.avh = extractvalue { i1, i8 } %i.avg, 0
  br i1 %i.avh, label %.lr.ph.i474.i, label %.lr.ph.i._crit_edge.loopexit.i477.i

.lr.ph.i474.i:                                    ; preds = %.noexc479.i
  %.pr.i.i475.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i456.i, align 8, !noalias !11016 ; 2 uses
  %i.avi = icmp eq i64 %.pr.i.i475.i, 0
  br i1 %i.avi, label %.lr.ph.i._crit_edge.loopexit.i477.i, label %.lr.ph.i.i476.i

._crit_edge115.i467.i:                            ; preds = %bb.oq, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11016
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i477.i:              ; preds = %.lr.ph.i474.i, %.noexc479.i, %.lr.ph.i474.preheader.i
  %.lcssa1152.i = phi { i1, i8 } [ %i.avb, %.lr.ph.i474.preheader.i ], [ %i.ave, %.noexc479.i ], [ %i.avg, %.lr.ph.i474.i ]
  %i.avj = extractvalue { i1, i8 } %.lcssa1152.i, 1
  %i.avk = icmp sgt i8 %i.avj, -1
  br label %.lr.ph.i._crit_edge.i461.i

.lr.ph.i._crit_edge.i461.i:                       ; preds = %.lr.ph.i._crit_edge.loopexit.i477.i, %.noexc478.i
  %.sroa.0.0.lcssa.i.i462.i = phi i1 [ true, %.noexc478.i ], [ %i.avk, %.lr.ph.i._crit_edge.loopexit.i477.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11016
  %i.avl = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, i64 noundef 1)
          to label %.noexc480.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc480.i:                                      ; preds = %.lr.ph.i._crit_edge.i461.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11016
  %i.avm = icmp samesign ult i64 %indvars.iv.i457.i, 64
  br i1 %i.avm, label %bb.os, label %.loopexit982.i

bb.os:                                            ; preds = %.noexc480.i
  %i.avn = extractvalue { ptr, i64 } %i.avl, 1    ; 4 uses
  %i.avo = extractvalue { ptr, i64 } %i.avl, 0    ; 3 uses
  br i1 %.sroa.0.0.lcssa.i.i462.i, label %.noexc.i, label %bb.or

bb.ot:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11018
  store ptr %i.aus, ptr %i.n, align 8, !noalias !11019
  store i64 %i.aur, ptr %i.yb, align 8, !noalias !11019
  br i1 %i.auy, label %._crit_edge115.i.i.i, label %.lr.ph114.i.i.i

bb.ou:                                            ; preds = %bb.ov
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11018
  store ptr %i.awd, ptr %i.n, align 8, !noalias !11019
  store i64 %i.awc, ptr %i.yb, align 8, !noalias !11019
  br i1 %11, label %._crit_edge115.i.i.i, label %.lr.ph114.i.i.i

.lr.ph114.i.i.i:                                  ; preds = %bb.ot, %bb.ou
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ou ], [ 0, %bb.ot ] ; 2 uses
  %.sroa.480.0110.i.i.i = phi i64 [ %i.awc, %bb.ou ], [ %i.aur, %bb.ot ]
  %.sroa.078.0109.i.i.i = phi ptr [ %i.awd, %bb.ou ], [ %i.aus, %bb.ot ] ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i.i.i, i64 %.sroa.480.0110.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11018
  store ptr %.sroa.078.0109.i.i.i, ptr %i.m, align 8, !noalias !11018
  store ptr %i.avp, ptr %.sroa.24.0..sroa_idx.i.i.i.i, align 8, !noalias !11018
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !11018
  %i.avq = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc483.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc483.i:                                      ; preds = %.lr.ph114.i.i.i
  %i.avr = extractvalue { i1, i8 } %i.avq, 0
  br i1 %i.avr, label %.lr.ph.i.preheader.i.i566, label %.lr.ph.i._crit_edge.i.i.i

.lr.ph.i.preheader.i.i566:                        ; preds = %.noexc483.i
  %.pr.i.i25.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !11018 ; 2 uses
  %i.avs = icmp eq i64 %.pr.i.i25.i.i, 0
  br i1 %i.avs, label %.lr.ph.i._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.i567

.lr.ph.i.i.i.i567:                                ; preds = %.lr.ph.i.preheader.i.i566, %.lr.ph.i.i482.i
  %.pr.i.i26.i.i = phi i64 [ %.pr.i.i.i.i, %.lr.ph.i.i482.i ], [ %.pr.i.i25.i.i, %.lr.ph.i.preheader.i.i566 ]
  %i.avt = phi { i1, i8 } [ %i.avv, %.lr.ph.i.i482.i ], [ %i.avq, %.lr.ph.i.preheader.i.i566 ]
  %i.avu = add i64 %.pr.i.i26.i.i, -1
  store i64 %i.avu, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !11018
  %i.avv = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc484.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc484.i:                                      ; preds = %.lr.ph.i.i.i.i567
  %i.avw = extractvalue { i1, i8 } %i.avv, 0
  br i1 %i.avw, label %.lr.ph.i.i482.i, label %.lr.ph.i._crit_edge.loopexit.i.i.i

.lr.ph.i.i482.i:                                  ; preds = %.noexc484.i
  %.pr.i.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i, align 8, !noalias !11018 ; 2 uses
  %i.avx = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.avx, label %.lr.ph.i._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.i567

._crit_edge115.i.i.i:                             ; preds = %bb.ot, %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11018
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i.i.i:               ; preds = %.lr.ph.i.i482.i, %.noexc484.i, %.lr.ph.i.preheader.i.i566
  %.lcssa.i.i = phi { i1, i8 } [ %i.avq, %.lr.ph.i.preheader.i.i566 ], [ %i.avv, %.lr.ph.i.i482.i ], [ %i.avt, %.noexc484.i ]
  %i.avy = extractvalue { i1, i8 } %.lcssa.i.i, 1
  %i.avz = icmp sgt i8 %i.avy, -1
  br label %.lr.ph.i._crit_edge.i.i.i

.lr.ph.i._crit_edge.i.i.i:                        ; preds = %.lr.ph.i._crit_edge.loopexit.i.i.i, %.noexc483.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i1 [ true, %.noexc483.i ], [ %i.avz, %.lr.ph.i._crit_edge.loopexit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11018
  %i.awa = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i64 noundef 1)
          to label %.noexc485.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc485.i:                                      ; preds = %.lr.ph.i._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11018
  %i.awb = icmp samesign ult i64 %indvars.iv.i.i.i, 64
  br i1 %i.awb, label %bb.ov, label %.loopexit982.i

bb.ov:                                            ; preds = %.noexc485.i
  %i.awc = extractvalue { ptr, i64 } %i.awa, 1    ; 5 uses
  %i.awd = extractvalue { ptr, i64 } %i.awa, 0    ; 5 uses
  %11 = icmp eq i64 %i.awc, 0                     ; 2 uses
  br i1 %.sroa.0.0.lcssa.i.i.i.i, label %bb.ow, label %bb.ou

bb.ow:                                            ; preds = %bb.ov
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11020
  store ptr %i.awd, ptr %i.l, align 8, !noalias !11021
  store i64 %i.awc, ptr %i.yc, align 8, !noalias !11021
  br i1 %11, label %._crit_edge115.i.i503.i, label %.lr.ph114.i.i486.i

bb.ox:                                            ; preds = %bb.oy
  %indvars.iv.next.i.i502.i = add nuw nsw i64 %indvars.iv.i.i489.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11020
  store ptr %i.awt, ptr %i.l, align 8, !noalias !11021
  store i64 %i.aws, ptr %i.yc, align 8, !noalias !11021
  %i.awe = icmp eq i64 %i.aws, 0
  br i1 %i.awe, label %._crit_edge115.i.i503.i, label %.lr.ph114.i.i486.i

.lr.ph114.i.i486.i:                               ; preds = %bb.ow, %bb.ox
  %indvars.iv.i.i489.i = phi i64 [ %indvars.iv.next.i.i502.i, %bb.ox ], [ 0, %bb.ow ] ; 2 uses
  %.sroa.480.0110.i.i491.i = phi i64 [ %i.aws, %bb.ox ], [ %i.awc, %bb.ow ]
  %.sroa.078.0109.i.i492.i = phi ptr [ %i.awt, %bb.ox ], [ %i.awd, %bb.ow ] ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i.i492.i, i64 %.sroa.480.0110.i.i491.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11020
  store ptr %.sroa.078.0109.i.i492.i, ptr %i.k, align 8, !noalias !11020
  store ptr %i.awf, ptr %.sroa.24.0..sroa_idx.i.i.i487.i, align 8, !noalias !11020
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i488.i, align 8, !noalias !11020
  %i.awg = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc515.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc515.i:                                      ; preds = %.lr.ph114.i.i486.i
  %i.awh = extractvalue { i1, i8 } %i.awg, 0
  br i1 %i.awh, label %.lr.ph.i.preheader.i507.i, label %.lr.ph.i._crit_edge.i.i493.i

.lr.ph.i.preheader.i507.i:                        ; preds = %.noexc515.i
  %.pr.i.i25.i508.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i488.i, align 8, !noalias !11020 ; 2 uses
  %i.awi = icmp eq i64 %.pr.i.i25.i508.i, 0
  br i1 %i.awi, label %.lr.ph.i._crit_edge.loopexit.i.i511.i, label %.lr.ph.i.i.i509.i

.lr.ph.i.i.i509.i:                                ; preds = %.lr.ph.i.preheader.i507.i, %.lr.ph.i.i513.i
  %.pr.i.i26.i510.i = phi i64 [ %.pr.i.i.i514.i, %.lr.ph.i.i513.i ], [ %.pr.i.i25.i508.i, %.lr.ph.i.preheader.i507.i ]
  %i.awj = phi { i1, i8 } [ %i.awl, %.lr.ph.i.i513.i ], [ %i.awg, %.lr.ph.i.preheader.i507.i ]
  %i.awk = add i64 %.pr.i.i26.i510.i, -1
  store i64 %i.awk, ptr %.sroa.35.0..sroa_idx.i.i.i488.i, align 8, !noalias !11020
  %i.awl = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc516.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc516.i:                                      ; preds = %.lr.ph.i.i.i509.i
  %i.awm = extractvalue { i1, i8 } %i.awl, 0
  br i1 %i.awm, label %.lr.ph.i.i513.i, label %.lr.ph.i._crit_edge.loopexit.i.i511.i

.lr.ph.i.i513.i:                                  ; preds = %.noexc516.i
  %.pr.i.i.i514.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i488.i, align 8, !noalias !11020 ; 2 uses
  %i.awn = icmp eq i64 %.pr.i.i.i514.i, 0
  br i1 %i.awn, label %.lr.ph.i._crit_edge.loopexit.i.i511.i, label %.lr.ph.i.i.i509.i

._crit_edge115.i.i503.i:                          ; preds = %bb.ow, %bb.ox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11020
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i.i511.i:            ; preds = %.lr.ph.i.i513.i, %.noexc516.i, %.lr.ph.i.preheader.i507.i
  %.lcssa.i512.i = phi { i1, i8 } [ %i.awg, %.lr.ph.i.preheader.i507.i ], [ %i.awl, %.lr.ph.i.i513.i ], [ %i.awj, %.noexc516.i ]
  %i.awo = extractvalue { i1, i8 } %.lcssa.i512.i, 1
  %i.awp = icmp sgt i8 %i.awo, -1
  br label %.lr.ph.i._crit_edge.i.i493.i

.lr.ph.i._crit_edge.i.i493.i:                     ; preds = %.lr.ph.i._crit_edge.loopexit.i.i511.i, %.noexc515.i
  %.sroa.0.0.lcssa.i.i.i494.i = phi i1 [ true, %.noexc515.i ], [ %i.awp, %.lr.ph.i._crit_edge.loopexit.i.i511.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11020
  %i.awq = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, i64 noundef 1)
          to label %.noexc517.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc517.i:                                      ; preds = %.lr.ph.i._crit_edge.i.i493.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11020
  %i.awr = icmp samesign ult i64 %indvars.iv.i.i489.i, 64
  br i1 %i.awr, label %bb.oy, label %.loopexit982.i

bb.oy:                                            ; preds = %.noexc517.i
  %i.aws = extractvalue { ptr, i64 } %i.awq, 1    ; 4 uses
  %i.awt = extractvalue { ptr, i64 } %i.awq, 0    ; 3 uses
  br i1 %.sroa.0.0.lcssa.i.i.i494.i, label %.noexc.sink.split.i, label %bb.ox

bb.oz:                                            ; preds = %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11022
  store ptr %i.aus, ptr %i.j, align 8, !noalias !11023
  store i64 %i.aur, ptr %i.xv, align 8, !noalias !11023
  br i1 %i.auy, label %._crit_edge115.i532.i, label %.lr.ph114.i519.i

bb.pa:                                            ; preds = %bb.pb
  %indvars.iv.next.i531.i = add nuw nsw i64 %indvars.iv.i522.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11022
  store ptr %i.axj, ptr %i.j, align 8, !noalias !11023
  store i64 %i.axi, ptr %i.xv, align 8, !noalias !11023
  %i.awu = icmp eq i64 %i.axi, 0
  br i1 %i.awu, label %._crit_edge115.i532.i, label %.lr.ph114.i519.i

.lr.ph114.i519.i:                                 ; preds = %bb.oz, %bb.pa
  %indvars.iv.i522.i = phi i64 [ %indvars.iv.next.i531.i, %bb.pa ], [ 0, %bb.oz ] ; 2 uses
  %.sroa.480.0110.i524.i = phi i64 [ %i.axi, %bb.pa ], [ %i.aur, %bb.oz ]
  %.sroa.078.0109.i525.i = phi ptr [ %i.axj, %bb.pa ], [ %i.aus, %bb.oz ] ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i525.i, i64 %.sroa.480.0110.i524.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11022
  store ptr %.sroa.078.0109.i525.i, ptr %i.i, align 8, !noalias !11022
  store ptr %i.awv, ptr %.sroa.24.0..sroa_idx.i.i520.i, align 8, !noalias !11022
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i521.i, align 8, !noalias !11022
  %i.aww = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc543.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc543.i:                                      ; preds = %.lr.ph114.i519.i
  %i.awx = extractvalue { i1, i8 } %i.aww, 0
  br i1 %i.awx, label %.lr.ph.i539.preheader.i, label %.lr.ph.i._crit_edge.i526.i

.lr.ph.i539.preheader.i:                          ; preds = %.noexc543.i
  %.pr.i.i5401320.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i521.i, align 8, !noalias !11022 ; 2 uses
  %i.awy = icmp eq i64 %.pr.i.i5401320.i, 0
  br i1 %i.awy, label %.lr.ph.i._crit_edge.loopexit.i542.i, label %.lr.ph.i.i541.i

.lr.ph.i.i541.i:                                  ; preds = %.lr.ph.i539.preheader.i, %.lr.ph.i539.i
  %.pr.i.i5401321.i = phi i64 [ %.pr.i.i540.i, %.lr.ph.i539.i ], [ %.pr.i.i5401320.i, %.lr.ph.i539.preheader.i ]
  %i.awz = phi { i1, i8 } [ %i.axb, %.lr.ph.i539.i ], [ %i.aww, %.lr.ph.i539.preheader.i ]
  %i.axa = add i64 %.pr.i.i5401321.i, -1
  store i64 %i.axa, ptr %.sroa.35.0..sroa_idx.i.i521.i, align 8, !noalias !11022
  %i.axb = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc544.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc544.i:                                      ; preds = %.lr.ph.i.i541.i
  %i.axc = extractvalue { i1, i8 } %i.axb, 0
  br i1 %i.axc, label %.lr.ph.i539.i, label %.lr.ph.i._crit_edge.loopexit.i542.i

.lr.ph.i539.i:                                    ; preds = %.noexc544.i
  %.pr.i.i540.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i521.i, align 8, !noalias !11022 ; 2 uses
  %i.axd = icmp eq i64 %.pr.i.i540.i, 0
  br i1 %i.axd, label %.lr.ph.i._crit_edge.loopexit.i542.i, label %.lr.ph.i.i541.i

._crit_edge115.i532.i:                            ; preds = %bb.oz, %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11022
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i542.i:              ; preds = %.lr.ph.i539.i, %.noexc544.i, %.lr.ph.i539.preheader.i
  %.lcssa1129.i = phi { i1, i8 } [ %i.aww, %.lr.ph.i539.preheader.i ], [ %i.awz, %.noexc544.i ], [ %i.axb, %.lr.ph.i539.i ]
  %i.axe = extractvalue { i1, i8 } %.lcssa1129.i, 1
  %i.axf = icmp sgt i8 %i.axe, -1
  br label %.lr.ph.i._crit_edge.i526.i

.lr.ph.i._crit_edge.i526.i:                       ; preds = %.lr.ph.i._crit_edge.loopexit.i542.i, %.noexc543.i
  %.sroa.0.0.lcssa.i.i527.i = phi i1 [ true, %.noexc543.i ], [ %i.axf, %.lr.ph.i._crit_edge.loopexit.i542.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11022
  %i.axg = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef 1)
          to label %.noexc545.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc545.i:                                      ; preds = %.lr.ph.i._crit_edge.i526.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11022
  %i.axh = icmp samesign ult i64 %indvars.iv.i522.i, 64
  br i1 %i.axh, label %bb.pb, label %.loopexit982.i

bb.pb:                                            ; preds = %.noexc545.i
  %i.axi = extractvalue { ptr, i64 } %i.axg, 1    ; 8 uses
  %i.axj = extractvalue { ptr, i64 } %i.axg, 0    ; 6 uses
  br i1 %.sroa.0.0.lcssa.i.i527.i, label %bb.pc, label %bb.pa

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.experimental.noalias.scope.decl(metadata !11024)
  call void @llvm.experimental.noalias.scope.decl(metadata !11025)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11026
  store ptr %i.axj, ptr %i.h, align 8, !noalias !11027
  store i64 %i.axi, ptr %i.xw, align 8, !noalias !11027
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 %i.axi
  %i.axl = icmp samesign eq i64 %i.axi, 0
  br i1 %i.axl, label %.loopexit.i.i.i541, label %.lr.ph.i.i.i547.i

.lr.ph.i.i.i547.i:                                ; preds = %bb.pc, %bb.pd
  %.sroa.02.07.i.i.i.i539 = phi i64 [ %i.axp, %bb.pd ], [ 0, %bb.pc ] ; 3 uses
  %i.axm = phi ptr [ %i.axo, %bb.pd ], [ %i.axj, %bb.pc ] ; 2 uses
  %.val.i.i.i.i540 = load i8, ptr %i.axm, align 1, !alias.scope !11028, !noalias !11029, !noundef !5
  %i.axn = icmp eq i8 %.val.i.i.i.i540, 0
  br i1 %i.axn, label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_exports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i, label %bb.pd

bb.pd:                                            ; preds = %.lr.ph.i.i.i547.i
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axm, i64 1 ; 2 uses
  %i.axp = add nuw nsw i64 %.sroa.02.07.i.i.i.i539, 1
  %i.axq = icmp eq ptr %i.axo, %i.axk
  br i1 %i.axq, label %.loopexit.i.i.i541, label %.lr.ph.i.i.i547.i

_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_exports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i: ; preds = %.lr.ph.i.i.i547.i
  %i.axr = icmp samesign ult i64 %.sroa.02.07.i.i.i.i539, %i.axi
  call void @llvm.assume(i1 %i.axr), !noalias !11030
  br label %.loopexit.i.i.i541

.loopexit.i.i.i541:                               ; preds = %bb.pd, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_exports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i, %bb.pc
  %.sroa.02.07.i.i.lcssa.sink.i.i542 = phi i64 [ %.sroa.02.07.i.i.i.i539, %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2Q_9MachOFile13parse_exports0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B48_Es_0B2W_.exit.i.i.i ], [ 0, %bb.pc ], [ %i.axi, %bb.pd ]
  %i.axs = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i.i542)
          to label %bb.pe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !11007 ; 2 uses

bb.pe:                                            ; preds = %.loopexit.i.i.i541
  %.sink.i.i.i543 = extractvalue { ptr, i64 } %i.axs, 1 ; 3 uses
  %.sink13.i.i.i544 = extractvalue { ptr, i64 } %i.axs, 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i.i544) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11031
  store ptr %.sink13.i.i.i544, ptr %i.g, align 8, !noalias !11032
  store i64 %.sink.i.i.i543, ptr %i.xx, align 8, !noalias !11032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11033
  %i.axt = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i544, i64 %.sink.i.i.i543
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly %.sink13.i.i.i544, ptr noundef nonnull readonly %i.axt, ptr noundef nonnull readonly @33, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @33, i64 1))
          to label %.noexc549.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !11007

.noexc549.i:                                      ; preds = %bb.pe
  call void @llvm.experimental.noalias.scope.decl(metadata !11034)
  %i.axu = load i64, ptr %i.xz, align 8, !alias.scope !11035, !noalias !11036, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i545 = load i64, ptr %i.xy, align 8, !alias.scope !11035, !noalias !11036 ; 2 uses
  %i.axv = icmp ult i64 %.promoted.i.i.i.i.i545, %i.axu
  br i1 %i.axv, label %.lr.ph.i.i.i.i.i557, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i546

.lr.ph.i.i.i.i.i557:                              ; preds = %.noexc549.i
  %.val1.i.i.i.i.i.i.i558 = load ptr, ptr %i.f, align 8, !alias.scope !11035, !noalias !11036, !nonnull !5, !noundef !5
  %.val.i.i.i.i.i.i.i559 = load ptr, ptr %i.ya, align 8, !alias.scope !11035, !noalias !11036, !nonnull !5, !noundef !5
  br label %bb.pf

bb.pf:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i563, %.lr.ph.i.i.i.i.i557
  %i.axw = phi i64 [ %.promoted.i.i.i.i.i545, %.lr.ph.i.i.i.i.i557 ], [ %i.axz, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i563 ] ; 3 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i558, i64 %i.axw
  %i.axy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i559, i64 %i.axw
  %.val7.i.i.i.i.i560 = load i8, ptr %i.axx, align 1, !noalias !11037, !noundef !5
  %.val8.i.i.i.i.i561 = load i8, ptr %i.axy, align 1, !noalias !11037, !noundef !5
  %.not.i.i15.i.i.i.i562 = icmp eq i8 %.val7.i.i.i.i.i560, %.val8.i.i.i.i.i561
  br i1 %.not.i.i15.i.i.i.i562, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i563, label %bb.pg

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i563: ; preds = %bb.pf
  %i.axz = add i64 %i.axw, 1                      ; 2 uses
  %exitcond.not.i.i.i.i.i564 = icmp eq i64 %i.axz, %i.axu
  br i1 %exitcond.not.i.i.i.i.i564, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i546, label %bb.pf

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i546: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i563, %.noexc549.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11033
  %.not.i.i.i.i.i.i547 = icmp eq i64 %.sink.i.i.i543, 0
  br i1 %.not.i.i.i.i.i.i547, label %.loopexit986.i, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11033
  br label %.loopexit986.i

bb.ph:                                            ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i546
  %i.aya = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 1)
          to label %bb.pi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !11007 ; 2 uses

.loopexit986.i:                                   ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i546, %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11031
  br label %.loopexit982.i

bb.pi:                                            ; preds = %bb.ph
  %i.ayb = extractvalue { ptr, i64 } %i.aya, 0
  %i.ayc = extractvalue { ptr, i64 } %i.aya, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11031
  br label %.noexc.sink.split.i

bb.pj:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11006
  br label %.loopexit982.i

bb.pk:                                            ; preds = %._crit_edge.i.i549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11006
  %.not.i550 = icmp eq i8 %.sroa.0.0.lcssa.i.i, 0
  br i1 %.not.i550, label %._crit_edge.i553, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.pk
  %i.ayd = extractvalue { ptr, i64 } %i.aua, 1
  %i.aye = extractvalue { ptr, i64 } %i.aua, 0
  br label %.lr.ph.i551

._crit_edge.i553:                                 ; preds = %bb.qi, %bb.pk
  br i1 %.not336.i, label %bb.pu, label %bb.pq

.lr.ph.i551:                                      ; preds = %bb.qi, %.lr.ph.preheader.i
  %.sroa.3.01334.i = phi i64 [ %i.azz, %bb.qi ], [ %i.ayd, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.0331.01333.i = phi ptr [ %i.baa, %bb.qi ], [ %i.aye, %.lr.ph.preheader.i ] ; 6 uses
  %.sroa.0325.01332.i = phi i8 [ %i.ayf, %bb.qi ], [ 0, %.lr.ph.preheader.i ]
  %i.ayf = add nuw i8 %.sroa.0325.01332.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11038)
  call void @llvm.experimental.noalias.scope.decl(metadata !11039)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11040
  store ptr %.sroa.0331.01333.i, ptr %i.e, align 8, !noalias !11041
  store i64 %.sroa.3.01334.i, ptr %i.yf, align 8, !noalias !11041
  %i.ayg = getelementptr inbounds nuw i8, ptr %.sroa.0331.01333.i, i64 %.sroa.3.01334.i
  %i.ayh = icmp samesign eq i64 %.sroa.3.01334.i, 0
  br i1 %i.ayh, label %.loopexit.i.i555.i, label %.lr.ph.i.i.i552.i

.lr.ph.i.i.i552.i:                                ; preds = %.lr.ph.i551, %bb.pl
  %.sroa.02.07.i.i.i553.i = phi i64 [ %i.ayl, %bb.pl ], [ 0, %.lr.ph.i551 ] ; 2 uses
  %i.ayi = phi ptr [ %i.ayk, %bb.pl ], [ %.sroa.0331.01333.i, %.lr.ph.i551 ] ; 2 uses
  %.val.i.i.i554.i = load i8, ptr %i.ayi, align 1, !alias.scope !11042, !noalias !11043, !noundef !5
  %i.ayj = icmp eq i8 %.val.i.i.i554.i, 0
  br i1 %i.ayj, label %.loopexit.i.i555.i, label %bb.pl

bb.pl:                                            ; preds = %.lr.ph.i.i.i552.i
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayi, i64 1 ; 2 uses
  %i.ayl = add nuw nsw i64 %.sroa.02.07.i.i.i553.i, 1
  %i.aym = icmp eq ptr %i.ayk, %i.ayg
  br i1 %i.aym, label %.loopexit.i.i555.i, label %.lr.ph.i.i.i552.i

.loopexit.i.i555.i:                               ; preds = %bb.pl, %.lr.ph.i.i.i552.i, %.lr.ph.i551
  %.sroa.02.07.i.i.lcssa.sink.i556.i = phi i64 [ 0, %.lr.ph.i551 ], [ %.sroa.02.07.i.i.i553.i, %.lr.ph.i.i.i552.i ], [ %.sroa.3.01334.i, %bb.pl ] ; 3 uses
  %i.ayn = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i556.i)
          to label %bb.pm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

bb.pm:                                            ; preds = %.loopexit.i.i555.i
  %.sink.i.i557.i = extractvalue { ptr, i64 } %i.ayn, 1 ; 3 uses
  %.sink13.i.i558.i = extractvalue { ptr, i64 } %i.ayn, 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink13.i.i558.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0331.01333.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11044
  store ptr %.sink13.i.i558.i, ptr %i.d, align 8, !noalias !11045
  store i64 %.sink.i.i557.i, ptr %i.yg, align 8, !noalias !11045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11046
  %i.ayo = getelementptr inbounds nuw i8, ptr %.sink13.i.i558.i, i64 %.sink.i.i557.i
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %.sink13.i.i558.i, ptr noundef nonnull readonly %i.ayo, ptr noundef nonnull readonly @33, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @33, i64 1))
          to label %.noexc583.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007

.noexc583.i:                                      ; preds = %bb.pm
  call void @llvm.experimental.noalias.scope.decl(metadata !11047)
  %i.ayp = load i64, ptr %i.yi, align 8, !alias.scope !11048, !noalias !11049, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i563.i = load i64, ptr %i.yh, align 8, !alias.scope !11048, !noalias !11049 ; 2 uses
  %i.ayq = icmp ult i64 %.promoted.i.i.i.i563.i, %i.ayp
  br i1 %i.ayq, label %.lr.ph.i.i.i.i575.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i564.i

.lr.ph.i.i.i.i575.i:                              ; preds = %.noexc583.i
  %.val1.i.i.i.i.i.i576.i = load ptr, ptr %i.c, align 8, !alias.scope !11048, !noalias !11049, !nonnull !5, !noundef !5
  %.val.i.i.i.i.i.i577.i = load ptr, ptr %i.yj, align 8, !alias.scope !11048, !noalias !11049, !nonnull !5, !noundef !5
  br label %bb.pn

bb.pn:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i581.i, %.lr.ph.i.i.i.i575.i
  %i.ayr = phi i64 [ %.promoted.i.i.i.i563.i, %.lr.ph.i.i.i.i575.i ], [ %i.ayu, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i581.i ] ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i576.i, i64 %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i577.i, i64 %i.ayr
  %.val7.i.i.i.i578.i = load i8, ptr %i.ays, align 1, !noalias !11050, !noundef !5
  %.val8.i.i.i.i579.i = load i8, ptr %i.ayt, align 1, !noalias !11050, !noundef !5
  %.not.i.i15.i.i.i580.i = icmp eq i8 %.val7.i.i.i.i578.i, %.val8.i.i.i.i579.i
  br i1 %.not.i.i15.i.i.i580.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i581.i, label %bb.po

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i581.i: ; preds = %bb.pn
  %i.ayu = add i64 %i.ayr, 1                      ; 2 uses
  %exitcond.not.i.i.i.i582.i = icmp eq i64 %i.ayu, %i.ayp
  br i1 %exitcond.not.i.i.i.i582.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i564.i, label %bb.pn

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i564.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i.i581.i, %.noexc583.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11046
  %.not.i.i.i.i.i565.i = icmp eq i64 %.sink.i.i557.i, 0
  br i1 %.not.i.i.i.i.i565.i, label %.loopexit957.i, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11046
  br label %.loopexit957.i

bb.pp:                                            ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i564.i
  %i.ayv = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 1)
          to label %bb.py unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

bb.pq:                                            ; preds = %._crit_edge.i553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !11006
  %i.ayw = load i64, ptr %.sroa.596.0..sroa_idx, align 8, !alias.scope !11051, !noalias !11052, !noundef !5 ; 3 uses
  %i.ayx = load i64, ptr %i.ji, align 8, !range !19, !alias.scope !11051, !noalias !11052, !noundef !5
  %i.ayy = icmp eq i64 %i.ayw, %i.ayx
  br i1 %i.ayy, label %bb.pr, label %bb.px

bb.pr:                                            ; preds = %bb.pq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %bb.px unwind label %bb.ps, !noalias !11053

bb.ps:                                            ; preds = %bb.pr
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #28
          to label %.body.i unwind label %bb.pt, !noalias !11007

bb.pt:                                            ; preds = %bb.ps
  %i.aza = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

.backedge.i:                                      ; preds = %bb.px, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11006
  %i.azb = load i64, ptr %i.xo, align 8, !noalias !11006, !noundef !5 ; 3 uses
  %i.azc = icmp ult i64 %i.azb, 288230376151711744
  call void @llvm.assume(i1 %i.azc)
  %i.azd = icmp eq i64 %i.azb, 0
  br i1 %i.azd, label %._crit_edge1338.i, label %.lr.ph1337.i

bb.pu:                                            ; preds = %._crit_edge.i553
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.invoke.i unwind label %bb.pv, !noalias !11007

bb.pv:                                            ; preds = %bb.pu
  %i.aze = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.pw, !noalias !11007

bb.pw:                                            ; preds = %bb.pv
  %i.azf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

bb.px:                                            ; preds = %bb.pr, %bb.pq
  %i.azg = load ptr, ptr %.sroa.495.0..sroa_idx, align 8, !alias.scope !11051, !noalias !11052, !nonnull !5, !noundef !5
  %i.azh = getelementptr inbounds nuw [24 x i8], ptr %i.azg, i64 %i.ayw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.azh, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !11007
  %i.azi = add i64 %i.ayw, 1
  store i64 %i.azi, ptr %.sroa.596.0..sroa_idx, align 8, !alias.scope !11051, !noalias !11052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11006
  br label %.backedge.i

.loopexit957.i:                                   ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_8position5checkTRhB2w_ENCNvXse_NtCsgkljs906P5b_3nom6traitsRShINtB2L_7CompareB3c_E7compare0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i564.i, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11044
  br label %.loopexit982.i

bb.py:                                            ; preds = %bb.pp
  %i.azj = extractvalue { ptr, i64 } %i.ayv, 0    ; 3 uses
  %i.azk = extractvalue { ptr, i64 } %i.ayv, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11044
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11054
  store ptr %i.azj, ptr %i.b, align 8, !noalias !11055
  store i64 %i.azk, ptr %i.yk, align 8, !noalias !11055
  %i.azl = icmp eq i64 %i.azk, 0
  br i1 %i.azl, label %._crit_edge115.i607.i, label %.lr.ph114.i594.i

bb.pz:                                            ; preds = %bb.qa
  %indvars.iv.next.i606.i = add nuw nsw i64 %indvars.iv.i597.i, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11054
  store ptr %i.baa, ptr %i.b, align 8, !noalias !11055
  store i64 %i.azz, ptr %i.yk, align 8, !noalias !11055
  %i.azm = icmp eq i64 %i.azz, 0
  br i1 %i.azm, label %._crit_edge115.i607.i, label %.lr.ph114.i594.i

.lr.ph114.i594.i:                                 ; preds = %bb.py, %bb.pz
  %indvars.iv.i597.i = phi i64 [ %indvars.iv.next.i606.i, %bb.pz ], [ 0, %bb.py ] ; 3 uses
  %.sroa.0.0112.i598.i = phi i64 [ %i.bae, %bb.pz ], [ 0, %bb.py ]
  %.sroa.480.0110.i599.i = phi i64 [ %i.azz, %bb.pz ], [ %i.azk, %bb.py ]
  %.sroa.078.0109.i600.i = phi ptr [ %i.baa, %bb.pz ], [ %i.azj, %bb.py ] ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %.sroa.078.0109.i600.i, i64 %.sroa.480.0110.i599.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11054
  store ptr %.sroa.078.0109.i600.i, ptr %i.a, align 8, !noalias !11054
  store ptr %i.azn, ptr %.sroa.24.0..sroa_idx.i.i595.i, align 8, !noalias !11054
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i596.i, align 8, !noalias !11054
  %i.azo = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc618.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !11007 ; 3 uses

.noexc618.i:                                      ; preds = %.lr.ph114.i594.i
  %i.azp = extractvalue { i1, i8 } %i.azo, 0
  br i1 %i.azp, label %.lr.ph.i614.preheader.i, label %.lr.ph.i._crit_edge.i601.i

.lr.ph.i614.preheader.i:                          ; preds = %.noexc618.i
  %.pr.i.i6151328.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i596.i, align 8, !noalias !11054 ; 2 uses
  %i.azq = icmp eq i64 %.pr.i.i6151328.i, 0
  br i1 %i.azq, label %.lr.ph.i._crit_edge.loopexit.i617.i, label %.lr.ph.i.i616.i

.lr.ph.i.i616.i:                                  ; preds = %.lr.ph.i614.preheader.i, %.lr.ph.i614.i
  %.pr.i.i6151329.i = phi i64 [ %.pr.i.i615.i, %.lr.ph.i614.i ], [ %.pr.i.i6151328.i, %.lr.ph.i614.preheader.i ]
  %i.azr = phi { i1, i8 } [ %i.azt, %.lr.ph.i614.i ], [ %i.azo, %.lr.ph.i614.preheader.i ]
  %i.azs = add i64 %.pr.i.i6151329.i, -1
  store i64 %i.azs, ptr %.sroa.35.0..sroa_idx.i.i596.i, align 8, !noalias !11054
  %i.azt = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc619.i unwind label %.loopexit.i554, !noalias !11007 ; 3 uses

.noexc619.i:                                      ; preds = %.lr.ph.i.i616.i
  %i.azu = extractvalue { i1, i8 } %i.azt, 0
  br i1 %i.azu, label %.lr.ph.i614.i, label %.lr.ph.i._crit_edge.loopexit.i617.i

.lr.ph.i614.i:                                    ; preds = %.noexc619.i
  %.pr.i.i615.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i596.i, align 8, !noalias !11054 ; 2 uses
  %i.azv = icmp eq i64 %.pr.i.i615.i, 0
  br i1 %i.azv, label %.lr.ph.i._crit_edge.loopexit.i617.i, label %.lr.ph.i.i616.i

._crit_edge115.i607.i:                            ; preds = %bb.py, %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11054
  br label %.loopexit982.i

.lr.ph.i._crit_edge.loopexit.i617.i:              ; preds = %.lr.ph.i614.i, %.noexc619.i, %.lr.ph.i614.preheader.i
  %.lcssa1159.i = phi { i1, i8 } [ %i.azo, %.lr.ph.i614.preheader.i ], [ %i.azr, %.noexc619.i ], [ %i.azt, %.lr.ph.i614.i ]
  %i.azw = extractvalue { i1, i8 } %.lcssa1159.i, 1
  br label %.lr.ph.i._crit_edge.i601.i

.lr.ph.i._crit_edge.i601.i:                       ; preds = %.lr.ph.i._crit_edge.loopexit.i617.i, %.noexc618.i
  %.sroa.0.0.lcssa.i.i602.i = phi i8 [ 0, %.noexc618.i ], [ %i.azw, %.lr.ph.i._crit_edge.loopexit.i617.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11054
  %i.azx = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1)
          to label %.noexc620.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !11007 ; 2 uses

.noexc620.i:                                      ; preds = %.lr.ph.i._crit_edge.i601.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11054
  %i.azy = icmp samesign ult i64 %indvars.iv.i597.i, 64
  br i1 %i.azy, label %bb.qa, label %.loopexit982.i

bb.qa:                                            ; preds = %.noexc620.i
  %i.azz = extractvalue { ptr, i64 } %i.azx, 1    ; 4 uses
  %i.baa = extractvalue { ptr, i64 } %i.azx, 0    ; 3 uses
  %i.bab = and i8 %.sroa.0.0.lcssa.i.i602.i, 127
  %i.bac = zext nneg i8 %i.bab to i64
  %i.bad = shl i64 %i.bac, %indvars.iv.i597.i
  %i.bae = or i64 %i.bad, %.sroa.0.0112.i598.i    ; 2 uses
  %i.baf = icmp sgt i8 %.sroa.0.0.lcssa.i.i602.i, -1
  br i1 %i.baf, label %bb.qb, label %bb.pz

bb.qb:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11006
  invoke void @_RNvNtCs2AhGS15tZfv_4bstr4utf88validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0331.01333.i, i64 noundef %.sroa.02.07.i.i.lcssa.sink.i556.i)
          to label %bb.qc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007

bb.qc:                                            ; preds = %bb.qb
  %i.bag = load i64, ptr %i.w, align 8, !range !9, !noalias !11006, !noundef !5
  %.not342.i = icmp eq i64 %i.bag, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11006
  br i1 %.not342.i, label %bb.qd, label %bb.qi

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !11006
  store ptr %.sroa.0331.01333.i, ptr %i.ac, align 8, !noalias !11006, !captures !25
  store i64 %.sroa.02.07.i.i.lcssa.sink.i556.i, ptr %i.yl, align 8, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !11006
  store ptr %i.ad, ptr %i.z, align 8, !noalias !11006
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4318.0..sroa_idx.i, align 8, !noalias !11006
  store ptr %i.ac, ptr %i.ym, align 8, !noalias !11006
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.4322.0..sroa_idx.i, align 8, !noalias !11006
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull @449, ptr noundef nonnull %i.z)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !11007

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !11006
  store i64 %i.bae, ptr %i.yn, align 8, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !11006
  %i.bah = load i64, ptr %i.xo, align 8, !alias.scope !11056, !noalias !11057, !noundef !5 ; 3 uses
  %i.bai = load i64, ptr %i.ag, align 8, !range !19, !alias.scope !11056, !noalias !11057, !noundef !5
  %i.baj = icmp eq i64 %i.bah, %i.bai
  br i1 %i.baj, label %bb.qe, label %bb.qh

bb.qe:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.qh unwind label %bb.qf, !noalias !11058

bb.qf:                                            ; preds = %bb.qe
  %i.bak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab) #28
          to label %.loopexit.split-lp.i unwind label %bb.qg, !noalias !11007

bb.qg:                                            ; preds = %bb.qf
  %i.bal = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

bb.qh:                                            ; preds = %bb.qe, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bam = load ptr, ptr %i.xn, align 8, !alias.scope !11056, !noalias !11057, !nonnull !5, !noundef !5
  %i.ban = getelementptr inbounds nuw [32 x i8], ptr %i.bam, i64 %i.bah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ban, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !noalias !11007
  %i.bao = add i64 %i.bah, 1
  store i64 %i.bao, ptr %i.xo, align 8, !alias.scope !11056, !noalias !11057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11006
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qc
  %exitcond.not.i552 = icmp eq i8 %i.ayf, %.sroa.0.0.lcssa.i.i
  br i1 %exitcond.not.i552, label %._crit_edge.i553, label %.lr.ph.i551

.loopexit982.i:                                   ; preds = %.noexc422.i, %.noexc452.i, %.noexc545.i, %.noexc485.i, %.noexc517.i, %.noexc480.i, %.noexc620.i, %._crit_edge115.i607.i, %._crit_edge115.i467.i, %._crit_edge115.i532.i, %._crit_edge115.i.i.i, %._crit_edge115.i.i503.i, %._crit_edge115.i439.i, %._crit_edge115.i.i537, %.loopexit957.i, %bb.pj, %.loopexit986.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i627.i unwind label %bb.qj, !noalias !11007

bb.qj:                                            ; preds = %.loopexit982.i
  %i.bap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body.i unwind label %bb.qk, !noalias !11007

bb.qk:                                            ; preds = %bb.qj
  %i.baq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i627.i: ; preds = %.loopexit982.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEBJ_.exit631.i unwind label %.loopexit.split-lp991.i.loopexit, !noalias !11007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEBJ_.exit631.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i627.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !11006
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit633.i unwind label %bb.nr, !noalias !11007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit633.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEBJ_.exit631.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11006
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEEB1g_.exit635.i unwind label %bb.ql, !noalias !11007

bb.ql:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit633.i
  %i.bar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread724 unwind label %bb.qm, !noalias !11007

bb.qm:                                            ; preds = %bb.ql
  %i.bas = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEEB1g_.exit635.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit414.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit633.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.qq unwind label %bb.kj

.loopexit.split-lp.i:                             ; preds = %bb.qf, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i554
  %eh.lpad-body590.ph.i = phi { ptr, i32 } [ %i.bak, %bb.qf ], [ %lpad.loopexit.i, %.loopexit.i554 ], [ %lpad.loopexit936.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit940.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit942.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit945.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit947.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit950.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit952.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit955.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit959.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit962.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit965.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit969.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit972.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit976.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit979.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp980.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #28
          to label %.body.i unwind label %bb.qn, !noalias !11007

bb.qn:                                            ; preds = %.loopexit.split-lp.i, %.body.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit414.i: ; preds = %._crit_edge1338.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11006
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEEB1g_.exit635.i unwind label %bb.qo, !noalias !11007

bb.qo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit414.i
  %i.bau = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread724 unwind label %bb.qp, !noalias !11007

bb.qp:                                            ; preds = %bb.qo
  %i.bav = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11007
  unreachable

bb.qq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser10ExportNodeEEB1g_.exit635.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %bb.qq, %.loopexit1364
  %.not.i.i.i.us12.i = icmp eq i64 %.lcssa1241, 2
  br i1 %.not.i.i.i.us12.i, label %.loopexit815, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionTjjEEKj2_EEINtB5_8FuseImplBY_E4nextCs7gfv9tzbXmh_6yara_x.exit.us.i.preheader

bb.qr:                                            ; preds = %.thread724
  resume { ptr, i32 } %.pn273723

.thread724:                                       ; preds = %.thread734.loopexit, %.thread734.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread734.loopexit.split-lp.loopexit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.ql, %bb.qo, %.body466, %bb.kj, %bb.kg, %bb.ju, %.body214.i.i, %bb.fo, %bb.ff, %bb.fb
  %.pn273723 = phi { ptr, i32 } [ %i.afh, %bb.kg ], [ %.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.pn134.i.i, %.body214.i.i ], [ %i.ri, %bb.fo ], [ %i.qz, %bb.fb ], [ %i.ra, %bb.ff ], [ %i.aep, %bb.ju ], [ %.pn, %.body466 ], [ %i.afm, %bb.kj ], [ %i.bau, %bb.qo ], [ %i.bar, %bb.ql ], [ %lpad.loopexit823, %.thread734.loopexit ], [ %lpad.loopexit826, %.thread734.loopexit.split-lp.loopexit ], [ %lpad.loopexit829, %.thread734.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit833, %.thread734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp834, %.thread734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser9MachOFileEBJ_(ptr noalias nofree noundef align 8 dereferenceable(608) %i.gr) #28
          to label %bb.qr unwind label %bb.np
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils4asn1NtB5_7TstInfo8from_ber(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 13 uses
  %i.d = alloca [128 x i8], align 8               ; 11 uses
  %i.e = alloca [112 x i8], align 8               ; 12 uses
  %i.f = alloca [112 x i8], align 8               ; 11 uses
  %i.g = alloca [96 x i8], align 8                ; 10 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [64 x i8], align 8                ; 9 uses
  %i.l = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.27.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [128 x i8], align 8               ; 17 uses
  %.sroa.89.i.i.sroa.15.i.i = alloca [12 x i8], align 4 ; 7 uses
  %i.o = alloca [128 x i8], align 8               ; 17 uses
  %.sroa.84.i.i.sroa.11.i.i = alloca [12 x i8], align 4 ; 7 uses
  %i.p = alloca [112 x i8], align 8               ; 11 uses
  %i.q = alloca [128 x i8], align 8               ; 17 uses
  %.sroa.8.i.i.sroa.11.i.i = alloca [12 x i8], align 4 ; 7 uses
  %i.r = alloca [112 x i8], align 8               ; 11 uses
  %i.s = alloca [64 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [64 x i8], align 8                ; 9 uses
  %i.w = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.23.i.i = alloca [60 x i8], align 4       ; 10 uses
  %.sroa.851.sroa.11.i.i = alloca [12 x i8], align 4 ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 10 uses
  %i.y = alloca [128 x i8], align 8               ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11157
end_hunk_15
begin_hunk_16_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils4asn110oid_to_str:bb.a
  %.fr3264 = freeze i8 %i.pr
  %i.ps = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3266 = freeze i8 %i.ps
  %i.pt = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1607 = icmp eq i8 %i.pt, 0
  %.fr3262.scalar = bitcast <8 x i8> %.fr3262 to i64
  %i.pu = icmp eq i64 %.fr3262.scalar, 0
  %i.pv = or i8 %.fr3264, %.fr3266
  %i.pw = or i8 %.fr3263, %.fr3265
  %i.px = or i8 %.fr3267, %i.pw
  %i.py = or i8 %i.pv, %i.px
  %i.pz = icmp eq i8 %i.py, 0
  %i.qa = and i1 %i.pu, %i.pz
  %op.rdx3258 = select i1 %i.qa, i1 %or.cond1607, i1 false
  br i1 %op.rdx3258, label %bb.bl, label %bb.d

bb.bj:                                            ; preds = %bb.bg
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @649, ptr %i.qb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.qc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bk:                                            ; preds = %bb.bh
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @650, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.qe, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bi
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @651, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.qg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bm:                                            ; preds = %bb.d
  %i.qh = extractvalue { ptr, i64 } %i.ab, 1
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.qh, ptr %i.qj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bt

bb.bn:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11434
  store i64 0, ptr %i.c, align 8, !noalias !11434
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !11434
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11434
  %i.qk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.qk, align 8, !noalias !11434
  store ptr %i.c, ptr %i.b, align 8, !noalias !11434
  %i.ql = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @38, ptr %i.ql, align 8, !noalias !11434
  %i.qm = invoke noundef zeroext i1 @_RNvXs5_Cs9UgDHlk63pp_9const_oidNtB5_16ObjectIdentifierNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bp unwind label %bb.bo, !noalias !11435

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %bb.bs unwind label %bb.br, !noalias !11435

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.qm, label %bb.bq, label %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtCs9UgDHlk63pp_9const_oid16ObjectIdentifierNtB5_12SpecToString14spec_to_stringCs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2708, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @447, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2710) #26
          to label %.noexc.i unwind label %bb.bo, !noalias !11435

.noexc.i:                                         ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bo
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11435
  unreachable

bb.bs:                                            ; preds = %bb.bo
  resume { ptr, i32 } %i.qn

_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtCs9UgDHlk63pp_9const_oid16ObjectIdentifierNtB5_12SpecToString14spec_to_stringCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11434
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtCs9UgDHlk63pp_9const_oid16ObjectIdentifierNtB5_12SpecToString14spec_to_stringCs7gfv9tzbXmh_6yara_x.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.l, %bb.p, %bb.q, %bb.z, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bj, %bb.bk, %bb.bl, %bb.bt, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6leb1287uleb128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !11440
  store i64 %2, ptr %i.c, align 8, !noalias !11440
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8, !noalias !11440
  store i64 %i.s, ptr %i.c, align 8, !noalias !11440
  %i.e = icmp eq i64 %i.s, 0
  br i1 %i.e, label %._crit_edge115, label %bb.c

bb.c:                                             ; preds = %.lr.ph114, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.sroa.0.0112 = phi i64 [ 0, %.lr.ph114 ], [ %i.x, %bb.b ]
  %.sroa.480.0110 = phi i64 [ %2, %.lr.ph114 ], [ %i.s, %bb.b ]
  %.sroa.078.0109 = phi ptr [ %1, %.lr.ph114 ], [ %i.t, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.078.0109, i64 %.sroa.480.0110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.078.0109, ptr %i.a, align 8
  store ptr %i.f, ptr %.sroa.24.0..sroa_idx.i, align 8
  store i64 0, ptr %.sroa.35.0..sroa_idx.i, align 8
  %i.g = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.h = extractvalue { i1, i8 } %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.pr.i139 = load i64, ptr %.sroa.35.0..sroa_idx.i, align 8 ; 2 uses
  %i.i = icmp eq i64 %.pr.i139, 0
  br i1 %i.i, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.pr.i140 = phi i64 [ %.pr.i, %.lr.ph ], [ %.pr.i139, %.lr.ph.preheader ]
  %i.j = phi { i1, i8 } [ %i.l, %.lr.ph ], [ %i.g, %.lr.ph.preheader ]
  %i.k = add i64 %.pr.i140, -1
  store i64 %i.k, ptr %.sroa.35.0..sroa_idx.i, align 8
  %i.l = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.m = extractvalue { i1, i8 } %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.lr.ph.i._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.i
  %.pr.i = load i64, ptr %.sroa.35.0..sroa_idx.i, align 8 ; 2 uses
  %i.n = icmp eq i64 %.pr.i, 0
  br i1 %i.n, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph.i

._crit_edge115:                                   ; preds = %bb.b, %bb.a
  %.sroa.078.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.078.0.lcssa, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 24, ptr %.sroa.661.0..sroa_idx, align 8
  br label %bb.g

.lr.ph.i._crit_edge.loopexit:                     ; preds = %.lr.ph, %.lr.ph.i, %.lr.ph.preheader
  %.lcssa = phi { i1, i8 } [ %i.g, %.lr.ph.preheader ], [ %i.l, %.lr.ph ], [ %i.j, %.lr.ph.i ]
  %i.o = extractvalue { i1, i8 } %.lcssa, 1
  br label %.lr.ph.i._crit_edge

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i._crit_edge.loopexit, %bb.c
  %.sroa.0.0.lcssa.i = phi i8 [ 0, %bb.c ], [ %i.o, %.lr.ph.i._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !11441 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = icmp samesign ult i64 %indvars.iv, 64
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.r = ptrtoint ptr %1 to i64
  store i64 1, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 48, ptr %.sroa.676.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i._crit_edge
  %i.s = extractvalue { ptr, i64 } %i.p, 1        ; 4 uses
  %i.t = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.u = and i8 %.sroa.0.0.lcssa.i, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl i64 %i.v, %indvars.iv
  %i.x = or i64 %i.w, %.sroa.0.0112               ; 2 uses
  %i.y = icmp sgt i8 %.sroa.0.0.lcssa.i, -1
  br i1 %i.y, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.z, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.x, ptr %.sroa.543.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge115, %bb.d, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8var_uint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [40 x i8], align 8                ; 31 uses
  %i.x = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = tail call { i64, i32 } @_RINvNtNtCsgkljs906P5b_3nom4bits8complete3tagRShlhINtNtB6_5error5ErrorTBG_jEEECs7gfv9tzbXmh_6yara_x(i32 noundef 0, i8 noundef 1) ; 2 uses
  %i.z = extractvalue { i64, i32 } %i.y, 0
  %i.aa = extractvalue { i64, i32 } %i.y, 1
  %i.ab = tail call noundef i64 @_RINvNtNtCsgkljs906P5b_3nom4bits8complete4takeRShmhINtNtB6_5error5ErrorTBH_jEEECs7gfv9tzbXmh_6yara_x(i8 noundef 7)
  %i.ac = tail call { i64, i32 } @_RINvNtNtCsgkljs906P5b_3nom4bits8complete3tagRShlhINtNtB6_5error5ErrorTBG_jEEECs7gfv9tzbXmh_6yara_x(i32 noundef 2, i8 noundef 2) ; 2 uses
  %i.ad = extractvalue { i64, i32 } %i.ac, 0
  %i.ae = extractvalue { i64, i32 } %i.ac, 1
  %i.af = tail call noundef i64 @_RINvNtNtCsgkljs906P5b_3nom4bits8complete4takeRShmhINtNtB6_5error5ErrorTBH_jEEECs7gfv9tzbXmh_6yara_x(i8 noundef 14)
  %i.ag = tail call { i64, i32 } @_RINvNtNtCsgkljs906P5b_3nom4bits8complete3tagRShlhINtNtB6_5error5ErrorTBG_jEEECs7gfv9tzbXmh_6yara_x(i32 noundef 6, i8 noundef 3) ; 2 uses
  %i.ah = extractvalue { i64, i32 } %i.ag, 0
  %i.ai = extractvalue { i64, i32 } %i.ag, 1
  %i.aj = tail call noundef i64 @_RINvNtNtCsgkljs906P5b_3nom4bits8complete4takeRShmhINtNtB6_5error5ErrorTBH_jEEECs7gfv9tzbXmh_6yara_x(i8 noundef 29)
  store i64 %i.z, ptr %i.x, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.aa, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store i64 %i.ab, ptr %.sroa.620.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  store i64 %i.ad, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.721.sroa.4.0..sroa.721.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %i.ae, ptr %.sroa.721.sroa.4.0..sroa.721.0..sroa_idx.sroa_idx, align 8
  %.sroa.721.sroa.6.0..sroa.721.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  store i64 %i.af, ptr %.sroa.721.sroa.6.0..sroa.721.0..sroa_idx.sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  store i64 %i.ah, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.822.sroa.4.0..sroa.822.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 %i.ai, ptr %.sroa.822.sroa.4.0..sroa.822.0..sroa_idx.sroa_idx, align 8
  %.sroa.822.sroa.6.0..sroa.822.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  store i64 %i.aj, ptr %.sroa.822.sroa.6.0..sroa.822.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11487
  store ptr %1, ptr %i.v, align 8, !noalias !11487
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %2, ptr %i.ak, align 8, !noalias !11487
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.al, align 8, !noalias !11487
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11489
  store ptr %1, ptr %i.t, align 8, !alias.scope !11490, !noalias !11491, !captures !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %2, ptr %i.am, align 8, !alias.scope !11490, !noalias !11491
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.an, align 8, !alias.scope !11490, !noalias !11491
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB13_jEEE0INtB6_6ParserB1s_E7processINtB6_7OutputMNtB6_4EmitB2g_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
  %i.ao = load i64, ptr %i.a, align 8, !range !12, !noundef !5 ; 3 uses
  %.not.i55.i.i = icmp eq i64 %i.ao, -1
  %.sink81.sroa.gep = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sink81.sroa.gep82 = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  br i1 %.not.i55.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.428.0..sroa_idx.i65.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.428.0.copyload.i66.i.i = load i32, ptr %.sroa.428.0..sroa_idx.i65.i.i, align 8
  %.sroa.637.0..sroa_idx.i60.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.sroa.637.0.copyload.i61.i.i = load i32, ptr %.sroa.637.0..sroa_idx.i60.i.i, align 4
  %.sroa.439.0..sroa_idx.i62.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.439.0..sroa_idx.i62.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 %i.ao, ptr %i.w, align 8, !alias.scope !11492, !noalias !11493
  br label %_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit81.i.i

bb.c:                                             ; preds = %bb.a
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_4bits8complete4takeRShmhINtNtB8_5error5ErrorTB14_jEEE0INtB6_6ParserB1t_E7processINtB6_7OutputMNtB6_4EmitB2h_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.620.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
  %i.ap = load i64, ptr %i.b, align 8, !range !12, !noundef !5 ; 2 uses
  %.not57.i67.i.i = icmp eq i64 %i.ap, -1
  %.sroa.443.0..sroa_idx.i77.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.443.0.copyload.i78.i.i = load i32, ptr %.sroa.443.0..sroa_idx.i77.i.i, align 8 ; 2 uses
  br i1 %.not57.i67.i.i, label %_RNvYINtNtCsgkljs906P5b_3nom6branch6ChoiceTINtNtB7_8internal3AndNCINvNtNtB7_4bits8complete3tagRShlhINtNtB7_5error5ErrorTB1t_jEEE0NCINvB14_4takeB1t_mhB1y_E0EBE_BE_EEINtBH_6ParserB1S_E5parseCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.652.0..sroa_idx.i72.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.652.0.copyload.i73.i.i = load i32, ptr %.sroa.652.0..sroa_idx.i72.i.i, align 4
  %.sroa.454.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.454.0..sroa_idx.i74.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit81.i.i

_RNvYINtNtCsgkljs906P5b_3nom6branch6ChoiceTINtNtB7_8internal3AndNCINvNtNtB7_4bits8complete3tagRShlhINtNtB7_5error5ErrorTB1t_jEEE0NCINvB14_4takeB1t_mhB1y_E0EBE_BE_EEINtBH_6ParserB1S_E5parseCs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11487
  br label %bb.r

_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit81.i.i: ; preds = %bb.d, %bb.b
  %.sroa.443.0.copyload.i78.i.i.sink = phi i32 [ %.sroa.443.0.copyload.i78.i.i, %bb.d ], [ %.sroa.428.0.copyload.i66.i.i, %bb.b ]
  %.sroa.652.0.copyload.i73.i.i.sink = phi i32 [ %.sroa.652.0.copyload.i73.i.i, %bb.d ], [ %.sroa.637.0.copyload.i61.i.i, %bb.b ]
  %.pr.i.i = phi i64 [ %i.ap, %bb.d ], [ %i.ao, %bb.b ] ; 2 uses
  %.sroa.555.0..sroa_idx.i75.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %.sroa.443.0.copyload.i78.i.i.sink, ptr %.sroa.555.0..sroa_idx.i75.i.i, align 8, !alias.scope !11492, !noalias !11493
  %.sroa.656.0..sroa_idx.i76.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 %.sroa.652.0.copyload.i73.i.i.sink, ptr %.sroa.656.0..sroa_idx.i76.i.i, align 4, !alias.scope !11492, !noalias !11493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11489
  %i.ar = icmp eq i64 %.pr.i.i, 1
  br i1 %i.ar, label %bb.e, label %_RNvYINtNtCsgkljs906P5b_3nom6branch6ChoiceTINtNtB7_8internal3AndNCINvNtNtB7_4bits8complete3tagRShlhINtNtB7_5error5ErrorTB1t_jEEE0NCINvB14_4takeB1t_mhB1y_E0EBE_BE_EEINtBH_6ParserB1S_E5parseCs7gfv9tzbXmh_6yara_x.exit.i

bb.e:                                             ; preds = %_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit81.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !noalias !11494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11489
  store ptr %1, ptr %i.r, align 8, !alias.scope !11495, !noalias !11496, !captures !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %2, ptr %i.at, align 8, !alias.scope !11495, !noalias !11496
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.au, align 8, !alias.scope !11495, !noalias !11496
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB13_jEEE0INtB6_6ParserB1s_E7processINtB6_7OutputMNtB6_4EmitB2g_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.721.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r)
  %i.av = load i64, ptr %i.e, align 8, !range !12, !noundef !5 ; 3 uses
  %.not.i15.i.i = icmp eq i64 %i.av, -1
  %.sroa.428.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.428.0.copyload.i26.i.i = load i32, ptr %.sroa.428.0..sroa_idx.i25.i.i, align 8 ; 2 uses
  br i1 %.not.i15.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.637.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.637.0.copyload.i21.i.i = load i32, ptr %.sroa.637.0..sroa_idx.i20.i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 %i.av, ptr %i.w, align 8, !alias.scope !11497, !noalias !11498
  br label %_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit41.i.i

bb.g:                                             ; preds = %bb.e
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_4bits8complete4takeRShmhINtNtB8_5error5ErrorTB14_jEEE0INtB6_6ParserB1t_E7processINtB6_7OutputMNtB6_4EmitB2h_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.721.sroa.6.0..sroa.721.0..sroa_idx.sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
  %i.aw = load i64, ptr %i.f, align 8, !range !12, !noundef !5 ; 2 uses
  %.not57.i27.i.i = icmp eq i64 %i.aw, -1
  %.sroa.443.0..sroa_idx.i37.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.443.0.copyload.i38.i.i = load i32, ptr %.sroa.443.0..sroa_idx.i37.i.i, align 8 ; 2 uses
  br i1 %.not57.i27.i.i, label %_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit41.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.652.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.sroa.652.0.copyload.i33.i.i = load i32, ptr %.sroa.652.0..sroa_idx.i32.i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit41.i.i

_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit41.thread.i.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.424.0..sroa_idx.i39.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %.sroa.428.0.copyload.i26.i.i, ptr %.sroa.424.0..sroa_idx.i39.i.i, align 8, !alias.scope !11497, !noalias !11498
  %.sroa.525.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 %.sroa.443.0.copyload.i38.i.i, ptr %.sroa.525.0..sroa_idx.i40.i.i, align 4, !alias.scope !11497, !noalias !11498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11489
  br label %bb.m

_RINvXsl_NtCsgkljs906P5b_3nom8internalINtB6_3AndNCINvNtNtB8_4bits8complete3tagRShlhINtNtB8_5error5ErrorTB1d_jEEE0NCINvBO_4takeB1d_mhB1i_E0EINtB6_6ParserB1C_E7processINtB6_7OutputMNtB6_4EmitB2Q_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit41.i.i: ; preds = %bb.h, %bb.f
  %.sroa.443.0.copyload.i38.i.i.sink = phi i32 [ %.sroa.443.0.copyload.i38.i.i, %bb.h ], [ %.sroa.428.0.copyload.i26.i.i, %bb.f ]
  %.sroa.652.0.copyload.i33.i.i.sink = phi i32 [ %.sroa.652.0.copyload.i33.i.i, %bb.h ], [ %.sroa.637.0.copyload.i21.i.i, %bb.f ]
  %.pr82.i.i = phi i64 [ %i.aw, %bb.h ], [ %i.av, %bb.f ] ; 2 uses
  %.sroa.555.0..sroa_idx.i35.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %.sroa.443.0.copyload.i38.i.i.sink, ptr %.sroa.555.0..sroa_idx.i35.i.i, align 8, !alias.scope !11497, !noalias !11498
  %.sroa.656.0..sroa_idx.i36.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 %.sroa.652.0.copyload.i33.i.i.sink, ptr %.sroa.656.0..sroa_idx.i36.i.i, align 4, !alias.scope !11497, !noalias !11498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11489
  %i.ax = icmp eq i64 %.pr82.i.i, 1
end_hunk_16
