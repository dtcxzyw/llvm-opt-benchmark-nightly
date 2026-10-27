Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.143?download=true
inline.NumInlined: 716
inline.NumDeleted: 468
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant:bb.a

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !26, !noalias !25
  store i8 3, ptr %i.a, align 8, !alias.scope !26, !noalias !25
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #10
  resume { ptr, i32 } %i.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #10
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !52, !noundef !6
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !52, !nonnull !6, !align !8, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !53, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !52, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !52, !noundef !6
  invoke void %i.j(ptr noundef %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.m, !inline_history !33

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !56, !noundef !6
  %i.r = load ptr, ptr %i.o, align 8, !alias.scope !56, !nonnull !6, !align !8, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !57, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !56, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !56, !noundef !6
  invoke void %i.t(ptr noundef %i.q, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit4.i.i.i unwind label %bb.e, !inline_history !33

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.e, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.y, %bb.e ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic8metadata3map11MetadataMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %.0.val) #11
          to label %bb.f unwind label %bb.m

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit4.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic8metadata3map11MetadataMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %.0.val)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !59, !noundef !6 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !60
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCsbM8FbnNn9aS_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #12
          to label %bb.o unwind label %bb.m

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit4.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit4.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !62, !noundef !6 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECsl8OoimOLbh_6qdrant.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !63
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCsbM8FbnNn9aS_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECsl8OoimOLbh_6qdrant.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i.i, %.body.i.i.i
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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 176, i64 noundef 8) #10
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgOCJwUSa4vG_5tonic6status6StatusECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j, %bb.k, %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 176, i64 noundef 8) #10
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !66
  store i8 3, ptr %i.a, align 8, !alias.scope !66
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !71, !alias.scope !72, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 17
  switch i64 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit [
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
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume.i:                                  ; preds = %bb.bc, %.body37.i, %bb.av, %.body.i, %bb.aq, %bb.ao, %bb.am, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.bc, %bb.av ], [ %i.g, %bb.c ], [ %i.j, %bb.f ], [ %i.r, %bb.n ], [ %i.u, %bb.q ], [ %i.x, %bb.t ], [ %i.aa, %bb.w ], [ %i.ad, %bb.z ], [ %i.ag, %bb.ac ], [ %i.aj, %bb.af ], [ %i.am, %bb.ai ], [ %i.ap, %bb.am ], [ %i.au, %bb.aq ], [ %.pn.i, %.body37.i ], [ %i.ar, %bb.ao ], [ %eh.lpad-body.i, %.body.i ], [ %i.bm, %bb.bc ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit5.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit5.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l)
          to label %bb.ap unwind label %bb.ao

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit7.i unwind label %bb.at

