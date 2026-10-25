Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/signal_crypto-48495e06096eb0be.signal_crypto.3b151be042a3f054-cgu.6?download=true
inline.NumInlined: 137
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem11auth_decapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_:bb.a
          to label %.body37 unwind label %bb.bk

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body37 unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit39 unwind label %bb.av

bb.bb:                                            ; preds = %bb.az
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit39: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit39
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body33 unwind label %bb.be

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit39
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44 unwind label %bb.ap

bb.be:                                            ; preds = %bb.bc
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.bh

bb.bg:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit49 unwind label %.body25

bb.bh:                                            ; preds = %bb.bf
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit49: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit53 unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit49
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.bm, %bb.bi
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.bm ], [ %i.de, %bb.bi ], [ %.pn18, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit53: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit49, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit31
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.bk:                                            ; preds = %.body25.thread, %bb.ax, %.body37, %.body33, %bb.ag, %.body21, %bb.q, %bb.i, %.body
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bl:                                            ; preds = %bb.ar, %bb.ai
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit31: ; preds = %bb.ad, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit53 unwind label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit31
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body25.thread:                                   ; preds = %.body21, %bb.ag, %bb.w, %.body25.thread62, %bb.z
  %.pn1656 = phi { ptr, i32 } [ %i.bb, %bb.w ], [ %.pn14, %bb.z ], [ %lpad.thr_comm, %.body25.thread62 ], [ %eh.lpad-body22, %.body21 ], [ %i.bn, %bb.ag ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #15
          to label %.body unwind label %bb.bk

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.n, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit31
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem11auth_encapsNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i16 noundef range(i16 16, 25723) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef range(i64 0, -9223372036854775808) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.59 = alloca [24 x i8], align 8           ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.57 = alloca [24 x i8], align 8           ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.55 = alloca [24 x i8], align 8           ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 17 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call fastcc void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem15derive_key_pairNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.t, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef %9)
  %i.w = load i64, ptr %i.t, align 8, !range !8, !noundef !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.24..sroa_idx, i64 24, i1 false)
  store i64 %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  invoke void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto2dh(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %bb.d unwind label %.body62

.body:                                            ; preds = %bb.bl, %.body62, %bb.co, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs54uEYnqmHDA_13signal_crypto.exit.i81, %.body38, %bb.k, %.thread, %.body38.a, %bb.g
  %.pn29 = phi { ptr, i32 } [ %.pn, %bb.g ], [ %.pn27100, %.thread ], [ %.pn27, %.body38.a ], [ %i.eq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs54uEYnqmHDA_13signal_crypto.exit.i81 ], [ %lpad.thr_comm.split-lp.a, %.body62 ], [ %i.ar, %bb.k ], [ %lpad.thr_comm.split-lp, %.body38 ], [ %i.ew, %bb.co ], [ %i.ec, %bb.bl ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #15
          to label %.body65 unwind label %bb.cd

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.p, align 8, !range !4, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto2dh(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.o, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.am, %bb.h ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #15
          to label %.body unwind label %bb.cd

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.n, align 8, !range !4, !noundef !5
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.ao, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit unwind label %.body62

bb.m:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.n:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  store ptr %i.aj, ptr %i.r, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.al, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.au, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.aw, ptr %i.az, align 8
  invoke void @_RNvXs2_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_4JoinBx_E4joinCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.r, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #15
          to label %bb.g unwind label %bb.cd

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body34 unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit36 unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %bb.q, %bb.t
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.bb, %bb.q ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #15
          to label %.thread unwind label %bb.cd

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit36: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit36
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit36
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit40 unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body38.a:                                        ; preds = %.body62.thread, %bb.ad
  %.pn27 = phi { ptr, i32 } [ %.pn23, %bb.ad ], [ %.pn25101, %.body62.thread ] ; 2 uses
  %.sroa.010.0 = phi i1 [ %.sroa.010.4, %bb.ad ], [ %.sroa.010.2107, %.body62.thread ]
  br i1 %.sroa.010.0, label %.thread, label %.body

bb.x:                                             ; preds = %bb.z, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit40, %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.body38:                                          ; preds = %bb.cg
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cg, label %.thread, label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit40: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bh = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.bj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.y unwind label %bb.x

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit40
  %i.bk = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !6, !noundef !5 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.bp = load i64, ptr %i.bo, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #14
          to label %bb.ce unwind label %bb.x

bb.aa:                                            ; preds = %bb.y
  %i.bq = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = icmp ule i64 %i.bj, %i.bn
  call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.bn, ptr %i.m, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.bt, align 8
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %.body62.thread110

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %i.bh, i64 %i.bj, i1 false)
  store i64 %i.bj, ptr %i.bt, align 8
  br label %bb.ab

bb.ad:                                            ; preds = %.body58
  br i1 %.sroa.012.2, label %.body62.thread, label %.body38.a

.body62.thread110:                                ; preds = %bb.af, %bb.cb, %bb.ab
  %.sroa.010.3.ph = phi i1 [ true, %bb.ab ], [ %i.cg, %bb.cb ], [ true, %bb.af ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body62.thread

.body62:                                          ; preds = %bb.c, %bb.l, %bb.cp, %bb.bm
  %lpad.thr_comm.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ab
  %i.bu = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !6, !noundef !5 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bv, label %bb.af, label %bb.ag, !prof !7

bb.af:                                            ; preds = %bb.ae
  %i.bz = load i64, ptr %i.by, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.bz) #14
          to label %bb.ce unwind label %.body62.thread110

bb.ag:                                            ; preds = %bb.ae
  %i.ca = load ptr, ptr %i.by, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = icmp samesign ule i64 %3, %i.bx
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bx, ptr %i.l, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.cd, align 8
  %.not19 = icmp eq i64 %3, 0
  br i1 %.not19, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtNtCs54uEYnqmHDA_13signal_crypto4hpke8providerNtB2_14CryptoProviderNtCs3aQ7rNtaasP_14hpke_rs_crypto10HpkeCrypto16secret_to_public(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, i16 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.ak unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %2, i64 %3, i1 false)
  store i64 %3, ptr %i.cd, align 8
  br label %bb.ah

.body58:                                          ; preds = %bb.bx, %bb.bi, %bb.aj, %.body42, %bb.an
  %.pn23 = phi { ptr, i32 } [ %i.cn, %bb.an ], [ %.pn21, %.body42 ], [ %i.ea, %bb.bi ], [ %i.ce, %bb.aj ], [ %i.el, %bb.bx ] ; 2 uses
  %.sroa.012.2 = phi i1 [ true, %bb.an ], [ %.sroa.012.4, %.body42 ], [ false, %bb.bi ], [ %.sroa.012.3, %bb.aj ], [ true, %bb.bx ]
  %.sroa.010.4 = phi i1 [ true, %bb.an ], [ %.sroa.010.6, %.body42 ], [ false, %bb.bi ], [ %.sroa.010.5, %bb.aj ], [ false, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #15
          to label %bb.ad unwind label %bb.cd

bb.aj:                                            ; preds = %bb.by, %bb.bj, %bb.ah
  %.sroa.012.3 = phi i1 [ true, %bb.by ], [ false, %bb.bj ], [ true, %bb.ah ]
  %.sroa.010.5 = phi i1 [ false, %bb.by ], [ false, %bb.bj ], [ true, %bb.ah ]
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.ak:                                            ; preds = %bb.ah
  %i.cf = load i64, ptr %i.i, align 8, !range !4, !noundef !5
  %i.cg = trunc nuw i64 %i.cf to i1               ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.cg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit74

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #15
          to label %.body58 unwind label %bb.cd

bb.ao:                                            ; preds = %bb.am
  %i.co = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !6, !noundef !5 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.ap, label %bb.aq, !prof !7

bb.ap:                                            ; preds = %bb.ao
  %i.ct = load i64, ptr %i.cs, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #14
          to label %bb.ce unwind label %bb.an

bb.aq:                                            ; preds = %bb.ao
  %i.cu = load ptr, ptr %i.cs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cv = icmp ule i64 %i.cm, %i.cr
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.cr, ptr %i.k, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.cx, align 8
  %.not20 = icmp eq i64 %i.cm, 0
  br i1 %.not20, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.av, %bb.aq
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body42 unwind label %bb.au

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44 unwind label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.av:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull align 1 %i.ck, i64 %i.cm, i1 false)
  store i64 %i.cm, ptr %i.cx, align 8
  br label %bb.ar

.body42:                                          ; preds = %bb.bf, %bb.bb, %bb.as, %bb.aw, %bb.ay
  %.pn21 = phi { ptr, i32 } [ %i.dq, %bb.ay ], [ %i.cy, %bb.as ], [ %i.dv, %bb.bb ], [ %i.da, %bb.aw ], [ %i.dy, %bb.bf ]
  %.sroa.012.4 = phi i1 [ true, %bb.ay ], [ true, %bb.as ], [ true, %bb.bb ], [ %.sroa.012.5, %bb.aw ], [ false, %bb.bf ]
  %.sroa.010.6 = phi i1 [ false, %bb.ay ], [ true, %bb.as ], [ false, %bb.bb ], [ %.sroa.010.7, %bb.aw ], [ false, %bb.bf ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #15
          to label %.body58 unwind label %bb.cd

bb.aw:                                            ; preds = %bb.bg, %bb.bc, %bb.at, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44
  %.sroa.012.5 = phi i1 [ true, %bb.bc ], [ false, %bb.bg ], [ true, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44 ], [ true, %bb.at ]
  %.sroa.010.7 = phi i1 [ false, %bb.bc ], [ false, %bb.bg ], [ true, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44 ], [ true, %bb.at ]
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body42

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.db = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5
  %i.dc = load i64, ptr %i.bt, align 8, !noundef !5
  %i.dd = load ptr, ptr %i.cc, align 8, !nonnull !5, !noundef !5
  %i.de = load i64, ptr %i.cd, align 8, !noundef !5
  %i.df = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5
  %i.dg = load i64, ptr %i.cx, align 8, !noundef !5
  store ptr %i.db, ptr %i.g, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.dc, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.dd, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.de, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.df, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.dg, ptr %i.dl, align 8
  invoke void @_RNvXs2_NtCs6i54tJFfzR_5alloc5sliceSRShINtB5_4JoinBx_E4joinCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.ax unwind label %bb.aw

bb.ax:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noundef !5
  invoke fastcc void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem18extract_and_expandNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBX_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f, i16 noundef %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #15
          to label %.body42 unwind label %bb.cd

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dr = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.59, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ds, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.59, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body42 unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit50 unwind label %bb.aw

bb.bd:                                            ; preds = %bb.bb
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.be:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.59, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body42 unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit56 unwind label %bb.aw

bb.bh:                                            ; preds = %bb.bf
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit56: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit56
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body58 unwind label %bb.bk

bb.bj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit56
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit60 unwind label %bb.aj

bb.bk:                                            ; preds = %bb.bi
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit60: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit60
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.bn

bb.bm:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit60
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit64 unwind label %.body62

bb.bn:                                            ; preds = %bb.bl
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit64: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXs_NtCsdZ6zx9bXGuc_7hpke_rs3kemNtB4_10PrivateKeyNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit64
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #15
          to label %.body65 unwind label %bb.bs

bb.bp:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit64
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body65 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body65:                                          ; preds = %bb.ci, %bb.ck, %bb.bq, %bb.bo, %bb.bt, %.body
  %.pn31 = phi { ptr, i32 } [ %.pn29, %.body ], [ %i.ee, %bb.bo ], [ %i.ef, %bb.bq ], [ %i.ei, %bb.bt ], [ %i.et, %bb.ck ], [ %i.es, %bb.ci ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #15
          to label %common.resume unwind label %bb.cd

bb.bt:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i88, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body65

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit68 unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body65, %bb.cr, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.cr ], [ %i.ej, %bb.bu ], [ %.pn31, %.body65 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit68: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit97, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit68, %bb.b
  ret void

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit50: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit50
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body58 unwind label %bb.bz

bb.by:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit50
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit74 unwind label %bb.aj

bb.bz:                                            ; preds = %bb.bx
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit74: ; preds = %bb.by, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit74
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body62.thread unwind label %bb.cc

bb.cb:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit74
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit80 unwind label %.body62.thread110

bb.cc:                                            ; preds = %bb.ca
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.cd:                                            ; preds = %.thread, %.body62.thread, %.body65, %bb.ay, %.body42, %bb.an, %.body58, %.body34, %bb.o, %bb.g, %.body
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ce:                                            ; preds = %bb.ap, %bb.af, %bb.z
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit80: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit80
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs54uEYnqmHDA_13signal_crypto.exit.i81 unwind label %bb.ch

bb.cg:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit80
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit85 unwind label %.body38

bb.ch:                                            ; preds = %bb.cf
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs54uEYnqmHDA_13signal_crypto.exit.i81: ; preds = %bb.cf
  br i1 %i.cg, label %.thread, label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit85: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.cg, label %bb.cn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit95

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit95: ; preds = %bb.cp, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXs_NtCsdZ6zx9bXGuc_7hpke_rs3kemNtB4_10PrivateKeyNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit95
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #15
          to label %.body65 unwind label %bb.cm

bb.cj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit95
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i88 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body65 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i88: ; preds = %bb.cj
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit91 unwind label %bb.bt

bb.cm:                                            ; preds = %bb.ci
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.cn:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit85
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit95 unwind label %.body62

bb.cq:                                            ; preds = %bb.co
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body62.thread:                                   ; preds = %bb.ca, %.body62.thread110, %bb.ad
  %.sroa.010.2107 = phi i1 [ %.sroa.010.3.ph, %.body62.thread110 ], [ %.sroa.010.4, %bb.ad ], [ %i.cg, %bb.ca ]
  %.pn25101 = phi { ptr, i32 } [ %lpad.thr_comm, %.body62.thread110 ], [ %.pn23, %bb.ad ], [ %i.en, %bb.ca ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #15
          to label %.body38.a unwind label %bb.cd

.thread:                                          ; preds = %bb.u, %.body34, %bb.x, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs54uEYnqmHDA_13signal_crypto.exit.i81, %.body38, %.body38.a
  %.pn27100 = phi { ptr, i32 } [ %i.bg, %bb.x ], [ %.pn27, %.body38.a ], [ %lpad.thr_comm.split-lp, %.body38 ], [ %eh.lpad-body35, %.body34 ], [ %i.eq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs54uEYnqmHDA_13signal_crypto.exit.i81 ], [ %i.be, %bb.u ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #15
          to label %.body unwind label %bb.cd

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.l, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit95

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit91: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit97 unwind label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit91
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit97: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto.exit91
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bw
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs6dh_kem15derive_key_pairNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBU_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i16 noundef range(i16 16, 25723) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.512 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 15 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.53 = alloca [24 x i8], align 8           ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  switch i16 %1, label %.loopexit [
    i16 16, label %bb.d
    i16 17, label %bb.b
    i16 18, label %bb.c
    i16 22, label %bb.d
    i16 32, label %bb.d
    i16 33, label %bb.c
    i16 77, label %bb.c
    i16 25722, label %bb.c
    i16 65, label %bb.d
    i16 66, label %bb.d
  ]

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.01.0 = phi i16 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  call void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs3kdf15labeled_extractNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBR_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, i16 noundef %.sroa.01.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.l = load i64, ptr %i.j, align 8, !range !4, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.br

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  switch i16 %1, label %bb.g [
    i16 32, label %bb.h
    i16 18, label %bb.j
    i16 16, label %bb.i
    i16 17, label %bb.i
    i16 22, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.at

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  invoke void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs3kdf14labeled_expandNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, i16 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef 32)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.sroa.04.0 = phi i8 [ -1, %bb.i ], [ 1, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.ax, %bb.j
  %.sroa.05.0 = phi i8 [ 0, %bb.j ], [ %i.bg, %bb.ax ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  switch i16 %1, label %.loopexit [
    i16 16, label %bb.m
    i16 17, label %.thread
    i16 18, label %bb.l
    i16 22, label %bb.m
    i16 32, label %bb.m
    i16 33, label %bb.l
    i16 77, label %bb.l
    i16 25722, label %bb.l
    i16 65, label %bb.m
    i16 66, label %bb.m
  ]

.thread:                                          ; preds = %bb.k
  %i.z = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.aa = load i64, ptr %i.v, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %.sroa.05.0, ptr %i.f, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.l
  %.sroa.08.0 = phi i16 [ 1, %bb.k ], [ 1, %bb.k ], [ 3, %bb.l ], [ 1, %bb.k ], [ 1, %bb.k ], [ 1, %bb.k ] ; 9 uses
  %i.ab = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.ac = load i64, ptr %i.v, align 8, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %.sroa.05.0, ptr %i.f, align 1
  switch i16 %1, label %.loopexit [
    i16 16, label %bb.r
    i16 17, label %bb.n
    i16 18, label %bb.o
    i16 22, label %bb.r
    i16 32, label %bb.r
    i16 33, label %bb.p
    i16 77, label %bb.r
    i16 25722, label %bb.r
    i16 65, label %bb.q
    i16 66, label %bb.q
  ]

bb.n:                                             ; preds = %.thread, %bb.m
  %i.ad = phi i64 [ %i.aa, %.thread ], [ %i.ac, %bb.m ]
  %i.ae = phi ptr [ %i.z, %.thread ], [ %i.ab, %bb.m ]
  %.sroa.08.039 = phi i16 [ 2, %.thread ], [ %.sroa.08.0, %bb.m ]
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.m
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.q, %bb.p, %bb.o, %bb.n
  %i.af = phi i64 [ %i.ac, %bb.q ], [ %i.ad, %bb.n ], [ %i.ac, %bb.o ], [ %i.ac, %bb.m ], [ %i.ac, %bb.m ], [ %i.ac, %bb.p ], [ %i.ac, %bb.m ], [ %i.ac, %bb.m ], [ %i.ac, %bb.m ]
  %i.ag = phi ptr [ %i.ab, %bb.q ], [ %i.ae, %bb.n ], [ %i.ab, %bb.o ], [ %i.ab, %bb.m ], [ %i.ab, %bb.m ], [ %i.ab, %bb.p ], [ %i.ab, %bb.m ], [ %i.ab, %bb.m ], [ %i.ab, %bb.m ]
  %.sroa.08.040 = phi i16 [ %.sroa.08.0, %bb.q ], [ %.sroa.08.039, %bb.n ], [ %.sroa.08.0, %bb.o ], [ %.sroa.08.0, %bb.m ], [ %.sroa.08.0, %bb.m ], [ %.sroa.08.0, %bb.p ], [ %.sroa.08.0, %bb.m ], [ %.sroa.08.0, %bb.m ], [ %.sroa.08.0, %bb.m ]
  %.sroa.09.0 = phi i64 [ 64, %bb.q ], [ 48, %bb.n ], [ 66, %bb.o ], [ 32, %bb.m ], [ 32, %bb.m ], [ 56, %bb.p ], [ 32, %bb.m ], [ 32, %bb.m ], [ 32, %bb.m ]
  invoke void @_RINvNtCsdZ6zx9bXGuc_7hpke_rs3kdf14labeled_expandNtNtNtCs54uEYnqmHDA_13signal_crypto4hpke8provider14CryptoProviderEBQ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, i16 noundef %.sroa.08.040, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1, i64 noundef %.sroa.09.0)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc, %bb.ay, %.body
end_hunk_0
