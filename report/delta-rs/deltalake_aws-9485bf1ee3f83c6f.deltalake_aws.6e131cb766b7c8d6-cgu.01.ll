inline.NumInlined: 1838
inline.NumDeleted: 674
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0Ba_:bb.a
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.body, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.df = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.dd, i64 noundef range(i64 1, 536870913) %i.dg) #29
  br label %.body

bb.bl:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %.sroa.3.0..sroa_idx8)
          to label %bb.bf unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit52: ; preds = %bb.bi, %bb.bh
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit52
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.body53 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit52
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i57 unwind label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dl)
          to label %.body58 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i57: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i70, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i57
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i57
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !2924, !nonnull !3, !noundef !3
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !2924
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit62

bb.bs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dp) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit62 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.by, %bb.bs
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit62: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit74, %bb.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.bs
  %.sroa.5.1 = phi i8 [ %.sroa.5.083, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.5.083, %bb.bs ], [ 0, %bb.by ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit74 ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.084, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.0.084, %bb.bs ], [ -9223372036854775711, %bb.by ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit74 ]
  store i64 %.sroa.0.1, ptr %0, align 16
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.1, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.8, i64 87, i1 false)
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.y, %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i64 unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %.body53 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i64: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit68 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit68: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i70 unwind label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit68
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dx)
          to label %.body58 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i70: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit68
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit74 unwind label %bb.br

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit74: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i70
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !2931, !nonnull !3, !noundef !3
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !2931
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit62

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit74
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ea) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit62 unwind label %bb.bt
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2932, !noalias !2935, !align !99, !noundef !3 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !2932, !noalias !2935
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !1778

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !703, !noalias !2938, !noundef !3
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit, !prof !1778

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #34, !noalias !2938
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #34, !noalias !2938
  unreachable

_RNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !2938, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2938
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !2938, !inline_history !2939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2938
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB4_18S3DynamoDbLogStore7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([928 x i8]) align 16 captures(none) dereferenceable(928) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %3, ptr noundef nonnull %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %5, ptr noundef nonnull %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0112.sroa.0 = alloca [312 x i8], align 8 ; 2 uses
  %.sroa.0112.sroa.2 = alloca [488 x i8], align 8 ; 2 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.0212 = alloca [96 x i8], align 8         ; 7 uses
  %i.ag = alloca [224 x i8], align 16             ; 8 uses
  %i.ah = alloca [312 x i8], align 8              ; 4 uses
  %i.ai = alloca [520 x i8], align 8              ; 9 uses
  %.sroa.011 = alloca [888 x i8], align 8         ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [416 x i8], align 8              ; 32 uses
  %i.as = alloca [488 x i8], align 8              ; 12 uses
  %.sroa.53.sroa.7.sroa.11 = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.53.sroa.8 = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.5.sroa.13 = alloca [32 x i8], align 16   ; 7 uses
  %.sroa.5.sroa.14 = alloca [16 x i8], align 16   ; 7 uses
  %i.at = alloca [488 x i8], align 8              ; 13 uses
  %i.au = alloca [88 x i8], align 8               ; 10 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  store ptr %4, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %5, ptr %i.ax, align 8
  store ptr %6, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %7, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body144
  br i1 %.sroa.021.1, label %.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit205

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.sroa.7.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !33, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.bb, -9223372036854775807
  br i1 %.not, label %bb.bx, label %bb.e, !prof !1778

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2943
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !33, !alias.scope !2940, !noalias !2945, !noundef !3
  %.not.i = icmp eq i64 %i.bd, -9223372036854775807
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc unwind label %bb.by

bb.g:                                             ; preds = %bb.e
  store i64 -9223372036854775807, ptr %i.w, align 8, !noalias !2943
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2943
  %.not13.i = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %.not13.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2943
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %i.ba)
          to label %bb.m unwind label %bb.l, !noalias !2945

bb.i:                                             ; preds = %.noexc
  store i64 -9223372036854775808, ptr %i.v, align 8, !noalias !2943
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2943
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 4 uses
  %.not14.i = icmp eq ptr %i.bf, null
  br i1 %.not14.i, label %bb.o, label %bb.n

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.l
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.bg, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.w) #31
          to label %.body144 unwind label %bb.bm, !noalias !2945

bb.l:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2943
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.bj = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !2945
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %bb.q

