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
  %i.t = load i64, ptr %i.s, align 8, !range !15, !alias.scope !6353, !noundef !5
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
  %i.z = load i64, ptr %i.y, align 8, !range !15, !alias.scope !6354, !noundef !5
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
  %i.af = load i64, ptr %i.ae, align 8, !range !15, !alias.scope !6355, !noundef !5
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
    i64 72, label %.split.fold.split420
    i64 74, label %.split93
    i64 76, label %.split93.fold.split
    i64 134, label %.split.fold.split
    i64 136, label %.split.fold.split417
    i64 138, label %.split93.fold.split418
    i64 140, label %.split93.fold.split419
  ]

.loopexit244.1.1:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

.split93.fold.split:                              ; preds = %bb.a
  br label %.split93

.split93.fold.split418:                           ; preds = %bb.a
  br label %.split93

.split93.fold.split419:                           ; preds = %bb.a
  br label %.split93

.split93:                                         ; preds = %bb.a, %.split93.fold.split419, %.split93.fold.split418, %.split93.fold.split
  %.lcssa331.ph = phi i8 [ 1, %.split93.fold.split418 ], [ 0, %.split93.fold.split ], [ 0, %bb.a ], [ 1, %.split93.fold.split419 ]
  %.not.lcssa.ph = phi i64 [ 64, %.split93.fold.split418 ], [ 32, %.split93.fold.split ], [ 32, %bb.a ], [ 64, %.split93.fold.split419 ]
  %.sroa.576.0.lcssa.ph.ph = phi i64 [ 0, %.split93.fold.split418 ], [ 2, %.split93.fold.split ], [ 0, %bb.a ], [ 2, %.split93.fold.split419 ]
  %.sroa.05.0.idx.lcssa330.ph.ph = phi i8 [ 0, %.split93.fold.split418 ], [ 1, %.split93.fold.split ], [ 0, %bb.a ], [ 1, %.split93.fold.split419 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6378
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !6378
  %i.i = load i64, ptr %i.c, align 8, !range !9, !noalias !6378, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noalias !6378, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.b:                                             ; preds = %.split93
  %i.n = load i64, ptr %i.m, align 8, !noalias !6378
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #44, !noalias !6378
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.split93
  %i.o = load ptr, ptr %i.m, align 8, !noalias !6378, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6378
  br label %bb.d

.split.fold.split:                                ; preds = %bb.a
  br label %.split

.split.fold.split417:                             ; preds = %bb.a
  br label %.split

.split.fold.split420:                             ; preds = %bb.a
  br label %.split

.split:                                           ; preds = %bb.a, %.split.fold.split420, %.split.fold.split417, %.split.fold.split
  %.lcssa331.ph.ph = phi i8 [ 1, %.split.fold.split417 ], [ 0, %bb.a ], [ 1, %.split.fold.split ], [ 0, %.split.fold.split420 ]
  %.not.lcssa.ph.ph = phi i64 [ 64, %.split.fold.split417 ], [ 32, %bb.a ], [ 64, %.split.fold.split ], [ 32, %.split.fold.split420 ]
  %.sroa.576.0.lcssa.ph = phi i64 [ 2, %.split.fold.split417 ], [ 0, %bb.a ], [ 0, %.split.fold.split ], [ 2, %.split.fold.split420 ]
  %.sroa.05.0.idx.lcssa330.ph = phi i8 [ 1, %.split.fold.split417 ], [ 0, %bb.a ], [ 0, %.split.fold.split ], [ 1, %.split.fold.split420 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6379
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !6379
  %i.p = load i64, ptr %i.b, align 8, !range !9, !noalias !6379, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !noalias !6379, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.c, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109, !prof !6

bb.c:                                             ; preds = %.split
  %i.u = load i64, ptr %i.t, align 8, !noalias !6379
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #44, !noalias !6379
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109: ; preds = %.split
  %i.v = load ptr, ptr %i.t, align 8, !noalias !6379, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6379
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  %.sink424 = phi i64 [ %i.s, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %i.l, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sink422 = phi ptr [ %i.v, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %i.o, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sink = phi i64 [ 1, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ 3, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.05.0.idx.lcssa330.ph.pn = phi i8 [ %.sroa.05.0.idx.lcssa330.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.sroa.05.0.idx.lcssa330.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.lcssa326.ph383 = phi i8 [ 0, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ 1, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.lcssa328.ph381 = phi i8 [ %.lcssa331.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.lcssa331.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.576.0.lcssa.ph386 = phi i64 [ %.sroa.576.0.lcssa.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.sroa.576.0.lcssa.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.not.lcssa.ph379 = phi i64 [ %.not.lcssa.ph.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit109 ], [ %.not.lcssa.ph, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %.in426 = shl nsw i8 -1, %.lcssa328.ph381
  %3 = xor i8 %.in426, -1
  %.in = shl nsw i8 -1, %.sroa.05.0.idx.lcssa330.ph.pn
  %4 = xor i8 %.in, -1
  store i64 %.sink424, ptr %i.g, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sink422, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sink, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6380
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.not.lcssa.ph379, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !range !9, !noalias !6380, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !10, !noalias !6380, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.h, !prof !6

bb.e:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !6380
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #44
          to label %.noexc110 unwind label %bb.f

.noexc110:                                        ; preds = %bb.e
  unreachable

.body121:                                         ; preds = %bb.aa, %bb.f, %.body
  %.pn97 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ae, %bb.f ], [ %i.df, %bb.aa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #45
          to label %common.resume unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.g:                                             ; preds = %bb.az
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.ac, align 8, !noalias !6380, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6380
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !6380
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !6380
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 %.not.lcssa.ph379, ptr %i.ah, align 8, !alias.scope !6380
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
  %.sroa.023.0281 = phi i64 [ %.sroa.576.0.lcssa.ph386, %.lr.ph ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 8 uses
  %.sroa.045.0280 = phi ptr [ %i.aj, %.lr.ph ], [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.045.0280, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ar = add i64 %.sroa.023.0281, 2              ; 7 uses
  %i.as = or disjoint i64 %.sroa.023.0281, 1
  %or.cond.i106.not = icmp ult i64 %i.as, %2
  br i1 %or.cond.i106.not, label %bb.j, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i64 %.sroa.023.0281, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.au = icmp eq i64 %i.ar, %2
  br i1 %i.au, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0281
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !6382, !noundef !5
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.k, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119, %bb.h
  %.sroa.023.0.lcssa = phi i64 [ %.sroa.576.0.lcssa.ph386, %bb.h ], [ %i.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = add i64 %.sroa.023.0.lcssa, 2           ; 12 uses
  %i.az = or disjoint i64 %.sroa.023.0.lcssa, 1
  %or.cond.i103.not = icmp ult i64 %i.az, %2
  br i1 %or.cond.i103.not, label %bb.m, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.m:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i64 %.sroa.023.0.lcssa, 0
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bb = icmp eq i64 %i.ay, %2                   ; 2 uses
  br i1 %i.bb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0.lcssa
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !6383, !noundef !5
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %bb.n, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al, %bb.aj, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.al ], [ %i.dc, %bb.x ], [ %i.ey, %bb.aj ], [ %i.cx, %bb.v ], [ %lpad.loopexit.split-lp477, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #45
          to label %.body121 unwind label %bb.ad

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.az, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105.thread
  %lpad.loopexit.split-lp477 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !6382, !noundef !5
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread: ; preds = %bb.k, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.0281 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  invoke void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108.thread
  %i.bk = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bl = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  switch i64 %i.bl, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = load i8, ptr %i.bk, align 1, !alias.scope !6385, !noundef !5 ; 2 uses
  switch i8 %i.bm, label %bb.r [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.p
  %.pr.i = load i8, ptr %i.bk, align 1, !alias.scope !6385
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i, %bb.q
  %i.bn = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bm, %bb.q ]
  %cond.i = icmp eq i8 %i.bn, 43                  ; 2 uses
  %i.bo = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bl, %i.bo        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i112 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.bp = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.bp, label %.preheader.i, label %.preheader59.i

.preheader.i:                                     ; preds = %bb.r
  %.not5467.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5467.i, label %.loopexit239, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bq = load i8, ptr %.sroa.0.0.i112, align 1, !alias.scope !6385, !noundef !5 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = icmp ugt i8 %i.bq, 57
  %i.bt = add nsw i32 %i.br, -65
  %i.bu = and i32 %i.bt, -33
  %i.bv = add nuw nsw i32 %i.bu, 10
  %i.bw = add nsw i32 %i.br, -48
  %.sroa.02.0.i57.i.peel = select i1 %i.bs, i32 %i.bv, i32 %i.bw ; 2 uses
  %i.bx = icmp ugt i32 %.sroa.02.0.i57.i.peel, 15
  br i1 %i.bx, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.preheader.i
  %i.by = icmp eq i64 %.sroa.15.0.i, 1
  %i.bz = trunc nuw nsw i32 %.sroa.02.0.i57.i.peel to i8 ; 2 uses
  br i1 %i.by, label %.loopexit239, label %.lr.ph.i

bb.t:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.166.i, i64 1
  %i.cb = add nsw i64 %.sroa.15.165.i, -1         ; 2 uses
  %i.cc = shl nuw i8 %.sroa.043.064.i, 4
  %i.cd = trunc nuw nsw i32 %.sroa.02.0.i.i to i8
  %i.ce = or disjoint i8 %i.cc, %i.cd             ; 2 uses
  %.not53.i = icmp eq i64 %i.cb, 0
  br i1 %.not53.i, label %.loopexit239, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.r, %bb.t
  %.sroa.0.166.i = phi ptr [ %i.ca, %bb.t ], [ %.sroa.0.0.i112, %bb.r ] ; 2 uses
  %.sroa.15.165.i = phi i64 [ %i.cb, %bb.t ], [ %.sroa.15.0.i, %bb.r ]
  %.sroa.043.064.i = phi i8 [ %i.ce, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %i.cf = icmp ugt i8 %.sroa.043.064.i, 15
  br i1 %i.cf, label %.loopexit, label %bb.u, !prof !6

bb.u:                                             ; preds = %.preheader59.i
  %i.cg = load i8, ptr %.sroa.0.166.i, align 1, !alias.scope !6385, !noundef !5 ; 2 uses
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = icmp ugt i8 %i.cg, 57
  %i.cj = add nsw i32 %i.ch, -65
  %i.ck = and i32 %i.cj, -33
  %i.cl = add nuw nsw i32 %i.ck, 10
  %i.cm = add nsw i32 %i.ch, -48
  %.sroa.02.0.i.i = select i1 %i.ci, i32 %i.cl, i32 %i.cm ; 2 uses
  %i.cn = icmp ugt i32 %.sroa.02.0.i.i, 15
  br i1 %i.cn, label %.loopexit, label %bb.t

.lr.ph.i:                                         ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i112, i64 1
  %.pre = load i8, ptr %i.co, align 1, !alias.scope !6385 ; 2 uses
  %i.cp = zext i8 %.pre to i32                    ; 2 uses
  %i.cq = icmp ugt i8 %.pre, 57
  %i.cr = add nsw i32 %i.cp, -65
  %i.cs = and i32 %i.cr, -33
  %i.ct = add nuw nsw i32 %i.cs, 10
  %i.cu = add nsw i32 %i.cp, -48
  %.sroa.02.0.i57.i = select i1 %i.cq, i32 %i.ct, i32 %i.cu ; 2 uses
  %i.cv = icmp ugt i32 %.sroa.02.0.i57.i, 15
  br i1 %i.cv, label %.loopexit, label %.loopexit239.loopexit.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.q, %bb.p, %.lr.ph.i, %.lr.ph.preheader.i, %.preheader59.i, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.cw, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit239.loopexit.loopexit:                   ; preds = %.lr.ph.i
  %i.cz = shl nuw i8 %i.bz, 4
  %i.da = trunc nuw nsw i32 %.sroa.02.0.i57.i to i8
  %i.db = or disjoint i8 %i.cz, %i.da
  br label %.loopexit239

.loopexit239:                                     ; preds = %bb.t, %bb.s, %.loopexit239.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i = phi i8 [ %i.db, %.loopexit239.loopexit.loopexit ], [ 0, %.preheader.i ], [ %i.bz, %bb.s ], [ %i.ce, %bb.t ]
  store i8 %.sroa.8.0.i, ptr %.sroa.045.0280, align 1
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115 unwind label %bb.x

bb.x:                                             ; preds = %.loopexit239
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115: ; preds = %.loopexit239
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit119: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.de = icmp eq ptr %i.aq, %i.am
  br i1 %i.de, label %._crit_edge, label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit139, %.loopexit350, %.loopexit492, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlshNtB4_4TlshNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str:bb.a

.preheader.i129:                                  ; preds = %bb.ag
  %.not5373.i = icmp eq i64 %.sroa.15.0.i124, 0
  br i1 %.not5373.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.split.i

.preheader60.split.i:                             ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i458, i64 1
  %i.dw = add nsw i64 %.sroa.15.1.i457, -1        ; 2 uses
  %.not52.i = icmp eq i64 %i.dw, 0
  br i1 %.not52.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader60.split.i.preheader

.preheader60.split.i.preheader:                   ; preds = %bb.ag, %.preheader60.split.i
  %.sroa.0.1.i458 = phi ptr [ %i.dv, %.preheader60.split.i ], [ %.sroa.0.0.i126, %bb.ag ] ; 2 uses
  %.sroa.15.1.i457 = phi i64 [ %i.dw, %.preheader60.split.i ], [ %.sroa.15.0.i124, %bb.ag ]
  %.sroa.042.0.i456 = phi i64 [ %i.ei, %.preheader60.split.i ], [ 0, %bb.ag ] ; 2 uses
  %i.dx = icmp ugt i64 %.sroa.042.0.i456, 1152921504606846975
  br i1 %i.dx, label %.split.us.i, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %.preheader60.split.i.preheader
  %i.dy = shl nuw i64 %.sroa.042.0.i456, 4        ; 2 uses
  %i.dz = load i8, ptr %.sroa.0.1.i458, align 1, !alias.scope !6386, !noundef !5 ; 2 uses
  %i.ea = zext i8 %i.dz to i32                    ; 2 uses
  %i.eb = icmp ugt i8 %i.dz, 57
  %i.ec = add nsw i32 %i.ea, -65
  %i.ed = and i32 %i.ec, -33
  %i.ee = add nuw nsw i32 %i.ed, 10
  %i.ef = add nsw i32 %i.ea, -48
  %spec.select.i127 = select i1 %i.eb, i32 %i.ee, i32 %i.ef ; 2 uses
  %i.eg = icmp ugt i32 %spec.select.i127, 15
  %i.eh = zext nneg i32 %spec.select.i127 to i64
  %i.ei = add i64 %i.dy, %i.eh                    ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %i.dy
  %or.cond = select i1 %i.eg, i1 true, i1 %i.ej, !prof !25
  br i1 %or.cond, label %.split.us.i, label %.preheader60.split.i, !prof !25

.lr.ph.split.i:                                   ; preds = %.preheader.i129, %bb.ai
  %.sroa.0.276.i = phi ptr [ %i.eu, %bb.ai ], [ %.sroa.0.0.i126, %.preheader.i129 ] ; 2 uses
  %.sroa.15.275.i = phi i64 [ %i.et, %bb.ai ], [ %.sroa.15.0.i124, %.preheader.i129 ]
  %.sroa.042.274.i = phi i64 [ %i.ew, %bb.ai ], [ 0, %.preheader.i129 ]
  %i.ek = load i8, ptr %.sroa.0.276.i, align 1, !alias.scope !6386, !noundef !5 ; 2 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = icmp ugt i8 %i.ek, 57
  %i.en = add nsw i32 %i.el, -65
  %i.eo = and i32 %i.en, -33
  %i.ep = add nuw nsw i32 %i.eo, 10
  %i.eq = add nsw i32 %i.el, -48
  %spec.select82.i = select i1 %i.em, i32 %i.ep, i32 %i.eq ; 2 uses
  %i.er = icmp ult i32 %spec.select82.i, 16
  br i1 %i.er, label %bb.ai, label %.split.us.i

bb.ai:                                            ; preds = %.lr.ph.split.i
  %i.es = shl i64 %.sroa.042.274.i, 4
  %i.et = add nsw i64 %.sroa.15.275.i, -1         ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.276.i, i64 1
  %i.ev = zext nneg i32 %spec.select82.i to i64
  %i.ew = or disjoint i64 %i.es, %i.ev            ; 2 uses
  %.not53.i131 = icmp eq i64 %i.et, 0
  br i1 %.not53.i131, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.split.i

.split.us.i:                                      ; preds = %.preheader60.split.i.preheader, %bb.ah, %.lr.ph.split.i, %bb.ae, %bb.af, %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ex, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135 unwind label %bb.aj

bb.aj:                                            ; preds = %.split.us.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135: ; preds = %.split.us.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader60.split.i, %bb.ai, %.preheader.i129
  %.sroa.11205.0 = phi i64 [ %i.ew, %bb.ai ], [ 0, %.preheader.i129 ], [ %i.ei, %.preheader60.split.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141 unwind label %bb.al

bb.al:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141: ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fc = add i64 %.sroa.023.0.lcssa, 4           ; 8 uses
  %i.fd = icmp ugt i64 %i.ay, %i.fc
  %i.fe = icmp ugt i64 %i.fc, %2
  %or.cond.i100 = or i1 %i.fd, %i.fe
  br i1 %or.cond.i100, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, label %bb.an, !prof !6387

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145
  br i1 %i.bb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = icmp eq i64 %i.ay, 0
  br i1 %i.ff, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.fg = icmp eq i64 %i.fc, %2
  br i1 %i.fg, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102

bb.aq:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !6388, !noundef !5
  %i.fj = icmp sgt i8 %i.fi, -65
  br i1 %i.fj, label %bb.ap, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102: ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !6388, !noundef !5
  %i.fm = icmp sgt i8 %i.fl, -65
  br i1 %i.fm, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread: ; preds = %bb.ap, %bb.an, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay ; 2 uses
  %.pr.i147 = load i8, ptr %i.fn, align 1, !alias.scope !6389
  %cond.i148 = icmp eq i8 %.pr.i147, 43           ; 2 uses
  %.sroa.0.0.idx.i150 = zext i1 %cond.i148 to i64
  %.sroa.0.0.i151 = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sroa.0.0.idx.i150 ; 2 uses
  %i.fo = load i8, ptr %.sroa.0.0.i151, align 1, !alias.scope !6389, !noundef !5 ; 2 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = icmp ugt i8 %i.fo, 57
  %i.fr = add nsw i32 %i.fp, -65
  %i.fs = and i32 %i.fr, -33
  %i.ft = add nuw nsw i32 %i.fs, 10
  %i.fu = add nsw i32 %i.fp, -48
  %spec.select82.i173.peel = select i1 %i.fq, i32 %i.ft, i32 %i.fu ; 2 uses
  %i.fv = icmp ult i32 %spec.select82.i173.peel, 16
  br i1 %i.fv, label %bb.ar, label %.loopexit492

bb.ar:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i151, i64 1
  %i.fx = zext nneg i32 %spec.select82.i173.peel to i64 ; 2 uses
  br i1 %cond.i148, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph: ; preds = %bb.ar
  %i.fy = load i8, ptr %i.fw, align 1, !alias.scope !6389, !noundef !5 ; 2 uses
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = icmp ugt i8 %i.fy, 57
  %i.gb = add nsw i32 %i.fz, -65
  %i.gc = and i32 %i.gb, -33
  %i.gd = add nuw nsw i32 %i.gc, 10
  %i.ge = add nsw i32 %i.fz, -48
  %spec.select82.i173 = select i1 %i.ga, i32 %i.gd, i32 %i.ge ; 2 uses
  %i.gf = icmp ult i32 %spec.select82.i173, 16
  br i1 %i.gf, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit, label %.loopexit492

.loopexit492:                                     ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102.thread.peel.newph
  %i.gh = zext nneg i32 %spec.select82.i173 to i64
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176: ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit, %bb.ar
  %.lcssa471 = phi i64 [ %i.fx, %bb.ar ], [ %i.gh, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit ]
  %.sroa.042.274.i172.lcssa470 = phi i64 [ 0, %bb.ar ], [ %i.fx, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176.loopexit ]
  %i.gi = load i64, ptr %i.ah, align 8, !noundef !5 ; 4 uses
  %i.gj = icmp sgt i64 %i.gi, -1
  call void @llvm.assume(i1 %i.gj)
  %.not289 = icmp eq i64 %i.gi, 0
  br i1 %.not289, label %._crit_edge285, label %.lr.ph284

._crit_edge285:                                   ; preds = %bb.ay, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.070)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.070, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.070.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.070, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.070.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.070, i64 48, i1 false)
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11205.0, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.042.274.i172.lcssa470, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.lcssa471, ptr %.sroa.772.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.lcssa326.ph383, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i8 %4, ptr %.sroa.10.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.070)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

.lr.ph284:                                        ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176, %bb.ay
  %.sroa.023.1283 = phi i64 [ %i.gl, %bb.ay ], [ %i.fc, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176 ] ; 8 uses
  %.sroa.086.0282 = phi i64 [ %i.gk, %bb.ay ], [ 0, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit176 ] ; 2 uses
  %i.gk = add nuw nsw i64 %.sroa.086.0282, 1      ; 2 uses
  %i.gl = add i64 %.sroa.023.1283, 2              ; 6 uses
  %i.gm = or disjoint i64 %.sroa.023.1283, 1
  %or.cond.i.not = icmp ult i64 %i.gm, %2
  br i1 %or.cond.i.not, label %bb.as, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.as:                                            ; preds = %.lr.ph284
  %i.gn = icmp eq i64 %.sroa.023.1283, 0
  br i1 %i.gn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.go = icmp eq i64 %i.gl, %2
  br i1 %i.go, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.au:                                            ; preds = %bb.as
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.1283
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !6390, !noundef !5
  %i.gr = icmp sgt i8 %i.gq, -65
  br i1 %i.gr, label %bb.at, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6381

bb.av:                                            ; preds = %.loopexit244.1.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit204, %._crit_edge285
  ret void

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.at
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %i.gl
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !6390, !noundef !5
  %i.gu = icmp sgt i8 %i.gt, -65
  br i1 %i.gu, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke, !prof !6384

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108, %bb.i, %bb.l, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit, %.lr.ph284, %bb.au, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145, %bb.aq, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105, %._crit_edge, %bb.o
  %i.gv = phi i64 [ %i.ay, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ %.sroa.023.0.lcssa, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ %i.ay, %bb.aq ], [ %i.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ %.sroa.023.1283, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %.sroa.023.0.lcssa, %bb.o ], [ %.sroa.023.0.lcssa, %._crit_edge ], [ %.sroa.023.1283, %bb.au ], [ %.sroa.023.1283, %.lr.ph284 ], [ %.sroa.023.0281, %bb.l ], [ %.sroa.023.0281, %bb.i ], [ %.sroa.023.0281, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  %i.gw = phi i64 [ %i.fc, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ %i.ay, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ %i.fc, %bb.aq ], [ %i.fc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ %i.gl, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.ay, %bb.o ], [ %i.ay, %._crit_edge ], [ %i.gl, %bb.au ], [ %i.gl, %.lr.ph284 ], [ %i.ar, %bb.l ], [ %i.ar, %bb.i ], [ %i.ar, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  %i.gx = phi ptr [ @701, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit102 ], [ @700, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit105 ], [ @701, %bb.aq ], [ @701, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit145 ], [ @702, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ @700, %bb.o ], [ @700, %._crit_edge ], [ @702, %bb.au ], [ @702, %.lr.ph284 ], [ @699, %bb.l ], [ @699, %bb.i ], [ @699, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit108 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.gv, i64 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gx) #44
          to label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.cont: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread229.invoke
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.at, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.023.1283 ; 2 uses
  %.pr.i178 = load i8, ptr %i.gy, align 1, !alias.scope !6391
  %cond.i179 = icmp eq i8 %.pr.i178, 43           ; 2 uses
  %.sroa.0.0.idx.i181 = zext i1 %cond.i179 to i64
  %.sroa.0.0.i182 = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.0.0.idx.i181 ; 2 uses
  %i.gz = load i8, ptr %.sroa.0.0.i182, align 1, !alias.scope !6391, !noundef !5 ; 2 uses
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = icmp ugt i8 %i.gz, 57
  %i.hc = add nsw i32 %i.ha, -65
  %i.hd = and i32 %i.hc, -33
  %i.he = add nuw nsw i32 %i.hd, 10
  %i.hf = add nsw i32 %i.ha, -48
  %.sroa.02.0.i57.i201.peel = select i1 %i.hb, i32 %i.he, i32 %i.hf ; 2 uses
  %i.hg = icmp ugt i32 %.sroa.02.0.i57.i201.peel, 15
  br i1 %i.hg, label %.loopexit350, label %bb.aw

bb.aw:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.hh = trunc nuw nsw i32 %.sroa.02.0.i57.i201.peel to i8 ; 2 uses
  br i1 %cond.i179, label %bb.ax, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.aw
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i182, i64 1
  %.pre357 = load i8, ptr %i.hi, align 1, !alias.scope !6391 ; 2 uses
  %i.hj = zext i8 %.pre357 to i32                 ; 2 uses
  %i.hk = icmp ugt i8 %.pre357, 57
  %i.hl = add nsw i32 %i.hj, -65
  %i.hm = and i32 %i.hl, -33
  %i.hn = add nuw nsw i32 %i.hm, 10
  %i.ho = add nsw i32 %i.hj, -48
  %.sroa.02.0.i57.i201 = select i1 %i.hk, i32 %i.hn, i32 %i.ho ; 2 uses
  %i.hp = icmp ugt i32 %.sroa.02.0.i57.i201, 15
  br i1 %i.hp, label %.loopexit350, label %.loopexit351

.loopexit350:                                     ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %.lr.ph.i197
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.hq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

.loopexit351:                                     ; preds = %.lr.ph.i197
  %i.hr = shl nuw i8 %i.hh, 4
  %i.hs = trunc nuw nsw i32 %.sroa.02.0.i57.i201 to i8
  %i.ht = or disjoint i8 %i.hr, %i.hs
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit351, %bb.aw
  %.lcssa = phi i8 [ %i.hh, %bb.aw ], [ %i.ht, %.loopexit351 ]
  %i.hu = xor i64 %.sroa.086.0282, -1
  %i.hv = add nsw i64 %i.gi, %i.hu                ; 3 uses
  %i.hw = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.hx = icmp ult i64 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hy = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hv
  store i8 %.lcssa, ptr %i.hz, align 1
  %exitcond.not = icmp eq i64 %i.gk, %i.gi
  br i1 %exitcond.not, label %._crit_edge285, label %.lr.ph284

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hv, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #44
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit139: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit204 unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #46
  unreachable

common.resume:                                    ; preds = %.body121, %bb.ba
  %common.resume.op = phi { ptr, i32 } [ %i.ia, %bb.ba ], [ %.pn97, %.body121 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit204: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.neg = xor i64 %1, -1
  %i.d = add i64 %i.b, %.neg
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6400, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6400, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %.not.i.not.i = icmp ult i64 %1, %i.j           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %storemerge.i.i = select i1 %.not.i.not.i, ptr %i.l, ptr %i.f
  store ptr %storemerge.i.i, ptr %0, align 8, !alias.scope !6400
  br i1 %.not.i.not.i, label %bb.d, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !6401, !noundef !5
  %i.o = add i64 %i.n, %1                         ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.m, align 8, !alias.scope !6401
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.b, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6402, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !alias.scope !6402, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %.not.i.not.i2 = icmp ult i64 %i.q, %i.w        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.b
  %storemerge.i.i3 = select i1 %.not.i.not.i2, ptr %i.x, ptr %i.s
  store ptr %storemerge.i.i3, ptr %0, align 8, !alias.scope !6402
  br i1 %.not.i.not.i2, label %bb.f, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x.exit6

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6403, !noundef !5
  %i.aa = add i64 %i.z, %i.b
  store i64 %i.aa, ptr %i.y, align 8, !alias.scope !6403
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator3nthCs7gfv9tzbXmh_6yara_x.exit6
end_hunk_1
