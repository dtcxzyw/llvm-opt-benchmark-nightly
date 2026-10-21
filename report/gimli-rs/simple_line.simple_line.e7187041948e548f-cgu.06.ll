Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_line.simple_line.e7187041948e548f-cgu.06?download=true
inline.NumInlined: 136
inline.NumDeleted: 92
begin_hunk_0_@_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read3elf4fileINtB2_7ElfFileINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEE5parseCsjQ7aQP35kzr_11simple_line:bb.a
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.445, i64 64, i1 false)
  store i64 %i.ax, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %.sroa.559.0..sroa_idx, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.660.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.861.0..sroa_idx, align 8
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.y, ptr %.sroa.962.0..sroa_idx, align 8
  %.sroa.1063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aa, ptr %.sroa.1063.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ak, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.an, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ap, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x i64> %i.aq, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ar, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.au, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.aw, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.t, ptr %.sroa.22.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.f, %bb.p, %bb.n, %bb.b
  ret void

bb.p:                                             ; preds = %bb.m, %bb.j, %bb.l, %bb.h
  %.sink91 = phi ptr [ %i.an, %bb.j ], [ %i.ag, %bb.h ], [ %i.au, %bb.l ], [ %i.ba, %bb.m ]
  %.sink = phi i64 [ %i.ap, %bb.j ], [ %i.ai, %bb.h ], [ %i.aw, %bb.l ], [ %i.bc, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink91, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.be, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader32NtNtB8_6endian10EndiannessEE5parseCsjQ7aQP35kzr_11simple_line(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.034 = alloca [48 x i8], align 8          ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader5parseRShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0)
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho12MachHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho4file10MachHeader6endianCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %i.p)
  %i.q = load ptr, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %.not62 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.r, align 8, !range !6, !noundef !5 ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho12MachHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %i.p, i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.w, %bb.p, %bb.ab, %bb.s, %bb.k, %bb.e
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %.body unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !range !9, !noundef !5 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.g

_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86: ; preds = %bb.h, %bb.i, %bb.j, %.thread, %bb.g, %bb.f
  %.sroa.7.sroa.4.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.7.sroa.4.1146, %bb.h ], [ %.sroa.7.sroa.4.1146, %bb.i ], [ %.sroa.7.sroa.4.1146, %bb.j ], [ %.sroa.7.sroa.4.2, %.thread ]
  %.sroa.533.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.533.1147, %bb.h ], [ %.sroa.533.1147, %bb.i ], [ %.sroa.533.1147, %bb.j ], [ %.sroa.533.2, %.thread ]
  %.sroa.332.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.332.1148, %bb.h ], [ %.sroa.332.1148, %bb.i ], [ %.sroa.332.1148, %bb.j ], [ %.sroa.332.2, %.thread ]
  %.sroa.031.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ], [ %.sroa.031.1149, %bb.h ], [ %.sroa.031.1149, %bb.i ], [ %.sroa.031.1149, %bb.j ], [ %.sroa.031.2, %.thread ]
  %i.ae = phi <2 x i64> [ <i64 undef, i64 0>, %bb.f ], [ <i64 undef, i64 0>, %bb.g ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ], [ %i.bx, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.034.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.034, i64 48, i1 false)
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %.sroa.737.0..sroa_idx, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.031.0, ptr %.sroa.838.0..sroa_idx, align 8
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.332.0, ptr %.sroa.939.0..sroa_idx, align 8
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.533.0, ptr %.sroa.1040.0..sroa_idx, align 8
  %.sroa.1141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.ae, ptr %.sroa.1141.0..sroa_idx, align 8
  %.sroa.1141.sroa.5.0..sroa.1141.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.7.sroa.4.0, ptr %.sroa.1141.sroa.5.0..sroa.1141.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.v, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ai

