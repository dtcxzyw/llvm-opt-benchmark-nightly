Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.13?download=true
inline.NumInlined: 222
inline.NumDeleted: 102
begin_hunk_0_@_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject25validate_xorb_object_info:bb.a
  %i.al = icmp eq i64 %i.ak, 0
  %or.cond7 = select i1 %or.cond, i1 %i.al, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp eq i64 %i.an, 0
  %or.cond11 = select i1 %or.cond7, i1 %i.ao, i1 false
  br i1 %or.cond11, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 69, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ap = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !8, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.p, label %bb.q, !prof !9

bb.l:                                             ; preds = %bb.j
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.au = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !8, !noundef !4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.av, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.az = load i64, ptr %i.ay, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #25
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.ax, 41
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.ba, ptr noundef nonnull align 1 dereferenceable(42) @38, i64 42, i1 false)
  store i64 13, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ba, ptr %.sroa.416.sroa.4.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 42, ptr %.sroa.416.sroa.5.0..sroa.416.0..sroa_idx.sroa_idx, align 8
  br label %bb.f

bb.p:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.at, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.bc) #25
  unreachable

bb.q:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = icmp samesign ugt i64 %i.as, 68
  tail call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %i.bd, ptr noundef nonnull align 1 dereferenceable(69) @39, i64 69, i1 false)
  store i64 13, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 69, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject26overwrite_uniqueness_nonce(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.c, align 4
  %i.d = icmp samesign ult i64 %2, 20
  br i1 %i.d, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCs31YAwBA1AlL_19xet_core_structures.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 55, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.e = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !8, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.h, label %bb.i, !prof !9

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %.sroa.014.0.copyload = load i32, ptr %i.k, align 1 ; 2 uses
  %i.l = zext i32 %.sroa.014.0.copyload to i64
  %i.m = icmp ult i32 %.sroa.014.0.copyload, 16
  %i.n = add nuw nsw i64 %i.l, 4
  %i.o = icmp samesign ugt i64 %i.n, %2
  %or.cond = or i1 %i.m, %i.o
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 82, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.p = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !8, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !9

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6expectCs31YAwBA1AlL_19xet_core_structures.exit
  %i.u = getelementptr i8, ptr %i.j, i64 -20
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.u, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40)
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.i, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.v) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp samesign ugt i64 %i.s, 81
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(82) %i.w, ptr noundef nonnull align 1 dereferenceable(82) @41, i64 82, i1 false)
  store i64 13, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 82, ptr %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.h:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.y) #25
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.h, 54
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.z, ptr noundef nonnull align 1 dereferenceable(55) @42, i64 55, i1 false)
  store i64 13, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 55, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_20SerializedXorbObject26from_xorb_with_compression(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1, i8 noundef range(i8 0, 100) %2, i1 noundef zeroext %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 22 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 24 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [160 x i8], align 8               ; 26 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.12 = alloca [112 x i8], align 8          ; 5 uses
  %.sroa.651.sroa.8 = alloca [24 x i8], align 8   ; 7 uses
  %i.u = alloca [176 x i8], align 8               ; 11 uses
  %i.v = alloca [40 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.8220 = alloca [24 x i8], align 8         ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 10 uses
  %i.y = alloca [40 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 15 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %5 = alloca [8 x i8], align 8                   ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [160 x i8], align 8              ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXs0_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_16XorbObjectInfoV1NtNtCskKLDkoKarTP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.ae)
          to label %bb.c unwind label %bb.b

.body167:                                         ; preds = %bb.b, %bb.cp, %bb.ee, %.body149, %bb.et, %.body195, %.body162
  %.sroa.077.0 = phi i8 [ %.sroa.077.2, %bb.et ], [ %.sroa.077.8, %.body162 ], [ %.sroa.077.2, %.body149 ], [ %.sroa.077.9, %.body195 ], [ %.sroa.077.8, %bb.cp ], [ %.sroa.077.1, %bb.b ], [ %.sroa.077.9, %bb.ee ]
  %.pn127.pn.pn = phi { ptr, i32 } [ %.pn127.pn, %bb.et ], [ %eh.lpad-body163.pn, %.body162 ], [ %.pn127.pn, %.body149 ], [ %eh.lpad-body196.pn, %.body195 ], [ %i.in, %bb.cp ], [ %i.ag, %bb.b ], [ %i.ks, %bb.ee ]
  %i.af = trunc nuw i8 %.sroa.077.0 to i1
  br i1 %i.af, label %bb.ev, label %bb.eu

bb.b:                                             ; preds = %bb.ef, %bb.cq, %bb.a
  %.sroa.077.1 = phi i8 [ %.sroa.077.9, %bb.ef ], [ %.sroa.077.8, %bb.cq ], [ 1, %bb.a ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body167

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !noundef !4
  %i.am = zext i32 %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 5 uses
  store i64 %i.ao, ptr %5, align 8
  %i.ap = icmp ult i64 %i.ao, 288230376151711744
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_11MDBXorbInfo21chunks_and_boundaries(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ah)
          to label %bb.e unwind label %bb.d

.body149:                                         ; preds = %bb.dq, %bb.am, %bb.d, %.body177
  %.sroa.072.0 = phi i8 [ %.sroa.072.2, %.body177 ], [ %.sroa.072.6, %bb.am ], [ %.sroa.072.1, %bb.d ], [ %.sroa.072.7, %bb.dq ]
  %.sroa.077.2 = phi i8 [ %.sroa.077.4, %.body177 ], [ %.sroa.077.8, %bb.am ], [ %.sroa.077.3, %bb.d ], [ %.sroa.077.9, %bb.dq ] ; 2 uses
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %.body177 ], [ %i.fo, %bb.am ], [ %i.aq, %bb.d ], [ %i.kj, %bb.dq ] ; 2 uses
  %cond = icmp eq i8 %.sroa.072.0, 0
  br i1 %cond, label %.body167, label %bb.er

bb.d:                                             ; preds = %bb.dr, %bb.an, %bb.c
  %.sroa.072.1 = phi i8 [ %.sroa.072.7, %bb.dr ], [ %.sroa.072.6, %bb.an ], [ 1, %bb.c ]
  %.sroa.077.3 = phi i8 [ %.sroa.077.9, %bb.dr ], [ %.sroa.077.8, %bb.an ], [ 1, %bb.c ]
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body149

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 3 uses
  %i.at = icmp ult i64 %i.as, 230584300921369396
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.av = trunc i64 %i.as to i32
  store i32 %i.av, ptr %i.au, align 8
  %i.aw = and i64 %i.as, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.aw, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.g unwind label %bb.f

.body177:                                         ; preds = %bb.dd, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit, %.body139, %.body136, %.body
  %.sroa.072.2 = phi i8 [ 1, %.body ], [ %.sroa.072.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit ], [ 1, %.body139 ], [ 1, %.body136 ], [ %.sroa.072.3, %bb.f ], [ %.sroa.072.7, %bb.dd ]
  %.sroa.077.4 = phi i8 [ 1, %.body ], [ %.sroa.077.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit ], [ 1, %.body139 ], [ 1, %.body136 ], [ %.sroa.077.5, %bb.f ], [ %.sroa.077.9, %bb.dd ]
  %.pn127 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn123, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit ], [ %eh.lpad-body140, %.body139 ], [ %eh.lpad-body137, %.body136 ], [ %i.ax, %bb.f ], [ %i.iz, %bb.dd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #24
          to label %.body149 unwind label %bb.aj

bb.f:                                             ; preds = %.invoke, %bb.de, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit141, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit, %bb.e
  %.sroa.072.3 = phi i8 [ 1, %bb.e ], [ 1, %.invoke ], [ %.sroa.072.7, %bb.de ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit141 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_.exit ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit ]
  %.sroa.077.5 = phi i8 [ 1, %bb.e ], [ 1, %.invoke ], [ %.sroa.077.9, %bb.de ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit141 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_.exit ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit ]
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.g:                                             ; preds = %bb.e
  %i.ay = load i64, ptr %i.s, align 8, !range !7, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !8, !noundef !4 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.az, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.bc, align 8
  br label %.invoke

bb.i:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = icmp samesign ule i64 %i.aw, %i.bb
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 17 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.m ], [ %i.bh, %bb.j ]
  store i64 %i.bb, ptr %i.bg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.be, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %.body177

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.k
  store i64 %i.bb, ptr %i.bg, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  store ptr %i.be, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 6 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = load i64, ptr %i.ar, align 8, !noundef !4
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bm
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterTB13_mEENCNvMs4_NtNtB19_11xorb_object18xorb_object_formatNtB4d_20SerializedXorbObject26from_xorb_with_compression0EE9from_iterB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn)
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body136 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body136

