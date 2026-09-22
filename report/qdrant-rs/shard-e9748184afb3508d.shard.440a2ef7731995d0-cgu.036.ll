Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.036?download=true
inline.NumInlined: 216
inline.NumDeleted: 146
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs5QaNqjAn6vc_5shard.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs5QaNqjAn6vc_5shard.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEECs5QaNqjAn6vc_5shard(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !36, !noundef !5
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !36, !nonnull !5, !align !6, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !37, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !36, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !36, !noundef !5
  invoke void %i.j(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit.i.i.i unwind label %bb.m, !inline_history !17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !40, !noundef !5
  %i.r = load ptr, ptr %i.o, align 8, !alias.scope !40, !nonnull !5, !align !6, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !41, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !40, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !40, !noundef !5
  invoke void %i.t(ptr noundef %i.q, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit4.i.i.i unwind label %bb.e, !inline_history !17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit.i.i.i: ; preds = %bb.e, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.y, %bb.e ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic8metadata3map11MetadataMapECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %.0.val) #10
          to label %bb.f unwind label %bb.m

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit4.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic8metadata3map11MetadataMapECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %.0.val)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit.i.i.i
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !43, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !44
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCsbM8FbnNn9aS_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #11
          to label %bb.o unwind label %bb.m

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit4.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit4.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !46, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECs5QaNqjAn6vc_5shard.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !47
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECs5QaNqjAn6vc_5shard.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCsbM8FbnNn9aS_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #11
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECs5QaNqjAn6vc_5shard.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECs5QaNqjAn6vc_5shard.exit.i.i.i, %.body.i.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.g, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn2.i.i.i, %bb.h ], [ %.pn2.i.i.i, %bb.g ], [ %.pn2.i.i.i, %bb.f ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 176, i64 noundef 8) #12
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.j, %bb.k, %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 176, i64 noundef 8) #12
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5QaNqjAn6vc_5shard.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5QaNqjAn6vc_5shard.exit
    i64 1, label %bb.c
  ], !prof !7

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5QaNqjAn6vc_5shard.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !50
  store i8 3, ptr %i.a, align 8, !alias.scope !50
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5QaNqjAn6vc_5shard.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !55, !alias.scope !56, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 17
  switch i64 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit [
    i64 1, label %bb.b
    i64 2, label %bb.e
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.m
    i64 8, label %bb.p
    i64 9, label %bb.s
    i64 10, label %bb.v
    i64 11, label %bb.y
    i64 12, label %bb.ab
    i64 15, label %bb.ae
    i64 16, label %bb.ah
    i64 17, label %bb.ak
    i64 18, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume.i:                                  ; preds = %bb.bc, %.body37.i, %bb.av, %.body.i, %bb.aq, %bb.ao, %bb.am, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.bc, %bb.av ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.r, %bb.n ], [ %i.u, %bb.q ], [ %i.x, %bb.t ], [ %i.aa, %bb.w ], [ %i.ad, %bb.z ], [ %i.ag, %bb.ac ], [ %i.aj, %bb.af ], [ %i.am, %bb.ai ], [ %i.ap, %bb.am ], [ %i.au, %bb.aq ], [ %.pn.i, %.body37.i ], [ %i.ar, %bb.ao ], [ %eh.lpad-body.i, %.body.i ], [ %i.bm, %bb.bc ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit5.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit5.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l)
          to label %bb.ap unwind label %bb.ao

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit7.i unwind label %bb.at

bb.m:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit10.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit10.i: ; preds = %bb.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit

bb.p:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit

bb.s:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit13.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit13.i: ; preds = %bb.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECs5QaNqjAn6vc_5shard.exit
end_hunk_0
begin_hunk_1_@_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtB2_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1B_ENCNvMs3_NtB2B_14segment_holderNtB3E_13SegmentHolder4iter0ENCNvNtNtB2B_6update7helpers16points_by_filter0EINtNtB6_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2B_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtB2k_6update7helpers16points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !range !9, !alias.scope !241, !noalias !242, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !241, !noalias !242, !noundef !5
  %.not7.i.i.i = icmp eq i64 %i.f, 2              ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !241, !noalias !242, !noundef !5 ; 3 uses
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtB2k_6update7helpers16points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtB2k_6update7helpers16points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val12.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !241, !noalias !242, !noundef !5
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtB2k_6update7helpers16points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val10.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !241, !noalias !242, !noundef !5
  %i.j = add i64 %.val10.i.i.i, %.val.i.i.i       ; 2 uses
  %i.k = icmp uge i64 %i.j, %.val.i.i.i
  %.9.i.i.i = zext i1 %i.k to i64
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtB2k_6update7helpers16points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtB2k_6update7helpers16points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink2 = phi i64 [ 1, %bb.d ], [ %.9.i.i.i, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.a ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.j, %bb.f ], [ %.val12.i.i.i, %bb.e ], [ %.val.i.i.i, %bb.c ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtB2_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1B_ENCNvMs3_NtB2B_14segment_holderNtB3E_13SegmentHolder4iter0ENCNvNtNtNtB2B_6update6points6delete23delete_points_by_filter0EINtNtB6_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtNtB2k_6update6points6delete23delete_points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !range !9, !alias.scope !252, !noalias !253, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !252, !noalias !253, !noundef !5
  %.not7.i.i.i = icmp eq i64 %i.f, 2              ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !252, !noalias !253, !noundef !5 ; 3 uses
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtNtB2k_6update6points6delete23delete_points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtNtB2k_6update6points6delete23delete_points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val12.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !252, !noalias !253, !noundef !5
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtNtB2k_6update6points6delete23delete_points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val10.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !252, !noalias !253, !noundef !5
  %i.j = add i64 %.val10.i.i.i, %.val.i.i.i       ; 2 uses
  %i.k = icmp uge i64 %i.j, %.val.i.i.i
  %.9.i.i.i = zext i1 %i.k to i64
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtNtB2k_6update6points6delete23delete_points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1k_ENCNvMs3_NtB2k_14segment_holderNtB3n_13SegmentHolder4iter0ENCNvNtNtNtB2k_6update6points6delete23delete_points_by_filter0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2k_.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink2 = phi i64 [ 1, %bb.d ], [ %.9.i.i.i, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.a ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.j, %bb.f ], [ %.val12.i.i.i, %bb.e ], [ %.val.i.i.i, %bb.c ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_6cloned6ClonedINtNtNtB6_5slice4iter4IterjEENCINvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB2a_13SegmentHolder18read_segment_locksB1d_E0EINtNtB6_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2c_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !256, !nonnull !5, !align !6, !noundef !5
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterjEENCINvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB1U_13SegmentHolder18read_segment_locksBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEB3n_8try_folduNCINvNvB3n_12try_for_each4callRINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtB54_5entry11entry_point19StorageSegmentEntryEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6O_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = load i64, ptr %i.b, align 8, !range !10, !noalias !256, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !256, !align !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !256
  %.sroa.0.0.i = select i1 %i.f, ptr %i.h, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %.not.not = icmp eq ptr %.sroa.0.0.i, null
  %spec.select = select i1 %.not.not, ptr undef, ptr %i.j
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %spec.select, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_6cloned6ClonedINtNtNtB6_5slice4iter4IterjEENCINvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB2a_13SegmentHolder18read_segment_locksB1d_E0EINtNtB6_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterjEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENCNvXNtNtCs5QaNqjAn6vc_5shard5query7formulaNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula13ParsedFormulaINtNtB6_7convert7TryFromNtB3w_15FormulaInternalE8try_from0EINtNtB6_6result6ResultzNtNtNtB4i_6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.d, align 8
  %.sink = select i1 %.not, i64 %.val, i64 0
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB3B_7formula15FormulaInternalINtNtB6_7convert7TryFromNtB2M_7FormulaE8try_froms_0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator9size_hintB3D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !5
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.d, align 8
  %.sink = select i1 %.not, i64 %.val, i64 0
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntNtNtCs3TE53SMfxyL_6fs_err3dir7ReadDirINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !269, !noalias !270, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !272
  call void @_RNvXNtCs3TE53SMfxyL_6fs_err3dirNtB2_7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !noalias !273
  %i.e = load i64, ptr %i.b, align 8, !range !10, !noalias !274, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECs5QaNqjAn6vc_5shard.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.g, align 8, !noalias !274 ; 2 uses
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.56.0.copyload.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !274 ; 4 uses
  %i.h = icmp eq ptr %.sroa.05.0.copyload.i.i, null
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i.i) ]
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !271, !noalias !275, !noundef !5 ; 4 uses
  %i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !276
  %i.j = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard.exit.i.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard.exit.i.i.i.i
    i64 1, label %bb.f
  ], !prof !7

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !277, !noalias !276
  store i8 3, ptr %i.a, align 8, !alias.scope !277, !noalias !276
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard.exit.i.i.i.i unwind label %bb.g, !noalias !278

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !276
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.56.0.copyload.i.i, ptr %i.d, align 8, !alias.scope !271, !noalias !275
  resume { ptr, i32 } %i.q