bb.o:                                             ; preds = %bb.j
  store ptr null, ptr %i.u, align 8, !noalias !2943
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %8 = phi ptr [ %i.bi, %bb.q ], [ undef, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2943
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 3 uses
  %.not15.i = icmp eq ptr %i.bm, null
  br i1 %.not15.i, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.n
  store ptr %i.bf, ptr %i.u, align 8, !noalias !2943
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.bi, ptr %i.bn, align 8, !noalias !2943
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3
  %i.bq = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !noalias !2945
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.p
  store ptr null, ptr %i.t, align 8, !noalias !2943
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2943
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 4 uses
  %.not16.i = icmp eq ptr %i.bt, null
  br i1 %.not16.i, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !2940, !noalias !2945, !noundef !3
  store ptr %i.bm, ptr %i.t, align 8, !noalias !2943
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2943
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2943
  br label %bb.u

bb.w:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3
  %i.by = atomicrmw add ptr %i.bt, i64 1 monotonic, align 8, !noalias !2945
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.ab, label %bb.aa

bb.y:                                             ; preds = %bb.u
  store ptr null, ptr %i.s, align 8, !noalias !2943
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2943
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !33, !alias.scope !2940, !noalias !2945, !noundef !3
  %.not17.i = icmp eq i64 %i.cb, -9223372036854775807
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !2940, !noalias !2945, !noundef !3
  store ptr %i.bt, ptr %i.s, align 8, !noalias !2943
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bx, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2943
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.cd, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !2943
  br label %bb.z

bb.ab:                                            ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2943
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca)
          to label %_RNvXsc_NtCsjPG5xYjJYir_9aws_types6regionNtB5_6RegionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.ai, !noalias !2945

bb.ad:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !2943
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvXsc_NtCsjPG5xYjJYir_9aws_types6regionNtB5_6RegionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 557
  %i.cf = load i8, ptr %i.ce, align 1, !range !120, !alias.scope !2940, !noalias !2945, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2943
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !6, !alias.scope !2940, !noalias !2945, !noundef !3
  %.not19.i = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %.not19.i, label %bb.am, label %bb.al

bb.af:                                            ; preds = %._crit_edge.i, %bb.ai
  %i.ci = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bt, %bb.ai ] ; 2 uses
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %._crit_edge.i ], [ %i.cm, %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !2949
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

bb.ai:                                            ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_RNvXsc_NtCsjPG5xYjJYir_9aws_types6regionNtB5_6RegionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2943
  br label %bb.ae

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.ak
  %.pn.i = phi { ptr, i32 } [ %i.ea, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.cn, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.r) #31
          to label %._crit_edge.i unwind label %bb.bm, !noalias !2945

._crit_edge.i:                                    ; preds = %bb.aj
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !2946, !noalias !2943
  br label %bb.af

bb.ak:                                            ; preds = %bb.al
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2943
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.ao unwind label %bb.ak, !noalias !2945

bb.am:                                            ; preds = %bb.ae
  store i64 -9223372036854775808, ptr %i.q, align 8, !noalias !2943
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.co, i64 40, i1 false), !noalias !2945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2943
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 4 uses
  %.not20.i = icmp eq ptr %i.cq, null
  br i1 %.not20.i, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2943
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.ct = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8, !noalias !2945
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.at, label %bb.as

