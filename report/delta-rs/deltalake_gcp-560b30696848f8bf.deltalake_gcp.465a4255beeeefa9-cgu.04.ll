inline.NumInlined: 194
inline.NumDeleted: 92
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendEBK_(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !16, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !16
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs62u4JVtZyFF_13deltalake_gcp.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !23, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !23
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientEECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5parse5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.s, %bb.v, %.body8.i, %.body11.i, %.body.i, %bb.ab, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %eh.lpad-body12.i, %.body11.i ], [ %i.n, %bb.j ], [ %i.v, %bb.s ], [ %i.y, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body9.i, %.body8.i ], [ %i.ak, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !24, !alias.scope !25, !noundef !4 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %i.e, -9223372036854775808
  %i.h = icmp slt i64 %i.e, 0
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.f [
    i64 0, label %bb.i
    i64 1, label %bb.l
    i64 2, label %bb.o
    i64 3, label %bb.r
    i64 4, label %bb.u
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit5.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit5.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

bb.l:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.body8.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i unwind label %bb.x

bb.o:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body11.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.z

bb.r:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit15.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit15.i: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

bb.u:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit18.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit18.i: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

.body8.i:                                         ; preds = %bb.x, %bb.m
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.aa, %bb.x ], [ %i.p, %bb.m ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #19
          to label %common.resume unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i7.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(48) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

bb.y:                                             ; preds = %.body.i, %.body11.i, %.body8.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

.body11.i:                                        ; preds = %bb.z, %bb.p
  %eh.lpad-body12.i = phi { ptr, i32 } [ %i.ae, %bb.z ], [ %i.s, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i = load ptr, ptr %i.af, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.val2.i) #19
          to label %common.resume unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !25, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.val.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.aa ], [ %i.k, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #19
          to label %common.resume unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit10.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit18.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs62u4JVtZyFF_13deltalake_gcp.exit15.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs62u4JVtZyFF_13deltalake_gcp.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client13ClientOptionsECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load i8, ptr %i.b, align 8, !range !31, !alias.scope !28, !noundef !4 ; 2 uses
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %.not.i.i = icmp eq i8 %i.c, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !44, !nonnull !4, !align !45, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !44, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !44, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !44, !noundef !4
  invoke void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.g, !inline_history !46

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.m, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.p) #19
          to label %.body40 unwind label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body40 unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.body40:                                          ; preds = %bb.k, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.u, %bb.k ], [ %i.r, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.ce

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body40

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 568
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit44 unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %.body40, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.x, %bb.l ], [ %.pn, %.body40 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.w) #19
          to label %.body45 unwind label %bb.ce

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit44: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store6client11CertificateEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !5, !alias.scope !47, !noundef !4
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit44
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body45 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.p

