Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/signal_crypto-48495e06096eb0be.signal_crypto.3b151be042a3f054-cgu.6?download=true
inline.NumInlined: 137
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtBG_7flavors5ctr327Ctr32BEEECs54uEYnqmHDA_13signal_crypto:bb.a
  store ptr %0, ptr %i.e, align 8, !noalias !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !38
  invoke void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutyENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  store volatile i32 0, ptr %i.ar, align 16, !alias.scope !48
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.ar) #17, !srcloc !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  store ptr %i.ao, ptr %i.b, align 8, !noalias !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !noalias !48
  invoke void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutmENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256ECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %.noexc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes3x866Aes256ECs54uEYnqmHDA_13signal_crypto.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 960
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  store volatile i32 0, ptr %i.au, align 16, !alias.scope !51
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %i.au) #17, !srcloc !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  store ptr %i.at, ptr %i.a, align 8, !noalias !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.au, ptr %i.av, align 8, !noalias !51
  call void @_RNvXs4_CseNmJmsPJ47l_7zeroizeINtNtNtCsgxBkk5gSRhY_4core5slice4iter7IterMutmENtB5_7Zeroize7zeroizeCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  ret void

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  resume { ptr, i32 } %i.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdZ6zx9bXGuc_7hpke_rs3kem10PrivateKeyECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtCsdZ6zx9bXGuc_7hpke_rs3kemNtB4_10PrivateKeyNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #15
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtCs8pp35hPiiF8_3aes3x862ni6expand8inv_keysKjf_ECs54uEYnqmHDA_13signal_crypto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((0, 240)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(240) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = load <2 x i64>, ptr %i.a, align 16
  store <2 x i64> %i.b, ptr %0, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = load <2 x i64>, ptr %i.c, align 16
  %i.e = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.e, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.h = load <2 x i64>, ptr %i.g, align 16
  %i.i = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.i, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.l = load <2 x i64>, ptr %i.k, align 16
  %i.m = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.m, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = load <2 x i64>, ptr %i.o, align 16
  %i.q = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.q, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.t = load <2 x i64>, ptr %i.s, align 16
  %i.u = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.u, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load <2 x i64>, ptr %i.w, align 16
  %i.y = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.y, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ab = load <2 x i64>, ptr %i.aa, align 16
  %i.ac = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.ac, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 16
  %i.ag = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.ag, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load <2 x i64>, ptr %i.ai, align 16
  %i.ak = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %i.ak, ptr %i.al, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load <2 x i64>, ptr %i.am, align 16
  %i.ao = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %i.ao, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load <2 x i64>, ptr %i.aq, align 16
  %i.as = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %i.as, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load <2 x i64>, ptr %i.au, align 16
  %i.aw = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> %i.aw, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load <2 x i64>, ptr %i.ay, align 16
  %i.ba = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.ba, ptr %i.bb, align 16
  %i.bc = load <2 x i64>, ptr %1, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.bc, ptr %i.bd, align 16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1d_ENCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2t_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3G_3VechE14extend_trustedBN_E0E0ECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.41.0.copyload8 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 11 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 8 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0.copyload6 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 8 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhB2u_EhuNCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0NCINvNvB1s_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3U_3VechE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0ECs54uEYnqmHDA_13signal_crypto.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.b = add i64 %.sroa.44.0.copyload, %.sroa.65.0.copyload6 ; 2 uses
  %i.c = add i64 %.sroa.52.0.copyload, %.sroa.0.0.copyload7
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %i.e = add i64 %.sroa.52.0.copyload, %.sroa.41.0.copyload8
  %i.f = sub i64 %i.e, %i.b
  %diff.check9 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.a, 28
  %n.vec = and i64 %i.a, -32                      ; 5 uses
  %i.h = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !noalias !67
  %wide.load11 = load <16 x i8>, ptr %i.m, align 1, !noalias !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.l, align 1, !noalias !67
  %wide.load13 = load <16 x i8>, ptr %i.n, align 1, !noalias !67
  %i.o = xor <16 x i8> %wide.load12, %wide.load
  %i.p = xor <16 x i8> %wide.load13, %wide.load11
  %i.q = getelementptr i8, ptr %i.i, i64 %index   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.o, ptr %i.q, align 1, !noalias !68
  store <16 x i8> %i.p, ptr %i.r, align 1, !noalias !68
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhB2u_EhuNCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0NCINvNvB1s_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3U_3VechE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0ECs54uEYnqmHDA_13signal_crypto.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.a, -4                     ; 4 uses
  %i.t = add i64 %.sroa.44.0.copyload, %n.vec14   ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.v = add i64 %index15, %.sroa.52.0.copyload   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.v
  %wide.load16 = load <4 x i8>, ptr %i.w, align 1, !noalias !67
  %wide.load17 = load <4 x i8>, ptr %i.x, align 1, !noalias !67
  %i.y = xor <4 x i8> %wide.load17, %wide.load16
  %i.z = getelementptr i8, ptr %i.u, i64 %index15
  store <4 x i8> %i.y, ptr %i.z, align 1, !noalias !68
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.a, %n.vec14
  br i1 %cmp.n19, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhB2u_EhuNCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0NCINvNvB1s_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3U_3VechE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0ECs54uEYnqmHDA_13signal_crypto.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %iter.check ], [ %.sroa.44.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 4 uses
  %i.ab = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %i.ac = xor i64 %.sroa.0.016.i.i.ph, -1
  %i.ad = add i64 %.sroa.6.0.copyload, %i.ac
  %xtraiter = and i64 %i.ab, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ae = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %i.af = add i64 %.sroa.0.016.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.af
  %.val14.i.i.prol = load i8, ptr %i.ag, align 1, !noalias !67, !noundef !5
  %.val15.i.i.prol = load i8, ptr %i.ah, align 1, !noalias !67, !noundef !5
  %i.ai = xor i8 %.val15.i.i.prol, %.val14.i.i.prol
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.65.0.copyload, i64 %.ph
  store i8 %i.ai, ptr %i.aj, align 1, !noalias !68
  %i.ak = add i64 %.ph, 1                         ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ak, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ak, %vec.epilog.scalar.ph.prol ]
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %i.al = icmp eq i64 %i.ad, %.sroa.52.0.copyload
  br i1 %i.al, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhB2u_EhuNCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0NCINvNvB1s_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3U_3VechE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0ECs54uEYnqmHDA_13signal_crypto.exit, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %i.am = phi i64 [ %.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.ay, %vec.epilog.scalar.ph ] ; 3 uses
  %.sroa.0.016.i.i = phi i64 [ %.sroa.0.016.i.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.as, %vec.epilog.scalar.ph ] ; 3 uses
  %i.an = add i64 %.sroa.0.016.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %i.an
  %.val14.i.i = load i8, ptr %i.ao, align 1, !noalias !67, !noundef !5
  %.val15.i.i = load i8, ptr %i.ap, align 1, !noalias !67, !noundef !5
  %i.aq = xor i8 %.val15.i.i, %.val14.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.65.0.copyload, i64 %i.am
  store i8 %i.aq, ptr %i.ar, align 1, !noalias !68
  %i.as = add nuw i64 %.sroa.0.016.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.016.i.i, %invariant.op ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.reass
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload, i64 %.reass
  %.val14.i.i.1 = load i8, ptr %i.at, align 1, !noalias !67, !noundef !5
  %.val15.i.i.1 = load i8, ptr %i.au, align 1, !noalias !67, !noundef !5
  %i.av = xor i8 %.val15.i.i.1, %.val14.i.i.1
  %i.aw = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.am
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store i8 %i.av, ptr %i.ax, align 1, !noalias !68
  %i.ay = add i64 %i.am, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhB2u_EhuNCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0NCINvNvB1s_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3U_3VechE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0ECs54uEYnqmHDA_13signal_crypto.exit, label %vec.epilog.scalar.ph, !llvm.loop !66

