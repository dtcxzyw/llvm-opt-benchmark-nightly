inline.NumInlined: 1606
inline.NumDeleted: 619
begin_hunk_0_@_RINvMs1_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB6_15AmazonS3Builder11with_configNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex) #30
          to label %bb.eu unwind label %bb.dn

bb.eu:                                            ; preds = %bb.et
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 1168
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ey) #30
          to label %bb.ev unwind label %bb.dn

bb.ev:                                            ; preds = %bb.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1488 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !399, !noundef !7 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.fc = atomicrmw sub ptr %i.fa, i64 1 release, align 8, !noalias !402
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ez) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.dn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ew, %bb.ev, %bb.ex
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB6_15AmazonS3Builder19with_http_connectorNtNtNtNtBa_6client4http10connection23SpawnedReqwestConnectorECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1504 x i8]) align 8 captures(none) dereferenceable(1504) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1504) %1, i64 noundef range(i64 0, 2) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !407
  %i.e = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 32, i64 noundef 8) #22, !noalias !407 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.e, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection23SpawnedReqwestConnectorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #30
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.c, %bb.h
  %.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder15AmazonS3BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(1504) %1) #30
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !410, !noundef !7 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !413
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr %i.e, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store ptr @2, ptr %i.o, align 8
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection13HttpConnectorEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %bb.e, %bb.g
  store ptr %i.e, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store ptr @2, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, i64 1504, i1 false)
  ret void

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB6_15AmazonS3Builder8with_urlNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1504 x i8]) align 8 captures(none) dereferenceable(1504) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1504) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !337, !alias.scope !418, !noundef !7
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder15AmazonS3BuilderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(1504) %1) #30
          to label %bb.g unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, i64 1504, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellNtCsbpcW0ghvIYZ_8fastrand3RngEE4withNCINvNtB1u_10global_rng8with_rngmNCINvB27_3u32INtNtNtBZ_3ops5range5RangemEE0E0mECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !421 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  store i32 %1, ptr %i.a, align 4, !noalias !425
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.e, align 4, !noalias !425
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %.invoke.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %2, -1                           ; 2 uses
  %i.h = icmp ugt i32 %1, %i.g
  br i1 %i.h, label %.invoke.i.i, label %bb.d

.invoke.i.i:                                      ; preds = %bb.c, %bb.b
  invoke fastcc void @_RNCINvMs0_CsbpcW0ghvIYZ_8fastrandNtB8_3Rng3u32INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangemEE0Cs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.a)
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = sub nuw i32 %i.g, %1                     ; 3 uses
  %i.j = add nuw i32 %i.i, 1                      ; 4 uses
  %i.k = add i64 %i.d, 3257665815644502181        ; 5 uses
  %i.l = zext i64 %i.k to i128
  %i.m = xor i64 %i.k, -8378864009470890807
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw i128 %i.n, %i.l                  ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o                      ; 2 uses
  %i.r = trunc i128 %i.q to i32
  %i.s = trunc i128 %i.q to i64                   ; 2 uses
  %i.t = mul i32 %i.j, %i.r                       ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.t, %i.i
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = xor i32 %i.i, -1
  %i.v = urem i32 %i.u, %i.j                      ; 2 uses
  %i.w = icmp ult i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %bb.h

..loopexit_crit_edge.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %i.x = trunc i128 %i.af to i64
  br label %bb.h

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.e ]
  %i.z = add i64 %i.y, 3257665815644502181        ; 4 uses
  %i.aa = zext i64 %i.z to i128
  %i.ab = xor i64 %i.z, -8378864009470890807
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, %i.aa               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad                   ; 2 uses
  %i.ag = trunc i128 %i.af to i32
  %i.ah = mul i32 %i.j, %i.ag
  %i.ai = icmp ult i32 %i.ah, %i.v
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i.i

bb.f:                                             ; preds = %.invoke.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i64 %i.d, ptr %i.b, align 8
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #33
  unreachable

bb.h:                                             ; preds = %..loopexit_crit_edge.i.i.i.i.i, %bb.e, %bb.d
  %.sroa.5.0.i.i = phi i64 [ %i.k, %bb.d ], [ %i.z, %..loopexit_crit_edge.i.i.i.i.i ], [ %i.k, %bb.e ]
  %.pn.in.i.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ %i.x, %..loopexit_crit_edge.i.i.i.i.i ], [ %i.s, %bb.e ]
  %i.ak = zext i32 %i.j to i64
  %.pn.i.i.i.i.i = and i64 %.pn.in.i.i.i.i.i, 4294967295
  %.sroa.0.0.in.in.i.i.i.i.i = mul nuw i64 %.pn.i.i.i.i.i, %i.ak
  %.sroa.0.0.in.i.i.i.i.i = lshr i64 %.sroa.0.0.in.in.i.i.i.i.i, 32
  %.sroa.0.0.i.i.i.i.i = trunc nuw i64 %.sroa.0.0.in.i.i.i.i.i to i32
  %i.al = add i32 %1, %.sroa.0.0.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  store i64 %.sroa.5.0.i.i, ptr %i.b, align 8
  ret i32 %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !428, !inline_history !431 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !428, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !428, !noundef !7
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !428
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE3get0jECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !432 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !7
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe13RefUnwindSafeNtB4D_10UnwindSafeEL_EE9put_value0jECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !433 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !7
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain7or_elseReNtNtBb_18web_identity_token35WebIdentityTokenCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !alias.scope !434, !noalias !439
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %i.e, align 8, !alias.scope !434, !noalias !439
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !434, !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 152, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !442
  %i.f = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 152, i64 noundef 8) #22, !noalias !442 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config18web_identity_token35WebIdentityTokenCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #30
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %.body3 unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @15, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !445, !noalias !448, !noundef !7 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !range !450, !alias.scope !445, !noalias !448, !noundef !7
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweEINtNtB7_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE8grow_oneCsaB04DkjCm5a_10aws_config(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.g, !noalias !448

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #30
          to label %.body3 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !445, !noalias !448, !nonnull !7, !noundef !7
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.u = add i64 %i.m, 1
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !445, !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.j:                                             ; preds = %.body3, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

.body3:                                           ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %.body ], [ %i.p, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chain24CredentialsProviderChainECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %1) #30
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.body3
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsaB04DkjCm5a_10aws_config4meta11credentials5chainNtB5_24CredentialsProviderChain7or_elseReNtNtBb_3ecs22EcsCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(400) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !alias.scope !451, !noalias !456
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %i.e, align 8, !alias.scope !451, !noalias !456
  store i64 -9223372036854775808, ptr %i.b, align 8, !alias.scope !451, !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %4, i64 400, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !459
  %i.f = tail call noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 9977) 400, i64 noundef 8) #22, !noalias !459 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.e, !prof !60

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config3ecs22EcsCredentialsProviderECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.a) #30
          to label %.body unwind label %bb.d
end_hunk_0
