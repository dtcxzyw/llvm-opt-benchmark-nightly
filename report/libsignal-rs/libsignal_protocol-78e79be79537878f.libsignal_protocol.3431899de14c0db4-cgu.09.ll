Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.09?download=true
inline.NumInlined: 347
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCs4tP8yUXWbFU_18libsignal_protocol12group_cipher14get_sender_key:bb.a
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.586.0.copyload = load i64, ptr %.sroa.586.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.488.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.623, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.586.0.copyload, ptr %.sroa.589.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i115 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body116 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i115: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_.exit118 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i115
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.body116:                                         ; preds = %bb.aa, %bb.ac
  %eh.lpad-body117 = phi { ptr, i32 } [ %i.ap, %bb.ac ], [ %i.an, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.623, i64 32, i1 false)
  br label %.loopexit.split-lp

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_.exit118: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.623, i64 32, i1 false)
  %i.aq = load i32, ptr %i.z, align 8, !noundef !5
  %i.ar = icmp ult i32 %i.aq, %2
  br i1 %i.ar, label %bb.h, label %._crit_edge

bb.ad:                                            ; preds = %bb.at, %bb.u, %.loopexit.split-lp
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ae:                                            ; preds = %bb.e
  %i.at = load atomic i64, ptr @_RNvCsdbmLU2M1sR8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.au = icmp ult i64 %i.at, 6
  call void @llvm.assume(i1 %i.au)
  %.not104 = icmp eq i64 %i.at, 0
  br i1 %.not104, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %3, ptr %i.i, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs_NtCsS4eg1WQ3uw_4uuid3fmtNtB6_4UuidNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @36, ptr %i.av, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.470.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.aw, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @39, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 32, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @39, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 32, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @38, ptr %i.ba, align 8
  invoke void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull @37, ptr noundef nonnull %i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.ah unwind label %bb.at

bb.ag:                                            ; preds = %bb.ae, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %bb.at

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.bb = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !236, !noundef !5 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.aj, label %.thread135, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.bg = load i64, ptr %i.bf, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #23
          to label %bb.f unwind label %bb.at

.thread135:                                       ; preds = %bb.ai
  %i.bh = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bi = icmp samesign ugt i64 %i.be, 35
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.bh, ptr noundef nonnull align 1 dereferenceable(36) @40, i64 36, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775784, ptr %i.bj, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bh, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 36, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 7, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %bb.ar, %.thread135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_.exit121 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.at, %.loopexit.split-lp, %bb.n, %bb.r, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.al ], [ %i.ag, %bb.n ], [ %lpad.thr_comm, %bb.at ], [ %i.ai, %bb.r ], [ %.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_.exit121: ; preds = %bb.ak
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %bb.p

bb.an:                                            ; preds = %bb.d
  %i.bm = load i64, ptr %i.l, align 8, !range !6, !noundef !5
  %.not105 = icmp eq i64 %i.bm, -1
  br i1 %.not105, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ak

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bn = load atomic i64, ptr @_RNvCsdbmLU2M1sR8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 6
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ugt i64 %i.bn, 2
  br i1 %i.bp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %3, ptr %i.k, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs_NtCsS4eg1WQ3uw_4uuid3fmtNtB6_4UuidNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.q, ptr %i.bq, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @39, ptr %i.j, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 32, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @39, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 32, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @42, ptr %i.bu, align 8
  invoke void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECs4tP8yUXWbFU_18libsignal_protocol(ptr noundef nonnull @41, ptr noundef nonnull %i.k, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.as unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.as
  %i.bv = phi i32 [ %2, %bb.ap ], [ %.pre, %bb.as ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775785, ptr %i.bw, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.u, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bv, ptr %.sroa.515.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.ak

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load i32, ptr %i.q, align 4
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq, %bb.d, %bb.aj, %bb.ag, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderChainKeyEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #21
          to label %common.resume unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs4tP8yUXWbFU_18libsignal_protocol13sealed_sender16sealed_sender_v219apply_agreement_xor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !275 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [32 x i8], align 1                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsa_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_7KeyPair19calculate_agreement(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
  %i.l = load i64, ptr %i.k, align 8, !range !12, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.08.0.copyload = load ptr, ptr %i.n, align 8 ; 5 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = ptrtoint ptr %.sroa.08.0.copyload to i64 ; 2 uses
  %trunc = trunc i64 %i.o to i8
  switch i8 %trunc, label %bb.ae [
    i8 0, label %bb.ai
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.e:                                             ; preds = %bb.c
  %i.q = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g       ; 2 uses

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29: ; preds = %bb.j, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.w, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef range(i64 1, 0) %.sroa.49.0.copyload, i64 noundef 1) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29

bb.h:                                             ; preds = %bb.e
  %i.t = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.q, 1        ; 3 uses
  %i.v = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, 0) %i.u, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit29

bb.k:                                             ; preds = %bb.h, %bb.o
  %.sink = phi { ptr, i64 } [ %i.ak, %bb.o ], [ %i.v, %bb.h ] ; 2 uses
  %.sink59 = phi ptr [ %i.ai, %bb.o ], [ %i.t, %bb.h ] ; 3 uses
  %.sink55 = phi i64 [ %i.aj, %bb.o ], [ %i.u, %bb.h ] ; 3 uses
  %i.y = extractvalue { ptr, i64 } %.sink, 0      ; 2 uses
  %i.z = extractvalue { ptr, i64 } %.sink, 1      ; 3 uses
  store ptr %.sroa.08.0.copyload, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.49.0.copyload, ptr %i.aa, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink59) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sink59, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sink55, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.z, ptr %i.ae, align 8
  invoke void @_RNvXs0_NtCs6i54tJFfzR_5alloc5sliceSINtNtB7_5boxed3BoxShEINtB5_6ConcathE6concatCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 3)
          to label %bb.s unwind label %bb.r

bb.l:                                             ; preds = %bb.y, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31: ; preds = %bb.q, %bb.p, %bb.n
  %.pn16 = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.q ] ; 2 uses
  %i.ag = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %i.ag, label %common.resume, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef range(i64 1, 0) %.sroa.49.0.copyload, i64 noundef 1) #19
  br label %common.resume