bb.g:                                             ; preds = %bb.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.af = icmp eq i32 %.sroa.8.0.copyload, 0
  br i1 %i.af, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.g
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8
  %i.ag = trunc nuw i8 %i.ac to i1                ; 2 uses
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph150, %.thread
  %.sroa.031.1149 = phi ptr [ inttoptr (i64 1 to ptr), %.lr.ph150 ], [ %.sroa.031.2, %.thread ] ; 6 uses
  %.sroa.332.1148 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.332.2, %.thread ] ; 6 uses
  %.sroa.533.1147 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.533.2, %.thread ] ; 6 uses
  %.sroa.7.sroa.4.1146 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.7.sroa.4.2, %.thread ] ; 6 uses
  %.sroa.0.0143 = phi ptr [ %.sroa.0.0.copyload, %.lr.ph150 ], [ %storemerge10.i.i.i, %.thread ] ; 6 uses
  %.sroa.6.0142 = phi i64 [ %.sroa.6.0.copyload, %.lr.ph150 ], [ %storemerge.i.i.i, %.thread ] ; 3 uses
  %.sroa.8.0141 = phi i32 [ %.sroa.8.0.copyload, %.lr.ph150 ], [ %i.as, %.thread ]
  %i.ak = phi <2 x i64> [ <i64 undef, i64 0>, %.lr.ph150 ], [ %i.bx, %.thread ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0143) ]
  %i.al = icmp samesign ult i64 %.sroa.6.0142, 8
  br i1 %i.al, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.020.0.copyload.i.i = load i32, ptr %.sroa.0.0143, align 1, !noalias !26 ; 2 uses
  %i.am = call i32 @llvm.bswap.i32(i32 %.sroa.020.0.copyload.i.i)
  %.sroa.03.0.i.i.i = select i1 %i.ag, i32 %i.am, i32 %.sroa.020.0.copyload.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0143, i64 4
  %.sroa.022.0.copyload.i.i = load i32, ptr %i.an, align 1, !noalias !26 ; 2 uses
  %i.ao = call i32 @llvm.bswap.i32(i32 %.sroa.022.0.copyload.i.i)
  %.sroa.03.0.i26.i.i = select i1 %i.ag, i32 %i.ao, i32 %.sroa.022.0.copyload.i.i ; 3 uses
  %i.ap = icmp ult i32 %.sroa.03.0.i26.i.i, 8
  br i1 %i.ap, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = zext i32 %.sroa.03.0.i26.i.i to i64     ; 4 uses
  %.not.i.i.i = icmp ult i64 %.sroa.6.0142, %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0143, i64 %i.aq
  %storemerge10.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.ar
  %storemerge.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0142, i64 range(i64 8, 0) %i.aq)
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.14.16.insert.ext.i = zext i32 %.sroa.03.0.i.i.i to i64
  %i.as = add i32 %.sroa.8.0141, -1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0143, ptr %i.a, align 8
  store i64 %i.aq, ptr %.sroa.675.0..sroa_idx, align 8
  store i64 %.sroa.14.16.insert.ext.i, ptr %.sroa.876.0..sroa_idx, align 8
  invoke void @_RNvXs2_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7segmentINtNtBb_5macho16SegmentCommand32NtNtBb_6endian10EndiannessENtB5_7Segment12from_commandCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.e, align 8, !range !7, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aw = load i64, ptr %.sroa.449.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.550.0.copyload = load i64, ptr %.sroa.550.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not64 = icmp eq ptr %i.av, null
  br i1 %.not64, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.y, align 8, !alias.scope !27, !noundef !5 ; 3 uses
  %i.ay = load i64, ptr %i.h, align 8, !range !10, !alias.scope !27, !noundef !5
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEE8grow_oneCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #19
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.n
  %i.ba = icmp eq i32 %.sroa.03.0.i.i.i, 2
  br i1 %i.ba, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult i32 %.sroa.03.0.i26.i.i, 24
  br i1 %i.bb, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit, label %bb.ab