bb.m:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit10.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit10.i: ; preds = %bb.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit13.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit13.i: ; preds = %bb.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant.exit
end_hunk_0
begin_hunk_1_@_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common3getNtNtNtB2Y_6common11strict_mode28StrictModeCheckedTocProviderE00EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENCINvNtB1j_16in_place_collect24write_in_place_with_dropB75_E0IB4N_B6u_zEEB2Y_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema12FeedbackItemENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds2_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7g_E0IB4w_B6F_zEEB31_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema12FeedbackItemENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEB4e_8try_foldB4V_NCINvNtB12_16in_place_collect24write_in_place_with_dropB5w_E0IB93_B4V_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbL_B4V_EEB2K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorENCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference15update_requests15convert_vectors00EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6T_E0IB49_B6i_zEEB2W_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorENCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference15update_requests15convert_vectors00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEB3R_8try_foldB4y_NCINvNtB12_16in_place_collect24write_in_place_with_dropB59_E0IB6K_B4y_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB9s_B4y_EEB2F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema8PrefetchENCNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest31convert_query_request_from_rest000EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7i_E0IB4y_B6H_zEEB30_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema8PrefetchENCNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest31convert_query_request_from_rest000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEB4g_8try_foldB4X_NCINvNtB12_16in_place_collect24write_in_place_with_dropB5y_E0IB7I_B4X_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaq_B4X_EEB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema8PrefetchENCNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest38convert_query_groups_request_from_rest0s_00EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7r_E0IB4H_B6Q_zEEB30_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema8PrefetchENCNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest38convert_query_groups_request_from_rest0s_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEB4p_8try_foldB56_NCINvNtB12_16in_place_collect24write_in_place_with_dropB5H_E0IB7R_B56_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaz_B56_EEB2J_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema8PrefetchENCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest30convert_prefetch_with_inferreds_00EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7g_E0IB4w_B6F_zEEB2Y_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema8PrefetchENCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest30convert_prefetch_with_inferreds_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEB4e_8try_foldB4V_NCINvNtB12_16in_place_collect24write_in_place_with_dropB5w_E0IB7G_B4V_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBao_B4V_EEB2H_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultINtNtB15_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web4data11DataFactoryEL_EuEEIB1N_zuEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB28_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB28_E0IB1N_B49_zEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultINtNtBa_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web4data11DataFactoryEL_EuEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvXNtB2P_8adaptersINtB4j_12GenericShuntBI_IBY_zuEEB2J_8try_foldB3y_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0IBY_B3y_zEE0INtNtNtB12_3ops12control_flow11ControlFlowB6j_B3y_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultjNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEIB1N_zB29_EENtNtNtB5_6traits8iterator8Iterator8try_foldjNCINvMNtNtB7_3ops9try_traitINtB4f_17NeverShortCircuitjE10wrap_mut_2jjNCINvXsK_NtB3v_5accumjNtB5p_3Sum3sumBE_E0E0B4A_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = call { i64, i64 } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldjNCINvXNtB2M_8adaptersINtB3C_12GenericShuntBI_IBY_zB1A_EEB2G_8try_foldjNCINvMNtNtB12_3ops9try_traitINtB4K_17NeverShortCircuitjE10wrap_mut_2jjNCINvXsK_NtB2K_5accumjNtB5V_3Sum3sumB3R_E0E0B56_E0INtNtB4M_12control_flow11ControlFlowB56_jEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.e = extractvalue { i64, i64 } %i.d, 1
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB4_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB20_s_0EINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !642, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !645, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !645, !nonnull !6, !noundef !6
  %.sroa.9.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !646
  call void @_RNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_one(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.val1.i.i), !noalias !646
  %i.g = load i64, ptr %i.c, align 8, !range !13, !noalias !646, !noundef !6 ; 3 uses
  switch i64 %i.g, label %bb.c [
    i64 -2, label %.thread.i.i.i
    i64 -1, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread
  ]

.thread.i.i.i:                                    ; preds = %bb.b
  %i.h = load ptr, ptr %.sroa.9.0..sroa_idx2.i.i.i, align 8, !noalias !646, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !646
  br label %.loopexit36.i.i.i

bb.c:                                             ; preds = %bb.b
  %.sroa.9.0.copyload3.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx2.i.i.i, align 8, !noalias !647 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx4.i.i.i, i64 16, i1 false), !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !646
  store i64 %i.g, ptr %i.b, align 8, !noalias !649
  store ptr %.sroa.9.0.copyload3.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !649
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %cond.i.i.i = icmp eq i64 %i.g, 0
  br i1 %cond.i.i.i, label %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i, label %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i

_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i: ; preds = %bb.c
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile4ItemECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !648
  br label %.backedge

_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.c
  %i.i = ptrtoint ptr %.sroa.9.0.copyload3.i.i.i to i64 ; 2 uses
  %.sroa.7.0.copyload3.i.i.i.i = load ptr, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !alias.scope !652, !noalias !648 ; 2 uses
  %.sroa.8.0.copyload5.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx4.i.i.i.i, align 8, !alias.scope !652, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !648
  switch i64 %i.i, label %bb.h [
    i64 -3, label %.backedge
    i64 -2, label %.loopexit36.i.i.i
  ]

.backedge:                                        ; preds = %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i, %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.thread.i.i.i.i
  br label %bb.b

.loopexit36.i.i.i:                                ; preds = %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i, %.thread.i.i.i
  %.sroa.7.02025.i.i.i.i = phi ptr [ %i.h, %.thread.i.i.i ], [ %.sroa.7.0.copyload3.i.i.i.i, %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.02025.i.i.i.i) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !644, !noalias !653, !noundef !6 ; 4 uses
  %i.j = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.j, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread5, label %bb.d

