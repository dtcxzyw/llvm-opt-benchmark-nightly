Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_layer_concurrent_limit-e3b5a1687ddd82bc.opendal_layer_concurrent_limit.15ad2a943ea949fd-cgu.0?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !45, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !45, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.d = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.d, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1b_9semaphore8WaitNodeEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.g = load i64, ptr %i.e, align 8, !range !48, !alias.scope !49, !noalias !45, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !52, !noalias !45, !align !53, !noundef !4 ; 2 uses
  %i.k = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !52, !noalias !45
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !54, !nonnull !4, !noundef !4
  invoke void %i.n(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !55, !inline_history !30

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.o = icmp eq i64 %i.f, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.o, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1b_9semaphore8WaitNodeEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.f, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.q, label %.body.i.i.i.i.i.i.i.i, label %.lr.ph14.i.i.i.i.i.i.i.i.i.i

.lr.ph14.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.112.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.112.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.s = add nuw nsw i64 %.sroa.0.112.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.t = load i64, ptr %i.r, align 8, !range !48, !alias.scope !57, !noalias !45, !noundef !4 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph14.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i7.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !60, !noalias !45, !align !53, !noundef !4 ; 2 uses
  %i.x = icmp eq ptr %.val.i.i.i7.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.x, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i.i8.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !60, !noalias !45
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i7.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !61, !nonnull !4, !noundef !4
  invoke void %i.aa(ptr noundef %.val1.i.i.i8.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i unwind label %bb.i, !noalias !55, !inline_history !30

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph14.i.i.i.i.i.i.i.i.i.i
  %i.ab = icmp eq i64 %i.s, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.ab, label %.body.i.i.i.i.i.i.i.i, label %.lr.ph14.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #10, !noalias !55
  unreachable

.body.i.i.i.i.i.i.i.i:                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit10.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.val4.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !62, !alias.scope !45, !noundef !4 ; 2 uses
  %i.ad = icmp eq i64 %.val4.i.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1L_9semaphore8WaitNodeEEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ae = mul nuw i64 %.val4.i.i.i.i.i.i.i.i, 48
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #11, !noalias !45
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1L_9semaphore8WaitNodeEEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1b_9semaphore8WaitNodeEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !62, !alias.scope !45, !noundef !4 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1b_9semaphore8WaitNodeEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i
  %i.ag = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 48
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #11, !noalias !45
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1L_9semaphore8WaitNodeEEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.body.i.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1b_9semaphore8WaitNodeEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit.i.i.i.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs1RnKLoV4x19_30opendal_layer_concurrent_limit20ConcurrentLimitLayerEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !81, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !81
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !82, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !83
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #12
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !84, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit
  %i.m = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !85
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #12
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit2

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit2: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs0_Cs1RnKLoV4x19_30opendal_layer_concurrent_limitNtB5_20ConcurrentLimitLayer26with_http_concurrent_limit(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 13 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.f, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4
  %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.03.sroa.5.sroa.4.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.03.sroa.5.sroa.6.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.5.sroa.7.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.5.sroa.7.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.5.sroa.8.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.5.sroa.8.0..sroa.03.sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  store i64 %2, ptr %.sroa.44.0..sroa_idx, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !noalias !94
  %i.g = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef 8) #11, !noalias !94 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #13
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b) #14
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %1, ptr %i.k, align 8
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !95
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #12
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %i.k, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs1RnKLoV4x19_30opendal_layer_concurrent_limit20ConcurrentLimitLayerEBD_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #14
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.r = insertvalue { ptr, ptr } poison, ptr %i.q, 0
  %i.s = insertvalue { ptr, ptr } %i.r, ptr %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, ptr } %i.s

.body.thread:                                     ; preds = %bb.h, %.body
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.i, %.body ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body35

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCs1RnKLoV4x19_30opendal_layer_concurrent_limit20ConcurrentLimitLayerEBD_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #14
          to label %.body.thread unwind label %bb.k

