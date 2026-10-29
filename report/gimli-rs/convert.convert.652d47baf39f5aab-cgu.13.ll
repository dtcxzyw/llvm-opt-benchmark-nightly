Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.13?download=true
inline.NumInlined: 251
inline.NumDeleted: 153
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE13read_sequenceCs8GyQQEoxZtT_7convert:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.446.i)
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.746.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 %.sroa.033.0, ptr %0, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.535.0, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fi, ptr %.sroa.645.0..sroa_idx, align 8
  br label %bb.aw

bb.ap:                                            ; preds = %bb.al
  store i64 1, ptr %1, align 16
  store i64 %.sink, ptr %i.ac, align 8
  store i8 1, ptr %i.l, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 %.sroa.033.0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.535.0, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.631.0..sroa_idx, align 8
  br label %bb.aw

bb.aq:                                            ; preds = %bb.al, %bb.ar
  %.sroa.033.1 = phi i64 [ %.sroa.033.0, %bb.ar ], [ 1, %bb.al ]
  %.sroa.535.1 = phi i64 [ %.sroa.535.0, %bb.ar ], [ %.sink, %bb.al ]
  %.pre = load i8, ptr %i.l, align 8, !range !15, !alias.scope !176
  br label %bb.b

bb.ar:                                            ; preds = %bb.am, %bb.an
  %i.fj = load ptr, ptr %i.j, align 8, !alias.scope !191, !nonnull !5, !noundef !5
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %i.ff ; 6 uses
  store i64 %.sink494, ptr %i.fk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %.sroa.22.2.ph374, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %i.fa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store <2 x i64> %i.fb, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fl = shufflevector <2 x i64> %i.fe, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.fl, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fm = shufflevector <2 x i8> %i.fc, <2 x i8> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.fm, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.fn = add i64 %i.ff, 1
  store i64 %i.fn, ptr %i.k, align 8, !alias.scope !191
  br label %bb.aq

bb.as:                                            ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 84, ptr %i.fo, align 8
  br label %bb.ax

bb.at:                                            ; preds = %.loopexit
  store i64 2, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowEECs8GyQQEoxZtT_7convert.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay, %bb.au
  %common.resume.op = phi { ptr, i32 } [ %i.fr, %bb.ay ], [ %i.fp, %bb.au ], [ %lpad.loopexit.split-lp539, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowEECs8GyQQEoxZtT_7convert.exit81, %bb.ap, %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowEECs8GyQQEoxZtT_7convert.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ax:                                            ; preds = %.loopexit275, %bb.as, %bb.ai
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowEECs8GyQQEoxZtT_7convert.exit81 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowEECs8GyQQEoxZtT_7convert.exit81: ; preds = %bb.ax
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line7LineRowENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.aw

bb.ba:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE3newCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([784 x i8]) align 16 captures(none) dereferenceable(784) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(320) %2, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %3, i32 %4, i40 %5, ptr noalias nofree noundef align 8 dereferenceable(88) %6, ptr noalias nofree noundef align 8 dereferenceable(88) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = alloca [88 x i8], align 8                ; 8 uses
  %.sroa.6129 = alloca [16 x i8], align 8         ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [32 x i8], align 16               ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6121 = alloca [16 x i8], align 8         ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [280 x i8], align 8               ; 13 uses
  %.sroa.4105 = alloca [16 x i8], align 8         ; 2 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 16               ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.697 = alloca [16 x i8], align 8          ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.686 = alloca [16 x i8], align 8          ; 7 uses
  %i.x = alloca [32 x i8], align 16               ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 7 uses
  %i.ae = alloca [32 x i8], align 16              ; 3 uses
  %i.af = alloca [24 x i8], align 8               ; 14 uses
  %i.ag = alloca [24 x i8], align 8               ; 15 uses
  %i.ah = alloca [24 x i8], align 8               ; 15 uses
  %.sroa.4.0.extract.shift = lshr i32 %4, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.015.0.extract.trunc = trunc i40 %5 to i8 ; 2 uses
  %.sroa.015.1.extract.shift = lshr i40 %5, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 304
  %.sroa.017.0.copyload = load i8, ptr %i.ai, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 305
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 306 ; 3 uses
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2
  %.not = icmp eq i8 %.sroa.4.0.extract.trunc, 3  ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %4, 16
  %.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.5.0.extract.shift to i16
  %.sroa.09.0.extract.trunc = trunc i32 %4 to i8
  %.sroa.10.0 = select i1 %.not, i16 %.sroa.10.0.copyload, i16 %.sroa.5.0.extract.trunc ; 7 uses
  %.sroa.9.0 = select i1 %.not, i8 %.sroa.9.0.copyload, i8 %.sroa.4.0.extract.trunc ; 5 uses
  %.sroa.017.0 = select i1 %.not, i8 %.sroa.017.0.copyload, i8 %.sroa.09.0.extract.trunc ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 308 ; 2 uses
  %.sroa.054.0.copyload = load i8, ptr %i.aj, align 4
  %.sroa.356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 309
  %.sroa.356.0.copyload = load i32, ptr %.sroa.356.0..sroa_idx, align 1
  %.not206 = icmp eq i8 %.sroa.015.0.extract.trunc, 2 ; 2 uses
  %.sroa.054.0 = select i1 %.not206, i8 %.sroa.054.0.copyload, i8 %.sroa.015.0.extract.trunc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 6 uses
  store i64 0, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  store i64 0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE9directoryCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2, i64 noundef 0)
          to label %bb.b unwind label %8