bb.d:                                             ; preds = %.loopexit36.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !654
  %i.k = ptrtoint ptr %.val.i.i.i.i.i to i64      ; 2 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
    i64 1, label %bb.f
  ], !prof !7

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.n = and i64 %i.k, 1095216660480
  %i.o = icmp ne i64 %i.n, 1095216660480
  call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !655, !noalias !654
  store i8 3, ptr %i.a, align 8, !alias.scope !655, !noalias !654
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.g, !noalias !654

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !654
  br label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread5

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.7.02025.i.i.i.i, ptr %i.e, align 8, !alias.scope !644, !noalias !653
  resume { ptr, i32 } %i.r

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread5: ; preds = %.loopexit36.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  store ptr %.sroa.7.02025.i.i.i.i, ptr %i.e, align 8, !alias.scope !644, !noalias !653
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerEECsl8OoimOLbh_6qdrant.exit

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !646
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %_RNCNvCs3zYKyHJHYqN_14rustls_pemfile5certss_0Csl8OoimOLbh_6qdrant.exit.i.i.i.i
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload3.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.copyload5.i.i.i.i, ptr %.sroa.520.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerEECsl8OoimOLbh_6qdrant.exit
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread5, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB5_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB21_s_0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3C_12try_for_each4callNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerINtNtNtB7_3ops12control_flow11ControlFlowB4O_ENcNtB5C_5Break0E0B5C_ECsl8OoimOLbh_6qdrant.exit.thread
  store i64 -2, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB4_7sources7from_fn6FromFnNCNvCs3zYKyHJHYqN_14rustls_pemfile5certs0ENCB20_s_0EINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_7flatten7FlattenINtNtB6_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB6_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !660
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !659, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEB4K_8try_folduNCINvNvB4K_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtBc_3ops12control_flow11ControlFlowB89_ENcNtBb6_5Break0E0Bb6_E0IBb7_Bb6_EEB3g_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d), !noalias !661
  %i.e = load i64, ptr %i.b, align 8, !range !14, !noalias !660, !noundef !6 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -3
  br i1 %.not.i, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit.thread, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !660
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEEECsl8OoimOLbh_6qdrant.exit

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx7, i64 88, i1 false), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !660
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEEECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit.thread, %bb.b
  %storemerge = phi i64 [ %i.e, %bb.b ], [ -2, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit.thread ], [ -2, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_7flatten7FlattenINtNtB7_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB7_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6u_12try_for_each4callINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEINtNtNtB7_3ops12control_flow11ControlFlowB7G_ENcNtBaD_5Break0E0BaD_EB3x_.exit ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_7flatten7FlattenINtNtB6_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds0_0EINtNtB6_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = load i32, ptr %i.b, align 8, !range !10, !noundef !6
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !672, !noundef !6
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !673, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !673, !nonnull !6, !noundef !6
  %i.h = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 416
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !672, !noundef !6
  %.not53.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not53.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit63.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i61.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !674, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val3.i62.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !674, !nonnull !6, !noundef !6
  %i.p = ptrtoint ptr %.val3.i62.i.i.i to i64
  %i.q = ptrtoint ptr %.val.i61.i.i.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 416
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit63.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit63.i.i.i: ; preds = %bb.d, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i
  %i.u = load i64, ptr %1, align 8, !range !15, !alias.scope !672, !noundef !6
  %switch.i.i.i = icmp ugt i64 %i.u, -3           ; 2 uses
  %spec.select = select i1 %switch.i.i.i, i64 %i.t, i64 undef
  %spec.select1 = zext i1 %switch.i.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit63.i.i.i
  %.sink3 = phi i64 [ %spec.select1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit63.i.i.i ], [ 1, %bb.a ]
  %.sink = phi i64 [ %spec.select, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsl8OoimOLbh_6qdrant.exit63.i.i.i ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink3, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.w, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_7flatten7FlattenINtNtB6_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11ContextPairEEENCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference19query_requests_rest27convert_query_with_inferreds1_0EINtNtB6_6result6ResultzNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema6RecordENvYNtNtNtB27_4grpc6qdrant14RetrievedPointINtNtB6_7convert7TryFromB21_E8try_fromEINtNtB6_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = load i64, ptr %i.b, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 192
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19CollectionTelemetryENCNvXs_NtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB3Q_13TelemetryDataINtNtB6_7convert7TryFromNtB2P_13PeerTelemetryE8try_from0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator4nextB3U_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry23CollectionTelemetryEnumEEB1o_.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !786, !nonnull !6, !align !8, !noundef !6
  %i.d = call { i64, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19CollectionTelemetryENCNvXs_NtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB3A_13TelemetryDataINtNtBc_7convert7TryFromNtB2z_13PeerTelemetryE8try_from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB5v_8try_folduNCINvNvB5v_12try_for_each4callNtNtNtB3C_13telemetry_ops21collections_telemetry23CollectionTelemetryEnumINtNtNtBc_3ops12control_flow11ControlFlowB8s_ENcNtB9D_5Break0E0B9D_E0IB9E_B9D_EEB3E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, -1
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %spec.select4.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, ptr } poison, i64 %spec.select4.i, 0
  %.not = icmp eq i64 %spec.select4.i, 2
  %. = select i1 %.not, ptr undef, ptr %i.f
  %i.h = insertvalue { i64, ptr } %i.g, ptr %., 1
  ret { i64, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19CollectionTelemetryENCNvXs_NtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB3Q_13TelemetryDataINtNtB6_7convert7TryFromNtB2P_13PeerTelemetryE8try_from0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator9size_hintB3U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = load ptr, ptr %i.b, align 8, !align !8, !noundef !6
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
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtNtB4_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !802, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !802, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !802, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !804
  call void @_RNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_one(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.val1.i), !noalias !804
  %i.f = load i64, ptr %i.b, align 8, !range !13, !noalias !804, !noundef !6 ; 2 uses
  switch i64 %i.f, label %bb.g [
    i64 -2, label %bb.b
    i64 -1, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !804, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !803, !noalias !805, !noundef !6 ; 4 uses
  %i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %i.i, label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread5, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !806
  %i.j = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !807, !noalias !806
  store i8 3, ptr %i.a, align 8, !alias.scope !807, !noalias !806
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.f, !noalias !806

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !806
  br label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread5

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !803, !noalias !805
  resume { ptr, i32 } %i.q

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread5: ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !803, !noalias !805
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile4ItemEECsl8OoimOLbh_6qdrant.exit

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile4ItemEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.a
  %.sroa.9.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload4.i.i = load ptr, ptr %.sroa.9.0..sroa_idx3.i.i, align 8, !noalias !808
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx5.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !804
  store i64 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload4.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile4ItemEECsl8OoimOLbh_6qdrant.exit
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile4ItemEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread5, %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtB5_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB7_6result6ResultzNtNtNtB7_2io5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3b_12try_for_each4callNtB1z_4ItemINtNtNtB7_3ops12control_flow11ControlFlowB4n_ENcNtB4y_5Break0E0B4y_ECsl8OoimOLbh_6qdrant.exit.thread
  store i64 -1, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtNtB4_7sources7from_fn6FromFnNCNvNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile8read_all0EINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntNtNtCs3TE53SMfxyL_6fs_err3dir7ReadDirINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !821, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !823
  call void @_RNvXNtCs3TE53SMfxyL_6fs_err3dirNtB2_7ReadDirNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !noalias !824
  %i.e = load i64, ptr %i.b, align 8, !range !825, !noalias !826, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.05.0.copyload.i.i = load ptr, ptr %i.g, align 8, !noalias !826 ; 2 uses
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.56.0.copyload.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !826 ; 4 uses
  %i.h = icmp eq ptr %.sroa.05.0.copyload.i.i, null
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i.i) ]
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !822, !noalias !827, !noundef !6 ; 4 uses
  %i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !828
  %i.j = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !829, !noalias !828
  store i8 3, ptr %i.a, align 8, !alias.scope !829, !noalias !828
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.g, !noalias !830

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !828
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.56.0.copyload.i.i, ptr %i.d, align 8, !alias.scope !822, !noalias !827
  resume { ptr, i32 } %i.q

.thread:                                          ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !823
  store ptr %.sroa.05.0.copyload.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.56.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  store ptr %.sroa.56.0.copyload.i.i, ptr %i.d, align 8, !alias.scope !822, !noalias !827
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECsl8OoimOLbh_6qdrant.exit
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !823
  store ptr null, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntNtNtCs3TE53SMfxyL_6fs_err3dir7ReadDirINtNtB6_6result6ResultzNtNtNtB6_2io5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = load ptr, ptr %i.b, align 8, !noundef !6
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web4data11DataFactoryEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3zYKyHJHYqN_14rustls_pemfile7pemfile4ItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path8JsonPathENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops20PointStructPersistedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema11PointStructENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry23CollectionTelemetryEnumENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsgoPClq0H8JF_9actix_web4data11DataFactoryEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_2
