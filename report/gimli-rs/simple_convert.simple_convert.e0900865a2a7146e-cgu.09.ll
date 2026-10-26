Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_convert.simple_convert.e0900865a2a7146e-cgu.09?download=true
inline.NumInlined: 173
inline.NumDeleted: 95
begin_hunk_0_@_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE12convert_fileCsjhlb6SMKfKY_14simple_convert:bb.a
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %2, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.f)
          to label %.noexc unwind label %bb.f

bb.h:                                             ; preds = %bb.e, %bb.l
  %.sroa.016.0 = phi i64 [ %.pr47, %bb.l ], [ -1, %bb.e ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.016.0, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.618, i64 16, i1 false)
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.w, ptr %.sroa.728.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

.noexc:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !13, !noalias !56, !noundef !5
  %i.ad = icmp eq i8 %i.ac, 2
  %.sroa.033.0.copyload.i39 = load ptr, ptr %i.b, align 8, !noalias !56 ; 2 uses
  %.sroa.434.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.434.0.copyload.i41 = load i64, ptr %.sroa.434.0..sroa_idx.i40, align 8, !noalias !56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56
  br i1 %i.ad, label %.thread, label %bb.i

bb.i:                                             ; preds = %.noexc
  store i64 -1, ptr %i.a, align 8, !noalias !56
  %.sroa.6.0..sroa_idx10.i42 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.033.0.copyload.i39, ptr %.sroa.6.0..sroa_idx10.i42, align 8, !noalias !56
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.434.0.copyload.i41, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i43, align 8, !noalias !56
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.j unwind label %bb.f

.thread:                                          ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.033.0.copyload.i39, ptr %i.ae, align 8, !alias.scope !55
  %.sroa.438.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.434.0.copyload.i41, ptr %.sroa.438.0..sroa_idx.i44, align 8, !alias.scope !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %.pr47 = load i64, ptr %i.e, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = icmp eq i64 %.pr47, -1
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pre = load i64, ptr %i.i, align 8, !range !10, !alias.scope !57
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.432.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.b, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.d
  %i.ai = phi i64 [ %.pre, %bb.k ], [ %.pr, %bb.d ]
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.aa, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.n
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

bb.q:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE3newCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([784 x i8]) align 16 captures(none) dereferenceable(784) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(320) %2, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %3, i32 %4, i40 %5, ptr noalias nofree noundef align 8 dereferenceable(88) %6, ptr noalias nofree noundef align 8 dereferenceable(88) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  invoke void @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE9directoryCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2, i64 noundef 0)
          to label %bb.b unwind label %8

.body250:                                         ; preds = %8, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %bb.ck
  %.pn214 = phi { ptr, i32 } [ %i.cq, %bb.au ], [ %.pn212.ph, %bb.ck ], [ %lpad.loopexit.split-lp377, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %9, %8 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #19
          to label %.body unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.ao = load i64, ptr %i.ae, align 16, !range !14, !noundef !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !99
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.ae)
          to label %.noexc unwind label %8

.noexc:                                           ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !range !13, !noalias !99, !noundef !5
  %i.ar = icmp eq i8 %i.aq, 2
  %.sroa.033.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !99 ; 2 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.434.0.copyload.i = load i64, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !99 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !99
  br i1 %i.ar, label %.thread, label %bb.d

bb.d:                                             ; preds = %.noexc
  store i64 -1, ptr %i.g, align 8, !noalias !99
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.033.0.copyload.i, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !99
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.434.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i, align 8, !noalias !99
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i32 noundef %.sroa.0183.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.f unwind label %8

.thread:                                          ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.033.0.copyload.i, ptr %i.as, align 8, !alias.scope !98
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.434.0.copyload.i, ptr %.sroa.438.0..sroa_idx.i, align 8, !alias.scope !98
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

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

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.bz, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i, %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECsjhlb6SMKfKY_14simple_convert.exit unwind label %bb.ce

bb.l:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 86, ptr %i.bb, align 8
  store i64 2, ptr %0, align 16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

bb.n:                                             ; preds = %bb.e
  store i64 0, ptr %i.af, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  br label %bb.i

bb.o:                                             ; preds = %bb.i
  %.pre = load i8, ptr %.sroa.373.0..sroa_idx, align 8, !range !13
  %i.bc = icmp eq i8 %.pre, 2
  br i1 %i.bc, label %bb.r, label %bb.t