.body250:                                         ; preds = %bb.au, %.body255, %8, %bb.ck
  %.pn214 = phi { ptr, i32 } [ %.pn, %.body255 ], [ %.pn212.ph, %bb.ck ], [ %9, %8 ], [ %i.cq, %bb.au ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #19
          to label %.body unwind label %bb.w

8:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i, %bb.d, %bb.c, %bb.a
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %.body250

bb.b:                                             ; preds = %bb.a
  %i.ao = load i64, ptr %i.ae, align 16, !range !16, !noundef !5
  %.not207 = icmp eq i64 %i.ao, -1
  br i1 %.not207, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.sroa.5185.0.insert.ext = zext i16 %.sroa.10.0 to i32
  %.sroa.5185.0.insert.shift = shl nuw i32 %.sroa.5185.0.insert.ext, 16
  %.sroa.4184.0.insert.ext = zext i8 %.sroa.9.0 to i32
  %.sroa.4184.0.insert.shift = shl nuw nsw i32 %.sroa.4184.0.insert.ext, 8
  %.sroa.4184.0.insert.insert = or disjoint i32 %.sroa.5185.0.insert.shift, %.sroa.4184.0.insert.shift
  %.sroa.0183.0.insert.ext = zext i8 %.sroa.017.0 to i32
  %.sroa.0183.0.insert.insert = or disjoint i32 %.sroa.4184.0.insert.insert, %.sroa.0183.0.insert.ext
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !233
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.ae)
          to label %.noexc unwind label %8

.noexc:                                           ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !range !15, !noalias !233, !noundef !5
  %i.ar = icmp eq i8 %i.aq, 2
  %.sroa.033.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !233 ; 2 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.434.0.copyload.i = load i64, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !233 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !233
  br i1 %i.ar, label %.thread, label %bb.d

bb.d:                                             ; preds = %.noexc
  store i64 -1, ptr %i.g, align 8, !noalias !233
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.033.0.copyload.i, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !233
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.434.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i, align 8, !noalias !233
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i32 noundef %.sroa.0183.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.f unwind label %8

.thread:                                          ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.033.0.copyload.i, ptr %i.as, align 8, !alias.scope !232
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.434.0.copyload.i, ptr %.sroa.438.0..sroa_idx.i, align 8, !alias.scope !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.at = icmp ult i16 %.sroa.10.0, 5
  br i1 %i.at, label %bb.n, label %bb.m

bb.f:                                             ; preds = %bb.d
  %.pr = load i64, ptr %i.ad, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.au = icmp eq i64 %.pr, -1
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4162.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.466.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 %.pr, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.h
  %i.ax = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !noundef !5
  %i.ay = icmp ugt i16 %i.ax, 4
  %.sroa.373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.bz, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i, %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECs8GyQQEoxZtT_7convert.exit unwind label %bb.ce

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 86, ptr %i.bb, align 8
  store i64 2, ptr %0, align 16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit

bb.n:                                             ; preds = %bb.e
  store i64 0, ptr %i.af, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  br label %bb.i

