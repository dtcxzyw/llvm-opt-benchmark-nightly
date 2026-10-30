Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12file_pointerNtB4_11LocatorInfo21clear_encryptedDigest
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12file_pointerNtB4_11LocatorInfo21clear_encryptedDigest(ptr noalias nofree noundef align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12file_pointer12locator_info14IntegrityCheckEEB17_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.a, align 8
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMsc_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB5_19BubbleGradientColor3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 12)) %0, i32 noundef %1, float noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %1, -16777217
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oge float %2, 0.000000e+00
  %i.c = fcmp ole float %2, 1.000000e+00
  %spec.select.i = and i1 %i.b, %i.c
  br i1 %spec.select.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 21, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 22, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %2, ptr %i.e, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2_19BubbleGradientColorNtNtB6_9serialize14SerializeOrder13serialize_cmp(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.e = fcmp ugt float %i.b, %i.d
  %i.f = fcmp ult float %i.b, %i.d                ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.e, !prof !9

bb.c:                                             ; preds = %bb.a
  %. = sext i1 %i.f to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i8 [ %., %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackupNtB5_8MetadataNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.c = load i32, ptr %i.b, align 8, !range !10, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.l = load i32, ptr %i.e, align 4, !range !10, !noundef !5
  %i.m = load i32, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = trunc nuw i32 %i.l to i1
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.m, label %bb.d [
    i32 8, label %bb.e
    i32 18, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef align 8 ptr @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not11 = icmp eq ptr %i.o, null
  br i1 %.not11, label %bb.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.p = load i32, ptr %i.a, align 8, !range !10, !noundef !5
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.r = call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message32read_singular_message_into_fieldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.i, label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.h, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.u, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.v = load i32, ptr %i.b, align 8, !range !10, !noundef !5
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.b, %._crit_edge, %bb.g
  %.sroa.0.1 = phi ptr [ %i.t, %bb.g ], [ %i.k, %._crit_edge ], [ %i.o, %bb.d ], [ %i.r, %bb.f ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackupNtB5_8MetadataNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = trunc nuw nsw i32 %i.e to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 38, %i.f
  %i.g = udiv i8 %.lhs.trunc.i.i, 7
  %narrow.i = add nuw nsw i8 %i.g, 1
  %i.h = zext nneg i8 %narrow.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !align !6, !noundef !5 ; 5 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 4 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = or i64 %i.l, 1
  %i.p = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %.lhs.trunc.i.i11 = sub nuw nsw i8 70, %i.q
  %i.r = udiv i8 %.lhs.trunc.i.i11, 7
  %.zext.i.i = zext nneg i8 %i.r to i64
  %i.s = add nuw i64 %i.l, 1
  %1 = add nuw i64 %i.s, %.zext.i.i               ; 2 uses
  %i.t = add nuw i64 %1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %.sroa.0.0.i.a = phi i64 [ 0, %bb.d ], [ %1, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 4 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = or i64 %i.v, 1
  %i.z = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %.lhs.trunc.i10.i = sub nuw nsw i8 70, %i.aa
  %i.ab = udiv i8 %.lhs.trunc.i10.i, 7
  %.zext.i11.i = zext nneg i8 %i.ab to i64
  %i.ac = add i64 %i.v, %.sroa.0.0.i
  %i.ad = add i64 %i.ac, %.zext.i11.i             ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.sroa.0.0.i.a
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i.a, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ag = tail call noundef i64 @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
  %i.ah = add i64 %i.ag, %.sroa.0.1.i             ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.0.1.i
  br i1 %i.ai, label %bb.j, label %_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size.exit: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ak = trunc i64 %i.ah to i32
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.aj, i32 noundef %i.ak)
  %i.al = or i64 %i.ah, 1
  %i.am = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = trunc nuw nsw i64 %i.am to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.an
  %i.ao = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.ao to i64              ; 2 uses
  %i.ap = add i64 %i.ah, 1
  %i.aq = add i64 %i.ap, %.zext                   ; 2 uses
  %.not10 = icmp ugt i64 %i.aq, %.zext
  br i1 %.not10, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.l, %bb.c
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.c ], [ %i.au, %bb.l ] ; 2 uses
  %i.ar = tail call noundef i64 @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.as = add i64 %i.ar, %.sroa.0.1               ; 3 uses
  %i.at = icmp ult i64 %i.as, %.sroa.0.1
  br i1 %i.at, label %bb.p, label %bb.o

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size.exit
  %i.au = add i64 %i.aq, %.sroa.0.0               ; 2 uses
  %i.av = icmp ult i64 %i.au, %.sroa.0.0
  br i1 %i.av, label %bb.n, label %bb.k

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size.exit
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = trunc i64 %i.as to i32
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.aw, i32 noundef %i.ax)
  ret i64 %i.as

bb.p:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackupNtB5_8MetadataNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i32 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !5 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEB1o_(i32 noundef 2, ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.d, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackupNtB5_8MetadataNtNtCsh1373Z0TDxr_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(32) initializes((24, 28)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !align !6, !noundef !5 ; 10 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEEB1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val)
          to label %.body.i.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %.body4.i.i.i unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body4.i.i.i unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit6.i.i.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

.body4.i.i.i:                                     ; preds = %bb.j, %bb.g, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.l, %bb.j ], [ %i.i, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.val2.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !47, !align !6, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val2.i.i.i) #18
          to label %.body unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit6.i.i.i: ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !47, !align !6, !noundef !5 ; 4 uses
  %i.n = icmp eq ptr %.val.i.i.i, null
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEB1h_.exit.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit6.i.i.i
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #19
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i: ; preds = %bb.k
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEB1h_.exit.i

bb.m:                                             ; preds = %.body4.i.i.i, %.body.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.l, %.body4.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackupNtB5_8MetadataNtNtCsh1373Z0TDxr_8protobuf7message7Message5clear:bb.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEB1h_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit6.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 64, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEEB1D_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEEB1D_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadata17EncryptedBackupIdEEB1h_.exit.i, %bb.a
  store ptr null, ptr %i.b, align 8
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.d = load i32, ptr %i.c, align 8, !range !10, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.sroa.328.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.431.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.l = load i32, ptr %i.f, align 4, !range !10, !noundef !5
  %i.m = load i32, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = trunc nuw i32 %i.l to i1
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.m, label %bb.d [
    i32 10, label %bb.e
    i32 18, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef align 8 ptr @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.m, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.p = load i64, ptr %i.b, align 8, !range !11, !noundef !5 ; 3 uses
  %i.q = icmp eq i64 %i.p, -1
  %i.r = load ptr, ptr %.sroa.438.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.s = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  %i.u = load ptr, ptr %.sroa.440.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.t, label %bb.o, label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.v, %bb.i ]
  store i64 %i.p, ptr %0, align 8
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx14, align 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx16, align 8
  br label %bb.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.j
  store i64 %i.p, ptr %0, align 8
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx14, align 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx16, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit48, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.y = load i32, ptr %i.c, align 8, !range !10, !noundef !5
  %i.z = trunc nuw i32 %i.y to i1
  br i1 %i.z, label %._crit_edge, label %bb.b

bb.n:                                             ; preds = %.body46, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body47, %.body46 ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.p:                                             ; preds = %bb.f
  %.sroa.541.0.copyload = load i64, ptr %.sroa.541.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body46 unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit48 unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %bb.q, %bb.t
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.ac, %bb.t ], [ %i.aa, %bb.q ]
  store i64 %i.s, ptr %i.h, align 8
  store ptr %i.u, ptr %.sroa.328.0..sroa_idx29, align 8
  store i64 %.sroa.541.0.copyload, ptr %.sroa.431.0..sroa_idx32, align 8
  br label %bb.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit48: ; preds = %bb.r
  store i64 %i.s, ptr %i.h, align 8
  store ptr %i.u, ptr %.sroa.328.0..sroa_idx29, align 8
  store i64 %.sroa.541.0.copyload, ptr %.sroa.431.0..sroa_idx32, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge, %bb.o, %bb.g
  %.sroa.0.1 = phi ptr [ %i.r, %bb.g ], [ %i.k, %._crit_edge ], [ %i.u, %bb.o ], [ %i.o, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %i.b, 1
  %i.f = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i8
  %.lhs.trunc.i = sub nuw nsw i8 70, %i.g
  %i.h = udiv i8 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i8 %i.h to i64
  %i.i = add nuw i64 %i.b, 1
  %1 = add nuw i64 %i.i, %.zext.i                 ; 2 uses
  %i.j = add nuw i64 %1, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ %i.j, %bb.b ]
  %.sroa.0.0.a = phi i64 [ 0, %bb.a ], [ %1, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 4 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.l, 1
  %i.p = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %.lhs.trunc.i10 = sub nuw nsw i8 70, %i.q
  %i.r = udiv i8 %.lhs.trunc.i10, 7
  %.zext.i11 = zext nneg i8 %i.r to i64
  %i.s = add i64 %.sroa.0.0, %i.l
  %i.t = add i64 %i.s, %.zext.i11                 ; 2 uses
  %i.u = icmp ult i64 %i.t, %.sroa.0.0.a
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.a, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = tail call noundef i64 @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v)
  %i.x = add i64 %i.w, %.sroa.0.1                 ; 3 uses
  %i.y = icmp ult i64 %i.x, %.sroa.0.1
  br i1 %i.y, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = trunc i64 %i.x to i32
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.z, i32 noundef %i.aa)
  ret i64 %i.x

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.i) ; 2 uses
  %.not11 = icmp eq ptr %i.n, null
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.d ], [ %i.g, %bb.b ], [ %i.p, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto11LocalBackup8metadataNtB5_17EncryptedBackupIdNtNtCsh1373Z0TDxr_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(64) initializes((16, 24), (40, 48)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs0_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12file_pointerNtB5_11LocatorInfoNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.j = load i32, ptr %i.i, align 8, !range !10, !noundef !5
  %i.k = trunc nuw i32 %i.j to i1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %.sroa.6103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.7106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %.sroa.673.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.776.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.sroa.640.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx41.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.sroa.640.sroa.7.0..sroa.640.0..sroa_idx41.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.sroa.3.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %i.ad = load i32, ptr %i.l, align 4, !range !10, !noundef !5
  %i.ae = load i32, ptr %i.m, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.af = trunc nuw i32 %i.ad to i1
  br i1 %i.af, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.ae, label %bb.d [
    i32 10, label %bb.e
    i32 82, label %bb.f
    i32 90, label %bb.g
    i32 24, label %bb.h
    i32 34, label %bb.i
    i32 40, label %bb.j
    i32 48, label %bb.k
    i32 56, label %bb.l
    i32 74, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = call noundef align 8 ptr @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.t, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ah = load i64, ptr %i.h, align 8, !range !11, !noundef !5 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -1
  %i.aj = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.ak = load i64, ptr %i.g, align 8, !range !11, !noundef !5 ; 3 uses
  %i.al = icmp eq i64 %i.ak, -1
  %i.am = load ptr, ptr %.sroa.4116.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.al, label %bb.v, label %bb.w

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.an = load i64, ptr %i.f, align 8, !range !11, !noundef !5 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -1
  %i.ap = load ptr, ptr %.sroa.4119.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ao, label %bb.z, label %bb.aa

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.aq = load i32, ptr %i.e, align 8, !range !10, !noundef !5
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %bb.ad, label %bb.ae

bb.i:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_RNvXs6_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleTNtB5_13CustomColorIdNtB5_15CustomChatColorEINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtNtBb_5proto6backup10chat_style15CustomChatColorE8try_from:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.f

bb.k:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.r, align 8
  store i64 0, ptr %0, align 8
  %.val = load ptr, ptr %i.c, align 8, !align !6, !noundef !5 ; 4 uses
  %i.s = icmp eq ptr %.val, null
  br i1 %i.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i51 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #19
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i51: ; preds = %bb.l
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i51, %bb.k, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_styleNtB5_15CustomChatColorNtNtCsh1373Z0TDxr_8protobuf7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.737 = alloca [56 x i8], align 8          ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.d = load i32, ptr %i.c, align 8, !range !10, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.634.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.737.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.m = load i32, ptr %i.f, align 4, !range !10, !noundef !5
  %i.n = load i32, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = trunc nuw i32 %i.m to i1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.n, label %bb.d [
    i32 8, label %bb.e
    i32 21, label %bb.f
    i32 26, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef align 8 ptr @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.q = call { i64, ptr } @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %.loopexit, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream12read_fixed32(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.u = load i32, ptr %i.b, align 8, !range !10, !noundef !5
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB3_16CodedInputStream12read_messageNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style8GradientEB1v_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.w = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.x, label %bb.o, label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.s to i64
  store i64 %i.z, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.r, %bb.m, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(112) %1) #22
  %i.aa = load i32, ptr %i.c, align 8, !range !10, !noundef !5
  %i.ab = trunc nuw i32 %i.aa to i1
  br i1 %i.ab, label %._crit_edge, label %bb.b

bb.j:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.h, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style17custom_chat_color5ColorEEB17_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %0, align 8
  store i32 %i.ae, ptr %.sroa.634.0..sroa_idx35, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i64 -1, ptr %0, align 8
  store i32 %i.ae, ptr %.sroa.634.0..sroa_idx35, align 8
  br label %bb.i

bb.n:                                             ; preds = %bb.q, %bb.l
  %.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %i.ag, %bb.q ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.737)
  br label %.loopexit

bb.p:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.737, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.543.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style17custom_chat_color5ColorEEB17_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store i64 %i.w, ptr %0, align 8
  store ptr %i.y, ptr %.sroa.634.0..sroa_idx35, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.737.0..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.737, i64 56, i1 false)
  br label %bb.n

bb.r:                                             ; preds = %bb.p
  store i64 %i.w, ptr %0, align 8
  store ptr %i.y, ptr %.sroa.634.0..sroa_idx35, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.737.0..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.737, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.737)
  br label %bb.i

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.b, %._crit_edge, %bb.o, %bb.j
  %.sroa.0.1 = phi ptr [ %i.y, %bb.o ], [ %i.l, %._crit_edge ], [ %i.ad, %bb.j ], [ %i.p, %bb.d ], [ %i.s, %bb.e ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_styleNtB5_15CustomChatColorNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i64 %i.b, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i8
  %.lhs.trunc.i.i = sub nuw nsw i8 70, %i.f
  %i.g = udiv i8 %.lhs.trunc.i.i, 7
  %narrow.i = add nuw nsw i8 %i.g, 1
  %i.h = zext nneg i8 %narrow.i to i64            ; 2 uses
  %1 = add nuw nsw i64 %i.h, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %2 = phi i64 [ 5, %bb.a ], [ %1, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = load i64, ptr %0, align 8, !range !4, !noundef !5
  switch i64 %i.i, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.sroa.0.1 = phi i64 [ %2, %bb.f ], [ %.sroa.0.0, %bb.c ], [ %i.u, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = tail call noundef i64 @_RNvNtNtCsh1373Z0TDxr_8protobuf2rt16unknown_or_group19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
  %i.l = add i64 %i.k, %.sroa.0.1                 ; 3 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.1
  br i1 %i.m, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @_RNvXs4_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_styleNtB5_8GradientNtNtCsh1373Z0TDxr_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.q
  %i.r = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.r to i64               ; 2 uses
  %i.s = add i64 %i.n, 1
  %i.t = add i64 %i.s, %.zext                     ; 2 uses
  %.not12 = icmp ugt i64 %i.t, %.zext
  br i1 %.not12, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.u = add i64 %i.t, %.sroa.0.0                 ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.0.0
  br i1 %i.v, label %bb.i, label %bb.d

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #20
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = trunc i64 %i.l to i32
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.w, i32 noundef %i.x)
  ret i64 %i.l

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_styleNtB5_15CustomChatColorNtNtCsh1373Z0TDxr_8protobuf7message7Message26write_to_with_cached_sizes(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i64 noundef %i.b) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %0, align 8, !range !4, !noundef !5
  switch i64 %i.e, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef align 8 ptr @_RINvNtNtCsh1373Z0TDxr_8protobuf2rt7message36write_message_field_with_cached_sizeNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style8GradientEB1o_(i32 noundef 3, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.d, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !5
  %i.k = tail call noundef align 8 ptr @_RNvMNtCsh1373Z0TDxr_8protobuf19coded_output_streamNtB2_17CodedOutputStream13write_fixed32(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 2, i32 noundef %i.j) ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.k, %bb.f ], [ %i.h, %bb.e ], [ %i.d, %bb.b ], [ %i.g, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_styleNtB5_15CustomChatColorNtNtCsh1373Z0TDxr_8protobuf7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(96) initializes((72, 80)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.a, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style17custom_chat_color5ColorEEB17_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style17custom_chat_color5ColorEEB17_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  store i64 -2, ptr %0, align 8
  resume { ptr, i32 } %i.b

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvMNtCsh1373Z0TDxr_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB5_15CustomChatColorINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtNtNtBb_5proto6backup10chat_style17custom_chat_color5ColorE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.612.sroa.8 = alloca [12 x i8], align 4   ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.7 = alloca [12 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.e = load i64, ptr %1, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx67, align 8 ; 6 uses
  %.sroa.968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.968.0.copyload = load i32, ptr %.sroa.968.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %.not54 = icmp eq i64 %i.g, %i.j
  br i1 %.not54, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !5 ; 3 uses
  %i.n = icmp ugt i32 %i.m, -16777217
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.o, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.m, ptr %.sroa.447.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.e:                                             ; preds = %bb.c, %bb.p
  %.sroa.75.0 = phi i32 [ %.sroa.968.0.copyload, %bb.p ], [ undef, %bb.c ]
  %.sroa.6.0 = phi i32 [ %.sroa.432.0.copyload, %bb.p ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ %.sroa.031.0.copyload, %bb.p ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7, i64 12, i1 false)
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.75.0, ptr %.sroa.75.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.f:                                             ; preds = %bb.b
  switch i64 %i.g, label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64.thread [
    i64 0, label %bb.h
    i64 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 16, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64.thread

bb.h:                                             ; preds = %bb.f
  br label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64.thread

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.val.i = load float, ptr %i.s, align 4, !noundef !5 ; 2 uses
  %i.t = fcmp oeq float %.val.i, 0.000000e+00
  br i1 %i.t, label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit, label %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit.thread

_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64.thread: ; preds = %bb.f, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit.thread, %bb.h, %bb.g
  %.sink92 = phi i64 [ 8, %bb.h ], [ 24, %bb.g ], [ 8, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit.thread ], [ 8, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64 ], [ 8, %bb.f ]
  %.sink = phi i64 [ 20, %bb.h ], [ %i.j, %bb.g ], [ 23, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit.thread ], [ 23, %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64 ], [ 23, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sink92
  store i64 %.sink, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64.thread
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.y unwind label %bb.l

bb.k:                                             ; preds = %_RNvXs2_NtNtCsgxBkk5gSRhY_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCskw1zp9IbpTW_24libsignal_message_backup.exit64.thread
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecfEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.t

end_hunk_2