bb.s:                                             ; preds = %bb.o, %bb.p
  %i.bc = load ptr, ptr %i.x, align 8, !alias.scope !27, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 3 uses
  store ptr %i.av, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.be = add i64 %i.ax, 1
  store i64 %i.be, ptr %i.y, align 8, !alias.scope !27
  %i.bf = inttoptr i64 %i.aw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho16SegmentCommand32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7segment7Segment8sectionsRShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(56) %i.av, i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %.sroa.550.0.copyload)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bj = load i64, ptr %i.aj, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bh, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.idx = mul nuw nsw i64 %i.bj, 68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %.pre = load i64, ptr %i.aa, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %i.bm = phi i64 [ %i.bv, %bb.x ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.052.0140 = phi ptr [ %i.bn, %bb.x ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.052.0140, i64 68 ; 2 uses
  %i.bo = icmp ult i64 %i.bm, 230584300921369396
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs3_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_20MachOSectionInternalINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessERShE5parseCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, i64 noundef %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(68) %.sroa.052.0140, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.aa, align 8, !alias.scope !28, !noundef !5 ; 3 uses
  %i.br = load i64, ptr %i.g, align 8, !range !10, !alias.scope !28, !noundef !5
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEE8grow_oneCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #19
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bt = load ptr, ptr %i.z, align 8, !alias.scope !28, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.bv = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.aa, align 8, !alias.scope !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = icmp eq ptr %i.bn, %i.bk
  br i1 %i.bw, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.x, %bb.u, %bb.q, %bb.ae
  %.sroa.7.sroa.4.2 = phi i64 [ %.sroa.7.sroa.4.1146, %bb.q ], [ %.sroa.858.0.copyload, %bb.ae ], [ %.sroa.7.sroa.4.1146, %bb.u ], [ %.sroa.7.sroa.4.1146, %bb.x ] ; 2 uses
  %.sroa.533.2 = phi i64 [ %.sroa.533.1147, %bb.q ], [ %i.cg, %bb.ae ], [ %.sroa.533.1147, %bb.u ], [ %.sroa.533.1147, %bb.x ] ; 2 uses
  %.sroa.332.2 = phi i64 [ %.sroa.332.1148, %bb.q ], [ %i.ci, %bb.ae ], [ %.sroa.332.1148, %bb.u ], [ %.sroa.332.1148, %bb.x ] ; 2 uses
  %.sroa.031.2 = phi ptr [ %.sroa.031.1149, %bb.q ], [ %i.cd, %bb.ae ], [ %.sroa.031.1149, %bb.u ], [ %.sroa.031.1149, %bb.x ] ; 2 uses
  %i.bx = phi <2 x i64> [ %i.ak, %bb.q ], [ %i.ch, %bb.ae ], [ %i.ak, %bb.u ], [ %i.ak, %bb.x ] ; 2 uses
  %i.by = icmp eq i32 %i.as, 0
  br i1 %i.by, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.h

_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit: ; preds = %bb.t, %bb.r, %bb.ad, %bb.m
  %.sink187.sink = phi ptr [ %i.av, %bb.m ], [ %i.cf, %bb.ad ], [ @4, %bb.r ], [ %i.bi, %bb.t ]
  %.sink.sink = phi i64 [ %i.aw, %bb.m ], [ %i.cg, %bb.ad ], [ 27, %bb.r ], [ %i.bj, %bb.t ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink187.sink, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.sink, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.aa

bb.z:                                             ; preds = %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit unwind label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ab:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs1_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtNtBc_5macho13SymtabCommandNtNtBc_6endian10EndiannessE7symbolsINtBZ_12MachHeader32B1p_ERShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %.sroa.0.0143, i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = load ptr, ptr %.sroa.455.0..sroa_idx, align 8 ; 2 uses
  %i.cg = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ch = load <2 x i64>, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.858.0.copyload = load i64, ptr %.sroa.858.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ci = ptrtoint ptr %i.cf to i64
  br label %.thread

.body:                                            ; preds = %bb.af, %bb.y, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp204, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cj, %bb.af ], [ %i.cb, %bb.y ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %common.resume unwind label %bb.aj

bb.af:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBO_5macho12MachHeader32NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader32NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader32NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit, %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, %bb.b
  ret void

bb.aj:                                            ; preds = %.body, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho4fileINtB2_9MachOFileINtNtB8_5macho12MachHeader64NtNtB8_6endian10EndiannessEE5parseCsjQ7aQP35kzr_11simple_line(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.034 = alloca [48 x i8], align 8          ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader5parseRShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0)
  %i.k = load ptr, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvYINtNtCs9Jn0q30Ea0B_6object5macho12MachHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read5macho4file10MachHeader6endianCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.p)
  %i.q = load ptr, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %.not62 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.r, align 8, !range !6, !noundef !5 ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho12MachHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho4file10MachHeader13load_commandsRShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.p, i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.w, %bb.p, %bb.ab, %bb.s, %bb.k, %bb.e
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %.body unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !range !9, !noundef !5 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.g

_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86: ; preds = %bb.h, %bb.i, %bb.j, %.thread, %bb.g, %bb.f
  %.sroa.7.sroa.4.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.7.sroa.4.1146, %bb.h ], [ %.sroa.7.sroa.4.1146, %bb.i ], [ %.sroa.7.sroa.4.1146, %bb.j ], [ %.sroa.7.sroa.4.2, %.thread ]
  %.sroa.533.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.533.1147, %bb.h ], [ %.sroa.533.1147, %bb.i ], [ %.sroa.533.1147, %bb.j ], [ %.sroa.533.2, %.thread ]
  %.sroa.332.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.332.1148, %bb.h ], [ %.sroa.332.1148, %bb.i ], [ %.sroa.332.1148, %bb.j ], [ %.sroa.332.2, %.thread ]
  %.sroa.031.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %bb.g ], [ %.sroa.031.1149, %bb.h ], [ %.sroa.031.1149, %bb.i ], [ %.sroa.031.1149, %bb.j ], [ %.sroa.031.2, %.thread ]
  %i.ae = phi <2 x i64> [ <i64 undef, i64 0>, %bb.f ], [ <i64 undef, i64 0>, %bb.g ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ], [ %i.bx, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.034.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.034.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.034, i64 48, i1 false)
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %.sroa.737.0..sroa_idx, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.031.0, ptr %.sroa.838.0..sroa_idx, align 8
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.332.0, ptr %.sroa.939.0..sroa_idx, align 8
  %.sroa.1040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.533.0, ptr %.sroa.1040.0..sroa_idx, align 8
  %.sroa.1141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %i.ae, ptr %.sroa.1141.0..sroa_idx, align 8
  %.sroa.1141.sroa.5.0..sroa.1141.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.7.sroa.4.0, ptr %.sroa.1141.sroa.5.0..sroa.1141.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.v, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ai