.body45:                                          ; preds = %bb.p, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %i.ad, %bb.p ], [ %i.ab, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(96) %0) #19
          to label %bb.q unwind label %bb.ce

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs62u4JVtZyFF_13deltalake_gcp.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(96) %0)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %.body45
  %.pn6 = phi { ptr, i32 } [ %i.af, %bb.r ], [ %.pn4, %.body45 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #19
          to label %.body50 unwind label %bb.ce

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !50, !noundef !4
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit53, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i49 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body50 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i49: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit53 unwind label %bb.w

.body50:                                          ; preds = %bb.w, %bb.u, %bb.q
  %.pn8 = phi { ptr, i32 } [ %.pn6, %bb.q ], [ %i.am, %bb.w ], [ %i.aj, %bb.u ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.al) #19
          to label %.body56 unwind label %bb.ce

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i49
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body50

end_hunk_0
begin_hunk_1_@_RNvXs0_Cs62u4JVtZyFF_13deltalake_gcpNtB5_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options:bb.a
  %i.a = tail call { ptr, ptr } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %3, ptr noundef nonnull %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %7) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store3gcpNtB5_18GoogleCloudStorageNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store5parseNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !234, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !234, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !234, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !234
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !237
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !240, !noalias !237, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !240, !noalias !237, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !240, !noalias !237
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !240, !noalias !237
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Cs62u4JVtZyFF_13deltalake_gcpNtB4_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 2 uses
  %.sroa.5111.sroa.5.sroa.6 = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.5111.sroa.6 = alloca [16 x i8], align 8  ; 4 uses
  %.sroa.6.sroa.9 = alloca [24 x i8], align 8     ; 3 uses
  %.sroa.7109 = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.583.sroa.6 = alloca [40 x i8], align 8   ; 4 uses
  %.sroa.66.sroa.8 = alloca [40 x i8], align 8    ; 3 uses
  %i.j = alloca [872 x i8], align 8               ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [872 x i8], align 8               ; 5 uses
  %i.n = alloca [872 x i8], align 8               ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 2 uses
  %i.q = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.630 = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [88 x i8], align 8                ; 9 uses
  %i.t = alloca [120 x i8], align 8               ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [120 x i8], align 8               ; 11 uses
  %i.w = alloca [72 x i8], align 8                ; 11 uses
  %i.x = alloca [48 x i8], align 8                ; 13 uses
  %i.y = alloca [872 x i8], align 8               ; 5 uses
  %i.z = alloca [872 x i8], align 8               ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [872 x i8], align 8              ; 5 uses
  %i.ac = alloca [872 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB5_25GoogleCloudStorageBuilder3new(ptr noalias noundef nonnull sret([872 x i8]) align 8 captures(address) dereferenceable(872) %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val215 = load i64, ptr %i.ae, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244
  store i64 0, ptr %i.c, align 8, !noalias !244
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !244
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.af, align 8, !noalias !244
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !244
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !244
  store ptr %i.c, ptr %i.b, align 8, !noalias !244
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @19, ptr %i.ag, align 8, !noalias !244
  %i.ah = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val215, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i unwind label %bb.b, !noalias !244

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.bh unwind label %bb.d, !noalias !244

_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i: ; preds = %bb.a
  br i1 %i.ah, label %bb.c, label %bb.e, !prof !167

bb.c:                                             ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #21
          to label %.noexc.i unwind label %bb.b, !noalias !244

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !244
  unreachable

bb.e:                                             ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244
  call void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder8with_urlNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([872 x i8]) align 8 captures(none) dereferenceable(872) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(872) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.z, ptr noundef nonnull align 8 dereferenceable(872) %i.ac, i64 872, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.ac, ptr noundef nonnull align 8 dereferenceable(872) %i.z, i64 872, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.an, 3
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.y, ptr noundef nonnull align 8 dereferenceable(872) %i.z, i64 872, i1 false)
  %i.ao = invoke { i64, ptr } @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeNtB4_9IORuntime10get_handle(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 176
  invoke void @_RNvXCs62u4JVtZyFF_13deltalake_gcpINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1q_ENtB2_10GcpOptions14as_gcp_options(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap)
          to label %bb.l unwind label %.thread243

bb.h:                                             ; preds = %bb.f
  %i.aq = extractvalue { i64, ptr } %i.ao, 0
  %i.ar = extractvalue { i64, ptr } %i.ao, 1
  call void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder19with_http_connectorNtNtNtNtBa_6client4http10connection23SpawnedReqwestConnectorECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([872 x i8]) align 8 captures(none) dereferenceable(872) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(872) %i.y, i64 noundef %i.aq, ptr noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.g

bb.i:                                             ; preds = %.body213
  br i1 %.sroa.057.3, label %bb.bg, label %.thread238

bb.j:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %i.y) #19
          to label %.thread238 unwind label %bb.k

bb.k:                                             ; preds = %.body213, %bb.bh, %bb.bg, %bb.ay, %.body, %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread243:                                       ; preds = %bb.ba, %bb.o, %bb.l, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  invoke void @_RINvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB5_15GcpConfigHelper7try_newNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1b_B2c_EEB7_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.u)
          to label %bb.m unwind label %.thread243

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.au = load i64, ptr %i.v, align 8, !range !5, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, -9223372036854775808
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.079.0.copyload = load i64, ptr %i.aw, align 8 ; 3 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.580.sroa.0.0.copyload = load i64, ptr %.sroa.580.0..sroa_idx, align 8 ; 3 uses
  %.sroa.580.sroa.5.0..sroa.580.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.580.sroa.5.0.copyload = load i64, ptr %.sroa.580.sroa.5.0..sroa.580.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.580.sroa.6.0..sroa.580.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.580.sroa.6.0.copyload = load i64, ptr %.sroa.580.sroa.6.0..sroa.580.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.66.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.681.0..sroa_idx, i64 40, i1 false)
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583.sroa.6)
  %.not209 = icmp eq i64 %.sroa.079.0.copyload, -9223372036854775790
  br i1 %.not209, label %bb.bf, label %bb.be