bb.aq:                                            ; preds = %bb.an
  store ptr null, ptr %i.o, align 8, !noalias !2943
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %9 = phi ptr [ %i.cs, %bb.as ], [ undef, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2943
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 504
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 4 uses
  %.not21.i = icmp eq ptr %i.cw, null
  br i1 %.not21.i, label %bb.av, label %bb.au

bb.as:                                            ; preds = %bb.ap
  store ptr %i.cq, ptr %i.o, align 8, !noalias !2943
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cs, ptr %i.cx, align 8, !noalias !2943
  br label %bb.ar

bb.at:                                            ; preds = %bb.ap
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.da = atomicrmw add ptr %i.cw, i64 1 monotonic, align 8, !noalias !2945
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %bb.ar
  store ptr null, ptr %i.n, align 8, !noalias !2943
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %10 = phi ptr [ %i.cz, %bb.ax ], [ undef, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.dc, i64 64, i1 false), !noalias !2945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !2945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2943
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 520
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 4 uses
  %.not22.i = icmp eq ptr %i.df, null
  br i1 %.not22.i, label %bb.ba, label %bb.az

bb.ax:                                            ; preds = %bb.au
  store ptr %i.cw, ptr %i.n, align 8, !noalias !2943
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cz, ptr %i.dg, align 8, !noalias !2943
  br label %bb.aw

bb.ay:                                            ; preds = %bb.au
  call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.dj = atomicrmw add ptr %i.df, i64 1 monotonic, align 8, !noalias !2945
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %bb.bd, label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  store ptr null, ptr %i.k, align 8, !noalias !2943
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %11 = phi ptr [ %i.di, %bb.bc ], [ undef, %bb.ba ]
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 552
  %i.dm = load i8, ptr %i.dl, align 8, !range !2956, !alias.scope !2940, !noalias !2945, !noundef !3
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 553
  %i.do = load i8, ptr %i.dn, align 1, !range !2956, !alias.scope !2940, !noalias !2945, !noundef !3
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 558
  %i.dq = load i8, ptr %i.dp, align 2, !range !618, !alias.scope !2940, !noalias !2945, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2943
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !2940, !noalias !2945, !noundef !3 ; 5 uses
  %.not23.i = icmp eq ptr %i.ds, null             ; 2 uses
  br i1 %.not23.i, label %bb.bf, label %bb.be

bb.bc:                                            ; preds = %bb.az
  store ptr %i.df, ptr %i.k, align 8, !noalias !2943
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.di, ptr %i.dt, align 8, !noalias !2943
  br label %bb.bb

bb.bd:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 544
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !2940, !noalias !2945, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.dw = atomicrmw add ptr %i.ds, i64 1 monotonic, align 8, !noalias !2945
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.bi, label %bb.bh

bb.bf:                                            ; preds = %bb.bb
  store ptr null, ptr %i.j, align 8, !noalias !2943
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %12 = phi ptr [ %i.dv, %bb.bh ], [ undef, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2943
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 376
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy)
          to label %bb.ca unwind label %bb.bj, !noalias !2945

bb.bh:                                            ; preds = %bb.be
  store ptr %i.ds, ptr %i.j, align 8, !noalias !2943
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.dv, ptr %i.dz, align 8, !noalias !2943
  br label %bb.bg

bb.bi:                                            ; preds = %bb.be
  call void @llvm.trap()
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br i1 %.not23.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eb = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !2957
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.bw, %bb.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.bs, %bb.bq, %bb.bo, %bb.bl, %bb.aj, %bb.ah, %bb.k
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2945
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  %i.ee = load ptr, ptr %i.k, align 8, !alias.scope !2964, !noalias !2943, !noundef !3 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.eg = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !2967
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http10HttpClientEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bo, %bb.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjPG5xYjJYir_9aws_types14service_config17LoadServiceConfigEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.ei = load ptr, ptr %i.n, align 8, !alias.scope !2974, !noalias !2943, !noundef !3 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ek = atomicrmw sub ptr %i.ei, i64 1 release, align 8, !noalias !2977
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bq, %bb.bp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  %i.em = load ptr, ptr %i.o, align 8, !alias.scope !2984, !noalias !2943, !noundef !3 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.eo = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !2987
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bs, %bb.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.q) #31
          to label %bb.aj unwind label %bb.bm, !noalias !2945

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ah, %bb.ag, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  %i.eq = load ptr, ptr %i.t, align 8, !alias.scope !2994, !noalias !2943, !noundef !3 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.es = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !2997
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bu, %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token19SharedTokenProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  %i.eu = load ptr, ptr %i.u, align 8, !alias.scope !3004, !noalias !2943, !noundef !3 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ew = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !3007
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bm, !noalias !2945

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bw, %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.v) #31
          to label %bb.k unwind label %bb.bm, !noalias !2945

bb.bx:                                            ; preds = %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #35
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.f, %bb.ev, %bb.bx
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.bz:                                            ; preds = %bb.bx
  unreachable

