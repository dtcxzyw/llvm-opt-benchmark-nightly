Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.13?download=true
inline.NumInlined: 2227
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0INtNtB29_3vec3VecBZ_EEB2Z_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0INtNtB2g_3vec3VecBZ_EEB30_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !160 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 333333)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 170         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc5sliceINtNtB7_3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEEINtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 170, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB2X_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEEECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEEECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #45
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SBT_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !guid !168 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %2, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  %i.c = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0B25_(ptr nonnull %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #47 ; 2 uses
  %.not18 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader8

.preheader8:                                      ; preds = %bb.b
  br i1 %.not18, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not18, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit, label %.lr.ph14

.lr.ph:                                           ; preds = %.preheader8, %bb.c
  %.sroa.01.0.i10 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader8 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i10
  %i.e = getelementptr [8 x i8], ptr %0, i64 %.sroa.01.0.i10
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0B25_(ptr nonnull %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #47
  br i1 %i.g, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i10, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit.thread, label %.lr.ph

.lr.ph14:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i13 = phi i64 [ %i.m, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i13
  %i.j = getelementptr [8 x i8], ptr %0, i64 %.sroa.01.1.i13
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0B25_(ptr nonnull %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k) #47
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit

bb.d:                                             ; preds = %.lr.ph14
  %i.m = add nuw nsw i64 %.sroa.01.1.i13, 1       ; 2 uses
  %exitcond21.not = icmp eq i64 %i.m, %1
  br i1 %exitcond21.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit.thread, label %.lr.ph14

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit: ; preds = %.lr.ph, %.lr.ph14, %.preheader8, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader8 ], [ 2, %.preheader ], [ %.sroa.01.1.i13, %.lr.ph14 ], [ %.sroa.01.0.i10, %.lr.ph ] ; 2 uses
  %i.n = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.o, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit
  br i1 %i.c, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit
  %i.p = or i64 %1, 1
  %i.q = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = xor i32 %i.s, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB8_SB17_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.t, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit.thread, %bb.e
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2O_.exit.thread
  %i.u = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.u, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = xor i64 %index, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !alias.scope !171
  %wide.load33 = load <2 x ptr>, ptr %i.z, align 8, !alias.scope !171
  %i.aa = getelementptr i8, ptr %i.y, i64 -8
  %i.ab = getelementptr i8, ptr %i.y, i64 -24
  %wide.load34 = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !172
  %wide.load35 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !172
  %reverse = shufflevector <2 x i64> %wide.load34, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse36 = shufflevector <2 x i64> %wide.load35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %3 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %reverse, ptr %i.x, align 8, !alias.scope !171
  store <2 x i64> %reverse36, ptr %3, align 8, !alias.scope !171
  %4 = getelementptr i8, ptr %i.y, i64 -8
  %5 = getelementptr i8, ptr %i.y, i64 -24
  %reverse37 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse38 = shufflevector <2 x ptr> %wide.load33, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse37, ptr %4, align 8, !alias.scope !172
  store <2 x ptr> %reverse38, ptr %5, align 8, !alias.scope !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ai, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.ad = xor i64 %.sroa.0.016.i.i, -1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.v, i64 %i.ad ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !171, !nonnull !10, !noundef !10
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !172
  store i64 %i.ah, ptr %i.ae, align 8, !alias.scope !171
  store ptr %i.ag, ptr %i.af, align 8, !alias.scope !172
  %i.ai = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.u
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !167
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SBT_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 !guid !180 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %2, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  %i.c = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0B26_(ptr nonnull %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #47 ; 2 uses
  %.not18 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader8

.preheader8:                                      ; preds = %bb.b
  br i1 %.not18, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not18, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit, label %.lr.ph14

.lr.ph:                                           ; preds = %.preheader8, %bb.c
  %.sroa.01.0.i10 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader8 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i10
  %i.e = getelementptr [8 x i8], ptr %0, i64 %.sroa.01.0.i10
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0B26_(ptr nonnull %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #47
  br i1 %i.g, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i10, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit.thread, label %.lr.ph

.lr.ph14:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i13 = phi i64 [ %i.m, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i13
  %i.j = getelementptr [8 x i8], ptr %0, i64 %.sroa.01.1.i13
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0B26_(ptr nonnull %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k) #47
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit

bb.d:                                             ; preds = %.lr.ph14
  %i.m = add nuw nsw i64 %.sroa.01.1.i13, 1       ; 2 uses
  %exitcond21.not = icmp eq i64 %i.m, %1
  br i1 %exitcond21.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit.thread, label %.lr.ph14

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit: ; preds = %.lr.ph, %.lr.ph14, %.preheader8, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader8 ], [ 2, %.preheader ], [ %.sroa.01.1.i13, %.lr.ph14 ], [ %.sroa.01.0.i10, %.lr.ph ] ; 2 uses
  %i.n = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.o, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit
  br i1 %i.c, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit
  %i.p = or i64 %1, 1
  %i.q = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = xor i32 %i.s, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB8_SB17_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.t, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit.thread, %bb.e
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprFieldNCINvMB6_SB12_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss_0E0EB2P_.exit.thread
  %i.u = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.u, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = xor i64 %index, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !alias.scope !183
  %wide.load33 = load <2 x ptr>, ptr %i.z, align 8, !alias.scope !183
  %i.aa = getelementptr i8, ptr %i.y, i64 -8
  %i.ab = getelementptr i8, ptr %i.y, i64 -24
  %wide.load34 = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !184
  %wide.load35 = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !184
  %reverse = shufflevector <2 x i64> %wide.load34, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse36 = shufflevector <2 x i64> %wide.load35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %3 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %reverse, ptr %i.x, align 8, !alias.scope !183
  store <2 x i64> %reverse36, ptr %3, align 8, !alias.scope !183
  %4 = getelementptr i8, ptr %i.y, i64 -8
  %5 = getelementptr i8, ptr %i.y, i64 -24
  %reverse37 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse38 = shufflevector <2 x ptr> %wide.load33, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse37, ptr %4, align 8, !alias.scope !184
  store <2 x ptr> %reverse38, ptr %5, align 8, !alias.scope !184
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ai, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.ad = xor i64 %.sroa.0.016.i.i, -1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.v, i64 %i.ad ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !183, !nonnull !10, !noundef !10
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !184
  store i64 %i.ah, ptr %i.ae, align 8, !alias.scope !183
  store ptr %i.ag, ptr %i.af, align 8, !alias.scope !184
  %i.ai = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.u
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordExprField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !179
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext16path_from_identsARej1_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !188 {
bb.a:
  %.sroa.9.16.copyload = load ptr, ptr %0, align 8, !alias.scope !189, !nonnull !10, !noundef !10
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa_idx, align 8, !alias.scope !189
  %i.a = tail call noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.16.copyload, i64 noundef %.sroa.11.16.copyload)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext16path_from_identsARej2_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !202 {
.lr.ph.i.i:
  %.sroa.6.16.copyload = load ptr, ptr %0, align 8, !alias.scope !203, !nonnull !10, !noundef !10
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !alias.scope !203
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.32.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.4.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.32.copyload = load i64, ptr %.sroa.4.32..sroa.9.16..sroa_idx.sroa_idx, align 8
  %i.a = tail call noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.32.copyload) ]
  %i.b = invoke noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.2.32.copyload, i64 noundef %.sroa.4.32.copyload)
          to label %.loopexit unwind label %bb.a, !noalias !204

.loopexit:                                        ; preds = %.lr.ph.i.i
  %i.c = tail call noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make11path_concat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  ret ptr %i.c

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !205, !noundef !10
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !noalias !205
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.body.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.a) #44
          to label %.body.thread unwind label %bb.c, !noalias !204

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43, !noalias !204
  unreachable

.body.thread:                                     ; preds = %bb.b, %bb.a
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext16path_from_identsARej3_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !218 {
.lr.ph.i.i.preheader:
  %.sroa.6.16.copyload = load ptr, ptr %0, align 8, !alias.scope !219, !nonnull !10, !noundef !10
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !alias.scope !219
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.32.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.4.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.32.copyload = load i64, ptr %.sroa.4.32..sroa.9.16..sroa_idx.sroa_idx, align 8
  %.sroa.5.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.32.copyload = load ptr, ptr %.sroa.5.32..sroa.9.16..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.32.copyload = load i64, ptr %.sroa.6.32..sroa.9.16..sroa_idx.sroa_idx, align 8
  %i.a = tail call noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.32.copyload) ]
  %i.b = invoke noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.2.32.copyload, i64 noundef %.sroa.4.32.copyload)
          to label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.a, !noalias !220