bb.p:                                             ; preds = %bb.i
  store i8 2, ptr %.sroa.373.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !100, !noundef !5
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bg = load ptr, ptr %i.bf, align 16, !alias.scope !100, !nonnull !5, !noundef !5
  br label %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCsjhlb6SMKfKY_14simple_convert.exit

bb.r:                                             ; preds = %bb.o
  %i.bh = load i64, ptr %2, align 16, !range !14, !alias.scope !100, !noundef !5
  %.not2.i = icmp eq i64 %i.bh, -1
  br i1 %.not2.i, label %select.unfold, label %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCsjhlb6SMKfKY_14simple_convert.exit

bb.s:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #19
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
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, i32 noundef %.sroa.0186.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
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
  %i.bl = icmp sgt i8 %i.bk, 0
  br i1 %i.bl, label %bb.ax, label %bb.aw

bb.w:                                             ; preds = %.body281, %bb.ck, %bb.cj, %.body, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai, %bb.s, %.body250
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i275, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i245, %bb.ad, %bb.ac, %bb.z
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.q, %bb.r
  %.sroa.0.0.i = phi ptr [ %2, %bb.r ], [ %i.bg, %bb.q ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 80
  %i.bp = load i64, ptr %i.bo, align 16, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %bb.z

select.unfold:                                    ; preds = %bb.r, %bb.p
  %i.br = icmp ult i16 %.sroa.10.0, 5
  br i1 %i.br, label %bb.ar, label %bb.aq

bb.y:                                             ; preds = %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCsjhlb6SMKfKY_14simple_convert.exit
  store i64 -1, ptr %i.y, align 8
  %.pre352.a = zext i16 %.sroa.10.0 to i32
  %.pre353.a = shl nuw i32 %.pre352.a, 16
  %.pre354.a = zext i8 %.sroa.9.0 to i32
  %.pre355.a = shl nuw nsw i32 %.pre354.a, 8
  %.pre356.a = or disjoint i32 %.pre353.a, %.pre355.a
  %.pre357 = zext i8 %.sroa.017.0 to i32
  %.pre358 = or disjoint i32 %.pre356.a, %.pre357
  br label %bb.aa

bb.z:                                             ; preds = %_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE4fileCsjhlb6SMKfKY_14simple_convert.exit
  invoke void @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE9directoryCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2, i64 noundef %i.bp)
          to label %bb.ab unwind label %bb.x

bb.aa:                                            ; preds = %bb.ah, %bb.y
  %.sroa.0192.0.insert.insert.pre-phi = phi i32 [ %.sroa.0189.0.insert.insert, %bb.ah ], [ %.pre358, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !102
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.u)
          to label %.noexc241 unwind label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.bs = load i64, ptr %i.x, align 16, !range !14, !noundef !5
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
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !104
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.x)
          to label %.noexc232 unwind label %bb.x

.noexc232:                                        ; preds = %bb.ac
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !range !13, !noalias !104, !noundef !5
  %i.bv = icmp eq i8 %i.bu, 2
  %.sroa.033.0.copyload.i226 = load ptr, ptr %i.f, align 8, !noalias !104 ; 2 uses
  %.sroa.434.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.434.0.copyload.i228 = load i64, ptr %.sroa.434.0..sroa_idx.i227, align 8, !noalias !104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !104
  br i1 %i.bv, label %.thread319, label %bb.ad

bb.ad:                                            ; preds = %.noexc232
  store i64 -1, ptr %i.e, align 8, !noalias !104
  %.sroa.6.0..sroa_idx10.i229 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.033.0.copyload.i226, ptr %.sroa.6.0..sroa_idx10.i229, align 8, !noalias !104
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.434.0.copyload.i228, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i230, align 8, !noalias !104
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %.sroa.0189.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.af unwind label %bb.x

.thread319:                                       ; preds = %.noexc232
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.033.0.copyload.i226, ptr %i.bw, align 8, !alias.scope !103
  %.sroa.438.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.434.0.copyload.i228, ptr %.sroa.438.0..sroa_idx.i231, align 8, !alias.scope !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 88, ptr %i.bx, align 8
  store i64 2, ptr %0, align 16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert.exit249

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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert.exit249

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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #19
          to label %bb.ck unwind label %bb.w