bb.o:                                             ; preds = %bb.m
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %.sroa.88.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.88.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.664.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.au, ptr %i.t, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.079.0.copyload, ptr %.sroa.66.0..sroa_idx7, align 8
  %.sroa.66.sroa.7.0..sroa.66.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.580.sroa.0.0.copyload, ptr %.sroa.66.sroa.7.0..sroa.66.0..sroa_idx7.sroa_idx, align 8
  %.sroa.66.sroa.7.sroa.7.0..sroa.66.sroa.7.0..sroa.66.0..sroa_idx7.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.580.sroa.5.0.copyload, ptr %.sroa.66.sroa.7.sroa.7.0..sroa.66.sroa.7.0..sroa.66.0..sroa_idx7.sroa_idx.sroa_idx, align 8
  %.sroa.66.sroa.7.sroa.8.0..sroa.66.sroa.7.0..sroa.66.0..sroa_idx7.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %.sroa.580.sroa.6.0.copyload, ptr %.sroa.66.sroa.7.sroa.8.0..sroa.66.sroa.7.0..sroa.66.0..sroa_idx7.sroa_idx.sroa_idx, align 8
  %.sroa.66.sroa.8.0..sroa.66.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.66.sroa.8.0..sroa.66.0..sroa_idx7.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.66.sroa.8, i64 40, i1 false)
  invoke void @_RNvMs_NtCs62u4JVtZyFF_13deltalake_gcp6configNtB4_15GcpConfigHelper5build(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.t)
          to label %bb.p unwind label %.thread243

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.w, align 8, !range !247, !noundef !4 ; 3 uses
  %.not197 = icmp eq i64 %i.ax, -9223372036854775789
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0136.0.copyload = load i64, ptr %i.ay, align 8 ; 3 uses
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5137.0.copyload = load i64, ptr %.sroa.5137.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.6138.0.copyload = load i64, ptr %.sroa.6138.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7139.0..sroa_idx, i64 24, i1 false)
  br i1 %.not197, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7109, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6106.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5111.sroa.5.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5111.sroa.6)
  %.not208 = icmp eq i64 %i.ax, -9223372036854775790
  br i1 %.not208, label %bb.bd, label %bb.bc

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.9, i64 24, i1 false)
  store i64 %.sroa.0136.0.copyload, ptr %i.x, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.5137.0.copyload, ptr %.sroa.4134.0..sroa_idx, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6138.0.copyload, ptr %.sroa.5135.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs_NtCsjyY8HP3IvQ6_12object_store5parseNtB4_17ObjectStoreScheme5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.t unwind label %bb.s

.body213:                                         ; preds = %bb.aj, %bb.w, %bb.s, %.body
  %.sroa.057.3 = phi i1 [ %.sroa.057.5, %.body ], [ true, %bb.w ], [ %.sroa.057.4, %bb.s ], [ false, %bb.aj ]
  %.pn203 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bd, %bb.w ], [ %i.az, %bb.s ], [ %i.bo, %bb.aj ] ; 2 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %bb.i unwind label %bb.k

end_hunk_1
begin_hunk_2_@_RNvXs_Cs62u4JVtZyFF_13deltalake_gcpNtB4_10GcpFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  br i1 %.not199, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.336.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6177.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.235.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, i64 24, i1 false)
  store i64 %i.bf, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core6errorsNtB2_15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %bb.az unwind label %bb.s

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.630, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630)
  invoke void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringE4iterCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %bb.ac unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.av, %bb.at, %bb.as, %bb.ao, %bb.an, %bb.ay
  %.sroa.057.5 = phi i1 [ false, %bb.ay ], [ false, %bb.av ], [ false, %bb.ao ], [ false, %bb.at ], [ false, %bb.an ], [ false, %bb.as ], [ true, %.loopexit ], [ %.sroa.057.6.ph, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.ay ], [ %i.ci, %bb.av ], [ %i.bu, %bb.ao ], [ %i.cd, %bb.at ], [ %i.bu, %bb.an ], [ %i.cd, %bb.as ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %i.r) #19
          to label %.body213 unwind label %bb.k