bb.ca:                                            ; preds = %bb.bg
  %.sroa.9226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9226.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2943
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 554
  %i.fa = load i8, ptr %i.ez, align 2, !range !2956, !alias.scope !2940, !noalias !2945, !noundef !3
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 555
  %i.fd = load i8, ptr %i.fc, align 1, !range !2956, !alias.scope !2940, !noalias !2945, !noundef !3
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 556
  %i.ff = load i8, ptr %i.fe, align 4, !range !2956, !alias.scope !2940, !noalias !2945, !noundef !3
  %.sroa.0212.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0212, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !2940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !2940
  %.sroa.12229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12229.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.13230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.0212.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0212, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !2940
  %.sroa.0212.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0212, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2940
  %.sroa.6.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx223, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %.sroa.8225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %.sroa.7224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0212, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0212)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.fg = load <2 x i32>, ptr %i.fb, align 8, !alias.scope !2940, !noalias !2945
  store <2 x i32> %i.fg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.10227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 280
  store ptr %i.bf, ptr %.sroa.10227.0..sroa_idx, align 8
  %.sroa.11228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 288
  store ptr %8, ptr %.sroa.11228.0..sroa_idx, align 8
  %.sroa.14231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 344
  store ptr %i.cq, ptr %.sroa.14231.0..sroa_idx, align 8
  %.sroa.15232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 352
  store ptr %9, ptr %.sroa.15232.0..sroa_idx, align 8
  %.sroa.16233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 360
  store ptr %i.cw, ptr %.sroa.16233.0..sroa_idx, align 8
  %.sroa.17234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 368
  store ptr %10, ptr %.sroa.17234.0..sroa_idx, align 8
  %.sroa.18235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 376
  store ptr %i.df, ptr %.sroa.18235.0..sroa_idx, align 8
  %.sroa.19236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 384
  store ptr %11, ptr %.sroa.19236.0..sroa_idx, align 8
  %.sroa.20237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 392
  store ptr %i.ds, ptr %.sroa.20237.0..sroa_idx, align 8
  %.sroa.21238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 400
  store ptr %12, ptr %.sroa.21238.0..sroa_idx, align 8
  %.sroa.22239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 408
  store i8 %i.dm, ptr %.sroa.22239.0..sroa_idx, align 8
  %.sroa.23240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  store i8 %i.do, ptr %.sroa.23240.0..sroa_idx, align 1
  %.sroa.24241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 410
  store i8 %i.fa, ptr %.sroa.24241.0..sroa_idx, align 2
  %.sroa.25242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 411
  store i8 %i.fd, ptr %.sroa.25242.0..sroa_idx, align 1
  %.sroa.26243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 412
  store i8 %i.ff, ptr %.sroa.26243.0..sroa_idx, align 4
  %.sroa.27244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 413
  store i8 %i.cf, ptr %.sroa.27244.0..sroa_idx, align 1
  %.sroa.28245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 414
  store i8 %i.dq, ptr %.sroa.28245.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 592 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 616
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !3014, !noalias !3017, !noundef !3
  %i.fk = icmp eq i64 %i.fj, 0                    ; 3 uses
  br i1 %i.fk, label %select.unfold, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 624
  %i.fm = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 23)
          to label %.noexc147 unwind label %.loopexit.split-lp309 ; 2 uses

.noexc147:                                        ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  %i.fn = lshr i64 %i.fm, 57
  %i.fo = trunc nuw nsw i64 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 600
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !3025, !noalias !3026, !noundef !3 ; 2 uses
  %i.fr = load ptr, ptr %i.fh, align 8, !alias.scope !3025, !noalias !3026, !nonnull !3, !noundef !3 ; 2 uses
  %i.fs = insertelement <16 x i8> poison, i8 %i.fo, i64 0
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %.noexc147
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc147 ], [ %i.gk, %bb.ce ]
  %.pn.i.i.i = phi i64 [ %i.fm, %.noexc147 ], [ %i.gl, %bb.ce ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.fq   ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.fu, align 1, !noalias !3028 ; 2 uses
  %i.fv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.ft
  %i.fw = bitcast <16 x i1> %i.fv to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cc, %bb.cd
  %.sroa.06.0.i33.i.i = phi i16 [ %i.gj, %bb.cd ], [ %i.fw, %bb.cc ] ; 3 uses
  %i.fx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = add i64 %.sroa.01.0.i.i.i, %i.fy
  %i.ga = and i64 %i.fz, %i.fq
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds [48 x i8], ptr %i.fr, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -48
  %i.ge = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 23, 38) 23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gd)
          to label %.noexc148 unwind label %.loopexit308

.noexc148:                                        ; preds = %.lr.ph.i.i
  br i1 %i.ge, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.cd, !prof !2397

._crit_edge.i.i:                                  ; preds = %bb.cd, %bb.cc
  %i.gf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.gg = bitcast <16 x i1> %i.gf to i16
  %i.gh = icmp eq i16 %i.gg, 0
  br i1 %i.gh, label %bb.ce, label %select.unfold, !prof !1778

bb.cd:                                            ; preds = %.noexc148
  %i.gi = add i16 %.sroa.06.0.i33.i.i, -1
  %i.gj = and i16 %i.gi, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ce:                                            ; preds = %._crit_edge.i.i
  %i.gk = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.gl = add i64 %.sroa.01.0.i.i.i, %i.gk
  br label %bb.cc

.body:                                            ; preds = %.loopexit308, %.loopexit.split-lp309, %bb.dv, %bb.dq, %bb.fl
  %.pn134 = phi { ptr, i32 } [ %i.jf, %bb.dq ], [ %.pn.pn.pn.pn.pn.pn.ph, %bb.fl ], [ %i.jl, %bb.dv ], [ %lpad.loopexit310, %.loopexit308 ], [ %lpad.loopexit.split-lp311, %.loopexit.split-lp309 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %i.ar) #31
          to label %.body144 unwind label %bb.et