bb.o:                                             ; preds = %bb.i
  %.pre = load i8, ptr %.sroa.373.0..sroa_idx, align 8, !range !15
  %i.bc = icmp eq i8 %.pre, 2
  br i1 %i.bc, label %bb.r, label %bb.t

bb.p:                                             ; preds = %bb.i
  store i8 2, ptr %.sroa.373.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !234, !noundef !5
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bg = load ptr, ptr %i.bf, align 16, !alias.scope !234, !nonnull !5, !noundef !5
  br label %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCs8GyQQEoxZtT_7convert.exit

bb.r:                                             ; preds = %bb.o
  %i.bh = load i64, ptr %2, align 16, !range !16, !alias.scope !234, !noundef !5
  %.not2.i = icmp eq i64 %i.bh, -1
  br i1 %.not2.i, label %select.unfold, label %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCs8GyQQEoxZtT_7convert.exit

bb.s:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #19
          to label %bb.ck unwind label %bb.w

bb.t:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 -1, ptr %i.aa, align 8
  store i64 -1, ptr %i.z, align 8
  %.sroa.677.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.677.0..sroa_idx78, align 8
  %.sroa.677.sroa.7.0..sroa.677.0..sroa_idx78.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.677.sroa.7.0..sroa.677.0..sroa_idx78.sroa_idx, align 8
  %.sroa.5188.0.insert.ext = zext i16 %.sroa.10.0 to i32
  %.sroa.5188.0.insert.shift = shl nuw i32 %.sroa.5188.0.insert.ext, 16
  %.sroa.4187.0.insert.ext = zext i8 %.sroa.9.0 to i32
  %.sroa.4187.0.insert.shift = shl nuw nsw i32 %.sroa.4187.0.insert.ext, 8
  %.sroa.4187.0.insert.insert = or disjoint i32 %.sroa.5188.0.insert.shift, %.sroa.4187.0.insert.shift
  %.sroa.0186.0.insert.ext = zext i8 %.sroa.017.0 to i32
  %.sroa.0186.0.insert.insert = or disjoint i32 %.sroa.4187.0.insert.insert, %.sroa.0186.0.insert.ext
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, i32 noundef %.sroa.0186.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.v

bb.v:                                             ; preds = %bb.ar, %bb.ap, %bb.u
  %.sroa.0102.0 = phi i64 [ -1, %bb.u ], [ %.sroa.0102.0.copyload104, %bb.ap ], [ -1, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.0102.0, ptr %i.ac, align 8
  %.sroa.4105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4105.0..sroa_idx106, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4105, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 311
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %i.bl = icmp sgt i8 %i.bk, 0                    ; 2 uses
  br i1 %i.bl, label %bb.ax, label %bb.aw

bb.w:                                             ; preds = %.body281, %bb.ck, %bb.cj, %.body, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai, %bb.s, %.body250
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i275, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i245, %bb.ad, %bb.ac, %bb.z
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.q, %bb.r
  %.sroa.0.0.i = phi ptr [ %2, %bb.r ], [ %i.bg, %bb.q ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 80
  %i.bp = load i64, ptr %i.bo, align 16, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %bb.z

select.unfold:                                    ; preds = %bb.r, %bb.p
  %i.br = icmp ult i16 %.sroa.10.0, 5
  br i1 %i.br, label %bb.ar, label %bb.aq

bb.y:                                             ; preds = %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCs8GyQQEoxZtT_7convert.exit
  store i64 -1, ptr %i.y, align 8
  %.pre352.a = zext i16 %.sroa.10.0 to i32
  %.pre353.a = shl nuw i32 %.pre352.a, 16
  %.pre354.a = zext i8 %.sroa.9.0 to i32
  %.pre355.a = shl nuw nsw i32 %.pre354.a, 8
  %.pre356.a = or disjoint i32 %.pre353.a, %.pre355.a
  %.pre357 = zext i8 %.sroa.017.0 to i32
  %.pre358 = or disjoint i32 %.pre356.a, %.pre357
  br label %bb.aa

bb.z:                                             ; preds = %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCs8GyQQEoxZtT_7convert.exit
  invoke void @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE9directoryCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2, i64 noundef %i.bp)
          to label %bb.ab unwind label %bb.x

bb.aa:                                            ; preds = %bb.ah, %bb.y
  %.sroa.0192.0.insert.insert.pre-phi = phi i32 [ %.sroa.0189.0.insert.insert, %bb.ah ], [ %.pre358, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !236
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.u)
          to label %.noexc241 unwind label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.bs = load i64, ptr %i.x, align 16, !range !16, !noundef !5
  %.not210 = icmp eq i64 %i.bs, -1
  br i1 %.not210, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.5191.0.insert.ext = zext i16 %.sroa.10.0 to i32
  %.sroa.5191.0.insert.shift = shl nuw i32 %.sroa.5191.0.insert.ext, 16
  %.sroa.4190.0.insert.ext = zext i8 %.sroa.9.0 to i32
  %.sroa.4190.0.insert.shift = shl nuw nsw i32 %.sroa.4190.0.insert.ext, 8
  %.sroa.4190.0.insert.insert = or disjoint i32 %.sroa.5191.0.insert.shift, %.sroa.4190.0.insert.shift
  %.sroa.0189.0.insert.ext = zext i8 %.sroa.017.0 to i32
  %.sroa.0189.0.insert.insert = or disjoint i32 %.sroa.4190.0.insert.insert, %.sroa.0189.0.insert.ext ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !238
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.x)
          to label %.noexc232 unwind label %bb.x