.body136:                                         ; preds = %bb.o, %bb.r
  %eh.lpad-body137 = phi { ptr, i32 } [ %i.bq, %bb.r ], [ %i.bo, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br label %.body177

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.br = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = load i64, ptr %i.ar, align 8, !noundef !4
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %i.bs
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENCNvMs4_NtNtB2S_11xorb_object18xorb_object_formatNtB47_20SerializedXorbObject26from_xorb_with_compressions_0EE9from_iterB2S_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bt)
          to label %bb.s unwind label %bb.f

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 13 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body139 unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit141 unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.body139:                                         ; preds = %bb.t, %bb.w
  %eh.lpad-body140 = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.bv, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %.body177

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit141: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.by = load i32, ptr %i.ak, align 8, !noundef !4
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bz, 160
  %i.cb = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 288230376151711744
  call void @llvm.assume(i1 %i.cc)
  %i.cd = mul i64 %i.cb, 80
  %i.ce = add i64 %i.ca, %i.cd                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %i.ce, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %bb.f

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit141
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_20SerializedXorbObject26from_xorb_with_compression:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %.loopexit271, label %.lr.ph303

.lr.ph303:                                        ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.ad
  %.pn121 = phi { ptr, i32 } [ %i.ed, %bb.ad ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.aj

.loopexit:                                        ; preds = %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit145
  %i.dj = phi ptr [ %i.cu, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.lr.ph ], [ %i.ff, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit145 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr %i.dk, ptr %.sroa.534.0..sroa_idx, align 8, !alias.scope !200, !noalias !203
  %.sroa.0218.0.copyload219 = load ptr, ptr %i.dj, align 8, !noalias !200 ; 2 uses
  %.sroa.8220.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8220, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8220.0..sroa_idx221, i64 24, i1 false), !noalias !200
  %.not117 = icmp eq ptr %.sroa.0218.0.copyload219, null
  br i1 %.not117, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %.sroa.0218.0.copyload219, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8220.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8220, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dl = load ptr, ptr %.sroa.8220.0..sroa_idx, align 8, !noundef !4
  %i.dm = load i64, ptr %i.da, align 8, !noundef !4
  invoke fastcc void @_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format15serialize_chunkINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dl, i64 noundef %i.dm, ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, i8 noundef %2)
          to label %bb.ae unwind label %bb.ad

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit145, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8220)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit142.a unwind label %.loopexit.split-lp263.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.loopexit262.a, %.loopexit.split-lp263.loopexit.split-lp, %.loopexit.split-lp263.loopexit, %bb.by, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.072.4 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit ], [ 0, %bb.by ], [ 1, %.loopexit262.a ], [ 1, %.loopexit.split-lp263.loopexit ], [ %.sroa.072.5.ph.ph, %.loopexit.split-lp263.loopexit.split-lp ]
  %.sroa.077.6 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit ], [ %.sroa.077.8, %bb.by ], [ 1, %.loopexit262.a ], [ 1, %.loopexit.split-lp263.loopexit ], [ %.sroa.077.7.ph.ph, %.loopexit.split-lp263.loopexit.split-lp ]
  %.pn123 = phi { ptr, i32 } [ %.pn121, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit ], [ %lpad.phi.i, %bb.by ], [ %lpad.loopexit264, %.loopexit262.a ], [ %lpad.loopexit268, %.loopexit.split-lp263.loopexit ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp263.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #24
          to label %.body177 unwind label %bb.aj

.loopexit262.a:                                   ; preds = %.lr.ph, %bb.dp
  %lpad.loopexit264 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit

.loopexit.split-lp263.loopexit:                   ; preds = %bb.dg
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit

.loopexit.split-lp263.loopexit.split-lp:          ; preds = %bb.cd, %bb.bz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit143, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread, %bb.dk, %bb.dh
  %.sroa.072.5.ph.ph = phi i8 [ 0, %bb.cd ], [ 0, %bb.bz ], [ 1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread ], [ 1, %bb.dk ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit143 ], [ 1, %bb.dh ]
  %.sroa.077.7.ph.ph = phi i8 [ %.sroa.077.8, %bb.cd ], [ %.sroa.077.8, %bb.bz ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread ], [ 1, %bb.dk ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit143 ], [ 1, %bb.dh ]
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit142.a: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit271

.loopexit271:                                     ; preds = %.loopexit267, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit142.a
  %.sroa.077.8 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit142.a ], [ 1, %bb.ab ], [ 1, %.loopexit267 ] ; 10 uses
  %i.dn = load i64, ptr %.sroa.6.0..sroa_idx7, align 8, !noundef !4 ; 2 uses
  %i.do = icmp ult i64 %i.dn, 2305843009213693952
  call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !4 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 2305843009213693952
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.dq, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %.tr = trunc i64 %i.ds to i32
  %i.du = shl i32 %.tr, 2                         ; 2 uses
  %i.dv = add i32 %i.du, 40
  store i32 %i.dv, ptr %i.dt, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !4 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 288230376151711744
  call void @llvm.assume(i1 %i.dy)
  %.tr118 = trunc i64 %i.dx to i32
  %i.dz = shl i32 %.tr118, 5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ae, i64 124
  %i.eb = add i32 %i.du, 52
  %i.ec = add i32 %i.eb, %i.dz
  store i32 %i.ec, ptr %i.ea, align 4
  br i1 %3, label %bb.ap, label %bb.al