_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRhB2u_EhuNCNvNtCsdZ6zx9bXGuc_7hpke_rs4util9xor_bytes0NCINvNvB1s_8for_each4callhNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB3U_3VechE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0ECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ay, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !67
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB6_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB1k_7flavors5ctr327Ctr32BEEENtB8_16StreamCipherSeek8try_seekyECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef align 16 dereferenceable(1008) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs1_NtCshARBVLlQvfp_6cipher6streamyNtB6_7SeekNum15into_block_bytemECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i64 noundef %1, i8 noundef 16)
  %i.b = load i32, ptr %i.a, align 4, !range !80, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs1_NtCsjsLMAtnDKjw_12block_buffer4readINtB6_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB22_2B0EB2g_EB2g_EB2g_EE11write_blockNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB32_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB4h_7flavors5ctr327Ctr32BEEENtB34_16StreamCipherSeek8try_seekyE0NCB2V_s_0ECs54uEYnqmHDA_13signal_crypto.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i8, ptr %i.f, align 4, !noundef !5  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.thread4, label %bb.e

.thread4:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i32 %i.e, ptr %i.i, align 16, !alias.scope !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 992
  store i8 16, ptr %i.j, align 16
  br label %_RINvMs1_NtCsjsLMAtnDKjw_12block_buffer4readINtB6_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB22_2B0EB2g_EB2g_EB2g_EE11write_blockNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB32_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB4h_7flavors5ctr327Ctr32BEEENtB34_16StreamCipherSeek8try_seekyE0NCB2V_s_0ECs54uEYnqmHDA_13signal_crypto.exit