.noexc241:                                        ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !range !13, !noalias !102, !noundef !5
  %i.ce = icmp eq i8 %i.cd, 2
  %.sroa.033.0.copyload.i235 = load ptr, ptr %i.d, align 8, !noalias !102 ; 2 uses
  %.sroa.434.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.434.0.copyload.i237 = load i64, ptr %.sroa.434.0..sroa_idx.i236, align 8, !noalias !102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !102
  br i1 %i.ce, label %.thread322, label %bb.aj

bb.aj:                                            ; preds = %.noexc241
  store i64 -1, ptr %i.c, align 8, !noalias !102
  %.sroa.6.0..sroa_idx10.i238 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.033.0.copyload.i235, ptr %.sroa.6.0..sroa_idx10.i238, align 8, !noalias !102
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i239 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.434.0.copyload.i237, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i239, align 8, !noalias !102
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %.sroa.0192.0.insert.insert.pre-phi, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.ak unwind label %bb.ai

.thread322:                                       ; preds = %.noexc241
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.033.0.copyload.i235, ptr %i.cf, align 8, !alias.scope !101
  %.sroa.438.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.434.0.copyload.i237, ptr %.sroa.438.0..sroa_idx.i240, align 8, !alias.scope !101
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
  %i.cj = load i64, ptr %i.y, align 8, !range !9, !alias.scope !105, !noundef !5
  %i.ck = icmp sgt i64 %i.cj, -1
  br i1 %i.ck, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert.exit249

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i245 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ck unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i245: ; preds = %bb.am
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert.exit249 unwind label %bb.x

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

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert.exit249: ; preds = %bb.ae, %bb.ag, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i245
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

bb.as:                                            ; preds = %.thread330, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert.exit249, %bb.aq
  %i.co = load i64, ptr %i.af, align 8, !range !10, !alias.scope !106, !noundef !5
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body250 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit unwind label %8

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
          to label %bb.bb unwind label %8

bb.ax:                                            ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 89, ptr %i.ct, align 8
  store i64 2, ptr %0, align 16
  %i.cu = load i64, ptr %i.ab, align 8, !range !10, !alias.scope !107, !noundef !5
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.cj unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258_crit_edge unwind label %bb.by

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258_crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254
  %.pre351 = load i64, ptr %i.ac, align 8, !range !9, !alias.scope !108
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258

8:                                                ; preds = %bb.a, %bb.c, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i, %bb.bn, %bb.aw
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %.body250

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cy = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !noundef !5
  %i.cz = icmp ult i16 %i.cy, 5
  br i1 %i.cz, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.da = load i64, ptr %i.al, align 8, !alias.scope !109, !noundef !5 ; 3 uses
  %i.db = load i64, ptr %i.ah, align 8, !range !15, !alias.scope !109, !noundef !5
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8grow_oneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #21
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit, %bb.bb
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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line11LineProgramECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(280) %i.s) #19
          to label %.body250 unwind label %bb.w

bb.bf:                                            ; preds = %bb.bc, %bb.bd
  %i.dk = load ptr, ptr %i.ak, align 8, !alias.scope !109, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.da
  store i64 0, ptr %i.dl, align 8
  %i.dm = add i64 %i.da, 1
  store i64 %i.dm, ptr %i.al, align 8, !alias.scope !109
  %i.dn = load i64, ptr %i.an, align 8, !alias.scope !110, !noundef !5 ; 3 uses
  %i.do = load i64, ptr %i.ag, align 8, !range !15, !alias.scope !110, !noundef !5
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.bg, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8grow_oneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #21
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.bg, %bb.bf
  %i.dq = load ptr, ptr %i.am, align 8, !alias.scope !110, !nonnull !5, !noundef !5
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dn
  store i64 0, ptr %i.dr, align 8
  %i.ds = add i64 %i.dn, 1
  store i64 %i.ds, ptr %i.an, align 8, !alias.scope !110
  br label %bb.be

bb.bh:                                            ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit271
  %.sroa.0170.0337 = phi ptr [ %i.de, %.lr.ph ], [ %i.dt, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit271 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0170.0337, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %.sroa.0170.0337)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  invoke void @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read5dwarfINtB5_5DwarfINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE16attr_line_stringCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.m)
          to label %.noexc267 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %bb.bh
  %i.du = load i8, ptr %i.dj, align 8, !range !13, !noalias !112, !noundef !5
  %i.dv = icmp eq i8 %i.du, 2
  %.sroa.033.0.copyload.i261 = load ptr, ptr %i.b, align 8, !noalias !112 ; 2 uses
  %.sroa.434.0.copyload.i263 = load i64, ptr %.sroa.434.0..sroa_idx.i262, align 8, !noalias !112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  br i1 %i.dv, label %.thread325, label %bb.bi