bb.ad:                                            ; preds = %bb.ah, %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.ee = load ptr, ptr %i.w, align 8, !alias.scope !211, !nonnull !4, !align !138, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !211, !nonnull !4, !noundef !4
  %i.eh = load ptr, ptr %.sroa.8220.0..sroa_idx, align 8, !alias.scope !211, !noundef !4
  %i.ei = load i64, ptr %i.da, align 8, !alias.scope !211, !noundef !4
  invoke void %i.eg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.eh, i64 noundef %i.ei)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.aj, !inline_history !212

bb.ae:                                            ; preds = %bb.ac
  %i.ej = load i64, ptr %i.v, align 8, !range !6, !noundef !4 ; 2 uses
  %.not120 = icmp eq i64 %i.ej, -1
  br i1 %.not120, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.493.0.copyload = load i64, ptr %.sroa.493.0..sroa_idx, align 8
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.597.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.594.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ej, ptr %i.ek, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.493.0.copyload, ptr %.sroa.496.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.el = load ptr, ptr %i.w, align 8, !alias.scope !219, !nonnull !4, !align !138, !noundef !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !noalias !219, !nonnull !4, !noundef !4
  %i.eo = load ptr, ptr %.sroa.8220.0..sroa_idx, align 8, !alias.scope !219, !noundef !4
  %i.ep = load i64, ptr %i.da, align 8, !alias.scope !219, !noundef !4
  invoke void %i.en(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.eo, i64 noundef %i.ep)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit143 unwind label %.loopexit.split-lp, !inline_history !212

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eq = load i64, ptr %i.cq, align 8, !noundef !4 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = trunc i64 %i.eq to i32
  %i.et = load i64, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !220, !noundef !4 ; 3 uses
  %i.eu = load i64, ptr %i.bg, align 8, !range !199, !alias.scope !220, !noundef !4
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsbc8Eb5TzBdy_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #27
          to label %bb.ai unwind label %bb.ad

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ew = load ptr, ptr %.sroa.5.0..sroa_idx5, align 8, !alias.scope !220, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.et
  store i32 %i.es, ptr %i.ex, align 4
  %i.ey = add i64 %i.et, 1
  store i64 %i.ey, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !220
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ez = load ptr, ptr %i.w, align 8, !alias.scope !229, !nonnull !4, !align !138, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !229, !nonnull !4, !noundef !4
  %i.fc = load ptr, ptr %.sroa.8220.0..sroa_idx, align 8, !alias.scope !229, !noundef !4
  %i.fd = load i64, ptr %i.da, align 8, !alias.scope !229, !noundef !4
  invoke void %i.fb(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.fc, i64 noundef %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit145 unwind label %.loopexit, !inline_history !212

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit145: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8220)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8220)
  %i.fe = load ptr, ptr %.sroa.736.0..sroa_idx, align 8, !alias.scope !230, !noalias !203, !nonnull !4, !noundef !4
  %i.ff = load ptr, ptr %.sroa.534.0..sroa_idx, align 8, !alias.scope !230, !noalias !203, !nonnull !4, !noundef !4 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fe
  br i1 %i.fg, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit143: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8220)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit147 unwind label %.loopexit.split-lp263.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit147: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dc