bb.a:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i, %.lr.ph.i.i.preheader
  %.08.i.i.lcssa = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %.08.i.i.lcssa, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !221, !noundef !10
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !noalias !221
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.body.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.08.i.i.lcssa) #44
          to label %.body.thread unwind label %bb.c, !noalias !220

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43, !noalias !220
  unreachable

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.i.i.preheader
  %i.i = tail call noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make11path_concat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.32.copyload) ]
  %i.j = invoke noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.32.copyload, i64 noundef %.sroa.6.32.copyload)
          to label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1 unwind label %bb.a, !noalias !220

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j3_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.k = tail call noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make11path_concat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  ret ptr %i.k

.body.thread:                                     ; preds = %bb.b, %bb.a
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext16path_from_identsARej4_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !234 {
.lr.ph.i.i.preheader:
  %.sroa.6.16.copyload = load ptr, ptr %0, align 8, !alias.scope !235, !nonnull !10, !noundef !10
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8, !alias.scope !235
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.32.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8 ; 2 uses
  %.sroa.4.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.32.copyload = load i64, ptr %.sroa.4.32..sroa.9.16..sroa_idx.sroa_idx, align 8
  %.sroa.5.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.32.copyload = load ptr, ptr %.sroa.5.32..sroa.9.16..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.32.copyload = load i64, ptr %.sroa.6.32..sroa.9.16..sroa_idx.sroa_idx, align 8
  %.sroa.7.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.32.copyload = load ptr, ptr %.sroa.7.32..sroa.9.16..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.8.32..sroa.9.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.8.32.copyload = load i64, ptr %.sroa.8.32..sroa.9.16..sroa_idx.sroa_idx, align 8
  %i.a = tail call noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.16.copyload, i64 noundef %.sroa.8.16.copyload) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.32.copyload) ]
  %i.b = invoke noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.2.32.copyload, i64 noundef %.sroa.4.32.copyload)
          to label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.a, !noalias !236