.loopexit308:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit310 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp309:                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.cb
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.noexc148
  %i.gm = getelementptr inbounds i8, ptr %i.gc, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gm)
          to label %bb.ck unwind label %.loopexit.split-lp309

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.ca
  store i64 -9223372036854775808, ptr %i.aq, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ck, %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  br i1 %i.fk, label %select.unfold257, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 624
  %i.go = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 25)
          to label %.noexc162 unwind label %.loopexit.split-lp304 ; 2 uses

.noexc162:                                        ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  %i.gp = lshr i64 %i.go, 57
  %i.gq = trunc nuw nsw i64 %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 600
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !3037, !noalias !3040, !noundef !3 ; 2 uses
  %i.gt = load ptr, ptr %i.fh, align 8, !alias.scope !3037, !noalias !3040, !nonnull !3, !noundef !3 ; 2 uses
  %i.gu = insertelement <16 x i8> poison, i8 %i.gq, i64 0
  %i.gv = shufflevector <16 x i8> %i.gu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %.noexc162
  %.sroa.9.0.i.i.i149 = phi i64 [ 0, %.noexc162 ], [ %i.hm, %bb.cj ]
  %.pn.i.i.i150 = phi i64 [ %i.go, %.noexc162 ], [ %i.hn, %bb.cj ]
  %.sroa.01.0.i.i.i151 = and i64 %.pn.i.i.i150, %i.gs ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.sroa.01.0.i.i.i151
  %.sroa.0.0.copyload.i26.i.i152 = load <16 x i8>, ptr %i.gw, align 1, !noalias !3043 ; 2 uses
  %i.gx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i152, %i.gv
  %i.gy = bitcast <16 x i1> %i.gx to i16          ; 2 uses
  %.not.i.not32.i.i153 = icmp eq i16 %i.gy, 0
  br i1 %.not.i.not32.i.i153, label %._crit_edge.i.i157, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %bb.ch, %bb.ci
  %.sroa.06.0.i33.i.i155 = phi i16 [ %i.hl, %bb.ci ], [ %i.gy, %bb.ch ] ; 3 uses
  %i.gz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i155, i1 true)
  %i.ha = zext nneg i16 %i.gz to i64
  %i.hb = add i64 %.sroa.01.0.i.i.i151, %i.ha
  %i.hc = and i64 %i.hb, %i.gs
  %i.hd = sub nsw i64 0, %i.hc
  %i.he = getelementptr inbounds [48 x i8], ptr %i.gt, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -48
  %i.hg = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 23, 38) 25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hf)
          to label %.noexc163 unwind label %.loopexit303

.noexc163:                                        ; preds = %.lr.ph.i.i154
  br i1 %i.hg, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit164, label %bb.ci, !prof !2397

._crit_edge.i.i157:                               ; preds = %bb.ci, %bb.ch
  %i.hh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i152, splat (i8 -1)
  %i.hi = bitcast <16 x i1> %i.hh to i16
  %i.hj = icmp eq i16 %i.hi, 0
  br i1 %i.hj, label %bb.cj, label %select.unfold257, !prof !1778

bb.ci:                                            ; preds = %.noexc163
  %i.hk = add i16 %.sroa.06.0.i33.i.i155, -1
  %i.hl = and i16 %i.hk, %.sroa.06.0.i33.i.i155   ; 2 uses
  %.not.i.not.i.i156 = icmp eq i16 %i.hl, 0
  br i1 %.not.i.not.i.i156, label %._crit_edge.i.i157, label %.lr.ph.i.i154

bb.cj:                                            ; preds = %._crit_edge.i.i157
  %i.hm = add i64 %.sroa.9.0.i.i.i149, 16         ; 2 uses
  %i.hn = add i64 %.sroa.01.0.i.i.i151, %i.hm
  br label %bb.ch

bb.ck:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cf

.loopexit303:                                     ; preds = %.lr.ph.i.i154
  %lpad.loopexit305 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

.loopexit.split-lp304:                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit164, %bb.cg
  %lpad.loopexit.split-lp306 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit164: ; preds = %.noexc163
  %i.ho = getelementptr inbounds i8, ptr %i.he, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho)
          to label %bb.cq unwind label %.loopexit.split-lp304

select.unfold257:                                 ; preds = %._crit_edge.i.i157, %bb.cf
  store i64 -9223372036854775808, ptr %i.ap, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cq, %select.unfold257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  br i1 %i.fk, label %select.unfold265, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
end_hunk_0