bb.aj:                                            ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %.body195, %.body190.a, %.body206, %.body212, %.body162, %.body157.a, %.body170, %.body174, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit, %.body177
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit267:                                     ; preds = %.loopexit261, %bb.ak
  %i.fi = icmp eq ptr %i.fj, %i.dg
  br i1 %i.fi, label %.loopexit271, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph303, %.loopexit267
  %.sroa.0.0302 = phi ptr [ %i.dd, %.lr.ph303 ], [ %i.fj, %.loopexit267 ] ; 2 uses
  %.sroa.8217.0301 = phi i64 [ 0, %.lr.ph303 ], [ %i.fk, %.loopexit267 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0302, i64 8 ; 2 uses
  %i.fk = add nuw nsw i64 %.sroa.8217.0301, 1     ; 3 uses
  %i.fl = load i64, ptr %.sroa.0.0302, align 8, !noundef !4 ; 2 uses
  %i.fm = load i64, ptr %i.de, align 8, !noundef !4
  %6 = icmp ult i64 %i.fk, %i.fm
  %7 = load ptr, ptr %i.dc, align 8, !nonnull !4
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fk
  %.sroa.021.0 = select i1 %6, ptr %8, ptr %5
  %9 = load i64, ptr %.sroa.021.0, align 8, !noundef !4 ; 3 uses
  %i.fn = icmp ult i64 %i.fl, %9
  br i1 %i.fn, label %.lr.ph300, label %.loopexit267

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectjEEBI_.exit, %.loopexit271
  %.sroa.047.0 = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectjEEBI_.exit ], [ 0, %.loopexit271 ]
  %.sroa.348.0 = phi i64 [ %i.fq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectjEEBI_.exit ], [ undef, %.loopexit271 ]
  %.sroa.072.6 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectjEEBI_.exit ], [ 1, %.loopexit271 ] ; 2 uses
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.560.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.661.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  store i64 %.sroa.047.0, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.348.0, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ao, ptr %.sroa.863.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body149 unwind label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit unwind label %bb.d