bb.n:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31

bb.o:                                             ; preds = %bb.d
  %i.ai = extractvalue { ptr, i64 } %i.p, 0       ; 3 uses
  %i.aj = extractvalue { ptr, i64 } %i.p, 1       ; 3 uses
  %i.ak = invoke { ptr, i64 } @_RNvMs3_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_9PublicKey9serialize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.k unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 1) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit31

bb.r:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #21
  br label %common.resume

bb.s:                                             ; preds = %bb.k
  %i.ao = icmp eq i64 %.sroa.49.0.copyload, 0
  br i1 %i.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload, i64 noundef range(i64 1, 0) %.sroa.49.0.copyload, i64 noundef 1) #19, !noalias !276
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ap = icmp eq i64 %.sink55, 0
  br i1 %i.ap, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink59, i64 noundef range(i64 1, 0) %.sink55, i64 noundef 1) #19, !noalias !276
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i: ; preds = %bb.u, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  %i.aq = icmp eq i64 %i.z, 0
  br i1 %i.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, 0) %i.z, i64 noundef 1) #19, !noalias !276
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.y, %bb.w
  %.pn18 = phi { ptr, i32 } [ %i.ar, %bb.w ], [ %i.az, %bb.y ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #21
          to label %common.resume unwind label %bb.l

bb.w:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit33, %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCs7QbGsRJVG1P_4hkdf6errors13InvalidLengthE6expectCs4tP8yUXWbFU_18libsignal_protocol.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCs7QbGsRJVG1P_4hkdf11GenericHkdfINtCsfkg6qDyjgHi_4hmac4HmacNtCsj2Wav7G13rI_4sha26Sha256EEECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueAINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEj3_ECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxShEECs4tP8yUXWbFU_18libsignal_protocol.exit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCs4tP8yUXWbFU_18libsignal_protocol5errorNtB5_19SignalProtocolErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt:bb.a
  store ptr %i.bu, ptr %i.l, align 8
  %i.bv = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 21, ptr noundef nonnull %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.al

bb.z:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.bx, ptr %i.k, align 8
  %i.by = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 17, ptr noundef nonnull %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.aa:                                            ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.j, align 8
  %i.cb = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 14, ptr noundef nonnull %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.al

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.i, align 8
  %i.cd = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 15, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.al

bb.ac:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cf, ptr %i.h, align 8
  %i.cg = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 24, ptr noundef nonnull %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.al

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.g, align 8
  %i.ci = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 26, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.al

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.f, align 8
  %i.ck = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 26, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al

bb.af:                                            ; preds = %bb.a
  %i.cl = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 20)
  br label %bb.al

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.e, align 8
  %i.cn = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 38, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.d, align 8
  %i.cp = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 13, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.ai:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %i.cr, ptr %i.c, align 8
  %i.cs = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 15, ptr noundef nonnull %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.al

bb.aj:                                            ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.b, align 8
  %i.cv = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 15, ptr noundef nonnull %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ak:                                            ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %i.a, align 8
  %i.cy = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 22, ptr noundef nonnull %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.ah, %bb.c ], [ %i.ak, %bb.d ], [ %i.al, %bb.e ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ], [ %i.ar, %bb.h ], [ %i.at, %bb.i ], [ %i.au, %bb.j ], [ %i.aw, %bb.k ], [ %i.az, %bb.l ], [ %i.ba, %bb.m ], [ %i.bb, %bb.n ], [ %i.bd, %bb.o ], [ %i.be, %bb.p ], [ %i.bf, %bb.q ], [ %i.bg, %bb.r ], [ %i.bi, %bb.s ], [ %i.bk, %bb.t ], [ %i.bn, %bb.u ], [ %i.bo, %bb.v ], [ %i.bq, %bb.w ], [ %i.bs, %bb.x ], [ %i.bv, %bb.y ], [ %i.by, %bb.z ], [ %i.cb, %bb.aa ], [ %i.cd, %bb.ab ], [ %i.cg, %bb.ac ], [ %i.ci, %bb.ad ], [ %i.ck, %bb.ae ], [ %i.cl, %bb.af ], [ %i.cn, %bb.ag ], [ %i.cp, %bb.ah ], [ %i.cs, %bb.ai ], [ %i.cv, %bb.aj ], [ %i.cy, %bb.ak ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCsjsLMAtnDKjw_12block_buffer4readINtB5_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBX_IBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB20_2B0EB2e_EB2e_EB2e_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef dereferenceable(16) %0) unnamed_addr #1 !guid !516 {