.thread:                                          ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !272
  store ptr %.sroa.05.0.copyload.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.56.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs5QaNqjAn6vc_5shard.exit.i.i.i.i
  store ptr %.sroa.56.0.copyload.i.i, ptr %i.d, align 8, !alias.scope !271, !noalias !275
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECs5QaNqjAn6vc_5shard.exit

bb.i:                                             ; preds = %.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECs5QaNqjAn6vc_5shard.exit
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !272
  store ptr null, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntNtNtCs3TE53SMfxyL_6fs_err3dir7ReadDirINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.e, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCs607s0NAIaWN_7segment14vector_storage10raw_scorer9RawScorerEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtBO_10data_types7vectors14VectorInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtBO_10data_types7vectors14VectorInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula16ParsedExpressionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtNtCs607s0NAIaWN_7segment14vector_storage10raw_scorer9RawScorerEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtBV_10data_types7vectors14VectorInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtBV_10data_types7vectors14VectorInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula16ParsedExpressionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtNtCs607s0NAIaWN_7segment5index18query_optimization15rescore_formula14parsed_formula10VariableIdNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1l_ENCNvMs3_NtB2l_14segment_holderNtB3o_13SegmentHolder4iter0ENCNvNtNtB2l_6update7helpers16points_by_filter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEB4X_8try_folduNCINvMNtNtBc_3ops9try_traitINtB80_17NeverShortCircuituE10wrap_mut_2uTjINtNtB1u_3vec3VecNtNtB6E_5types15ExtendedPointIdEENCINvNvB4X_8for_each4callB90_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBat_7HashMapjB92_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB51_7collect6ExtendB90_E6extendB5O_E0E0E0B8l_E0INtNtB82_12control_flow11ControlFlowB8l_EEB2l_(ptr noalias nofree noundef align 8 dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1l_ENCNvMs3_NtB2l_14segment_holderNtB3o_13SegmentHolder4iter0ENCNvNtNtNtB2l_6update6points6delete23delete_points_by_filter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEB5c_8try_folduNCINvMNtNtBc_3ops9try_traitINtB8f_17NeverShortCircuituE10wrap_mut_2uTjINtNtB1u_3vec3VecNtNtB6T_5types15ExtendedPointIdEENCINvNvB5c_8for_each4callB9f_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBaI_7HashMapjB9h_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB5g_7collect6ExtendB9f_E6extendB63_E0E0E0B8A_E0INtNtB8h_12control_flow11ControlFlowB8A_EEB2l_(ptr noalias nofree noundef align 8 dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterjEENCINvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB1U_13SegmentHolder18read_segment_locksBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEB3n_8try_folduNCINvNvB3n_12try_for_each4callRINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtB54_5entry11entry_point19StorageSegmentEntryEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6O_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1W_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0
end_hunk_1