bb.a:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i, %.lr.ph.i.i.preheader
  %.08.i.i.lcssa = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ %i.k, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1 ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %.08.i.i.lcssa, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !237, !noundef !10
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !noalias !237
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.body.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.08.i.i.lcssa) #44
          to label %.body.thread unwind label %bb.c, !noalias !236

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #43, !noalias !236
  unreachable

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.i.i.preheader
  %i.i = tail call noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make11path_concat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.32.copyload) ]
  %i.j = invoke noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.32.copyload, i64 noundef %.sroa.6.32.copyload)
          to label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1 unwind label %bb.a, !noalias !236

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.k = tail call noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make11path_concat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.32.copyload) ]
  %i.l = invoke noundef nonnull ptr @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10ident_path(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.32.copyload, i64 noundef %.sroa.8.32.copyload)
          to label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.2 unwind label %bb.a, !noalias !236

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.2: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathNCINvMNtNtBe_3ops9try_traitINtB38_17NeverShortCircuitB2a_E10wrap_mut_2B2a_B1X_NCINvNtNtB2g_4make3ext16path_from_identsAB1X_j4_E0E0B3t_E0CsiU5vK8fN4ZC_11ide_assists.exit.i.i.1
  %i.m = tail call noundef nonnull ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast4make11path_concat(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  ret ptr %i.m

.body.thread:                                     ; preds = %bb.b, %bb.a
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext17field_from_identsARej2_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !241 {
.loopexit:
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2R_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.pk, i1 false), !alias.scope !2525, !noalias !2570
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit: ; preds = %bb.an, %bb.ao, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i
  %i.pl = shl nuw nsw i64 %i.iw, 1
  %i.pm = or disjoint i64 %i.pl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit: ; preds = %bb.aj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit
  %.sroa.0.0.i = phi i64 [ %i.pm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit ], [ %i.je, %bb.aj ] ; 2 uses
  %i.pn = icmp ugt i64 %i.in, 1
  br i1 %i.pn, label %bb.ag, label %._crit_edge

bb.az:                                            ; preds = %._crit_edge
  %i.po = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.pp = lshr i64 %.sroa.018.0, 1
  %i.pq = add nuw i64 %i.pp, %.sroa.09.0
  br label %bb.f

bb.ba:                                            ; preds = %._crit_edge
  %i.pr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.pr, 0
  br i1 %.not30, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ps = or i64 %1, 1
  %i.pt = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ps, i1 true)
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 1
  %i.pw = xor i32 %i.pv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.pw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2394
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2598 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #47, !noalias !2599, !inline_history !2574 ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #47, !noalias !2599, !inline_history !2574
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #47, !noalias !2599, !inline_history !2574
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ab = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2574
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600), !noalias !2599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601), !noalias !2599
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2W_.exit.i.thread110 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2602, !noalias !2599
  %wide.load144 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2602, !noalias !2599
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2603, !noalias !2599
  %wide.load146 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2603, !noalias !2599
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2602, !noalias !2599
  store <2 x i64> %reverse147, ptr %6, align 8, !alias.scope !2602, !noalias !2599
  %7 = getelementptr i8, ptr %i.an, i64 -8
  %8 = getelementptr i8, ptr %i.an, i64 -24
  %reverse148 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x ptr> %wide.load144, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse148, ptr %7, align 8, !alias.scope !2603, !noalias !2599
  store <2 x ptr> %reverse149, ptr %8, align 8, !alias.scope !2603, !noalias !2599
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !2602, !noalias !2599, !nonnull !10, !noundef !10
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !2603, !noalias !2599
  store i64 %i.aw, ptr %i.at, align 8, !alias.scope !2602, !noalias !2599
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !2603, !noalias !2599
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2581

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2X_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !10 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.170 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.170
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bu, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2582
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2582
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cm = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cm, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cn, ptr %i.bs
  %i.co = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.co, i1 false), !alias.scope !2605
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.co ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cq = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cs = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq) #47
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %..i17.i = select i1 %i.cs, ptr %i.cq, ptr %i.cr
  %i.cu = load i64, ptr %..i17.i, align 8, !alias.scope !2605, !noalias !2606
  store i64 %i.cu, ptr %i.ct, align 8, !alias.scope !2607, !noalias !2606
  %i.cv = xor i1 %i.cs, true
  %i.cw = zext i1 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cw ; 3 uses
  %i.cy = zext i1 %i.cs to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cy ; 3 uses
  %i.da = icmp eq ptr %i.cx, %i.bs
  %i.db = icmp eq ptr %i.cz, %2
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dj, %.noexc20.i ], [ %i.bs, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dg, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.di, %.noexc20.i ], [ %i.cn, %.critedge.i ] ; 3 uses
  %i.dc = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34) #47
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dd = xor i1 %i.dc, true
  %.sroa.05.0.i.i = select i1 %i.dc, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.de = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !2605, !noalias !2608
  store i64 %i.de, ptr %.sroa.13.1.i, align 8, !alias.scope !2607, !noalias !2608
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cp
  %i.dl = icmp ne ptr %i.di, %i.m
  %or.cond.i19.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.dj, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dg, %.noexc20.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.3.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.do, i1 false), !alias.scope !2605, !noalias !2609
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cp, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dp = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dr, i1 false), !alias.scope !2605, !noalias !2610
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3h_.exit.i
  %i.ds = shl nuw nsw i64 %i.bq, 1
  %i.dt = or disjoint i64 %i.ds, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB30_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit
  %.sroa.0.0.i = phi i64 [ %i.dt, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2Q_.exit ], [ %i.by, %bb.u ] ; 2 uses
  %i.du = icmp ugt i64 %i.bh, 1
  br i1 %i.du, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dw = lshr i64 %.sroa.018.0, 1
  %i.dx = add nuw i64 %i.dw, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dy, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dz = or i64 %1, 1
  %i.ea = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = xor i32 %i.ec, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2582
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2638 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #47, !noalias !2639, !inline_history !2614 ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #47, !noalias !2639, !inline_history !2614
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #47, !noalias !2639, !inline_history !2614
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ab = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2614
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2640), !noalias !2639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641), !noalias !2639
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2M_.exit.i.thread110 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2642, !noalias !2639
  %wide.load144 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2642, !noalias !2639
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2643, !noalias !2639
  %wide.load146 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2643, !noalias !2639
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2642, !noalias !2639
  store <2 x i64> %reverse147, ptr %6, align 8, !alias.scope !2642, !noalias !2639
  %7 = getelementptr i8, ptr %i.an, i64 -8
  %8 = getelementptr i8, ptr %i.an, i64 -24
  %reverse148 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x ptr> %wide.load144, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse148, ptr %7, align 8, !alias.scope !2643, !noalias !2639
  store <2 x ptr> %reverse149, ptr %8, align 8, !alias.scope !2643, !noalias !2639
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !2642, !noalias !2639, !nonnull !10, !noundef !10
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !2643, !noalias !2639
  store i64 %i.aw, ptr %i.at, align 8, !alias.scope !2642, !noalias !2639
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !2643, !noalias !2639
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2621

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2N_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !10 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.170 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.170
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bu, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2622
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2622
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cm = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cm, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cn, ptr %i.bs
  %i.co = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.co, i1 false), !alias.scope !2645
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.co ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cq = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cs = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq) #47
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %..i17.i = select i1 %i.cs, ptr %i.cq, ptr %i.cr
  %i.cu = load i64, ptr %..i17.i, align 8, !alias.scope !2645, !noalias !2646
  store i64 %i.cu, ptr %i.ct, align 8, !alias.scope !2647, !noalias !2646
  %i.cv = xor i1 %i.cs, true
  %i.cw = zext i1 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cw ; 3 uses
  %i.cy = zext i1 %i.cs to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cy ; 3 uses
  %i.da = icmp eq ptr %i.cx, %i.bs
  %i.db = icmp eq ptr %i.cz, %2
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dj, %.noexc20.i ], [ %i.bs, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dg, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.di, %.noexc20.i ], [ %i.cn, %.critedge.i ] ; 3 uses
  %i.dc = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2Fn7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34) #47
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dd = xor i1 %i.dc, true
  %.sroa.05.0.i.i = select i1 %i.dc, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.de = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !2645, !noalias !2648
  store i64 %i.de, ptr %.sroa.13.1.i, align 8, !alias.scope !2647, !noalias !2648
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cp
  %i.dl = icmp ne ptr %i.di, %i.m
  %or.cond.i19.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB37_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.dj, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dg, %.noexc20.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.3.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.do, i1 false), !alias.scope !2645, !noalias !2649
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cp, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dp = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dr, i1 false), !alias.scope !2645, !noalias !2650
  resume { ptr, i32 } %lpad.phi.i

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2F_:bb.a

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2Q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit
  %.sroa.0.0.i = phi i64 [ %i.dt, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2G_.exit ], [ %i.by, %bb.u ] ; 2 uses
  %i.du = icmp ugt i64 %i.bh, 1
  br i1 %i.du, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dw = lshr i64 %.sroa.018.0, 1
  %i.dx = add nuw i64 %i.dw, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dy, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dz = or i64 %1, 1
  %i.ea = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = xor i32 %i.ec, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2622
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3v_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2679 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [66 x i8], align 1                ; 4 uses
  %i.f = alloca [528 x i8], align 8               ; 4 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i64 4611686018427387904, %1
  %i.i = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.i, 0
  %i.j = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.h, %i.j         ; 2 uses
  %i.k = icmp samesign ult i64 %1, 4097
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %1, 1
  %i.n = sub nuw nsw i64 %1, %i.m
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not5.i216 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i221 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ay, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ay ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gn, %bb.ay ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gl, %bb.ay ] ; 3 uses
  %i.o = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.p = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.p, label %.lr.ph150, label %._crit_edge