.noexc232:                                        ; preds = %bb.ac
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !range !15, !noalias !238, !noundef !5
  %i.bv = icmp eq i8 %i.bu, 2
  %.sroa.033.0.copyload.i226 = load ptr, ptr %i.f, align 8, !noalias !238 ; 2 uses
  %.sroa.434.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.434.0.copyload.i228 = load i64, ptr %.sroa.434.0..sroa_idx.i227, align 8, !noalias !238 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !238
  br i1 %i.bv, label %.thread319, label %bb.ad

bb.ad:                                            ; preds = %.noexc232
  store i64 -1, ptr %i.e, align 8, !noalias !238
  %.sroa.6.0..sroa_idx10.i229 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.033.0.copyload.i226, ptr %.sroa.6.0..sroa_idx10.i229, align 8, !noalias !238
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.434.0.copyload.i228, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i230, align 8, !noalias !238
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %.sroa.0189.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.af unwind label %bb.x

.thread319:                                       ; preds = %.noexc232
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.033.0.copyload.i226, ptr %i.bw, align 8, !alias.scope !237
  %.sroa.438.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.434.0.copyload.i228, ptr %.sroa.438.0..sroa_idx.i231, align 8, !alias.scope !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 88, ptr %i.bx, align 8
  store i64 2, ptr %0, align 16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert.exit249

bb.af:                                            ; preds = %bb.ad
  %.pr318 = load i64, ptr %i.w, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.by = icmp eq i64 %.pr318, -1
  br i1 %i.by, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread319, %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.686, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.686, i64 16, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.686)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert.exit249

bb.ah:                                            ; preds = %bb.af
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.686, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4166.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.686, i64 16, i1 false)
  store i64 %.pr318, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.686)
  br label %bb.aa

bb.ai:                                            ; preds = %bb.aj, %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #19
          to label %bb.ck unwind label %bb.w

.noexc241:                                        ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !range !15, !noalias !236, !noundef !5
  %i.ce = icmp eq i8 %i.cd, 2
  %.sroa.033.0.copyload.i235 = load ptr, ptr %i.d, align 8, !noalias !236 ; 2 uses
  %.sroa.434.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.434.0.copyload.i237 = load i64, ptr %.sroa.434.0..sroa_idx.i236, align 8, !noalias !236 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !236
  br i1 %i.ce, label %.thread322, label %bb.aj

bb.aj:                                            ; preds = %.noexc241
  store i64 -1, ptr %i.c, align 8, !noalias !236
  %.sroa.6.0..sroa_idx10.i238 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.033.0.copyload.i235, ptr %.sroa.6.0..sroa_idx10.i238, align 8, !noalias !236
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i239 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.434.0.copyload.i237, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i239, align 8, !noalias !236
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %.sroa.0192.0.insert.insert.pre-phi, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.ak unwind label %bb.ai