bb.ao:                                            ; preds = %bb.am
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ap:                                            ; preds = %.loopexit271
  %i.fq = load i64, ptr %i.cq, align 8, !noundef !4 ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, -1
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %i.ae, i64 160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !237
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !244
  store ptr %i.z, ptr %i.o, align 8, !noalias !244
  %i.fs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false), !noalias !244
  %i.fv = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef 7)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc.i:                                         ; preds = %bb.ap
  %.not.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc.i
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.fv, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.ar:                                            ; preds = %.noexc.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 139
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !247, !noalias !248, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !244
  store i8 %i.fx, ptr %i.h, align 1, !noalias !244
  %i.fy = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %.noexc34.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc34.i:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !244
  %.not147.i.i = icmp eq ptr %i.fy, null
  br i1 %.not147.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc34.i
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.fy, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.at:                                            ; preds = %.noexc34.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ga = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef 32)
          to label %.noexc35.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc35.i:                                       ; preds = %bb.at
  %.not148.i.i = icmp eq ptr %i.ga, null
  br i1 %.not148.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.noexc35.i
  %.sroa.464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ga, ptr %.sroa.464.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.av:                                            ; preds = %.noexc35.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.gc = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gb, i64 noundef 7)
          to label %.noexc36.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc36.i:                                       ; preds = %bb.av
  %.not149.i.i = icmp eq ptr %i.gc, null
  br i1 %.not149.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc36.i
  %.sroa.467.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gc, ptr %.sroa.467.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.ax:                                            ; preds = %.noexc36.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.t, i64 147
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !247, !noalias !248, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !244
  store i8 %i.ge, ptr %i.g, align 1, !noalias !244
  %i.gf = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc37.i:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !244
  %.not150.i.i = icmp eq ptr %i.gf, null
  br i1 %.not150.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.noexc37.i
  %.sroa.470.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gf, ptr %.sroa.470.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.az:                                            ; preds = %.noexc37.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 4 uses
  %i.gh = load i32, ptr %i.gg, align 8, !alias.scope !247, !noalias !248, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !244
  store i32 %i.gh, ptr %i.f, align 4, !noalias !244
  %i.gi = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4)
          to label %.noexc38.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc38.i:                                       ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !244
  %.not151.i.i = icmp eq ptr %i.gi, null
  br i1 %.not151.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc38.i
  %.sroa.473.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gi, ptr %.sroa.473.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.bb:                                            ; preds = %.noexc38.i
  %i.gj = zext i32 %i.gh to i64                   ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !247, !noalias !248, !noundef !4 ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 288230376151711744
  call void @llvm.assume(i1 %i.gm)
  %.not152.i.i = icmp eq i64 %i.gl, %i.gj
  br i1 %.not152.i.i, label %bb.bc, label %.split142.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !247, !noalias !248, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.gj, 5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx.i.i
  %i.gq = icmp eq i32 %i.gh, 0
  br i1 %i.gq, label %._crit_edge.i.i, label %.lr.ph.i.i

.split142.i.i:                                    ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !244
  store i64 %i.gl, ptr %i.n, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !244
  store ptr %i.n, ptr %i.m, align 8, !noalias !244
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !noalias !244
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.gg, ptr %i.gr, align 8, !noalias !244
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.482.0..sroa_idx.i.i, align 8, !noalias !244
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull @6, ptr noundef nonnull %i.m)
          to label %.noexc39.i unwind label %.loopexit.split-lp.i, !noalias !232

.noexc39.i:                                       ; preds = %.split142.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  br label %bb.bz

bb.bd:                                            ; preds = %.noexc40.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.019.0174.i.i, i64 32 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gp
  br i1 %i.gt, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc, %bb.bd
  %.sroa.019.0174.i.i = phi ptr [ %i.gs, %bb.bd ], [ %i.go, %bb.bc ] ; 2 uses
  %i.gu = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0174.i.i, i64 noundef 32)
          to label %.noexc40.i unwind label %.loopexit.i, !noalias !232 ; 2 uses

.noexc40.i:                                       ; preds = %.lr.ph.i.i
  %.not153.i.i = icmp eq ptr %i.gu, null
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_20SerializedXorbObject26from_xorb_with_compression:bb.a
.noexc46.i:                                       ; preds = %bb.bo
  %.not160.i.i = icmp eq ptr %i.hn, null
  br i1 %.not160.i.i, label %bb.bq, label %bb.bp

.split.i.i:                                       ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !244
  store i64 %i.hj, ptr %i.j, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !244
  store ptr %i.j, ptr %i.i, align 8, !noalias !244
  %.sroa.4113.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4113.0..sroa_idx.i.i, align 8, !noalias !244
  %i.ho = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.gg, ptr %i.ho, align 8, !noalias !244
  %.sroa.4117.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4117.0..sroa_idx.i.i, align 8, !noalias !244
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.440.0..sroa_idx.i.i, ptr noundef nonnull @4, ptr noundef nonnull %i.i)
          to label %.noexc47.i unwind label %.loopexit.split-lp.i, !noalias !232

.noexc47.i:                                       ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !244
  br label %bb.bz

