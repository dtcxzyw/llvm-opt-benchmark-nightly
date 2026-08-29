Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identity-5e80b8a305d72f27.libp2p_identity.1abb955c5c513e7b-cgu.2?download=true
inline.NumInlined: 86
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB5_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11into_stringCs2iisHxfqoT7_15libp2p_identity:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.v unwind label %bb.b, !noalias !53

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !57
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !69, !noalias !72, !nonnull !9, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !69, !noalias !72, !noundef !9 ; 2 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.i unwind label %bb.h, !noalias !73

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %.body.i unwind label %bb.j, !noalias !74

bb.i:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.b, align 8, !range !75, !noalias !71, !noundef !9
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %.thread35.i.i.i

.thread35.i.i.i:                                  ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !76, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !74
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !noalias !71
  %i.af = load i64, ptr %i.ad, align 8, !noalias !71
  %.sroa.022.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !57
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %.not.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.l, !prof !82

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83
  store i64 %.sroa.022.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !84
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, i64 16, i1 false), !noalias !84
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x i64> %i.ae, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !84
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %bb.n unwind label %bb.m, !noalias !85

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #20
          to label %.body.i unwind label %bb.o, !noalias !85

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !85
  unreachable

bb.p:                                             ; preds = %bb.k, %.thread35.i.i.i
  %.sroa.6.sroa.6.0.i.i.i = phi i64 [ %i.af, %bb.k ], [ %i.y, %.thread35.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i.i.i, i64 16, i1 false), !alias.scope !86, !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i.i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i unwind label %bb.q, !noalias !48

bb.q:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread.i.i.i unwind label %bb.r, !noalias !48

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !48
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i unwind label %bb.s, !noalias !48

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.s, %bb.q
  %eh.lpad-body17.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.ai, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !noalias !63
  store i64 %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !64, !noalias !63
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !noalias !63
  store i64 %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !64, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #20
          to label %.body.i unwind label %bb.u, !noalias !65

bb.u:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !65
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !53
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit unwind label %bb.z

