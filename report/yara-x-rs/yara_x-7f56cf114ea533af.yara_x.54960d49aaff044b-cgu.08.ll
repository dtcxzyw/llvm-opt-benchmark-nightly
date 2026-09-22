Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXsY_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_11CertificateNtNtCsg2CeFYmfPbl_8protobuf7message7Message5clear:bb.a
  store i64 -1, ptr %i.m, align 8
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit36: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i32
  store i64 -1, ptr %i.m, align 8
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !range !15, !alias.scope !6482, !noundef !5
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit42, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit36
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i38 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body39 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i38: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit42 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i38
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.body39:                                          ; preds = %bb.o, %bb.q
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.x, %bb.q ], [ %i.v, %bb.o ]
  store i64 -1, ptr %i.s, align 8
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit42: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit36, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i38
  store i64 -1, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.z = load i64, ptr %i.y, align 8, !range !15, !alias.scope !6483, !noundef !5
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit48, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit42
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i44 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body45 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i44: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit48 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i44
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body45

.body45:                                          ; preds = %bb.s, %bb.u
  %eh.lpad-body46 = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %i.ab, %bb.s ]
  store i64 -1, ptr %i.y, align 8
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit48: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit42, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i44
  store i64 -1, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !15, !alias.scope !6484, !noundef !5
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit54, label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit48
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i50 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body51 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i50: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit54 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i50
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %bb.w, %bb.y
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.aj, %bb.y ], [ %i.ah, %bb.w ]
  store i64 -1, ptr %i.ae, align 8
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit54: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x.exit48, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i50
  store i64 -1, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_RNvMNtCsg2CeFYmfPbl_8protobuf7specialNtB2_13SpecialFields5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
  ret void