bb.bp:                                            ; preds = %.noexc46.i
  %.sroa.4121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hn, ptr %.sroa.4121.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.bq:                                            ; preds = %.noexc46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244
  store i32 %i.gh, ptr %i.c, align 4, !noalias !244
  %i.hp = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4)
          to label %.noexc48.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc48.i:                                       ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244
  %.not161.i.i = icmp eq ptr %i.hp, null
  br i1 %.not161.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.noexc48.i
  %.sroa.4124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hp, ptr %.sroa.4124.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.bs:                                            ; preds = %.noexc48.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.t, i64 124
  %i.hr = load i32, ptr %i.hq, align 4, !alias.scope !247, !noalias !248, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  store i32 %i.hr, ptr %i.b, align 4, !noalias !244
  %i.hs = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4)
          to label %.noexc49.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc49.i:                                       ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244
  %.not162.i.i = icmp eq ptr %i.hs, null
  br i1 %.not162.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.noexc49.i
  %.sroa.4127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hs, ptr %.sroa.4127.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.bu:                                            ; preds = %.noexc49.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.hu = load i32, ptr %i.ht, align 8, !alias.scope !247, !noalias !248, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  store i32 %i.hu, ptr %i.a, align 4, !noalias !244
  %i.hv = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
          to label %.noexc50.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc50.i:                                       ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244
  %.not163.i.i = icmp eq ptr %i.hv, null
  br i1 %.not163.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.noexc50.i
  %.sroa.4130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hv, ptr %.sroa.4130.0..sroa_idx.i.i, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

bb.bw:                                            ; preds = %.noexc50.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.hx = invoke noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hw, i64 noundef 16)
          to label %.noexc51.i unwind label %.loopexit.split-lp.i, !noalias !232 ; 2 uses

.noexc51.i:                                       ; preds = %bb.bw
  %.not164.i.i = icmp eq ptr %i.hx, null
  br i1 %.not164.i.i, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.noexc51.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hx, ptr %i.hy, align 8, !alias.scope !239, !noalias !246
  br label %bb.bz

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp.i:                             ; preds = %bb.ca, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %.split.i.i, %bb.bo, %.split138.i.i, %bb.bl, %bb.bi, %bb.bg, %._crit_edge.i.i, %.split142.i.i, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format16XorbObjectInfoV1EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.t) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.cb, !noalias !232

bb.bz:                                            ; preds = %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %.noexc47.i, %bb.bm, %.noexc45.i, %bb.bj, %bb.bh, %bb.bf, %bb.be, %.noexc39.i, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq
  %.ph.i = phi i64 [ 0, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 13, %.noexc39.i ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 13, %.noexc45.i ], [ 0, %bb.bm ], [ 13, %.noexc47.i ], [ 0, %bb.bp ], [ 0, %bb.br ], [ 0, %bb.bt ], [ 0, %bb.bv ], [ 0, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.423.0.copyload.i = load i64, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !237
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i, i64 24, i1 false), !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format16XorbObjectInfoV1EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.t)
          to label %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit.thread unwind label %.loopexit.split-lp263.loopexit.split-lp

_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit.thread: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cc

bb.ca:                                            ; preds = %.noexc51.i
  %i.hz = load i64, ptr %i.ft, align 8, !noalias !244, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !237
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !237
  store i32 %i.ia, ptr %i.p, align 4, !noalias !237
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 4)
          to label %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit unwind label %.loopexit.split-lp.i, !noalias !232

bb.cb:                                            ; preds = %bb.by
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !232
  unreachable

_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !237
  %.sroa.0222.0.copyload = load i64, ptr %i.t, align 8, !alias.scope !250, !noalias !251 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %i.gn, align 8, !alias.scope !250, !noalias !251 ; 2 uses
  %.sroa.10.0.copyload = load i64, ptr %i.gk, align 8, !alias.scope !250, !noalias !251 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !alias.scope !250, !noalias !251
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.12.0..sroa_idx, i64 112, i1 false), !alias.scope !250, !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ic = icmp eq i64 %.sroa.0222.0.copyload, -1
  br i1 %i.ic, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit.thread, %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit
  %.sroa.7.0256 = phi i64 [ %.ph.i, %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit.thread ], [ %.sroa.7.0.copyload, %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit ]
  %.sroa.10.0255 = phi i64 [ %.sroa.423.0.copyload.i, %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit.thread ], [ %.sroa.10.0.copyload, %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5242.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.sroa.8, i64 24, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0256, ptr %i.id, align 8
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0255, ptr %.sroa.4241.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.dc

bb.cd:                                            ; preds = %_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_10XorbObject20serialize_given_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_.exit
  %i.ie = and i64 %i.hz, 4294967295
  %i.if = add nuw nsw i64 %i.ie, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.12, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.sroa.456.sroa.5.0..sroa.456.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.456.sroa.5.0..sroa.456.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.sroa.8, i64 24, i1 false)
  store i64 %.sroa.0222.0.copyload, ptr %i.u, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.456.sroa.4.0..sroa.456.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.456.sroa.4.0..sroa.456.0..sroa_idx.sroa_idx, align 8
  %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store i32 %i.ia, ptr %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx, align 8
  %.sroa.557.sroa.6.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  store i64 %i.if, ptr %.sroa.557.sroa.6.0..sroa.557.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format16XorbObjectInfoV1EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectjEEBI_.exit unwind label %.loopexit.split-lp263.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectjEEBI_.exit: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit169, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body157.a unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.cj unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body157.a

