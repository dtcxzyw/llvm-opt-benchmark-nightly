Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/poksho-1a12fe5a85295916.poksho.b68a72187cf87ffd-cgu.0?download=true
inline.NumInlined: 231
inline.NumDeleted: 111
begin_hunk_0_@_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement5prove:bb.a
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #15
          to label %.body70 unwind label %bb.bg

bb.ao:                                            ; preds = %bb.am
  switch i8 %i.ed, label %bb.as [
    i8 -1, label %bb.ap
    i8 5, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit72

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit72: ; preds = %bb.av, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsfFEWD1QhNwv_6poksho.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit72
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %.body65 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsfFEWD1QhNwv_6poksho.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit72
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho5proof5ProofEBF_.exit unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.ao
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.as
  %.sink = phi i8 [ %i.ed, %bb.as ], [ 6, %bb.ao ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.eh, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body70 unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit72 unwind label %bb.al

bb.aw:                                            ; preds = %bb.au
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho5proof5ProofEBF_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsfFEWD1QhNwv_6poksho.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho5proof5ProofEBF_.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body74.thread unwind label %bb.az

bb.ay:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho5proof5ProofEBF_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit unwind label %.split140

bb.az:                                            ; preds = %bb.ax
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body78 unwind label %bb.bc

bb.bb:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit80 unwind label %.loopexit.split-lp110

bb.bc:                                            ; preds = %bb.ba
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit80: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.w, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.w) #19, !srcloc !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull %i.eo)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit82 unwind label %.loopexit.split-lp115

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit82: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.aa, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.aa) #19, !srcloc !9
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull %i.bx)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit84 unwind label %bb.l

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit84: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit89 unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit84
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.be

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit89: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit84
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bf:                                            ; preds = %bb.bi, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointEECsfFEWD1QhNwv_6poksho.exit89, %bb.c
  ret void

bb.bg:                                            ; preds = %.body78, %.body, %bb.bj, %bb.bh, %bb.an, %.body70, %.body65, %.body74.thread, %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256EBF_.exit
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bh:                                            ; preds = %.split140.thread, %.body74
  %.pn39141 = phi { ptr, i32 } [ %i.dh, %.split140.thread ], [ %.pn37, %.body74 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #15
          to label %.body74.thread unwind label %bb.bg

bb.bi:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsfFEWD1QhNwv_6poksho.exit, %_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement12sort_scalars.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bf

bb.bj:                                            ; preds = %.split.thread, %.body87
  %.pn42.pn.pn.pn137 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn42.pn.pn, %.body87 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #15
          to label %common.resume unwind label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement8to_bytes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 5 uses
  %i.h = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ugt i64 %i.g, 255
  %i.j = trunc nuw i64 %i.g to i8
  br i1 %i.i, label %bb.b, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !246
  store i8 2, ptr %i.d, align 1, !noalias !246
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 34, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #16
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp ugt i64 %i.l, 255                   ; 2 uses
  %i.n = trunc nuw i64 %i.l to i8
  %.sroa.52.0 = select i1 %i.m, i8 2, i8 %i.n
  br i1 %i.m, label %bb.c, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit22, !prof !6

bb.c:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !247
  store i8 2, ptr %i.c, align 1, !noalias !247
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #16
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit22: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = icmp ugt i64 %i.p, 255                   ; 2 uses
  %i.r = trunc nuw i64 %i.p to i8
  %.sroa.54.0 = select i1 %i.q, i8 2, i8 %i.r     ; 2 uses
  br i1 %i.q, label %bb.d, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit23, !prof !6

bb.d:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !248
  store i8 2, ptr %i.b, align 1, !noalias !248
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit23: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.s = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 1, i64 noundef range(i64 1, 9) 1) #20 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.e:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit23
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #16
  unreachable

_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit23
  store i8 %i.j, ptr %i.s, align 1
  store i64 1, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.z = icmp eq i64 %i.g, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph39

.loopexit:                                        ; preds = %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32, %bb.n
  %i.aa = phi i64 [ %i.aw, %bb.n ], [ %i.bv, %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32 ]
  %i.ab = icmp eq ptr %i.ad, %i.y
  br i1 %i.ab, label %._crit_edge, label %.lr.ph39