bb.z:                                             ; preds = %.body51, %.body45, %.body39, %.body33, %.body27, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body52, %.body51 ], [ %eh.lpad-body46, %.body45 ], [ %eh.lpad-body40, %.body39 ], [ %eh.lpad-body34, %.body33 ], [ %eh.lpad-body28, %.body27 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_11CertificateNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB2D_11CertificateNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2J_(ptr noundef nonnull align 8 @_RNvNvXsZ_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB7_11CertificateNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlshNtB4_4TlshNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.070 = alloca [48 x i8], align 8          ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  switch i64 %2, label %.loopexit244.1.1 [
    i64 70, label %.split
    i64 72, label %.split.fold.split419
    i64 74, label %.split93
    i64 76, label %.split93.fold.split
    i64 134, label %.split.fold.split
    i64 136, label %.split.fold.split416
    i64 138, label %.split93.fold.split417
    i64 140, label %.split93.fold.split418
  ]

.loopexit244.1.1:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

.split93.fold.split:                              ; preds = %bb.a
  br label %.split93

.split93.fold.split417:                           ; preds = %bb.a
  br label %.split93

.split93.fold.split418:                           ; preds = %bb.a
  br label %.split93

.split93:                                         ; preds = %bb.a, %.split93.fold.split418, %.split93.fold.split417, %.split93.fold.split
  %.lcssa330.ph.ph.a = phi i8 [ 1, %.split93.fold.split417 ], [ 0, %.split93.fold.split ], [ 0, %bb.a ], [ 1, %.split93.fold.split418 ]
  %.lcssa328.ph.ph = phi i64 [ 64, %.split93.fold.split417 ], [ 32, %.split93.fold.split ], [ 32, %bb.a ], [ 64, %.split93.fold.split418 ]
  %.lcssa323.ph.ph = phi i8 [ 0, %.split93.fold.split417 ], [ 1, %.split93.fold.split ], [ 0, %bb.a ], [ 1, %.split93.fold.split418 ]
  %.sroa.576.0.lcssa.ph.ph.a = phi i64 [ 0, %.split93.fold.split417 ], [ 2, %.split93.fold.split ], [ 0, %bb.a ], [ 2, %.split93.fold.split418 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6509
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !6509
  %i.i = load i64, ptr %i.c, align 8, !range !9, !noalias !6509, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noalias !6509, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.b:                                             ; preds = %.split93
  %i.n = load i64, ptr %i.m, align 8, !noalias !6509
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #44, !noalias !6509
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.split93
  %i.o = load ptr, ptr %i.m, align 8, !noalias !6509, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6509
  br label %bb.d

.split.fold.split:                                ; preds = %bb.a
  br label %.split

.split.fold.split416:                             ; preds = %bb.a
  br label %.split

.split.fold.split419:                             ; preds = %bb.a
  br label %.split

.split:                                           ; preds = %bb.a, %.split.fold.split419, %.split.fold.split416, %.split.fold.split
  %.lcssa330.ph = phi i8 [ 1, %.split.fold.split416 ], [ 0, %bb.a ], [ 1, %.split.fold.split ], [ 0, %.split.fold.split419 ]
  %.lcssa328.ph = phi i64 [ 64, %.split.fold.split416 ], [ 32, %bb.a ], [ 64, %.split.fold.split ], [ 32, %.split.fold.split419 ]
  %.lcssa323.ph = phi i8 [ 1, %.split.fold.split416 ], [ 0, %bb.a ], [ 0, %.split.fold.split ], [ 1, %.split.fold.split419 ]
  %.sroa.576.0.lcssa.ph = phi i64 [ 2, %.split.fold.split416 ], [ 0, %bb.a ], [ 0, %.split.fold.split ], [ 2, %.split.fold.split419 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6510
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !6510
  %i.p = load i64, ptr %i.b, align 8, !range !9, !noalias !6510, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !noalias !6510, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.c, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109, !prof !6

bb.c:                                             ; preds = %.split
  %i.u = load i64, ptr %i.t, align 8, !noalias !6510
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #44, !noalias !6510
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109: ; preds = %.split
  %i.v = load ptr, ptr %i.t, align 8, !noalias !6510, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6510
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  %.sink423 = phi i64 [ %i.s, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %i.l, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sink421 = phi ptr [ %i.v, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %i.o, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sink = phi i64 [ 1, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ 3, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.576.0.lcssa.ph384 = phi i64 [ %.sroa.576.0.lcssa.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.sroa.576.0.lcssa.ph.ph.a, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.lcssa323.ph382 = phi i8 [ %.lcssa323.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.lcssa323.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.lcssa326.ph380 = phi i8 [ 0, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ 1, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.lcssa328.ph378 = phi i64 [ %.lcssa328.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.lcssa328.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.lcssa330.ph376 = phi i8 [ %.lcssa330.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.lcssa330.ph.ph.a, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  store i64 %.sink423, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sink421, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sink, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6511
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.lcssa328.ph378, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !range !9, !noalias !6511, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !noalias !6511, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.h, !prof !6

bb.e:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !6511
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #44
          to label %.noexc110 unwind label %bb.f

.noexc110:                                        ; preds = %bb.e
  unreachable

.body121:                                         ; preds = %bb.aa, %bb.f, %.body
  %.pn97 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ae, %bb.f ], [ %i.di, %bb.aa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #45
          to label %common.resume unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.g:                                             ; preds = %bb.az
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ac, align 8, !noalias !6511, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6511
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !6511
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !6511
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 %.lcssa328.ph378, ptr %i.ah, align 8, !alias.scope !6511
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = icmp samesign eq i64 %i.al, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119
  %.sroa.023.0283 = phi i64 [ %.sroa.576.0.lcssa.ph384, %.lr.ph ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 8 uses
  %.sroa.045.0282 = phi ptr [ %i.aj, %.lr.ph ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.045.0282, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ar = add i64 %.sroa.023.0283, 2              ; 7 uses
  %i.as = or disjoint i64 %.sroa.023.0283, 1
  %or.cond.i106.not = icmp ult i64 %i.as, %2
  br i1 %or.cond.i106.not, label %bb.j, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke, !prof !6512

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i64 %.sroa.023.0283, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.au = icmp eq i64 %i.ar, %2
  br i1 %i.au, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0283
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !6513, !noundef !5
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.k, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke, !prof !6512

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119, %bb.h
  %.sroa.023.0.lcssa = phi i64 [ %.sroa.576.0.lcssa.ph384, %bb.h ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = add i64 %.sroa.023.0.lcssa, 2           ; 12 uses
  %i.az = or disjoint i64 %.sroa.023.0.lcssa, 1
  %or.cond.i103.not = icmp ult i64 %i.az, %2
  br i1 %or.cond.i103.not, label %bb.m, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke, !prof !6512

bb.m:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i64 %.sroa.023.0.lcssa, 0
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bb = icmp eq i64 %i.ay, %2                   ; 2 uses
  br i1 %i.bb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0.lcssa
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !6514, !noundef !5
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %bb.n, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke, !prof !6512

.body:                                            ; preds = %.loopexit242, %.loopexit.split-lp, %bb.al, %bb.aj, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.al ], [ %i.df, %bb.x ], [ %i.fb, %bb.aj ], [ %i.da, %bb.v ], [ %lpad.loopexit, %.loopexit242 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #45
          to label %.body121 unwind label %bb.ad

.loopexit242:                                     ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread, %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !6513, !noundef !5
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke, !prof !6515

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108, %bb.i, %bb.l, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit, %.lr.ph286, %bb.au, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145, %bb.aq, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105, %._crit_edge, %bb.o
  %i.bi = phi i64 [ %i.ay, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ %i.ay, %bb.aq ], [ %.sroa.023.0.lcssa, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ %i.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ %.sroa.023.1285, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %.sroa.023.0.lcssa, %bb.o ], [ %.sroa.023.0.lcssa, %._crit_edge ], [ %.sroa.023.1285, %bb.au ], [ %.sroa.023.1285, %.lr.ph286 ], [ %.sroa.023.0283, %bb.l ], [ %.sroa.023.0283, %bb.i ], [ %.sroa.023.0283, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  %i.bj = phi i64 [ %i.ff, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ %i.ff, %bb.aq ], [ %i.ay, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ %i.ff, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ %i.go, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.ay, %bb.o ], [ %i.ay, %._crit_edge ], [ %i.go, %bb.au ], [ %i.go, %.lr.ph286 ], [ %i.ar, %bb.l ], [ %i.ar, %bb.i ], [ %i.ar, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  %i.bk = phi ptr [ @701, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ @701, %bb.aq ], [ @700, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ @701, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ @702, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ @700, %bb.o ], [ @700, %._crit_edge ], [ @702, %bb.au ], [ @702, %.lr.ph286 ], [ @699, %bb.l ], [ @699, %bb.i ], [ @699, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bi, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk) #44
          to label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.cont unwind label %.loopexit.split-lp

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.cont: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread211.invoke
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread: ; preds = %bb.k, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0283 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  invoke void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm)
          to label %bb.p unwind label %.loopexit242

bb.p:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread
  %i.bn = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bo = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  switch i64 %i.bo, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bp = load i8, ptr %i.bn, align 1, !alias.scope !6516, !noundef !5 ; 2 uses
  switch i8 %i.bp, label %bb.r [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.p
  %.pr.i = load i8, ptr %i.bn, align 1, !alias.scope !6516
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i, %bb.q
  %i.bq = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bp, %bb.q ]
  %cond.i = icmp eq i8 %i.bq, 43                  ; 2 uses
  %i.br = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bo, %i.br        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i112 = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.bs = icmp samesign ult i64 %.sroa.15.0.i, 3
end_hunk_0