.body157.a:                                       ; preds = %bb.cf, %bb.ci
  %eh.lpad-body158 = phi { ptr, i32 } [ %i.ii, %bb.ci ], [ %i.ig, %bb.cf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #24
          to label %.body162 unwind label %bb.aj

bb.cj:                                            ; preds = %bb.cg
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body162 unwind label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.co unwind label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body162

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit169: ; preds = %bb.cq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.im = trunc nuw i8 %.sroa.077.8 to i1
  br i1 %i.im, label %bb.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit

bb.co:                                            ; preds = %bb.cl
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body167 unwind label %bb.cr

bb.cq:                                            ; preds = %bb.co
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit169 unwind label %bb.b

bb.cr:                                            ; preds = %bb.cp
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.cw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit169
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i unwind label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %.body170 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit unwind label %bb.cz

bb.cu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit169
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cw unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body174 unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body174

.body174:                                         ; preds = %bb.cv, %bb.cy
  %eh.lpad-body175 = phi { ptr, i32 } [ %i.it, %bb.cy ], [ %i.ir, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ah) #24
          to label %.body170 unwind label %bb.aj

.body170:                                         ; preds = %bb.cz, %bb.cs, %.body174
  %.pn = phi { ptr, i32 } [ %eh.lpad-body175, %.body174 ], [ %i.iv, %bb.cz ], [ %i.ip, %bb.cs ]
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.iu) #24
          to label %common.resume unwind label %bb.aj

bb.cz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body170

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit216 unwind label %bb.da

bb.da:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %common.resume unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body170, %.body206, %bb.ew, %bb.ep, %bb.da
  %common.resume.op = phi { ptr, i32 } [ %i.ix, %bb.da ], [ %i.lc, %bb.ep ], [ %.pn127.pn.pn, %bb.ew ], [ %.pn125, %.body206 ], [ %.pn, %.body170 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit216: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit209
  %.sink = phi ptr [ %i.lb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit209 ], [ %i.iw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink)
  ret void

.body162:                                         ; preds = %bb.cn, %bb.ck, %.body157.a
  %eh.lpad-body163.pn = phi { ptr, i32 } [ %eh.lpad-body158, %.body157.a ], [ %i.il, %bb.cn ], [ %i.ij, %bb.ck ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #24
          to label %.body167 unwind label %bb.aj

bb.dc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit147, %bb.dn, %bb.cc
  %cond133 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit147 ], [ true, %bb.cc ], [ false, %bb.dn ]
  %.sroa.072.7 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit147 ], [ 0, %bb.cc ], [ 1, %bb.dn ] ; 4 uses
  %.sroa.077.9 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit147 ], [ %.sroa.077.8, %bb.cc ], [ 1, %bb.dn ] ; 8 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.de unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body177 unwind label %bb.df

bb.de:                                            ; preds = %bb.dc
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.f

bb.df:                                            ; preds = %bb.dd
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit261:                                     ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit180, %bb.dl
  %i.jb = icmp ult i64 %i.jc, %9
  br i1 %i.jb, label %.lr.ph300, label %.loopexit267

.lr.ph300:                                        ; preds = %bb.ak, %.loopexit261
  %.sroa.013.0299 = phi i64 [ %..i, %.loopexit261 ], [ %i.fl, %bb.ak ] ; 8 uses
  %i.jc = add i64 %.sroa.013.0299, %spec.select   ; 3 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %9, i64 %i.jc) ; 5 uses
  %i.jd = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.je = icmp ult i64 %.sroa.013.0299, %i.jd
  br i1 %i.je, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.lr.ph300
  %i.jf = load ptr, ptr %i.di, align 8, !nonnull !4, !noundef !4
  %i.jg = getelementptr inbounds nuw [32 x i8], ptr %i.jf, i64 %.sroa.013.0299 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !noundef !4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !noundef !4
  %i.jl = invoke noundef i8 @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18compression_schemeNtB5_17CompressionScheme16choose_from_data(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ji, i64 noundef %i.jk)
          to label %bb.dj unwind label %.loopexit.split-lp263.loopexit

bb.dh:                                            ; preds = %.lr.ph300
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.013.0299, i64 noundef %i.jd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
          to label %bb.di unwind label %.loopexit.split-lp263.loopexit.split-lp

bb.di:                                            ; preds = %bb.dk, %bb.dh
  unreachable

bb.dj:                                            ; preds = %bb.dg
  %i.jm = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.jn = icmp ult i64 %i.jc, %.sroa.013.0299
  %.not115 = icmp ugt i64 %..i, %i.jm
  %or.cond130 = or i1 %i.jn, %.not115
  br i1 %or.cond130, label %bb.dk, label %bb.dl, !prof !252

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.0299, i64 noundef %..i, i64 noundef %i.jm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #25
          to label %bb.di unwind label %.loopexit.split-lp263.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dj
  %i.jo = load ptr, ptr %i.di, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %..i
  %i.jq = icmp samesign eq i64 %.sroa.013.0299, %..i
  br i1 %i.jq, label %.loopexit261, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.dl
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %.sroa.013.0299
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit180
  %.sroa.022.0298 = phi ptr [ %i.js, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit180 ], [ %i.jr, %.lr.ph.preheader ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.022.0298, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.022.0298, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !noundef !4
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.022.0298, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !4
  invoke fastcc void @_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format15serialize_chunkINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ju, i64 noundef %i.jw, ptr noalias nofree noundef align 8 dereferenceable(24) %i.z, i8 noundef %i.jl)
          to label %bb.dm unwind label %.loopexit262.a