.lr.ph150:                                        ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.r = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %.not.i31 = icmp ult i64 %i.r, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.t = icmp samesign ult i64 %i.r, 2
  br i1 %i.t, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val10.i = load ptr, ptr %i.u, align 8, !alias.scope !2680, !nonnull !10, !noundef !10 ; 3 uses
  %.val11.i = load ptr, ptr %i.s, align 8, !alias.scope !2680
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.val10.i, ptr %.val11.i) #47, !noalias !2681, !inline_history !2655 ; 2 uses
  %.not157 = icmp eq i64 %i.r, 2                  ; 2 uses
  br i1 %i.v, label %.preheader, label %.preheader77

.preheader77:                                     ; preds = %bb.k
  br i1 %.not157, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not157, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219, label %.lr.ph144

.lr.ph:                                           ; preds = %.preheader77, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader77 ]
  %.sroa.01.0.i.i140 = phi i64 [ %i.y, %bb.l ], [ 2, %.preheader77 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.01.0.i.i140
  %.val8.i = load ptr, ptr %i.w, align 8, !alias.scope !2680, !nonnull !10, !noundef !10 ; 2 uses
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.val8.i, ptr nonnull %.val9.i) #47, !noalias !2681, !inline_history !2655
  br i1 %i.x, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.y = add nuw i64 %.sroa.01.0.i.i140, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, label %.lr.ph