.lr.ph39:                                         ; preds = %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit, %.loopexit
  %i.ac = phi i64 [ %i.aa, %.loopexit ], [ 1, %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit ] ; 4 uses
  %.sroa.05.038 = phi ptr [ %i.ad, %.loopexit ], [ %i.x, %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i8 %i.af, %.sroa.54.0
  br i1 %.not, label %.invoke, label %bb.f, !prof !6

._crit_edge:                                      ; preds = %.loopexit, %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.f:                                             ; preds = %.lr.ph39
  %i.ag = load i64, ptr %i.e, align 8, !range !8, !alias.scope !249, !noundef !4
  %i.ah = icmp eq i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.s, %bb.m, %bb.g, %.invoke, %bb.l
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit unwind label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.f, %bb.g
  %i.ak = load ptr, ptr %i.u, align 8, !alias.scope !249, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 %i.af, ptr %i.al, align 1
  %i.am = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.am, ptr %i.v, align 8, !alias.scope !249
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 4611686018427387904
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ugt i64 %i.ao, 255
  %i.ar = trunc nuw i64 %i.ao to i8
  br i1 %i.aq, label %bb.l, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit26, !prof !6

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !250
  store i8 2, ptr %i.a, align 1, !noalias !250
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 30, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #16
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.l
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit26: ; preds = %bb.k
  %i.as = load i64, ptr %i.e, align 8, !range !8, !alias.scope !251, !noundef !4
  %i.at = icmp eq i64 %i.am, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit26
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfFEWD1QhNwv_6poksho.exit26, %bb.m
  %i.au = load ptr, ptr %i.u, align 8, !alias.scope !251, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 %i.ar, ptr %i.av, align 1
  %i.aw = add i64 %i.ac, 2                        ; 3 uses
  store i64 %i.aw, ptr %i.v, align 8, !alias.scope !251
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.038, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %.idx40 = shl nuw nsw i64 %i.az, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx40
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32
  %i.bc = phi i64 [ %i.bv, %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32 ], [ %i.aw, %bb.n ] ; 4 uses
  %.sroa.010.037 = phi ptr [ %i.bd, %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32 ], [ %i.ay, %bb.n ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.037, i64 2 ; 2 uses
  %i.be = load i8, ptr %.sroa.010.037, align 1, !noundef !4 ; 2 uses
  %i.bf = icmp ult i8 %i.be, %.sroa.52.0
  br i1 %i.bf, label %bb.o, label %.invoke, !prof !5

bb.o:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.010.037, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4 ; 2 uses
  %i.bi = icmp ult i8 %i.bh, %.sroa.54.0
  br i1 %i.bi, label %bb.p, label %.invoke, !prof !5

.invoke:                                          ; preds = %.lr.ph39, %bb.o, %.lr.ph
  %i.bj = phi ptr [ @33, %.lr.ph ], [ @35, %bb.o ], [ @29, %.lr.ph39 ]
  %i.bk = phi i64 [ 40, %.lr.ph ], [ 38, %bb.o ], [ 37, %.lr.ph39 ]
  %i.bl = phi ptr [ @34, %.lr.ph ], [ @36, %bb.o ], [ @30, %.lr.ph39 ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %i.e, align 8, !range !8, !alias.scope !252, !noundef !4
  %i.bn = icmp eq i64 %i.bc, %i.bm
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bo = load ptr, ptr %i.u, align 8, !alias.scope !252, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bc
  store i8 %i.be, ptr %i.bp, align 1
  %i.bq = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.v, align 8, !alias.scope !252
  %i.br = load i64, ptr %i.e, align 8, !range !8, !alias.scope !253, !noundef !4
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.s, label %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE8push_mutCsfFEWD1QhNwv_6poksho.exit32: ; preds = %bb.s, %bb.r
  %i.bt = load ptr, ptr %i.u, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bh, ptr %i.bu, align 1
  %i.bv = add i64 %i.bc, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.v, align 8, !alias.scope !253
  %i.bw = icmp eq ptr %i.bd, %i.ba
  br i1 %i.bw, label %.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %bb.t
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsfFEWD1QhNwv_6poksho.exit: ; preds = %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp60
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertCsfFEWD1QhNwv_6poksho(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([33 x i8]) align 1 captures(none) dereferenceable(33) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweENtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEE7reserveNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0ECsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !265, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.d, align 8, !alias.scope !265, !noundef !4 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !266 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val7.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !265, !noalias !267, !nonnull !4, !noundef !4
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -56
  %i.u = invoke noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrownINtNtCs6i54tJFfzR_5alloc6borrow3CoweEINtB2_10EquivalentBq_E10equivalentCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !6

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !6

.thread24.i.i:                                    ; preds = %bb.e
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.m, !prof !6

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.m

bb.i:                                             ; preds = %.noexc6
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !265, !nonnull !4
  %i.aq = getelementptr inbounds [56 x i8], ptr %i.ap, i64 %i.r
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 32, i1 false)
  store i8 1, ptr %0, align 1
  %i.at = load i64, ptr %2, align 8, !range !7, !alias.scope !268, !noundef !4
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsfFEWD1QhNwv_6poksho.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsfFEWD1QhNwv_6poksho.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.k ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsfFEWD1QhNwv_6poksho.exit.i: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsfFEWD1QhNwv_6poksho(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsfFEWD1QhNwv_6poksho.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsfFEWD1QhNwv_6poksho.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsfFEWD1QhNwv_6poksho.exit.i, %bb.i, %bb.m
  ret void

end_hunk_0