.lr.ph.i:
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %0), !noalias !517
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.1), !noalias !517
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.2), !noalias !517
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.3), !noalias !517
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.4), !noalias !517
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 5
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.5), !noalias !517
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.6), !noalias !517
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 7
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.7), !noalias !517
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.8), !noalias !517
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 9
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.9), !noalias !517
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.10), !noalias !517
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 11
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.11), !noalias !517
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.12), !noalias !517
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 13
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.13), !noalias !517
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.14), !noalias !517
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 15
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizehNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull dereferenceable(1) %.ptr.15), !noalias !517
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutmENtB5_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !518 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizemNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutyENtB5_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 !guid !519 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.c = icmp eq ptr %.promoted, %i.b
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  tail call void @_RNvXCseNmJmsPJ47l_7zeroizeyNtB2_7Zeroize7zeroizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs9_NtCs4tP8yUXWbFU_18libsignal_protocol11sender_keysNtB5_14SenderKeyStateNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !526 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [104 x i8], align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %2 = load <2 x i32>, ptr %i.g, align 8, !alias.scope !527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !528
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !6, !alias.scope !527, !noundef !5
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !527, !noundef !5
  call void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !529
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !528
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8, !noalias !528
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !528
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !6, !alias.scope !527, !noundef !5
  %.not2.i = icmp eq i64 %i.m, -1
  br i1 %.not2.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !530
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %.noexc.i unwind label %bb.j, !noalias !531

.noexc.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !530
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.k unwind label %bb.f, !noalias !531

bb.f:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %.body.i unwind label %bb.g, !noalias !531

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !531
  unreachable

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8, !noalias !528
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !528
  invoke void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderMessageKeyENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneBM_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
          to label %_RNvXsy_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_23SenderKeyStateStructureNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit unwind label %bb.l, !noalias !529

.body.i:                                          ; preds = %bb.l, %bb.j, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.q, %bb.j ], [ %i.o, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure14SenderChainKeyEEB15_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #21
          to label %bb.n unwind label %bb.m, !noalias !529

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !532
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage26sender_key_state_structure16SenderSigningKeyEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #21
          to label %.body.i unwind label %bb.m, !noalias !529

bb.m:                                             ; preds = %bb.l, %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20, !noalias !529
  unreachable

bb.n:                                             ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RNvXsy_NtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storageNtB5_23SenderKeyStateStructureNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone.exit: ; preds = %bb.i
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !527
  %.sroa.0.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0, i64 104, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i32> %2, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs7QbGsRJVG1P_4hkdf6errorsNtB5_13InvalidLengthNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !533 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !534 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXse_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsg_NtNtCsgxBkk5gSRhY_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !535 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCsgxBkk5gSRhY_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEENtNtNtB8_6traits8iterator8Iterator9size_hintB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !538 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.a = tail call noundef i64 @_RNvXs4_NtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits10exact_size17ExactSizeIterator3lenB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !539 ; 2 uses
  store i64 %i.a, ptr %0, align 8, !alias.scope !539
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !539
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8, !alias.scope !539
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB25_2B0EB2i_EB2i_EB2i_EB2i_EB2i_EB2i_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 !guid !542 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.b, align 1, !alias.scope !543
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 !guid !546 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  store i8 0, ptr %i.b, align 1, !alias.scope !547
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_7KeyTypeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !548 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 3)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCs4tP8yUXWbFU_18libsignal_protocol3kemNtB5_7KeyTypeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !549 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 9)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtCsbwPL7qM37dJ_14libsignal_core5curveNtB5_10CurveErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !550 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 8, !range !551, !noundef !5
  switch i8 %i.c, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 19)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 12, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 19)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs4tP8yUXWbFU_18libsignal_protocol8protocolNtB5_21CiphertextMessageTypeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !552 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !553, !noundef !5
  %switch.tableidx = add nsw i8 %i.a, -2          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtCs4tP8yUXWbFU_18libsignal_protocol8protocolNtB5_21CiphertextMessageTypeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsp_NtCs4tP8yUXWbFU_18libsignal_protocol8protocolNtB5_21CiphertextMessageTypeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.116, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !554 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 !guid !557 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %bb.b, label %_RNvXs1q_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4tP8yUXWbFU_18libsignal_protocol.exit

bb.b:                                             ; preds = %bb.a
end_hunk_1