.lr.ph144:                                        ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i143 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.01.1.i.i143
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !2680, !nonnull !10, !noundef !10 ; 2 uses
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0B2v_(ptr nonnull %.val.i, ptr nonnull %.val7.i) #47, !noalias !2681, !inline_history !2655
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i

bb.m:                                             ; preds = %.lr.ph144
  %i.ab = add nuw i64 %.sroa.01.1.i.i143, 1       ; 2 uses
  %exitcond198.not = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond198.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i, label %.lr.ph144

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph144
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i143, %.lr.ph144 ], [ %i.r, %bb.m ], [ %.sroa.01.0.i.i140, %.lr.ph ], [ %i.r, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.r
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219: ; preds = %.preheader
  br i1 %.not5.i221, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread: ; preds = %.preheader77
  br i1 %.not5.i216, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.r, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.r, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %i.s, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2655
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i6972 = phi i64 [ %i.r, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread ], [ %.sroa.0.0.i.i217224228, %middle.block ], [ %.sroa.0.0.i.i217224228, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i6972, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682), !noalias !2683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684), !noalias !2683
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219 ] ; 4 uses
  %.sroa.0.0.i.i217224228 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3C_.exit.i.thread219 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.0.0.i.i217224228 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2685, !noalias !2683
  %wide.load309 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2685, !noalias !2683
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load310 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2686, !noalias !2683
  %wide.load311 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2686, !noalias !2683
  %reverse = shufflevector <2 x i64> %wide.load310, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse312 = shufflevector <2 x i64> %wide.load311, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2685, !noalias !2683
  store <2 x i64> %reverse312, ptr %6, align 8, !alias.scope !2685, !noalias !2683
  %7 = getelementptr i8, ptr %i.an, i64 -8
  %8 = getelementptr i8, ptr %i.an, i64 -24
  %reverse313 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse314 = shufflevector <2 x ptr> %wide.load309, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse313, ptr %7, align 8, !alias.scope !2686, !noalias !2683
  store <2 x ptr> %reverse314, ptr %8, align 8, !alias.scope !2686, !noalias !2683
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !2685, !noalias !2683, !nonnull !10, !noundef !10
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !2686, !noalias !2683
  store i64 %i.aw, ptr %i.at, align 8, !alias.scope !2685, !noalias !2683
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !2686, !noalias !2683
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2662

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3D_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTree7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph150, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit
  %.sroa.02.1149 = phi i64 [ %.sroa.02.0, %.lr.ph150 ], [ %i.bh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 2 uses
  %.sroa.023.1148 = phi i64 [ %.sroa.023.0, %.lr.ph150 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.1149, -1              ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1148, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1149, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.o, label %bb.ay, label %bb.az

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !10 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.1148, 1             ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.1148 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.1148
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bu, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2663
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2663
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cm = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cm, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cn, ptr %i.bs
  %i.co = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.co, i1 false), !alias.scope !2689
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.co ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.ef, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.eh, %.noexc.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.eb, %.noexc.i ], [ %i.q, %.critedge.i ]
  %i.cq = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !2688, !noalias !2690, !nonnull !10, !noundef !10 ; 5 uses
  %.val12.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !2687, !noalias !2690 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 60
  %i.ct = load i8, ptr %i.cs, align 4, !range !13, !noalias !2689, !noundef !10
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %.preheader.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.cw = load i32, ptr %i.cv, align 8, !noalias !2689, !noundef !10
  br label %.noexc58

bb.ab:                                            ; preds = %.preheader.i
  %i.cx = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val.i.i)
          to label %.noexc58 unwind label %.loopexit.i.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i43 = phi i32 [ %i.cw, %bb.aa ], [ %i.cx, %bb.ab ] ; 2 uses
  %i.cy = load i64, ptr %.val.i.i, align 8, !range !11, !noalias !2689, !noundef !10
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.da = trunc nuw i64 %i.cy to i1
  %i.db = load ptr, ptr %i.cz, align 8, !noalias !2689, !nonnull !10, !noundef !10 ; 2 uses
  br i1 %i.da, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.noexc58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !2689, !noundef !10 ; 2 uses
  %i.de = icmp ugt i64 %i.dd, 4294967295
  %i.df = shl nuw i64 %i.dd, 32
  %.sroa.09.0.insert.insert.i.i.i.i54 = select i1 %i.de, i64 513, i64 %i.df ; 2 uses
  %i.dg = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i54 to i1
  br i1 %i.dg, label %bb.ad, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i55, !prof !14

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2689
  br label %.invoke