.thread322:                                       ; preds = %.noexc241
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.033.0.copyload.i235, ptr %i.cf, align 8, !alias.scope !235
  %.sroa.438.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.434.0.copyload.i237, ptr %.sroa.438.0..sroa_idx.i240, align 8, !alias.scope !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.pr321 = load i64, ptr %i.v, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cg = icmp eq i64 %.pr321, -1
  br i1 %i.cg, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.thread322, %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.697, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.697, i64 16, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.697)
  %i.cj = load i64, ptr %i.y, align 8, !range !10, !alias.scope !239, !noundef !5
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert.exit249

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i245 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ck unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i245: ; preds = %bb.am
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert.exit249 unwind label %bb.x

bb.ap:                                            ; preds = %bb.ak
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.697, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4168.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %.pr321, ptr %i.t, align 8
  %.sroa.697.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.697.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.697, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.697)
  %.sroa.0102.0.copyload104 = load i64, ptr %i.y, align 8
  %.sroa.4105.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4105, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4105.0..sroa_idx107, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert.exit249: ; preds = %bb.ae, %bb.ag, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.as

bb.aq:                                            ; preds = %select.unfold
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 85, ptr %i.cn, align 8
  store i64 2, ptr %0, align 16
  br label %bb.as

bb.ar:                                            ; preds = %select.unfold
  store i64 0, ptr %i.t, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4109.0..sroa_idx, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.5110.0..sroa_idx, align 8
  br label %bb.v

bb.as:                                            ; preds = %.thread330, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert.exit249, %bb.aq
  %i.co = load i64, ptr %i.af, align 8, !range !13, !alias.scope !240, !noundef !5
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body250 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit unwind label %8

bb.aw:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -2, ptr %i.o, align 8
  %.sroa.5197.0.insert.ext = zext i16 %.sroa.10.0 to i32
  %.sroa.5197.0.insert.shift = shl nuw i32 %.sroa.5197.0.insert.ext, 16
  %.sroa.4196.0.insert.ext = zext i8 %.sroa.9.0 to i32
  %.sroa.4196.0.insert.shift = shl nuw nsw i32 %.sroa.4196.0.insert.ext, 8
  %.sroa.4196.0.insert.insert = or disjoint i32 %.sroa.5197.0.insert.shift, %.sroa.4196.0.insert.shift
  %.sroa.0195.0.insert.ext = zext i8 %.sroa.017.0 to i32
  %.sroa.0195.0.insert.insert = or disjoint i32 %.sroa.4196.0.insert.insert, %.sroa.0195.0.insert.ext ; 3 uses
  %.sroa.0198.0.insert.ext = zext i8 %.sroa.054.0 to i40
  %i.cs = zext i32 %.sroa.356.0.copyload to i40
  %.sroa.0198.1.insert.ext = select i1 %.not206, i40 %i.cs, i40 %.sroa.015.1.extract.shift
  %.sroa.0198.1.insert.shift = shl nuw i40 %.sroa.0198.1.insert.ext, 8
  %.sroa.0198.1.insert.insert = or disjoint i40 %.sroa.0198.1.insert.shift, %.sroa.0198.0.insert.ext
  invoke void @_RNvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB2_11LineProgram3new(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %i.s, i32 noundef %.sroa.0195.0.insert.insert, i40 %.sroa.0198.1.insert.insert, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.o)
          to label %bb.bb unwind label %bb.by

bb.ax:                                            ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 89, ptr %i.ct, align 8
  store i64 2, ptr %0, align 16
  %i.cu = load i64, ptr %i.ab, align 8, !range !13, !alias.scope !241, !noundef !5
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cj unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258_crit_edge unwind label %bb.by

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258_crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254
  %.pre351 = load i64, ptr %i.ac, align 8, !range !10, !alias.scope !242
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cy = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !noundef !5
  %i.cz = icmp ult i16 %i.cy, 5
  br i1 %i.cz, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.da = load i64, ptr %i.al, align 8, !alias.scope !243, !noundef !5 ; 3 uses
  %i.db = load i64, ptr %i.ah, align 8, !range !18, !alias.scope !243, !noundef !5
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #24
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit, %bb.bb
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.de = load ptr, ptr %i.dd, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.dg = load i64, ptr %i.df, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.dg, 5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.434.0..sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx10.i264 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.sroa.6121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.bh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %bb.bv, %bb.bx, %bb.bm, %bb.bi, %bb.bh, %bb.bk, %bb.bg, %bb.bd, %bb.bq, %bb.bp, %bb.bo, %._crit_edge
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line11LineProgramECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(280) %i.s) #19
          to label %.body255 unwind label %bb.w