bb.y:                                             ; preds = %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i, %bb.aa
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.w, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.z ], [ %i.an, %bb.w ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #20
          to label %bb.ac unwind label %bb.ab

_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsk7Z1gFMStHv_4bs586encode13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2iisHxfqoT7_15libp2p_identity.exit.i
  br i1 %i.s, label %bb.aa, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtCsk7Z1gFMStHv_4bs586encode5ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity.exit, !prof !87

bb.aa:                                            ; preds = %_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.aa
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtCsk7Z1gFMStHv_4bs586encode5ErrorE6unwrapCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %_RINvMs3_NtCsk7Z1gFMStHv_4bs586encodeINtB6_13EncodeBuilderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4ontoQNtNtBY_6string6StringECs2iisHxfqoT7_15libp2p_identity.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ab:                                            ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ac:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E10from_bytesCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 9), (16, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.439 = alloca [48 x i8], align 8          ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88
  store ptr %i.e, ptr %i.d, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96
  call void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !100
  %i.g = load i8, ptr %i.b, align 8, !range !101, !noalias !96, !noundef !9 ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.g, 2
  br i1 %.not.i.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !96, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  call void @_RINvNtCsfPnYm3bSk7z_15unsigned_varint2io8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !106
  %i.j = load i8, ptr %i.a, align 8, !range !101, !noalias !102, !noundef !9 ; 3 uses
  %.not.i73.i.i = icmp eq i8 %i.j, 2
  br i1 %.not.i73.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i: ; preds = %bb.a
  %i.k = trunc nuw i8 %i.g to i1                  ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !96
  %.sroa.51.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.51.0.copyload.i.i.i = load ptr, ptr %.sroa.51.0..sroa_idx.i.i.i, align 8, !noalias !96, !nonnull !9
  %.sroa.05.0.i.i.i = shl nuw nsw i8 %i.g, 1
  %i.l = ptrtoint ptr %.sroa.51.0.copyload.i.i.i to i64
  %i.m = select i1 %i.k, i64 undef, i64 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96
  %.sroa.9.8.insert.ext.i = zext nneg i8 %.sroa.05.0.i.i.i to i64
  %i.n = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 8
  %.sroa.9.9.insert.shift.i = select i1 %i.k, i64 %i.o, i64 0
  %.sroa.9.9.insert.insert.i = or disjoint i64 %.sroa.9.9.insert.shift.i, %.sroa.9.8.insert.ext.i
  br label %bb.f

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i: ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !102, !noundef !9 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  %i.r = icmp ugt i64 %i.q, 64
  br i1 %i.r, label %bb.f, label %bb.b

_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i: ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i
  %i.s = trunc nuw i8 %i.j to i1                  ; 2 uses
  %.sroa.4.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0.copyload.i75.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i74.i.i, align 1, !noalias !102
  %.sroa.51.0..sroa_idx.i76.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.51.0.copyload.i77.i.i = load ptr, ptr %.sroa.51.0..sroa_idx.i76.i.i, align 8, !noalias !102, !nonnull !9
  %.sroa.05.0.i78.i.i = shl nuw nsw i8 %i.j, 1
  %i.t = ptrtoint ptr %.sroa.51.0.copyload.i77.i.i to i64
  %i.u = select i1 %i.s, i64 undef, i64 %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  %.sroa.9.8.insert.ext29.i = zext nneg i8 %.sroa.05.0.i78.i.i to i64
  %i.v = zext i8 %.sroa.4.0.copyload.i75.i.i to i64
  %i.w = shl nuw nsw i64 %i.v, 8
  %.sroa.9.9.insert.shift40.i = select i1 %i.s, i64 %i.w, i64 0
  %.sroa.9.9.insert.insert42.i = or disjoint i64 %.sroa.9.9.insert.shift40.i, %.sroa.9.8.insert.ext29.i
  br label %bb.f

bb.b:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !92
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !92, !nonnull !9, !align !47, !noundef !9 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !110, !noalias !115, !noundef !9 ; 3 uses
  %i.z = icmp ugt i64 %i.q, %i.y
  %i.aa = load ptr, ptr %.val.i.i, align 8, !alias.scope !110, !noalias !115, !nonnull !9, !noundef !9 ; 4 uses
  br i1 %i.z, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i: ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q
  %i.ac = sub nuw nsw i64 %i.y, %i.q
  %i.ad = icmp eq i64 %i.q, 1
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, 65) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, 65) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !noalias !116
  %.sroa.28.i.sroa.4.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.28.i.sroa.4.0.copyload.pre = load i64, ptr %.sroa.28.i.sroa.4.0..sroa.28.17..sroa_idx.i.sroa_idx.phi.trans.insert, align 8, !noalias !88
  br label %bb.g

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs2iisHxfqoT7_15libp2p_identity.exit.i.i.i.i
  %i.ae = load i8, ptr %i.aa, align 1, !noalias !117, !noundef !9
  store i8 %i.ae, ptr %i.c, align 8, !alias.scope !118, !noalias !119
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %.val.i.i, align 8, !alias.scope !110, !noalias !115
  store i64 0, ptr %i.x, align 8, !alias.scope !110, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i, %bb.e
  %.sroa.18.sroa.10.sroa.0.0.ph.in.in.i = phi i64 [ %i.q, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i ], [ %i.u, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i ], [ ptrtoint (ptr @25 to i64), %bb.e ], [ %i.m, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i ]
  %.sroa.9.0.ph.i = phi i64 [ 1, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.thread.i.i ], [ %.sroa.9.9.insert.insert42.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit84.i.i ], [ 0, %bb.e ], [ %.sroa.9.9.insert.insert.i, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash8read_u64QQRShECs2iisHxfqoT7_15libp2p_identity.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0.ph.i, ptr %i.ag, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.sroa.10.sroa.0.0.ph.in.in.i, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.c
  %.sroa.28.i.sroa.4.0.copyload = phi i64 [ 0, %bb.d ], [ %.sroa.28.i.sroa.4.0.copyload.pre, %bb.c ]
  store ptr %i.ab, ptr %.val.i.i, align 8, !alias.scope !110, !noalias !115
  store i64 %i.ac, ptr %i.x, align 8, !alias.scope !110, !noalias !115
  %.sroa.18.sroa.10.sroa.0.0.copyload53.i = load i64, ptr %i.c, align 8, !noalias !88
  %.sroa.28.i.sroa.6.0..sroa.28.17..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.28.i.sroa.6.0..sroa.28.17..sroa_idx.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  %i.ah = load i64, ptr %i.f, align 8, !noundef !9 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.aj, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = trunc nuw nsw i64 %i.q to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.sroa.10.sroa.0.0.copyload53.i, ptr %i.al, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.28.i.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.439, i64 48, i1 false)
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.i, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.ak, ptr %.sroa.641.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit, %bb.h
  %.sink = phi i64 [ 1, %bb.f ], [ 1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6expectCs2iisHxfqoT7_15libp2p_identity.exit ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !noundef !9  ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = icmp ult i8 %i.b, 65
  br i1 %i.d, label %bb.c, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E8to_bytesCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [10 x i8], align 1                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !noundef !9  ; 3 uses
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.c, align 8, !range !75, !noundef !9
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !121, !noundef !9 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9
  %i.o = icmp samesign uge i64 %i.k, %i.g
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !122, !noalias !125, !noundef !9 ; 10 uses
  %i.t = icmp ult i8 %i.f, 65
  br i1 %i.t, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.d, !prof !120

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.u, i8 0, i64 9, i1 false), !noalias !128
  %i.v = trunc i64 %i.s to i8                     ; 2 uses
  %i.w = or i8 %i.v, -128
  store i8 %i.w, ptr %i.b, align 1, !alias.scope !133, !noalias !128
  %i.x = lshr i64 %i.s, 7                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i
  %i.z = trunc i64 %i.x to i8                     ; 2 uses
  %i.aa = or i8 %i.z, -128
  store i8 %i.aa, ptr %i.u, align 1, !alias.scope !133, !noalias !128
  %i.ab = lshr i64 %i.s, 14                       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.ptr13.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ad = trunc i64 %i.ab to i8                   ; 2 uses
  %i.ae = or i8 %i.ad, -128
  store i8 %i.ae, ptr %.sroa.05.0.ptr13.2.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.af = lshr i64 %i.s, 21                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.05.0.ptr13.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ah = trunc i64 %i.af to i8                   ; 2 uses
  %i.ai = or i8 %i.ah, -128
  store i8 %i.ai, ptr %.sroa.05.0.ptr13.3.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.aj = lshr i64 %i.s, 28                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.05.0.ptr13.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.al = trunc i64 %i.aj to i8                   ; 2 uses
  %i.am = or i8 %i.al, -128
  store i8 %i.am, ptr %.sroa.05.0.ptr13.4.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.an = lshr i64 %i.s, 35                       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.05.0.ptr13.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.ap = trunc i64 %i.an to i8                   ; 2 uses
  %i.aq = or i8 %i.ap, -128
  store i8 %i.aq, ptr %.sroa.05.0.ptr13.5.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.ar = lshr i64 %i.s, 42                       ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.05.0.ptr13.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.at = trunc i64 %i.ar to i8                   ; 2 uses
  %i.au = or i8 %i.at, -128
  store i8 %i.au, ptr %.sroa.05.0.ptr13.6.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.av = lshr i64 %i.s, 49                       ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.ptr13.7.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.ax = trunc i64 %i.av to i8                   ; 2 uses
  %i.ay = or i8 %i.ax, -128
  store i8 %i.ay, ptr %.sroa.05.0.ptr13.7.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.az = lshr i64 %i.s, 56                       ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.05.0.ptr13.8.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bb = trunc nuw i64 %i.az to i8               ; 2 uses
  %i.bc = or i8 %i.bb, -128
  store i8 %i.bc, ptr %.sroa.05.0.ptr13.8.i.i.i, align 1, !alias.scope !133, !noalias !128
  %i.bd = icmp sgt i64 %i.s, -1
  br i1 %i.bd, label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.05.0.ptr13.9.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 -127, ptr %.sroa.05.0.ptr13.9.i.i.i, align 1, !alias.scope !133, !noalias !128
  br label %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i