.invoke:                                          ; preds = %bb.aj, %bb.ad
  %.sink = phi ptr [ %i.a, %bb.aj ], [ %i.b, %bb.ad ] ; 2 uses
  store i8 2, ptr %.sink, align 1, !noalias !2689
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #42
          to label %.cont unwind label %.loopexit.i.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i55: ; preds = %bb.ac
  %.sroa.6.0.extract.shift.i.i.i.i.i56 = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i54, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i57 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i56 to i32
  br label %bb.af

bb.ae:                                            ; preds = %.noexc58
  %i.dh = load i32, ptr %i.db, align 8, !noalias !2689, !noundef !10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i55
  %.sroa.02.0.i.i.i44 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i57, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i55 ], [ %i.dh, %bb.ae ]
  %i.di = xor i32 %.sroa.0.0.i.i.i43, -1
  %.not.i.i.i45 = icmp ugt i32 %.sroa.02.0.i.i.i44, %i.di
  br i1 %.not.i.i.i45, label %.invoke315, label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00B9_.exit.i46, !prof !14

.invoke315:                                       ; preds = %bb.al, %bb.af
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #42
          to label %.cont316 unwind label %.loopexit.i.loopexit.split-lp.loopexit.split-lp

.cont316:                                         ; preds = %.invoke315
  unreachable

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00B9_.exit.i46: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ], !noalias !2689
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3v_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.gh, i1 false), !alias.scope !2689, !noalias !2693
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3X_.exit.i
  %i.gi = shl nuw nsw i64 %i.bq, 1
  %i.gj = or disjoint i64 %i.gi, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3G_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit
  %.sroa.0.0.i = phi i64 [ %i.gj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3w_.exit ], [ %i.by, %bb.u ] ; 2 uses
  %i.gk = icmp ugt i64 %i.bh, 1
  br i1 %i.gk, label %bb.r, label %._crit_edge

bb.ay:                                            ; preds = %._crit_edge
  %i.gl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gm = lshr i64 %.sroa.018.0, 1
  %i.gn = add nuw i64 %i.gm, %.sroa.09.0
  br label %bb.f

bb.az:                                            ; preds = %._crit_edge
  %i.go = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.go, 0
  br i1 %.not30, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gp = or i64 %1, 1
  %i.gq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.gp, i1 true)
  %i.gr = trunc nuw nsw i64 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 1
  %i.gt = xor i32 %i.gs, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21remove_unused_imports21remove_unused_importss2_00E0EB3F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2663
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %bb.bb
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2K_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2721 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit
  %.sroa.021.0 = phi i8 [ %i.bg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #47, !noalias !2722, !inline_history !2697 ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u) #47, !noalias !2722, !inline_history !2697
  br i1 %i.v, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.ab, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #47, !noalias !2722, !inline_history !2697
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ab = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i, label %.lr.ph66

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2697
  %i.ae = shl nuw nsw i64 %..i36, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2723), !noalias !2722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724), !noalias !2722
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110, %bb.q
  %i.aj = phi i64 [ %i.ai, %bb.q ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB12_E0E0EB2R_.exit.i.thread110 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !2725, !noalias !2722
  %wide.load144 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !2725, !noalias !2722
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2726, !noalias !2722
  %wide.load146 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2726, !noalias !2722
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !2725, !noalias !2722
  store <2 x i64> %reverse147, ptr %6, align 8, !alias.scope !2725, !noalias !2722
  %7 = getelementptr i8, ptr %i.an, i64 -8
  %8 = getelementptr i8, ptr %i.an, i64 -24
  %reverse148 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x ptr> %wide.load144, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse148, ptr %7, align 8, !alias.scope !2726, !noalias !2722
  store <2 x ptr> %reverse149, ptr %8, align 8, !alias.scope !2726, !noalias !2722
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ax, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.ak, i64 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !2725, !noalias !2722, !nonnull !10, !noundef !10
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !2726, !noalias !2722
  store i64 %i.aw, ptr %i.at, align 8, !alias.scope !2725, !noalias !2722
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !2726, !noalias !2722
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2704

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB13_E0E0EB2S_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ba = sub nsw i64 %factor, %i.ay
  %i.bb = add nuw nsw i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bh, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !10 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.170 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.170
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.by = shl nuw nsw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB16_E0E0EB2V_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bu, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2705
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2U_(ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2705
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cm = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cm, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cn, ptr %i.bs
  %i.co = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.co, i1 false), !alias.scope !2728
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.co ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cq = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cs = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq) #47
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %..i17.i = select i1 %i.cs, ptr %i.cq, ptr %i.cr
  %i.cu = load i64, ptr %..i17.i, align 8, !alias.scope !2728, !noalias !2729
  store i64 %i.cu, ptr %i.ct, align 8, !alias.scope !2730, !noalias !2729
  %i.cv = xor i1 %i.cs, true
  %i.cw = zext i1 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cw ; 3 uses
  %i.cy = zext i1 %i.cs to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cy ; 3 uses
  %i.da = icmp eq ptr %i.cx, %i.bs
  %i.db = icmp eq ptr %i.cz, %2
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.dj, %.noexc20.i ], [ %i.bs, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dg, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.di, %.noexc20.i ], [ %i.cn, %.critedge.i ] ; 3 uses
  %i.dc = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7Variant7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34) #47
          to label %.noexc20.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.dd = xor i1 %i.dc, true
  %.sroa.05.0.i.i = select i1 %i.dc, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.de = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !2728, !noalias !2731
  store i64 %i.de, ptr %.sroa.13.1.i, align 8, !alias.scope !2730, !noalias !2731
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cp
  %i.dl = icmp ne ptr %i.di, %i.m
  %or.cond.i19.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB1a_E0E0EB3c_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.dj, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dg, %.noexc20.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.3.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.do, i1 false), !alias.scope !2728, !noalias !2732
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7VariantNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBX_E0E0EB2L_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cp, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dp = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dr, i1 false), !alias.scope !2728, !noalias !2733
  resume { ptr, i32 } %lpad.phi.i