bb.g:                                             ; preds = %bb.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.af = icmp eq i32 %.sroa.8.0.copyload, 0
  br i1 %i.af, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.g
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8
  %i.ag = trunc nuw i8 %i.ac to i1                ; 2 uses
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph150, %.thread
  %.sroa.031.1149 = phi ptr [ inttoptr (i64 1 to ptr), %.lr.ph150 ], [ %.sroa.031.2, %.thread ] ; 6 uses
  %.sroa.332.1148 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.332.2, %.thread ] ; 6 uses
  %.sroa.533.1147 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.533.2, %.thread ] ; 6 uses
  %.sroa.7.sroa.4.1146 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.7.sroa.4.2, %.thread ] ; 6 uses
  %.sroa.0.0143 = phi ptr [ %.sroa.0.0.copyload, %.lr.ph150 ], [ %storemerge10.i.i.i, %.thread ] ; 6 uses
  %.sroa.6.0142 = phi i64 [ %.sroa.6.0.copyload, %.lr.ph150 ], [ %storemerge.i.i.i, %.thread ] ; 3 uses
  %.sroa.8.0141 = phi i32 [ %.sroa.8.0.copyload, %.lr.ph150 ], [ %i.as, %.thread ]
  %i.ak = phi <2 x i64> [ <i64 undef, i64 0>, %.lr.ph150 ], [ %i.bx, %.thread ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0143) ]
  %i.al = icmp samesign ult i64 %.sroa.6.0142, 8
  br i1 %i.al, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.020.0.copyload.i.i = load i32, ptr %.sroa.0.0143, align 1, !noalias !39 ; 2 uses
  %i.am = call i32 @llvm.bswap.i32(i32 %.sroa.020.0.copyload.i.i)
  %.sroa.03.0.i.i.i = select i1 %i.ag, i32 %i.am, i32 %.sroa.020.0.copyload.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0143, i64 4
  %.sroa.022.0.copyload.i.i = load i32, ptr %i.an, align 1, !noalias !39 ; 2 uses
  %i.ao = call i32 @llvm.bswap.i32(i32 %.sroa.022.0.copyload.i.i)
  %.sroa.03.0.i26.i.i = select i1 %i.ag, i32 %i.ao, i32 %.sroa.022.0.copyload.i.i ; 3 uses
  %i.ap = icmp ult i32 %.sroa.03.0.i26.i.i, 8
  br i1 %i.ap, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = zext i32 %.sroa.03.0.i26.i.i to i64     ; 4 uses
  %.not.i.i.i = icmp ult i64 %.sroa.6.0142, %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0143, i64 %i.aq
  %storemerge10.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.ar
  %storemerge.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0142, i64 range(i64 8, 0) %i.aq)
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.14.16.insert.ext.i = zext i32 %.sroa.03.0.i.i.i to i64
  %i.as = add i32 %.sroa.8.0141, -1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0143, ptr %i.a, align 8
  store i64 %i.aq, ptr %.sroa.675.0..sroa_idx, align 8
  store i64 %.sroa.14.16.insert.ext.i, ptr %.sroa.876.0..sroa_idx, align 8
  invoke void @_RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7segmentINtNtBb_5macho16SegmentCommand64NtNtBb_6endian10EndiannessENtB5_7Segment12from_commandCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.e, align 8, !range !7, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aw = load i64, ptr %.sroa.449.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.550.0.copyload = load i64, ptr %.sroa.550.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not64 = icmp eq ptr %i.av, null
  br i1 %.not64, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.y, align 8, !alias.scope !40, !noundef !5 ; 3 uses
  %i.ay = load i64, ptr %i.h, align 8, !range !10, !alias.scope !40, !noundef !5
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEE8grow_oneCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #19
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.n
  %i.ba = icmp eq i32 %.sroa.03.0.i.i.i, 2
  br i1 %i.ba, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp ult i32 %.sroa.03.0.i26.i.i, 24
  br i1 %i.bb, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit, label %bb.ab