bb.bi:                                            ; preds = %.noexc267
  store i64 -1, ptr %i.a, align 8, !noalias !112
  store ptr %.sroa.033.0.copyload.i261, ptr %.sroa.6.0..sroa_idx10.i264, align 8, !noalias !112
  store i64 %.sroa.434.0.copyload.i263, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.i265, align 8, !noalias !112
  invoke void @_RINvMs1_NtNtCsi68uqYEhoRA_5gimli5write4lineNtB6_10LineString3newINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %.sroa.0195.0.insert.insert, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread325:                                       ; preds = %.noexc267
  store ptr %.sroa.033.0.copyload.i261, ptr %.sroa.4173.0..sroa_idx, align 8, !alias.scope !111
  %.sroa.438.0..sroa_idx.i266 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.434.0.copyload.i263, ptr %.sroa.438.0..sroa_idx.i266, align 8, !alias.scope !111
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
  %i.dz = load i64, ptr %i.al, align 8, !alias.scope !113, !noundef !5 ; 3 uses
  %i.ea = load i64, ptr %i.ah, align 8, !range !15, !alias.scope !113, !noundef !5
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.bm, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit271

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8grow_oneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #21
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit271: ; preds = %bb.bm, %bb.bl
  %i.ec = load ptr, ptr %i.ak, align 8, !alias.scope !113, !nonnull !5, !noundef !5
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dz
  store i64 %i.dy, ptr %i.ed, align 8
  %i.ee = add i64 %i.dz, 1
  store i64 %i.ee, ptr %i.al, align 8, !alias.scope !113
  %i.ef = icmp eq ptr %i.dt, %i.dh
  br i1 %i.ef, label %._crit_edge, label %bb.bh

bb.bn:                                            ; preds = %bb.bu, %.loopexit334
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line11LineProgramECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(280) %i.s)
          to label %bb.bz unwind label %8

._crit_edge:                                      ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit271, %bb.be
  %i.eg = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE18file_has_timestampCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 274
  %i.ei = zext i1 %i.eg to i8
  store i8 %i.ei, ptr %i.eh, align 2
  %i.ej = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE13file_has_sizeCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 275
  %i.el = zext i1 %i.ej to i8
  store i8 %i.el, ptr %i.ek, align 1
  %i.em = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE12file_has_md5Csjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 276
  %i.eo = zext i1 %i.em to i8
  store i8 %i.eo, ptr %i.en, align 4
  %i.ep = invoke noundef zeroext i1 @_RNvMsa_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_17LineProgramHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE15file_has_sourceCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %2)
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

bb.bs:                                            ; preds = %.lr.ph340, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit273
  %.sroa.0175.0338 = phi ptr [ %i.et, %.lr.ph340 ], [ %i.ey, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit273 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0175.0338, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ez = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.fa = load i64, ptr %i.al, align 8, !noundef !5
  invoke fastcc void @_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE12convert_fileCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.k, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0175.0338, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ez, i64 noundef %i.fa, i32 noundef %.sroa.0195.0.insert.insert, ptr noalias nofree noundef align 8 dereferenceable(88) %6)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.fb = load i64, ptr %i.k, align 8, !range !9, !noundef !5 ; 2 uses
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
  %i.ff = load i64, ptr %i.an, align 8, !alias.scope !114, !noundef !5 ; 3 uses
  %i.fg = load i64, ptr %i.ag, align 8, !range !15, !alias.scope !114, !noundef !5
  %i.fh = icmp eq i64 %i.ff, %i.fg
  br i1 %i.fh, label %bb.bx, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit273

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8grow_oneCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #21
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit273 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit273: ; preds = %bb.bx, %bb.bw
  %i.fi = load ptr, ptr %i.am, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.ff
  store i64 %i.fe, ptr %i.fj, align 8
  %i.fk = add i64 %i.ff, 1
  store i64 %i.fk, ptr %i.an, align 8, !alias.scope !114
  %i.fl = icmp eq ptr %i.ey, %i.ew
  br i1 %i.fl, label %._crit_edge341, label %bb.bs

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bz:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit

._crit_edge341:                                   ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdE8push_mutCsjhlb6SMKfKY_14simple_convert.exit273, %bb.br
  %i.fn = load i8, ptr %i.aj, align 4, !range !7, !noundef !5
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !115, !nonnull !5, !noundef !5
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fr = load i64, ptr %i.fq, align 16, !alias.scope !115, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 248
  %.val.i = load i8, ptr %i.fs, align 8, !range !7, !alias.scope !115, !noundef !5
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

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECsjhlb6SMKfKY_14simple_convert.exit, %._crit_edge341
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258_crit_edge, %bb.ax
  %i.ft = phi i64 [ %.pre351, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i254._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258_crit_edge ], [ %.sroa.0102.0, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %bb.cb, label %.thread330

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i275 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.ck unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i275: ; preds = %bb.cb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread330 unwind label %bb.x

.thread330:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert.exit258, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsjhlb6SMKfKY_14simple_convert.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.as

.body:                                            ; preds = %bb.ce, %bb.j, %.body250
  %.pn216 = phi { ptr, i32 } [ %.pn214, %.body250 ], [ %i.fx, %bb.ce ], [ %i.az, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #19
          to label %.body281 unwind label %bb.w

bb.ce:                                            ; preds = %bb.k
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECsjhlb6SMKfKY_14simple_convert.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body281 unwind label %bb.ch

bb.cg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsi68uqYEhoRA_5gimli5write4line2id6FileIdEECsjhlb6SMKfKY_14simple_convert.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECsjhlb6SMKfKY_14simple_convert.exit unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body281

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli5write4line11DirectoryIdEECsjhlb6SMKfKY_14simple_convert.exit: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4line21IncompleteLineProgramINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEjEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 dereferenceable(320) %2)
  br label %bb.ca

bb.cj:                                            ; preds = %bb.az, %bb.by
  %eh.lpad-body256 = phi { ptr, i32 } [ %i.fm, %bb.by ], [ %i.cw, %bb.az ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #19
          to label %bb.ck unwind label %bb.w

bb.ck:                                            ; preds = %bb.ai, %bb.cj, %bb.s, %bb.x, %bb.an, %bb.cc
  %.pn212.ph = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %eh.lpad-body256, %bb.cj ], [ %i.cb, %bb.ai ], [ %i.cl, %bb.an ], [ %i.bn, %bb.x ], [ %i.fv, %bb.cc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4line10LineStringECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #19
          to label %.body250 unwind label %bb.w

.body281:                                         ; preds = %bb.ci, %bb.cf, %.body
  %.pn218 = phi { ptr, i32 } [ %.pn216, %.body ], [ %i.ga, %bb.ci ], [ %i.fy, %bb.cf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read4line21IncompleteLineProgramINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEjEECsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef align 16 dereferenceable(320) %2) #19
          to label %bb.cl unwind label %bb.w

bb.cl:                                            ; preds = %.body281
  resume { ptr, i32 } %.pn218
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsi68uqYEhoRA_5gimli5write4line7convertINtB2_18ConvertLineProgramINtNtNtB8_4read12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianEE7convertCsjhlb6SMKfKY_14simple_convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(784) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 16               ; 9 uses
  %i.d = alloca [112 x i8], align 16              ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [88 x i8], align 16               ; 8 uses
  %i.g = alloca [112 x i8], align 16              ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.446.i = alloca [88 x i8], align 8        ; 8 uses
  %.sroa.11234.i = alloca [88 x i8], align 8      ; 7 uses
  %i.i = alloca [784 x i8], align 16              ; 6 uses
  %i.j = alloca [304 x i8], align 8               ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 322 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 393 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 394 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 396 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 397 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 395 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 3 uses
  %.sroa.4263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 4 uses
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.658.i.sroa.7.0..sroa.4142.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.658.i.sroa.7.0..sroa.658.0..sroa_idx59.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.sroa.530.sroa.4.0..sroa.530.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.sroa.530.sroa.6.0..sroa.530.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.sroa.530.sroa.8.0..sroa.530.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.446.i)
  %i.au = load i8, ptr %i.m, align 8, !range !13, !alias.scope !135, !noundef !5
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 16, !alias.scope !135
  %i.av = load i8, ptr %i.ac, align 1, !range !7, !alias.scope !135, !noundef !5
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ax = load i64, ptr %1, align 16, !range !12, !alias.scope !135, !noundef !5
  %i.ay = load i64, ptr %i.ab, align 8, !alias.scope !135
  store i64 0, ptr %1, align 16, !alias.scope !135
  %i.az = trunc nuw i64 %i.ax to i1
  br i1 %i.az, label %bb.ag, label %bb.ae

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %i.m, align 8, !alias.scope !135
  %i.ba = load i64, ptr %i.o, align 8, !alias.scope !136, !noundef !5 ; 3 uses
  %i.bb = load i64, ptr %i.p, align 16, !alias.scope !136, !noundef !5 ; 3 uses
  %i.bc = load i64, ptr %i.q, align 16, !alias.scope !136, !noundef !5 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 1152921504606846976
  call void @llvm.assume(i1 %i.bd)
  %.not.i.i = icmp ult i64 %i.bb, %i.bc
  br i1 %.not.i.i, label %bb.f, label %.loopexit218

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i64 %i.bb, 0
  %i.bf = load i16, ptr %i.r, align 2, !alias.scope !136
  %i.bg = icmp ult i16 %i.bf, 5
  %or.cond.i.i = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %.loopexit218, label %bb.ah

bb.g:                                             ; preds = %bb.c
  %i.bh = load i8, ptr %i.ad, align 4, !range !7, !alias.scope !135, !noundef !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !alias.scope !135
  store i64 1, ptr %i.p, align 16, !alias.scope !135
  store i64 1, ptr %i.t, align 8, !alias.scope !135
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !135
  store i8 %i.bh, ptr %i.w, align 1, !alias.scope !135
  store i8 0, ptr %i.ac, align 1, !alias.scope !135
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  store i64 0, ptr %i.v, align 16, !alias.scope !135
  store i8 0, ptr %i.x, align 2, !alias.scope !135
  store i8 0, ptr %i.y, align 4, !alias.scope !135
  store i8 0, ptr %i.z, align 1, !alias.scope !135
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11234.i)
  %.val.i245 = load i64, ptr %i.ag, align 16, !alias.scope !135, !noundef !5
  %i.bi = icmp eq i64 %.val.i245, 0
  br i1 %i.bi, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.t
  %.sroa.037.0.i246 = phi i1 [ %.sroa.037.1.i, %bb.t ], [ false, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read4lineINtB5_15LineInstructionINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE5parseCsjhlb6SMKfKY_14simple_convert(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph
  %i.bj = load i64, ptr %i.a, align 16, !range !138, !noalias !137, !noundef !5 ; 5 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = load <2 x i64>, ptr %.sroa.4263.0..sroa_idx.i, align 8, !noalias !139 ; 4 uses
  %i.bm = extractelement <2 x i64> %i.bl, i64 0   ; 4 uses
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8, !alias.scope !140, !noalias !141
  store i64 0, ptr %i.ag, align 16, !alias.scope !140, !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11234.i)
  %.sroa.0.sroa.0.0.extract.trunc98 = trunc i64 %i.bm to i8
  %i.bn = bitcast <2 x i64> %i.bl to <16 x i8>
  %.sroa.0.sroa.18.0.extract.trunc118 = extractelement <16 x i8> %i.bn, i64 1
  %.sroa.0.sroa.20.0.extract.shift137 = lshr i64 %i.bm, 16
  %.sroa.0.sroa.20.0.extract.trunc138 = trunc nuw i64 %.sroa.0.sroa.20.0.extract.shift137 to i48
  %i.bo = extractelement <2 x i64> %i.bl, i64 1
  br label %.loopexit218

bb.j:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11234.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5264.0..sroa_idx.i, i64 88, i1 false), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.446.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11234.i, i64 88, i1 false), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11234.i)
  store i64 %i.bj, ptr %i.d, align 16, !noalias !142
  store <2 x i64> %i.bl, ptr %.sroa.345.0..sroa_idx.i, align 8, !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.446.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.446.i, i64 88, i1 false), !noalias !142
  %i.bp = icmp ne i64 %i.bj, 65
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nsw i64 %i.bj, -47
  %i.br = icmp samesign ugt i64 %i.bj, 46
  %i.bs = select i1 %i.br, i64 %i.bq, i64 18
  switch i64 %i.bs, label %bb.k [
    i64 17, label %bb.l
    i64 18, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
end_hunk_0