end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2R_:bb.a
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2744
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2803 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !2804, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !2804, !nonnull !10, !noundef !10
  %i.r = load i64, ptr %.val10.i, align 8, !range !23, !noalias !2805, !noundef !10
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.s = load i64, ptr %.val11.i, align 8, !range !23, !noalias !2805, !noundef !10
  %switch.gep170 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.s
  %switch.load171 = load i8, ptr %switch.gep170, align 1
  %i.t = icmp ult i8 %switch.load, %switch.load171 ; 2 uses
  %.not87 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.t, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %switch.lookup
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %switch.lookup
  br i1 %.not87, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader59, %bb.k
  %.val9.i = phi ptr [ %.val8.i, %bb.k ], [ %.val10.i, %.preheader59 ]
  %.sroa.01.0.i.i72 = phi i64 [ %i.aa, %bb.k ], [ 2, %.preheader59 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72
  %i.v = add nsw i64 %.sroa.01.0.i.i72, -1
  %i.w = icmp ult i64 %i.v, %i.n
  tail call void @llvm.assume(i1 %i.w)
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !2804, !nonnull !10, !align !15, !noundef !10 ; 2 uses
  %i.x = load i64, ptr %.val8.i, align 8, !range !23, !noalias !2805, !noundef !10
  %switch.gep154 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.x
  %switch.load155 = load i8, ptr %switch.gep154, align 1
  %i.y = load i64, ptr %.val9.i, align 8, !range !23, !noalias !2805, !noundef !10
  %switch.gep174 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.y
  %switch.load175 = load i8, ptr %switch.gep174, align 1
  %i.z = icmp ult i8 %switch.load155, %switch.load175
  br i1 %i.z, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.sroa.01.0.i.i72, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.l
  %.val7.i = phi ptr [ %.val.i, %bb.l ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i74 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74
  %i.ac = add nsw i64 %.sroa.01.1.i.i74, -1
  %i.ad = icmp ult i64 %i.ac, %i.n
  tail call void @llvm.assume(i1 %i.ad)
  %.val.i = load ptr, ptr %i.ab, align 8, !alias.scope !2804, !nonnull !10, !align !15, !noundef !10 ; 2 uses
  %i.ae = load i64, ptr %.val.i, align 8, !range !23, !noalias !2805, !noundef !10
  %switch.gep158 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.ae
  %switch.load159 = load i8, ptr %switch.gep158, align 1
  %i.af = load i64, ptr %.val7.i, align 8, !range !23, !noalias !2805, !noundef !10
  %switch.gep178 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.af
  %switch.load179 = load i8, ptr %switch.gep178, align 1
  %i.ag = icmp ult i8 %switch.load159, %switch.load179
  br i1 %i.ag, label %bb.l, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i

bb.l:                                             ; preds = %.lr.ph75
  %i.ah = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond96.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i, label %.lr.ph75

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.n, %bb.l ], [ %.sroa.01.0.i.i72, %.lr.ph ], [ %i.n, %bb.k ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread: ; preds = %.preheader59
  br i1 %.not5.i114, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.m:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i
  br i1 %i.t, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.n:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

bb.o:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2783
  %i.ak = shl nuw nsw i64 %..i35, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %middle.block, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i5356 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %middle.block ], [ %.sroa.0.0.i.i115122126, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i5356, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit

bb.p:                                             ; preds = %bb.m
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806), !noalias !2807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808), !noalias !2807
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117, %bb.p
  %i.ap = phi i64 [ %i.ao, %bb.p ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB33_.exit.i.thread117 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i115122126 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 4
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %n.vec = and i64 %i.ap, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !2809, !noalias !2807
  %wide.load147 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !2809, !noalias !2807
  %i.av = getelementptr i8, ptr %i.at, i64 -8
  %i.aw = getelementptr i8, ptr %i.at, i64 -24
  %wide.load148 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !2810, !noalias !2807
  %wide.load149 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !2810, !noalias !2807
  %reverse = shufflevector <2 x i64> %wide.load148, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse150 = shufflevector <2 x i64> %wide.load149, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x i64> %reverse, ptr %i.as, align 8, !alias.scope !2809, !noalias !2807
  store <2 x i64> %reverse150, ptr %6, align 8, !alias.scope !2809, !noalias !2807
  %7 = getelementptr i8, ptr %i.at, i64 -8
  %8 = getelementptr i8, ptr %i.at, i64 -24
  %reverse151 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse152 = shufflevector <2 x ptr> %wide.load147, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse151, ptr %7, align 8, !alias.scope !2810, !noalias !2807
  store <2 x ptr> %reverse152, ptr %8, align 8, !alias.scope !2810, !noalias !2807
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !2789

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bd, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i.preheader ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.016.i.i, -1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.aq, i64 %i.ay ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !2809, !noalias !2807, !nonnull !10, !align !15, !noundef !10
  %i.bc = load i64, ptr %i.ba, align 8, !alias.scope !2810, !noalias !2807
  store i64 %i.bc, ptr %i.az, align 8, !alias.scope !2809, !noalias !2807
  store ptr %i.bb, ptr %i.ba, align 8, !alias.scope !2810, !noalias !2807
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, !llvm.loop !2790

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB34_.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCshzWfHUSfYae_4core5sliceSRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParam7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.al, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph80, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit
  %.sroa.02.179 = phi i64 [ %.sroa.02.0, %.lr.ph80 ], [ %i.bn, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 2 uses
  %.sroa.023.178 = phi i64 [ %.sroa.023.0, %.lr.ph80 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 4 uses
  %i.bn = add i64 %.sroa.02.179, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.178, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.179, %bb.q ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !10 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 8 uses
  %i.bv = lshr i64 %.sroa.023.178, 1              ; 6 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 4 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx ; 6 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.178 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.178
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 1152921504606846976) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2791
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2791
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  %i.cq = icmp eq i64 %i.bu, 0
  %i.cr = icmp eq i64 %i.bv, 0
  %or.cond.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 range(i64 0, -9223372036854775808) %i.bu) ; 2 uses
  %i.cs = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cs, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bu, %i.bv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ct, ptr %i.by
  %i.cu = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cu, i1 false), !alias.scope !2813
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cw = phi ptr [ %i.dj, %.preheader.i ], [ %i.cv, %.critedge.i ]
  %i.cx = phi ptr [ %i.dh, %.preheader.i ], [ %i.ct, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.da, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8 ; 3 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 -8 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !2812, !noalias !2814, !nonnull !10, !align !15, !noundef !10
  %.val12.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !2811, !noalias !2814, !nonnull !10, !noundef !10
  %i.db = load i64, ptr %.val.i.i, align 8, !range !23, !noalias !2815, !noundef !10
  %switch.gep162 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.db
  %switch.load163 = load i8, ptr %switch.gep162, align 1
  %i.dc = load i64, ptr %.val12.i.i, align 8, !range !23, !noalias !2815, !noundef !10
  %switch.gep182 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dc
  %switch.load183 = load i8, ptr %switch.gep182, align 1
  %i.dd = icmp ult i8 %switch.load163, %switch.load183 ; 3 uses
  %.val189 = load i64, ptr %i.cy, align 8
  %.val190 = load i64, ptr %i.cz, align 8
  %i.de = select i1 %i.dd, i64 %.val189, i64 %.val190
  store i64 %i.de, ptr %i.da, align 8, !alias.scope !2811, !noalias !2814
  %i.df = xor i1 %i.dd, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 3 uses
  %i.di = zext i1 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.di ; 3 uses
  %i.dk = icmp eq ptr %i.dh, %i.by
  %i.dl = icmp eq ptr %i.dj, %2
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dm = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.by, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %i.ct, %.critedge.i ] ; 3 uses
  %i.dn = phi ptr [ %i.du, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !2811, !noalias !2816, !nonnull !10, !align !15, !noundef !10
  %.val.i19.i = load ptr, ptr %i.dn, align 8, !alias.scope !2812, !noalias !2816, !nonnull !10, !noundef !10
  %i.do = load i64, ptr %.sroa.0.0.val.i.i, align 8, !range !23, !noalias !2817, !noundef !10
  %switch.gep166 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.do
  %switch.load167 = load i8, ptr %switch.gep166, align 1
  %i.dp = load i64, ptr %.val.i19.i, align 8, !range !23, !noalias !2817, !noundef !10
  %switch.gep186 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.dp
  %switch.load187 = load i8, ptr %switch.gep186, align 1
  %i.dq = icmp ult i8 %switch.load167, %switch.load187 ; 3 uses
  %i.dr = xor i1 %i.dq, true
  %.sroa.0.02.i.i.val = load i64, ptr %.sroa.0.02.i.i, align 8
  %.val = load i64, ptr %i.dn, align 8
  %i.ds = select i1 %i.dq, i64 %.sroa.0.02.i.i.val, i64 %.val
  store i64 %i.ds, ptr %i.dm, align 8, !alias.scope !2811, !noalias !2816
  %i.dt = zext i1 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dt ; 3 uses
  %i.dv = zext i1 %i.dq to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dy = icmp ne ptr %i.du, %i.cv
  %i.dz = icmp ne ptr %i.dw, %i.m
  %or.cond.i24.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i24.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.cv, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.du, %.lr.ph.i.i ] ; 2 uses
  %i.ea = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eb = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ec = sub nuw i64 %i.ea, %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ec, i1 false), !alias.scope !2813, !noalias !2818
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB3o_.exit.i
  %i.ed = shl nuw nsw i64 %i.bw, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB37_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit
  %.sroa.0.0.i = phi i64 [ %i.ee, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2X_.exit ], [ %i.ce, %bb.t ] ; 2 uses
  %i.ef = icmp ugt i64 %i.bn, 1
end_hunk_4