bb.s:                                             ; preds = %bb.o, %bb.p
  %i.bc = load ptr, ptr %i.x, align 8, !alias.scope !40, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 3 uses
  store ptr %i.av, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.be = add i64 %i.ax, 1
  store i64 %i.be, ptr %i.y, align 8, !alias.scope !40
  %i.bf = inttoptr i64 %i.aw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvYINtNtCs9Jn0q30Ea0B_6object5macho16SegmentCommand64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read5macho7segment7Segment8sectionsRShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(72) %i.av, i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %.sroa.550.0.copyload)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr %i.d, align 8, !range !7, !noundef !5
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bj = load i64, ptr %i.aj, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bh, label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.idx = mul nuw nsw i64 %i.bj, 80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %.pre = load i64, ptr %i.aa, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %i.bm = phi i64 [ %i.bv, %bb.x ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.052.0140 = phi ptr [ %i.bn, %bb.x ], [ %i.bi, %.lr.ph.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.052.0140, i64 80 ; 2 uses
  %i.bo = icmp ult i64 %i.bm, 230584300921369396
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs3_NtNtNtCs9Jn0q30Ea0B_6object4read5macho7sectionINtB5_20MachOSectionInternalINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessERShE5parseCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, i64 noundef %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(80) %.sroa.052.0140, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.aa, align 8, !alias.scope !41, !noundef !5 ; 3 uses
  %i.br = load i64, ptr %i.g, align 8, !range !10, !alias.scope !41, !noundef !5
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEE8grow_oneCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #19
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bt = load ptr, ptr %i.z, align 8, !alias.scope !41, !nonnull !5, !noundef !5
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.bv = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.aa, align 8, !alias.scope !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = icmp eq ptr %i.bn, %i.bk
  br i1 %i.bw, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.x, %bb.u, %bb.q, %bb.ae
  %.sroa.7.sroa.4.2 = phi i64 [ %.sroa.7.sroa.4.1146, %bb.q ], [ %.sroa.858.0.copyload, %bb.ae ], [ %.sroa.7.sroa.4.1146, %bb.u ], [ %.sroa.7.sroa.4.1146, %bb.x ] ; 2 uses
  %.sroa.533.2 = phi i64 [ %.sroa.533.1147, %bb.q ], [ %i.cg, %bb.ae ], [ %.sroa.533.1147, %bb.u ], [ %.sroa.533.1147, %bb.x ] ; 2 uses
  %.sroa.332.2 = phi i64 [ %.sroa.332.1148, %bb.q ], [ %i.ci, %bb.ae ], [ %.sroa.332.1148, %bb.u ], [ %.sroa.332.1148, %bb.x ] ; 2 uses
  %.sroa.031.2 = phi ptr [ %.sroa.031.1149, %bb.q ], [ %i.cd, %bb.ae ], [ %.sroa.031.1149, %bb.u ], [ %.sroa.031.1149, %bb.x ] ; 2 uses
  %i.bx = phi <2 x i64> [ %i.ak, %bb.q ], [ %i.ch, %bb.ae ], [ %i.ak, %bb.u ], [ %i.ak, %bb.x ] ; 2 uses
  %i.by = icmp eq i32 %i.as, 0
  br i1 %i.by, label %_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB2_19LoadCommandIteratorNtNtB8_6endian10EndiannessE4nextCsjQ7aQP35kzr_11simple_line.exit.thread86, label %bb.h

_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit: ; preds = %bb.t, %bb.r, %bb.ad, %bb.m
  %.sink187.sink = phi ptr [ %i.av, %bb.m ], [ %i.cf, %bb.ad ], [ @4, %bb.r ], [ %i.bi, %bb.t ]
  %.sink.sink = phi i64 [ %i.aw, %bb.m ], [ %i.cg, %bb.ad ], [ 27, %bb.r ], [ %i.bj, %bb.t ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink187.sink, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.sink, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.aa

bb.z:                                             ; preds = %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit unwind label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ab:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs1_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtNtBc_5macho13SymtabCommandNtNtBc_6endian10EndiannessE7symbolsINtBZ_12MachHeader64B1p_ERShECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %.sroa.0.0143, i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = load ptr, ptr %.sroa.455.0..sroa_idx, align 8 ; 2 uses
  %i.cg = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCs9Jn0q30Ea0B_6object4read5macho12load_commandINtB5_15LoadCommandDataNtNtBb_6endian10EndiannessE6symtabCsjQ7aQP35kzr_11simple_line.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ch = load <2 x i64>, ptr %.sroa.657.0..sroa_idx, align 8
  %.sroa.858.0.copyload = load i64, ptr %.sroa.858.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ci = ptrtoint ptr %i.cf to i64
  br label %.thread

.body:                                            ; preds = %bb.af, %bb.y, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp204, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cj, %bb.af ], [ %i.cb, %bb.y ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %common.resume unwind label %bb.aj

bb.af:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBO_5macho12MachHeader64NtNtBO_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7section20MachOSectionInternalINtNtB1h_5macho12MachHeader64NtNtB1h_6endian10EndiannessERShEEECsjQ7aQP35kzr_11simple_line.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs9Jn0q30Ea0B_6object4read5macho7segment20MachOSegmentInternalINtNtBV_5macho12MachHeader64NtNtBV_6endian10EndiannessERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjQ7aQP35kzr_11simple_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
end_hunk_0