bb.k:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs0_Cs1RnKLoV4x19_30opendal_layer_concurrent_limitNtB5_20ConcurrentLimitLayer3new(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 4
  %.sroa.02.sroa.5.sroa.4.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.02.sroa.5.sroa.4.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.sroa.6.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.02.sroa.5.sroa.6.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.sroa.7.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.02.sroa.5.sroa.7.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.sroa.8.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.5.sroa.8.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  store i64 %0, ptr %.sroa.43.0..sroa_idx, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !noalias !98
  %i.d = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef 8) #11, !noalias !98 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEE3newCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #13
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #14
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEE3newCs1RnKLoV4x19_30opendal_layer_concurrent_limit.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr null, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreE9drop_slowBJ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noinline }
attributes #13 = { noreturn }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!7 = distinct !{!7, !6, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!8 = distinct !{!8, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsg4p3tUS9I08_9asyncband8internal9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!9 = distinct !{!9, !8, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsg4p3tUS9I08_9asyncband8internal9semaphore9SemaphoreECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!10 = distinct !{!10, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal5mutex5MutexINtNtBG_8waitlist8WaitListNtNtBG_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!11 = distinct !{!11, !10, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal5mutex5MutexINtNtBG_8waitlist8WaitListNtNtBG_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist8WaitListNtNtB1v_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!13 = distinct !{!13, !12, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex5MutexINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist8WaitListNtNtB1v_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!14 = distinct !{!14, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist8WaitListNtNtB15_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!15 = distinct !{!15, !14, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist8WaitListNtNtB15_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!16 = distinct !{!16, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist8WaitListNtNtBG_9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!17 = distinct !{!17, !16, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist8WaitListNtNtBG_9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab4SlabINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB17_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!19 = distinct !{!19, !18, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab4SlabINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB17_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1E_9semaphore8WaitNodeEEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!21 = distinct !{!21, !20, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB1E_9semaphore8WaitNodeEEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!22 = distinct !{!22, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB19_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!23 = distinct !{!23, !22, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB19_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!25 = distinct !{!25, !24, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtBG_9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!27 = distinct !{!27, !26, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtBG_9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsg4p3tUS9I08_9asyncband8internal9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!29 = distinct !{!29, !28, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsg4p3tUS9I08_9asyncband8internal9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!30 = distinct !{null}
!31 = distinct !{!31, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!32 = distinct !{!32, !31, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsl5ohi6LmI2a_4slab5EntryINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtB18_9semaphore8WaitNodeEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!33 = distinct !{!33, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtBG_9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!34 = distinct !{!34, !33, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCsg4p3tUS9I08_9asyncband8internal8waitlist4NodeNtNtBG_9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!35 = distinct !{!35, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsg4p3tUS9I08_9asyncband8internal9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!36 = distinct !{!36, !35, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsg4p3tUS9I08_9asyncband8internal9semaphore8WaitNodeEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!37 = !{!7}
!38 = !{!9}
!39 = !{!11}
!40 = !{!13}
!41 = !{!15}
!42 = !{!17}
!43 = !{!19}
!44 = !{!21}
!45 = !{!21, !19, !17, !15, !13, !11, !9, !7}
!46 = !{!23}
!47 = !{!25}
!48 = !{i64 0, i64 3}
!49 = !{!25, !23}
!50 = !{!27}
!51 = !{!29}
!52 = !{!29, !27, !25, !23}
!53 = !{i64 8}
!54 = !{!29, !27, !25, !23, !21, !19, !17, !15, !13, !11, !9, !7}
!55 = !{!23, !21, !19, !17, !15, !13, !11, !9, !7}
!56 = !{!32}
!57 = !{!32, !23}
!58 = !{!34}
!59 = !{!36}
!60 = !{!36, !34, !32, !23}
!61 = !{!36, !34, !32, !23, !21, !19, !17, !15, !13, !11, !9, !7}
!62 = !{i64 0, i64 -9223372036854775808}
!63 = distinct !{!63, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!64 = distinct !{!64, !63, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!66 = distinct !{!66, !65, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!67 = distinct !{!67, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!68 = distinct !{!68, !67, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!69 = distinct !{!69, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!70 = distinct !{!70, !69, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!71 = distinct !{!71, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!72 = distinct !{!72, !71, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!74 = distinct !{!74, !73, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!75 = distinct !{!75, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!76 = distinct !{!76, !75, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!77 = distinct !{!77, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!78 = distinct !{!78, !77, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!79 = !{!64}
!80 = !{!66}
!81 = !{!66, !64}
!82 = !{!68}
!83 = !{!72, !70, !68}
!84 = !{!74}
!85 = !{!78, !76, !74}
!86 = distinct !{!86, i1 true, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEE3newCs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!87 = distinct !{!87, !86, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEE3newCs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!88 = distinct !{!88, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!89 = distinct !{!89, !88, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!90 = distinct !{!90, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!91 = distinct !{!91, !90, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEECs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!92 = distinct !{!92, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!93 = distinct !{!93, !92, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!94 = !{!87}
!95 = !{!93, !91, !89}
!96 = distinct !{!96, i1 true, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEE3newCs1RnKLoV4x19_30opendal_layer_concurrent_limit"}
!97 = distinct !{!97, !96, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsg4p3tUS9I08_9asyncband9semaphore9SemaphoreEE3newCs1RnKLoV4x19_30opendal_layer_concurrent_limit: argument 0"}
!98 = !{!97}
end_hunk_0
