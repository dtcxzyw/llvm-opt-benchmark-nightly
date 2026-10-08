Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.6?download=true
inline.NumInlined: 108
inline.NumDeleted: 65
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #18
          to label %.body4.i unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body4.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body4.i:                                         ; preds = %bb.i, %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #18
          to label %.body7.i unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body7.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body7.i:                                         ; preds = %bb.m, %bb.j, %.body4.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body4.i ], [ %i.o, %bb.m ], [ %i.l, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #18
          to label %common.resume.i unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i: ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i:                                  ; preds = %bb.n, %.body7.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.q, %bb.n ], [ %.pn2.i, %.body7.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %.body7.i, %.body4.i, %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange17parse_conf_change(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store i64 %i.n, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i8 0, ptr %.sroa.619.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.ac, %bb.b
  %.promoted16.i = phi i64 [ %.promoted16.i.pre, %bb.ac ], [ %i.n, %bb.b ]
  %.promoted15.i = phi ptr [ %.promoted15.i.pre, %bb.ac ], [ %i.p, %bb.b ]
  %.promoted.i = phi i8 [ %.promoted.i.pre, %bb.ac ], [ 0, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8, !noalias !68
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.w = phi i64 [ %i.ai, %.noexc ], [ %.promoted16.i, %bb.d ] ; 5 uses
  %i.x = phi ptr [ %i.aj, %.noexc ], [ %.promoted15.i, %bb.d ] ; 13 uses
  %i.y = phi i8 [ %i.ak, %.noexc ], [ %.promoted.i, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit106

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  %i.ab = icmp samesign eq i64 %i.w, 0
  br i1 %i.ab, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i
  %.sroa.02.08.i.i.i = phi i64 [ %i.ae, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.ac = phi ptr [ %i.ad, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ac, align 1, !noalias !70, !noundef !4
  switch i8 %.val.i.i.i, label %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i [
    i8 9, label %bb.g
    i8 10, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 32, label %bb.g
  ]

_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.sroa.02.08.i.i.i, 1
  %i.af = icmp eq ptr %i.ad, %i.aa
  br i1 %i.af, label %.loopexit.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ag = add nuw i64 %.sroa.02.08.i.i.i, 1       ; 2 uses
  %3 = sub nuw i64 %i.w, %i.ag                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %i.k, align 8, !alias.scope !71, !noalias !72, !captures !73
  store i64 %3, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !71, !noalias !72
  br label %bb.h

.loopexit.i.i:                                    ; preds = %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.f
  store i8 1, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !71, !noalias !72
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %bb.g
  %i.ai = phi i64 [ %i.w, %.loopexit.i.i ], [ %3, %bb.g ]
  %i.aj = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.ah, %bb.g ]
  %i.ak = phi i8 [ 1, %.loopexit.i.i ], [ 0, %bb.g ]
  %.sroa.5.1.i.ph.i = phi i64 [ %i.w, %.loopexit.i.i ], [ %.sroa.02.08.i.i.i, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  store ptr %i.x, ptr %i.a, align 8, !noalias !74
  store i64 %.sroa.5.1.i.ph.i, ptr %i.t, align 8, !noalias !74
  %i.al = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNtNtBb_3str15BytesIsNotEmptyINtB7_5FnMutTRRShEE8call_mutCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc unwind label %.loopexit105

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  br i1 %i.al, label %bb.i, label %bb.e

.body:                                            ; preds = %.loopexit105, %.loopexit.split-lp, %bb.aa, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.df, %bb.aa ], [ %i.do, %bb.ah ], [ %lpad.loopexit, %.loopexit105 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #18
          to label %common.resume unwind label %bb.ai

.loopexit105:                                     ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ad, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.loopexit106, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.x, ptr %i.j, align 8, !captures !73
  store i64 %.sroa.5.1.i.ph.i, ptr %i.u, align 8
  %i.am = icmp ult i64 %.sroa.5.1.i.ph.i, 2
  br i1 %i.am, label %bb.n, label %bb.l

.loopexit106:                                     ; preds = %bb.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit, %.loopexit106
  ret void

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.5.1.i.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.x, align 1, !noalias !75, !noundef !4 ; 5 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i: ; preds = %bb.l
  %i.as = and i8 %i.aq, 31
  %i.at = zext nneg i8 %i.as to i32               ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.av = load i8, ptr %i.ap, align 1, !noalias !75, !noundef !4
  %i.aw = shl nuw nsw i32 %i.at, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32               ; 2 uses
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = icmp samesign ugt i8 %i.aq, -33
  br i1 %i.ba, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = zext nneg i8 %i.aq to i32
  br label %bb.o

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i
  %i.bc = icmp samesign ne i64 %.sroa.5.1.i.ph.i, 2
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 3 ; 2 uses
  %i.be = load i8, ptr %i.au, align 1, !noalias !75, !noundef !4
  %i.bf = shl nuw nsw i32 %i.ay, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl nuw nsw i32 %i.at, 12
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp samesign ugt i8 %i.aq, -17
  br i1 %i.bl, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i, label %bb.o

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i
  %i.bm = icmp samesign ne i64 %.sroa.5.1.i.ph.i, 3
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bo = load i8, ptr %i.bd, align 1, !noalias !75, !noundef !4
  %i.bp = shl nuw nsw i32 %i.at, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bi, 6
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bq
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto, ptr %.sroa.429.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @4, ptr noundef nonnull %i.h)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i
  %.sroa.073.0.ph = phi ptr [ %i.au, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i ], [ %i.bd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i ], [ %i.bn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i ], [ %i.ap, %bb.m ] ; 4 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.az, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i ], [ %i.bv, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.bw)
  switch i32 %.sroa.4.0.i.ph, label %bb.p [
    i32 118, label %bb.s
    i32 108, label %bb.q
    i32 114, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto, ptr %.sroa.441.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @4, ptr noundef nonnull %i.f)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68 unwind label %bb.ah

bb.q:                                             ; preds = %bb.o
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q
  %.sroa.02.0 = phi i8 [ 1, %bb.r ], [ 2, %bb.q ], [ 0, %bb.o ]
  %i.bx = ptrtoint ptr %i.ao to i64
  %i.by = ptrtoint ptr %.sroa.073.0.ph to i64
  %i.bz = sub nuw i64 %i.bx, %i.by                ; 2 uses
  switch i64 %i.bz, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ca = load i8, ptr %.sroa.073.0.ph, align 1, !alias.scope !76, !noalias !77, !noundef !4 ; 2 uses
  switch i8 %i.ca, label %bb.u [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.s
  %.pr.i = load i8, ptr %.sroa.073.0.ph, align 1, !alias.scope !76, !noalias !77
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i, %bb.t
  %i.cb = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ca, %bb.t ]
  %cond.i = icmp eq i8 %i.cb, 43                  ; 2 uses
  %i.cc = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bz, %i.cc        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i69 = getelementptr inbounds nuw i8, ptr %.sroa.073.0.ph, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.cd, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.u
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.x
  %.not52.i = icmp eq i64 %i.cf, 0
  br i1 %.not52.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.u, %.preheader56.i
  %.sroa.0.1.i166 = phi ptr [ %i.ce, %.preheader56.i ], [ %.sroa.0.0.i69, %bb.u ] ; 2 uses
  %.sroa.15.1.i165 = phi i64 [ %i.cf, %.preheader56.i ], [ %.sroa.15.0.i, %bb.u ]
  %.sroa.042.0.i164 = phi i64 [ %i.cq, %.preheader56.i ], [ 0, %bb.u ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i166, i64 1
  %i.cf = add nsw i64 %.sroa.15.1.i165, -1        ; 2 uses
  %i.cg = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i164, i64 10) ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 0       ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.cg, 1
  %i.cj = load i8, ptr %.sroa.0.1.i166, align 1, !alias.scope !76, !noalias !77, !noundef !4 ; 2 uses
  br i1 %i.ci, label %bb.w, label %bb.v, !prof !5

bb.v:                                             ; preds = %.preheader56.i.preheader
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nsw i32 %i.ck, -48                  ; 2 uses
  %i.cm = icmp ult i32 %i.cl, 10
  br i1 %i.cm, label %bb.x, label %.loopexit

bb.w:                                             ; preds = %.preheader56.i.preheader
  %i.cn = add i8 %i.cj, -48
  %i.co = icmp ult i8 %i.cn, 10
  %spec.select = select i1 %i.co, i8 2, i8 1
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.cp = zext nneg i32 %i.cl to i64
end_hunk_0
begin_hunk_1_@_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange17parse_conf_change:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.db, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @3, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71 unwind label %bb.ah

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.y, %.preheader.i
  %.sroa.1281.0 = phi i64 [ %i.da, %bb.y ], [ 0, %.preheader.i ], [ %i.cq, %.preheader56.i ]
  %i.dc = load i64, ptr %i.r, align 8, !alias.scope !78, !noalias !79, !noundef !4 ; 3 uses
  %i.dd = load i64, ptr %i.l, align 8, !range !80, !alias.scope !78, !noalias !79, !noundef !4
  %i.de = icmp eq i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ac unwind label %bb.aa, !noalias !79

bb.aa:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null) #18
          to label %.body unwind label %bb.ab, !noalias !79

bb.ab:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !79
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit
  %i.dh = load ptr, ptr %i.q, align 8, !alias.scope !78, !noalias !79, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %i.dc ; 3 uses
  store i64 %.sroa.1281.0, ptr %i.di, align 8
  %.sroa.4.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx85, i8 0, i64 16, i1 false)
  store i8 %.sroa.02.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dj = add i64 %i.dc, 1
  store i64 %i.dj, ptr %i.r, align 8, !alias.scope !78, !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.promoted.i.pre = load i8, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !71, !noalias !72
  %.promoted15.i.pre = load ptr, ptr %i.k, align 8, !alias.scope !67, !noalias !72
  %.promoted16.i.pre = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !67, !noalias !72
  br label %bb.d

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null)
          to label %bb.ae unwind label %.loopexit.split-lp

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ad

bb.ae:                                            ; preds = %bb.ad, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.af ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit: ; preds = %bb.ae
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.ah:                                            ; preds = %bb.p, %.loopexit
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null) #18
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange21stringify_conf_change(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.idx = shl nuw nsw i64 %2, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !84
  switch i8 %.pre, label %default.unreachable47 [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.loopexit.split-lp

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.loopexit.split-lp

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel: ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ 114, %bb.d ], [ 108, %bb.c ], [ 118, %bb.e ]
  %i.g = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  store i8 %.sink, ptr %i.g, align 1
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.h = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %.loopexit.loopexit.split-lp

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel
  br i1 %i.h, label %.loopexit43, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, !prof !5

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %._crit_edge, label %.peel.next

.loopexit.loopexit:                               ; preds = %bb.j, %bb.i, %bb.h, %.peel.next, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.c, %bb.d, %bb.e, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit43
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit40, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp41, %.loopexit.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.m unwind label %bb.l

._crit_edge:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %.peel.next
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !85, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 32, ptr %i.k, align 1
  %i.l = add nuw i64 %i.q, 1                      ; 3 uses
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !84, !noundef !4
  %i.o = icmp sgt i64 %i.l, -1
  call void @llvm.assume(i1 %i.o)
  switch i8 %i.n, label %.unreachabledefault [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

.peel.next:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit
  %.sroa.0.038 = phi ptr [ %i.p, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit ], [ %i.f, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 32 ; 2 uses
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85, !noundef !4 ; 4 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.loopexit

.unreachabledefault:                              ; preds = %bb.g
  unreachable

default.unreachable47:                            ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27: ; preds = %bb.j, %bb.i, %bb.h
  %.sink51 = phi i8 [ 114, %bb.i ], [ 118, %bb.h ], [ 108, %bb.j ]
  %i.s = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 %.sink51, ptr %i.t, align 1
  %i.u = add nuw i64 %i.q, 2
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.038, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.v = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %.loopexit.loopexit

bb.k:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27
  br i1 %i.v, label %.loopexit43, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, !prof !5

.loopexit43:                                      ; preds = %bb.k, %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit43
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq ptr %i.p, %i.d
  br i1 %i.w, label %._crit_edge, label %.peel.next, !llvm.loop !83

bb.l:                                             ; preds = %.loopexit
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %.loopexit
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !89, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !89, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !89, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !89
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !95
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !96, !noalias !95, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !96, !noalias !95, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !96, !noalias !95
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !96, !noalias !95
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [28 x i8], align 4        ; 4 uses
  %.sroa.516.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.617.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 104) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.o, %i.n                       ; 5 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !117

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !118
  %i.t = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !118 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !118
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !118
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_1