.loopexit:                                        ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.ag
  %.sroa.057.6.ph = phi i1 [ false, %bb.ag ], [ true, %bb.ab ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ax, %bb.ac
  %i.bh = invoke { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.ae unwind label %.loopexit ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %.not200 = icmp eq ptr %i.bi, null
  br i1 %.not200, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.m, ptr noundef nonnull align 8 dereferenceable(872) %i.ac, i64 872, i1 false)
  %i.bk = load i8, ptr %i.bi, align 1, !range !252, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %bb.aw unwind label %bb.ay

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.j, ptr noundef nonnull align 8 dereferenceable(872) %i.ac, i64 872, i1 false)
  invoke void @_RNvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB5_25GoogleCloudStorageBuilder5build(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(872) %i.j)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bl = load i64, ptr %i.k, align 8, !range !253, !noundef !4 ; 2 uses
  %.not201 = icmp eq i64 %i.bl, -9223372036854775790
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  br i1 %.not201, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6194.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6183.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -9223372036854775743, ptr %0, align 16
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %.sroa.4192.0..sroa_idx, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %.sroa.5193.0..sroa_idx, align 16
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body213 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.s

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.br, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !254
  %i.bs = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 89) 24, i64 noundef 8) #18, !noalias !254 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.am, label %bb.aq, !prof !167

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #21
          to label %.noexc222 unwind label %bb.an

.noexc222:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !257
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ao, label %.body

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br) #20
          to label %.body unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aq:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @25, ptr %i.ca, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !266
  %i.cb = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 89) 32, i64 noundef 8) #18, !noalias !266 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit229, !prof !167

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #21
          to label %.noexc225 unwind label %bb.as

.noexc225:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !269
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.at, label %.body

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bz) #20
          to label %.body unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit229: ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.ch, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %.sroa.456.0..sroa_idx, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %4

4:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit233, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %4

bb.av:                                            ; preds = %bb.aw
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.af
  invoke void @_RINvMs2_NtNtCsjyY8HP3IvQ6_12object_store3gcp7builderNtB6_25GoogleCloudStorageBuilder11with_configNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([872 x i8]) align 8 captures(none) dereferenceable(872) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(872) %i.m, i8 noundef %i.bk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.ac, ptr noundef nonnull align 8 dereferenceable(872) %i.n, i64 872, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ad

bb.ay:                                            ; preds = %bb.af
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %i.m) #19
          to label %.body unwind label %bb.k

bb.az:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit233 unwind label %.thread243

bb.bb:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ck = ptrtoint ptr %i.bb to i64
  store i64 -9223372036854775721, ptr %0, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ck, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @29, ptr %.sroa.4169.0..sroa_idx, align 16
  br label %bb.ba

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit233: ; preds = %bb.bd, %bb.bf, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %i.ac)
  br label %4

bb.bc:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5111.sroa.5.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.9, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5111.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7109, i64 16, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.q, %bb.bc
  %.sroa.0110.0 = phi i64 [ -9223372036854775743, %bb.bc ], [ -9223372036854775722, %bb.q ]
  %.sroa.5111.sroa.0.0 = phi i64 [ %i.ax, %bb.bc ], [ %.sroa.0136.0.copyload, %bb.q ]
  %.sroa.5111.sroa.5.sroa.0.0 = phi i64 [ %.sroa.0136.0.copyload, %bb.bc ], [ %.sroa.5137.0.copyload, %bb.q ]
  %.sroa.5111.sroa.5.sroa.5.sroa.0.0 = phi i64 [ %.sroa.5137.0.copyload, %bb.bc ], [ %.sroa.6138.0.copyload, %bb.q ]
  %.sroa.5111.sroa.5.sroa.5.sroa.5.0 = phi i64 [ %.sroa.6138.0.copyload, %bb.bc ], [ undef, %bb.q ]
  store i64 %.sroa.0110.0, ptr %0, align 16
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5111.sroa.0.0, ptr %.sroa.5111.0..sroa_idx, align 8
  %.sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5111.sroa.5.sroa.0.0, ptr %.sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx, align 16
  %.sroa.5111.sroa.5.sroa.5.0..sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5111.sroa.5.sroa.5.sroa.0.0, ptr %.sroa.5111.sroa.5.sroa.5.0..sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5111.sroa.5.sroa.5.sroa.5.0..sroa.5111.sroa.5.sroa.5.0..sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5111.sroa.5.sroa.5.sroa.5.0, ptr %.sroa.5111.sroa.5.sroa.5.sroa.5.0..sroa.5111.sroa.5.sroa.5.0..sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 16
  %.sroa.5111.sroa.5.sroa.6.0..sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5111.sroa.5.sroa.6.0..sroa.5111.sroa.5.0..sroa.5111.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5111.sroa.5.sroa.6, i64 24, i1 false)
  %.sroa.5111.sroa.6.0..sroa.5111.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5111.sroa.6.0..sroa.5111.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5111.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.sroa.5.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5111.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7109)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit233