bb.d:                                             ; preds = %bb.e
  %i.k = icmp ult i8 %i.g, 16
  br i1 %i.k, label %bb.g, label %bb.f, !prof !82

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.e, -1
  br i1 %i.l, label %_RINvMs1_NtCsjsLMAtnDKjw_12block_buffer4readINtB6_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB22_2B0EB2g_EB2g_EB2g_EE11write_blockNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB32_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB4h_7flavors5ctr327Ctr32BEEENtB34_16StreamCipherSeek8try_seekyE0NCB2V_s_0ECs54uEYnqmHDA_13signal_crypto.exit, label %bb.d

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i32 %i.e, ptr %i.m, align 16, !alias.scope !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 4 uses
  store i8 16, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 960
  invoke void @_RINvXs16_NtCs8pp35hPiiF8_3aes10autodetectNtB7_6Aes256NtNtCshARBVLlQvfp_6cipher5block18BlockCipherEncrypt20encrypt_with_backendINtNvXs_NtCsgYPJLHuTqb7_3ctr8ctr_coreINtB28_7CtrCoreppENtNtNtBT_6stream8core_api16StreamCipherCore20process_with_backend7ClosureNtNtNtB2a_7flavors5ctr327Ctr32BEINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB4B_IB4B_IB4B_IB4B_NtB4D_5UTermNtNtB4F_3bit2B1ENtB5J_2B0EB5X_EB5X_EB5X_EINtB2V_13WriteBlockCtxB4A_EEECs54uEYnqmHDA_13signal_crypto(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(992) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.o, ptr noalias nofree noundef nonnull dereferenceable(16) %i.n)
          to label %_RNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB8_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB1m_7flavors5ctr327Ctr32BEEENtBa_16StreamCipherSeek8try_seekyE0Cs54uEYnqmHDA_13signal_crypto.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i8 16, ptr %i.n, align 16
  resume { ptr, i32 } %i.p

_RNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB8_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB1m_7flavors5ctr327Ctr32BEEENtBa_16StreamCipherSeek8try_seekyE0Cs54uEYnqmHDA_13signal_crypto.exit: ; preds = %bb.g
  store i8 %i.g, ptr %i.n, align 16, !alias.scope !84, !noalias !85
  br label %_RINvMs1_NtCsjsLMAtnDKjw_12block_buffer4readINtB6_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB22_2B0EB2g_EB2g_EB2g_EE11write_blockNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB32_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB4h_7flavors5ctr327Ctr32BEEENtB34_16StreamCipherSeek8try_seekyE0NCB2V_s_0ECs54uEYnqmHDA_13signal_crypto.exit

_RINvMs1_NtCsjsLMAtnDKjw_12block_buffer4readINtB6_10ReadBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBY_IBY_IBY_IBY_NtB10_5UTermNtNtB12_3bit2B1ENtB22_2B0EB2g_EB2g_EB2g_EE11write_blockNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB32_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB4h_7flavors5ctr327Ctr32BEEENtB34_16StreamCipherSeek8try_seekyE0NCB2V_s_0ECs54uEYnqmHDA_13signal_crypto.exit: ; preds = %_RNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB8_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB1m_7flavors5ctr327Ctr32BEEENtBa_16StreamCipherSeek8try_seekyE0Cs54uEYnqmHDA_13signal_crypto.exit, %.thread4, %bb.e, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.e ], [ false, %.thread4 ], [ false, %_RNCINvXs2_NtNtCshARBVLlQvfp_6cipher6stream7wrapperINtB8_23StreamCipherCoreWrapperINtNtCsgYPJLHuTqb7_3ctr8ctr_core7CtrCoreNtNtCs8pp35hPiiF8_3aes10autodetect6Aes256NtNtNtB1m_7flavors5ctr327Ctr32BEEENtBa_16StreamCipherSeek8try_seekyE0Cs54uEYnqmHDA_13signal_crypto.exit ]
  ret i1 %.sroa.0.0
}
end_hunk_0