_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i
  %.sroa.03.011.lcssa.i.i.i = phi i64 [ 1, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ]
  %.sroa.05.0.ptr13.lcssa.i.i.i = phi ptr [ %i.b, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i ], [ %i.u, %bb.e ], [ %.sroa.05.0.ptr13.2.i.i.i, %bb.f ], [ %.sroa.05.0.ptr13.3.i.i.i, %bb.g ], [ %.sroa.05.0.ptr13.4.i.i.i, %bb.h ], [ %.sroa.05.0.ptr13.5.i.i.i, %bb.i ], [ %.sroa.05.0.ptr13.6.i.i.i, %bb.j ], [ %.sroa.05.0.ptr13.7.i.i.i, %bb.k ], [ %.sroa.05.0.ptr13.8.i.i.i, %bb.l ], [ %.sroa.05.0.ptr13.9.i.i.i, %bb.m ]
  %.lcssa.i.i.i = phi i8 [ %i.v, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2iisHxfqoT7_15libp2p_identity.exit.i ], [ %i.z, %bb.e ], [ %i.ad, %bb.f ], [ %i.ah, %bb.g ], [ %i.al, %bb.h ], [ %i.ap, %bb.i ], [ %i.at, %bb.j ], [ %i.ax, %bb.k ], [ %i.bb, %bb.l ], [ 1, %bb.m ]
  store i8 %.lcssa.i.i.i, ptr %.sroa.05.0.ptr13.lcssa.i.i.i, align 1, !alias.scope !133, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store i16 0, ptr %i.a, align 2, !noalias !128
  store i8 %i.f, ptr %i.a, align 2, !alias.scope !136, !noalias !128
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 65) %.sroa.03.011.lcssa.i.i.i)
          to label %.noexc1 unwind label %.body

.noexc1:                                          ; preds = %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 65) 1)
          to label %.noexc2 unwind label %.body

.noexc2:                                          ; preds = %.noexc1
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef range(i64 0, 65) %i.g)
          to label %bb.n unwind label %.body

.body:                                            ; preds = %bb.d, %_RINvNtCsgW4lhAJgVdS_9multihash9multihash15write_multihashQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity.exit.i, %.noexc1, %.noexc2
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %.body
end_hunk_0
