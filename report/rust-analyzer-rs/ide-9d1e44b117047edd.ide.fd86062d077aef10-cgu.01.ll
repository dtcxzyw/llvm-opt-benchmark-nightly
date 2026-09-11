Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.01?download=true
inline.NumInlined: 2179
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCslLuZgPVt6hg_3ide7moniker13MonikerResultuEEBG_:bb.a
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.f, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #40
          to label %.body.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorEEB1c_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorEEB1c_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker7MonikerEBF_.exit unwind label %bb.h

bb.g:                                             ; preds = %.body.i.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorEEB1c_.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.e, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.k, %bb.e ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker18PackageInformationEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o) #40
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.j:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker7MonikerEBF_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorEEB1c_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker18PackageInformationEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker13MonikerResultEBF_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker13MonikerResultEBF_.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide7moniker7MonikerEBF_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTTNtNtCsbSS6DM8SDEO_5alloc6string6StringBD_BD_EuEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #40
          to label %.body4.i unwind label %bb.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i3.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i3.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit6.i unwind label %bb.g

.body4.i:                                         ; preds = %bb.g, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #40
          to label %common.resume.i unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i3.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit6.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i3.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringBC_BC_EECslLuZgPVt6hg_3ide.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit6.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume.i:                                  ; preds = %bb.h, %.body4.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn.i, %.body4.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %.body4.i, %.body.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringBC_BC_EECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit6.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYBT_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  %i.c = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs33K2ylI4knu_10hir_expand4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  switch i8 %i.c, label %.preheader [
    i8 2, label %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit
    i8 0, label %.preheader17
  ]

.preheader:                                       ; preds = %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit, %bb.b
  %.not29 = icmp eq i64 %1, 2
  br i1 %.not29, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit, label %.lr.ph24

_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !3705, !noalias !3706, !noundef !4
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !3706, !noalias !3705, !noundef !4
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit, %bb.b
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %.sroa.01.0.i19 = phi i64 [ %i.p, %bb.c ], [ 2, %.preheader17 ] ; 5 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %3 = getelementptr [16 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %4 = getelementptr i8, ptr %3, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3710)
  %i.j = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs33K2ylI4knu_10hir_expand4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
  switch i8 %i.j, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit [
    i8 2, label %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit4
    i8 0, label %bb.c
  ]

_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit4: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr i8, ptr %3, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  %i.m = load i64, ptr %i.k, align 8, !alias.scope !3713, !noalias !3714, !noundef !4
  %i.n = load i64, ptr %i.l, align 8, !alias.scope !3714, !noalias !3713, !noundef !4
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit4
  %i.p = add nuw nsw i64 %.sroa.01.0.i19, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit, label %.lr.ph

.lr.ph24:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i23 = phi i64 [ %i.x, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %5 = getelementptr [16 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %6 = getelementptr i8, ptr %5, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3718)
  %i.r = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs33K2ylI4knu_10hir_expand4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6)
  switch i8 %i.r, label %bb.d [
    i8 2, label %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit7
    i8 0, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit
  ]

_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit7: ; preds = %.lr.ph24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr i8, ptr %5, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3720)
  %i.u = load i64, ptr %i.s, align 8, !alias.scope !3721, !noalias !3722, !noundef !4
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !3722, !noalias !3721, !noundef !4
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit

bb.d:                                             ; preds = %.lr.ph24, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit7
  %i.x = add nuw nsw i64 %.sroa.01.1.i23, 1       ; 2 uses
  %exitcond33.not = icmp eq i64 %i.x, %1
  br i1 %exitcond33.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i, label %.lr.ph24

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit: ; preds = %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit4, %.lr.ph, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit7, %.lr.ph24, %.preheader17, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader17 ], [ true, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit7 ], [ true, %.lr.ph24 ], [ false, %.lr.ph ], [ false, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit4 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader17 ], [ %.sroa.01.1.i23, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit7 ], [ %.sroa.01.1.i23, %.lr.ph24 ], [ %.sroa.01.0.i19, %.lr.ph ], [ %.sroa.01.0.i19, %_RNvYNvYTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtBQ_3ops8function5FnMutTRB5_B1W_EE8call_mutCslLuZgPVt6hg_3ide.exit4 ] ; 2 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit
  br i1 %.sroa.3.0.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit

bb.f:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit
  %i.aa = or i64 %1, 1
  %i.ab = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = xor i32 %i.ad, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs33K2ylI4knu_10hir_expand4name4NamejENvYB17_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.ae, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i
  %i.af = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i ], [ %i.bf, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ag = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ai = getelementptr [16 x i8], ptr %i.ao, i64 %i.ag ; 3 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !alias.scope !3723, !noalias !3724, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !3723, !noalias !3724, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !3725
  store ptr %i.aj, ptr %i.ai, align 8, !alias.scope !3726, !noalias !3727
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.al, ptr %i.am, align 8, !alias.scope !3726, !noalias !3727
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa, %bb.a, %bb.e, %bb.f
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i: ; preds = %bb.d, %bb.e
  %i.an = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i
  %unroll_iter = and i64 %i.an, 288230376151711742
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new ], [ %i.bf, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i ]
  %i.aq = xor i64 %.sroa.0.016.i.i, -1
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.as = getelementptr [16 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !3723, !noalias !3724, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3723, !noalias !3724, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !3725
  store ptr %i.at, ptr %i.as, align 8, !alias.scope !3726, !noalias !3727
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !3726, !noalias !3727
  %i.ax = xor i64 %.sroa.0.016.i.i, -2
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = getelementptr [16 x i8], ptr %i.ao, i64 %i.ax ; 3 uses
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !3723, !noalias !3724, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !3723, !noalias !3724, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !3725
  store ptr %i.bb, ptr %i.ba, align 8, !alias.scope !3726, !noalias !3727
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !3726, !noalias !3727
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs33K2ylI4knu_10hir_expand4name4NamejE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortTjjENvYBT_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.c, align 8           ; 3 uses
  %.val11 = load i64, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load i64, ptr %i.d, align 8
  %i.e = icmp eq i64 %.val9, %.val11
  %i.f = icmp ult i64 %.val9, %.val11
  %i.g = icmp ult i64 %.val10, %.val12
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.g, i1 %i.f ; 2 uses
  %.not29 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %.preheader19

.preheader19:                                     ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit, label %.lr.ph25

.lr.ph:                                           ; preds = %.preheader19, %bb.c
  %.val8 = phi i64 [ %.val6, %bb.c ], [ %.val10, %.preheader19 ]
  %.val7 = phi i64 [ %.val5, %bb.c ], [ %.val9, %.preheader19 ] ; 2 uses
  %.sroa.01.0.i21 = phi i64 [ %i.m, %bb.c ], [ 2, %.preheader19 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i21 ; 2 uses
  %.val5 = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val6 = load i64, ptr %i.i, align 8            ; 2 uses
  %i.j = icmp eq i64 %.val5, %.val7
  %i.k = icmp ult i64 %.val5, %.val7
  %i.l = icmp ult i64 %.val6, %.val8
  %.sroa.0.0.i.i13 = select i1 %i.j, i1 %i.l, i1 %i.k
  br i1 %.sroa.0.0.i.i13, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.01.0.i21, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit.thread, label %.lr.ph

.lr.ph25:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i64 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i24 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i24 ; 2 uses
  %.val = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val2 = load i64, ptr %i.o, align 8            ; 2 uses
  %i.p = icmp eq i64 %.val, %.val3
  %i.q = icmp ult i64 %.val, %.val3
  %i.r = icmp ult i64 %.val2, %.val4
  %.sroa.0.0.i.i14 = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i14, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit

bb.d:                                             ; preds = %.lr.ph25
  %i.s = add nuw nsw i64 %.sroa.01.1.i24, 1       ; 2 uses
  %exitcond32.not = icmp eq i64 %i.s, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit.thread, label %.lr.ph25

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit: ; preds = %.lr.ph, %.lr.ph25, %.preheader19, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader19 ], [ 2, %.preheader ], [ %.sroa.01.1.i24, %.lr.ph25 ], [ %.sroa.01.0.i21, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortTjjENvYB17_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.z, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i
  %i.aa = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i ], [ %i.ar, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.ag, i64 %i.ab ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !3733, !noalias !3734
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !3735
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !3736, !noalias !3737
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit.thread, %bb.e
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTjjENvYB12_NtNtB8_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide.exit.thread
  %i.af = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new

_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i
  %unroll_iter = and i64 %i.af, 288230376151711742
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new ], [ %i.ar, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i ]
  %i.ai = xor i64 %.sroa.0.016.i.i, -1
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !3733, !noalias !3734
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !3735
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !3736, !noalias !3737
  %i.am = xor i64 %.sroa.0.016.i.i, -2
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %i.am ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !3733, !noalias !3734
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !3735
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !3736, !noalias !3737
  %i.ar = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE7reverseCslLuZgPVt6hg_3ide.exit.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTjjE12split_at_mutCslLuZgPVt6hg_3ide.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB14_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly %4) unnamed_addr #6 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB14_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB14_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB14_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c
end_hunk_0