bb.bf:                                            ; preds = %bb.bc, %bb.bd
  %i.dk = load ptr, ptr %i.ak, align 8, !alias.scope !243, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.da
  store i64 0, ptr %i.dl, align 8
  %i.dm = add i64 %i.da, 1
  store i64 %i.dm, ptr %i.al, align 8, !alias.scope !243
  %i.dn = load i64, ptr %i.an, align 8, !alias.scope !244, !noundef !5 ; 3 uses
  %i.do = load i64, ptr %i.ag, align 8, !range !18, !alias.scope !244, !noundef !5
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.bg, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #24
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.bg, %bb.bf
  %i.dq = load ptr, ptr %i.am, align 8, !alias.scope !244, !nonnull !5, !noundef !5
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dn
  store i64 0, ptr %i.dr, align 8
  %i.ds = add i64 %i.dn, 1
  store i64 %i.ds, ptr %i.an, align 8, !alias.scope !244
  br label %bb.be

bb.bh:                                            ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCs8GyQQEoxZtT_7convert.exit271
  %.sroa.0170.0337 = phi ptr [ %i.de, %.lr.ph ], [ %i.dt, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCs8GyQQEoxZtT_7convert.exit271 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0170.0337, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %.sroa.0170.0337)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !246
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.m)
          to label %.noexc267 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %bb.bh
  %i.du = load i8, ptr %i.dj, align 8, !range !15, !noalias !246, !noundef !5
  %i.dv = icmp eq i8 %i.du, 2
  %.sroa.033.0.copyload.i261 = load ptr, ptr %i.b, align 8, !noalias !246 ; 2 uses
  %.sroa.434.0.copyload.i263 = load i64, ptr %.sroa.434.0..sroa_idx.i262, align 8, !noalias !246 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  br i1 %i.dv, label %.thread325, label %bb.bi

bb.bi:                                            ; preds = %.noexc267
  store i64 -1, ptr %i.a, align 8, !noalias !246
  store ptr %.sroa.033.0.copyload.i261, ptr %.sroa.6.0..sroa_idx10.i264, align 8, !noalias !246
  store i64 %.sroa.434.0.copyload.i263, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i265, align 8, !noalias !246
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %.sroa.0195.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread325:                                       ; preds = %.noexc267
  store ptr %.sroa.033.0.copyload.i261, ptr %.sroa.4173.0..sroa_idx, align 8, !alias.scope !245
  %.sroa.438.0..sroa_idx.i266 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.434.0.copyload.i263, ptr %.sroa.438.0..sroa_idx.i266, align 8, !alias.scope !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit334

bb.bj:                                            ; preds = %bb.bi
  %.pr324 = load i64, ptr %i.n, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dw = icmp eq i64 %.pr324, -1
  br i1 %i.dw, label %.loopexit334, label %bb.bk

.loopexit334:                                     ; preds = %bb.bj, %.thread325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4173.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121, i64 16, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6121)
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4173.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %.pr324, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121.0..sroa_idx122, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6121)
  %i.dy = invoke noundef i64 @_RNvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB2_11LineProgram13add_directory(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.dz = load i64, ptr %i.al, align 8, !alias.scope !247, !noundef !5 ; 3 uses
  %i.ea = load i64, ptr %i.ah, align 8, !range !18, !alias.scope !247, !noundef !5
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.bm, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCs8GyQQEoxZtT_7convert.exit271

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #24
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCs8GyQQEoxZtT_7convert.exit271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCs8GyQQEoxZtT_7convert.exit271: ; preds = %bb.bm, %bb.bl
  %i.ec = load ptr, ptr %i.ak, align 8, !alias.scope !247, !nonnull !5, !noundef !5
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dz
  store i64 %i.dy, ptr %i.ed, align 8
  %i.ee = add i64 %i.dz, 1
  store i64 %i.ee, ptr %i.al, align 8, !alias.scope !247
  %i.ef = icmp eq ptr %i.dt, %i.dh
  br i1 %i.ef, label %._crit_edge, label %bb.bh

bb.bn:                                            ; preds = %bb.bu, %.loopexit334
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line11LineProgramECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(280) %i.s)
          to label %bb.bz unwind label %bb.by