bb.dm:                                            ; preds = %.lr.ph
  %i.jx = load i64, ptr %i.y, align 8, !range !6, !noundef !4 ; 2 uses
  %.not116 = icmp eq i64 %i.jx, -1
  br i1 %.not116, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.484.0.copyload = load i64, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.588.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.585.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jx, ptr %i.jy, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.484.0.copyload, ptr %.sroa.487.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.dc

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jz = load i64, ptr %i.cq, align 8, !noundef !4 ; 2 uses
  %i.ka = icmp sgt i64 %i.jz, -1
  call void @llvm.assume(i1 %i.ka)
  %i.kb = trunc i64 %i.jz to i32
  %i.kc = load i64, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !253, !noundef !4 ; 3 uses
  %i.kd = load i64, ptr %i.bg, align 8, !range !199, !alias.scope !253, !noundef !4
  %i.ke = icmp eq i64 %i.kc, %i.kd
  br i1 %i.ke, label %bb.dp, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit180

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsbc8Eb5TzBdy_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit180 unwind label %.loopexit262.a

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs31YAwBA1AlL_19xet_core_structures.exit180: ; preds = %bb.dp, %bb.do
  %i.kf = load ptr, ptr %.sroa.5.0..sroa_idx5, align 8, !alias.scope !253, !nonnull !4, !noundef !4
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.kc
  store i32 %i.kb, ptr %i.kg, align 4
  %i.kh = add i64 %i.kc, 1
  store i64 %i.kh, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !253
  %i.ki = icmp eq ptr %i.js, %i.jp
  br i1 %i.ki, label %.loopexit261, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dr unwind label %bb.dq

bb.dq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body149 unwind label %bb.ds

bb.dr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit187 unwind label %bb.d

bb.ds:                                            ; preds = %bb.dq
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit187: ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %cond133, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit203, label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit187
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body190.a unwind label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dy unwind label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body190.a

.body190.a:                                       ; preds = %bb.du, %bb.dx
  %eh.lpad-body191 = phi { ptr, i32 } [ %i.kn, %bb.dx ], [ %i.kl, %bb.du ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #24
          to label %.body195 unwind label %bb.aj

bb.dy:                                            ; preds = %bb.dv
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.ea unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body195 unwind label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.ed unwind label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body195

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit203: ; preds = %bb.ef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashmEEEB1f_.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.kr = trunc nuw i8 %.sroa.077.9 to i1
  br i1 %i.kr, label %bb.ej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit214

bb.ed:                                            ; preds = %bb.ea
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body167 unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit203 unwind label %bb.b

bb.eg:                                            ; preds = %bb.ee
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit214: ; preds = %bb.el, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit203
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i205 unwind label %bb.eh

bb.eh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit214
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %.body206 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i205: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit214
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit209 unwind label %bb.eo

bb.ej:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures.exit203
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body212 unwind label %bb.em

bb.el:                                            ; preds = %bb.ej
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit214 unwind label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body212

.body212:                                         ; preds = %bb.ek, %bb.en
  %eh.lpad-body213 = phi { ptr, i32 } [ %i.ky, %bb.en ], [ %i.kw, %bb.ek ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ah) #24
          to label %.body206 unwind label %bb.aj

.body206:                                         ; preds = %bb.eo, %bb.eh, %.body212
  %.pn125 = phi { ptr, i32 } [ %eh.lpad-body213, %.body212 ], [ %i.la, %bb.eo ], [ %i.ku, %bb.eh ]
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.kz) #24
          to label %common.resume unwind label %bb.aj

bb.eo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i205
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.body206

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit209: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryEEB1e_.exit.i205
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit216 unwind label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_.exit209
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %common.resume unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body195:                                         ; preds = %bb.ec, %bb.dz, %.body190.a
  %eh.lpad-body196.pn = phi { ptr, i32 } [ %eh.lpad-body191, %.body190.a ], [ %i.kq, %bb.ec ], [ %i.ko, %bb.dz ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #24
          to label %.body167 unwind label %bb.aj

bb.er:                                            ; preds = %.body149
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #24
          to label %bb.es unwind label %bb.aj

bb.es:                                            ; preds = %bb.er
  %i.le = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.le) #24
          to label %bb.et unwind label %bb.aj

bb.et:                                            ; preds = %bb.es
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lf) #24
          to label %.body167 unwind label %bb.aj

bb.eu:                                            ; preds = %bb.ev, %.body167
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.lg) #24
          to label %bb.ew unwind label %bb.aj

bb.ev:                                            ; preds = %.body167
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %bb.eu unwind label %bb.aj

bb.ew:                                            ; preds = %bb.eu
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lh) #24
          to label %common.resume unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_20SerializedXorbObject9from_xorb(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
end_hunk_2