bb.be:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.583.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.66.sroa.8, i64 40, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.n, %bb.be
  %.sroa.583.sroa.0.0 = phi i64 [ %.sroa.079.0.copyload, %bb.be ], [ %.sroa.580.sroa.0.0.copyload, %bb.n ]
  %.sroa.082.0 = phi i64 [ -9223372036854775743, %bb.be ], [ -9223372036854775722, %bb.n ]
  %.sroa.583.sroa.5.sroa.0.0 = phi i64 [ %.sroa.580.sroa.0.0.copyload, %bb.be ], [ %.sroa.580.sroa.5.0.copyload, %bb.n ]
  %.sroa.583.sroa.5.sroa.5.sroa.0.0 = phi i64 [ %.sroa.580.sroa.5.0.copyload, %bb.be ], [ %.sroa.580.sroa.6.0.copyload, %bb.n ]
  %.sroa.583.sroa.5.sroa.5.sroa.5.0 = phi i64 [ %.sroa.580.sroa.6.0.copyload, %bb.be ], [ undef, %bb.n ]
  store i64 %.sroa.082.0, ptr %0, align 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.583.sroa.0.0, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.583.sroa.5.0..sroa.583.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.583.sroa.5.sroa.0.0, ptr %.sroa.583.sroa.5.0..sroa.583.0..sroa_idx.sroa_idx, align 16
  %.sroa.583.sroa.5.sroa.5.0..sroa.583.sroa.5.0..sroa.583.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.583.sroa.5.sroa.5.sroa.0.0, ptr %.sroa.583.sroa.5.sroa.5.0..sroa.583.sroa.5.0..sroa.583.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.583.sroa.5.sroa.5.sroa.5.0..sroa.583.sroa.5.sroa.5.0..sroa.583.sroa.5.0..sroa.583.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.583.sroa.5.sroa.5.sroa.5.0, ptr %.sroa.583.sroa.5.sroa.5.sroa.5.0..sroa.583.sroa.5.sroa.5.0..sroa.583.sroa.5.0..sroa.583.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 16
  %.sroa.583.sroa.6.0..sroa.583.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.583.sroa.6.0..sroa.583.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.583.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs62u4JVtZyFF_13deltalake_gcp.exit233

.thread238:                                       ; preds = %bb.j, %bb.bh, %bb.bg, %bb.i
  %.pn205.pn = phi { ptr, i32 } [ %.pn205241, %bb.bg ], [ %.pn203, %bb.i ], [ %i.ai, %bb.bh ], [ %i.as, %bb.j ]
  resume { ptr, i32 } %.pn205.pn

bb.bg:                                            ; preds = %.thread243, %bb.i
  %.pn205241 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread243 ], [ %.pn203, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %i.ac) #19
          to label %.thread238 unwind label %bb.k

bb.bh:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder25GoogleCloudStorageBuilderECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(872) %i.ab) #19
          to label %.thread238 unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2r_6marker4SendEL_EEEENtNtNtB2r_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit, %bb.a
  %i.d = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.07.0.i = phi ptr [ %i.m, %bb.e ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.f, %bb.e ], [ %i.d, %bb.b ] ; 4 uses
  %i.k = icmp eq ptr %.sroa.07.0.i, null
  br i1 %i.k, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.m = load atomic ptr, ptr %i.l acquire, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.n = load atomic ptr, ptr %i.c acquire, align 8
  %i.o = icmp eq ptr %i.n, %.sroa.01.0.i
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store atomic ptr null, ptr %i.r monotonic, align 8
  %i.s = atomicrmw xchg ptr %i.c, ptr %i.q acq_rel, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store atomic ptr %i.q, ptr %i.t release, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 56
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.v, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %.sroa.01.0.i)
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !278
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.j:                                             ; preds = %bb.c
  ret void

bb.k:                                             ; preds = %bb.f, %bb.g
  call void @_RNvNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered5abort5abort(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 20) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
end_hunk_2