._crit_edge:                                      ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCs8GyQQEoxZtT_7convert.exit271, %bb.be
  %i.eg = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE18file_has_timestampCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 274
  %i.ei = zext i1 %i.eg to i8
  store i8 %i.ei, ptr %i.eh, align 2
  %i.ej = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE13file_has_sizeCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 275
  %i.el = zext i1 %i.ej to i8
  store i8 %i.el, ptr %i.ek, align 1
  %i.em = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE12file_has_md5Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 276
  %i.eo = zext i1 %i.em to i8
  store i8 %i.eo, ptr %i.en, align 4
  %i.ep = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE15file_has_sourceCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 277
  %i.er = zext i1 %i.ep to i8
  store i8 %i.er, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.et = load ptr, ptr %i.es, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !5 ; 2 uses
  %.idx342 = mul nuw nsw i64 %i.ev, 112
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx342
  %i.ex = icmp eq i64 %i.ev, 0
  br i1 %i.ex, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.br
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.6129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph340, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit273
  %.sroa.0175.0338 = phi ptr [ %i.et, %.lr.ph340 ], [ %i.ey, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit273 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0175.0338, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ez = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.fa = load i64, ptr %i.al, align 8, !noundef !5
  invoke fastcc void @_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE12convert_fileCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.k, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0175.0338, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ez, i64 noundef %i.fa, i32 noundef %.sroa.0195.0.insert.insert, ptr noalias nofree noundef align 8 dereferenceable(88) %6)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.fb = load i64, ptr %i.k, align 8, !range !10, !noundef !5 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4178.0..sroa_idx, i64 16, i1 false)
  br i1 %i.fc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129, i64 16, i1 false)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129)
  br label %bb.bn

bb.bv:                                            ; preds = %bb.bt
  %.sroa.5179.0.copyload = load i64, ptr %.sroa.5179.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6180.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.fb, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129.0..sroa_idx130, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6129, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129)
  %i.fe = invoke noundef i64 @_RNvMNtNtCsi68uqYEhoRA_5gimli5write4lineNtB2_11LineProgram8add_file(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %.sroa.5179.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  %i.ff = load i64, ptr %i.an, align 8, !alias.scope !248, !noundef !5 ; 3 uses
  %i.fg = load i64, ptr %i.ag, align 8, !range !18, !alias.scope !248, !noundef !5
  %i.fh = icmp eq i64 %i.ff, %i.fg
  br i1 %i.fh, label %bb.bx, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit273

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8grow_oneCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #24
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit273 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit273: ; preds = %bb.bx, %bb.bw
  %i.fi = load ptr, ptr %i.am, align 8, !alias.scope !248, !nonnull !5, !noundef !5
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.ff
  store i64 %i.fe, ptr %i.fj, align 8
  %i.fk = add i64 %i.ff, 1
  store i64 %i.fk, ptr %i.an, align 8, !alias.scope !248
  %i.fl = icmp eq ptr %i.ey, %i.ew
  br i1 %i.fl, label %._crit_edge341, label %bb.bs

.body255:                                         ; preds = %bb.by, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp377, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fm, %bb.by ] ; 2 uses
  br i1 %i.bl, label %bb.cj, label %.body250

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254, %bb.aw, %bb.bn
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body255

bb.bz:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit

._crit_edge341:                                   ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCs8GyQQEoxZtT_7convert.exit273, %bb.br
  %i.fn = load i8, ptr %i.aj, align 4, !range !8, !noundef !5
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !249, !nonnull !5, !noundef !5
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fr = load i64, ptr %i.fq, align 16, !alias.scope !249, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 248
  %.val.i = load i8, ptr %i.fs, align 8, !range !8, !alias.scope !249, !noundef !5
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %.sroa.5144.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(320) %2, i64 320, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(280) %.sroa.22.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %i.s, i64 280, i1 false)
  store i64 0, ptr %0, align 16
  %.sroa.6145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.8147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6145.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.8147.0..sroa_idx, align 16
  %.sroa.9148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 1, ptr %.sroa.9148.0..sroa_idx, align 8
  %.sroa.10149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.14153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %.sroa.10149.0..sroa_idx, i8 0, i64 25, i1 false)
  store i8 %i.fn, ptr %.sroa.14153.0..sroa_idx, align 1
  %.sroa.15154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 394
  store i32 0, ptr %.sroa.15154.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.fp, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.23.sroa.4.0..sroa.23.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 %i.fr, ptr %.sroa.23.sroa.4.0..sroa.23.0..sroa_idx.sroa_idx, align 16
  %.sroa.23.sroa.5.0..sroa.23.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i8 %.val.i, ptr %.sroa.23.sroa.5.0..sroa.23.0..sroa_idx.sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %1, ptr %.sroa.24.0..sroa_idx, align 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %6, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %7, ptr %.sroa.26.0..sroa_idx, align 16
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 776
  store i8 0, ptr %.sroa.27.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert.exit, %._crit_edge341
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258_crit_edge, %bb.ax
  %i.ft = phi i64 [ %.pre351, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258_crit_edge ], [ %.sroa.0102.0, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %bb.cb, label %.thread330

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i275 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.ck unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i275: ; preds = %bb.cb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread330 unwind label %bb.x

.thread330:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert.exit258, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs8GyQQEoxZtT_7convert.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.as

.body:                                            ; preds = %bb.ce, %bb.j, %.body250
  %.pn216 = phi { ptr, i32 } [ %.pn214, %.body250 ], [ %i.fx, %bb.ce ], [ %i.az, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #19
          to label %.body281 unwind label %bb.w

bb.ce:                                            ; preds = %bb.k
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECs8GyQQEoxZtT_7convert.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body281 unwind label %bb.ch

bb.cg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECs8GyQQEoxZtT_7convert.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert.exit unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body281

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4line21IncompleteLineProgramINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEjEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 dereferenceable(320) %2)
  br label %bb.ca

bb.cj:                                            ; preds = %bb.az, %.body255
  %eh.lpad-body256 = phi { ptr, i32 } [ %.pn, %.body255 ], [ %i.cw, %bb.az ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #19
          to label %bb.ck unwind label %bb.w

bb.ck:                                            ; preds = %bb.ai, %bb.cj, %bb.s, %bb.x, %bb.an, %bb.cc
  %.pn212.ph = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %eh.lpad-body256, %bb.cj ], [ %i.cb, %bb.ai ], [ %i.cl, %bb.an ], [ %i.bn, %bb.x ], [ %i.fv, %bb.cc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #19
          to label %.body250 unwind label %bb.w

.body281:                                         ; preds = %bb.ci, %bb.cf, %.body
  %.pn218 = phi { ptr, i32 } [ %.pn216, %.body ], [ %i.ga, %bb.ci ], [ %i.fy, %bb.cf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4line21IncompleteLineProgramINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEjEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 dereferenceable(320) %2) #19
          to label %bb.cl unwind label %bb.w

bb.cl:                                            ; preds = %.body281
  resume { ptr, i32 } %.pn218
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7programCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) initializes((0, 304)) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(784) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 16 dereferenceable(280) %i.a, i64 280, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4line21IncompleteLineProgramINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEjEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 16 dereferenceable(320) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEE9drop_slowCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !256, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !257
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEE9drop_slowCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit unwind label %bb.d, !inline_history !254

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB8_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB22_5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !inline_history !255
  unreachable

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.d ]
  %i.l = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 64, 441) 440, i64 noundef 8) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert.exit
  %i.p = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit2, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit2

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 64, 441) 440, i64 noundef 8) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert.exit, %bb.i, %bb.j
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1f_12endian_slice11EndianSliceNtNtB1h_9endianity13RunTimeEndianEERNtNtBG_5alloc6GlobalEECs8GyQQEoxZtT_7convert.exit: ; preds = %bb.h, %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsE9drop_slowCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECs8GyQQEoxZtT_7convert.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %.body unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECs8GyQQEoxZtT_7convert.exit.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECs8GyQQEoxZtT_7convert.exit unwind label %bb.g

bb.f:                                             ; preds = %.body.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECs8GyQQEoxZtT_7convert.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.g
end_hunk_0
