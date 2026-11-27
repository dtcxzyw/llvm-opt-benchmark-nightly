Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.13?download=true
inline.NumInlined: 222
inline.NumDeleted: 102
begin_hunk_0_@_RNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_16XorbObjectInfoV135from_v0_with_unpacked_chunk_offsets:bb.a

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.g
  %.sroa.06.0 = phi i8 [ %i.w, %bb.g ], [ %i.v, %bb.d ], [ %i.v, %bb.d ]
  %i.x = load ptr, ptr @_RNvNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB7_16XorbObjectInfoV135from_v0_with_unpacked_chunk_offsets10___CALLSITE, align 8, !nonnull !4, !align !11, !noundef !4
  %i.y = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, i8 noundef %.sroa.06.0)
          to label %bb.h unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i8 %i.w, 0
  br i1 %i.z, label %bb.b, label %bb.f

bb.h:                                             ; preds = %bb.f
  br i1 %i.y, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @_RNvNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB7_16XorbObjectInfoV135from_v0_with_unpacked_chunk_offsets10___CALLSITE, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.l, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.o, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ac, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  store ptr @27, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.f, ptr %i.ad, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @28, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

bb.k:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.ai, ptr noundef nonnull align 4 dereferenceable(7) %i.ah, i64 7, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 139
  store i8 1, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.al, ptr noundef nonnull align 1 dereferenceable(7) @29, i64 7, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 0, ptr %i.am, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.an, ptr noundef nonnull align 1 dereferenceable(7) @30, i64 7, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 1, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.s, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 2305843009213693952
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 2305843009213693952
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, %i.aw
  %.tr = trunc i64 %i.bb to i32
  %i.bc = shl i32 %.tr, 2                         ; 2 uses
  %i.bd = add i32 %i.bc, 40
  store i32 %i.bd, ptr %i.at, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noundef !4 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 288230376151711744
  call void @llvm.assume(i1 %i.bg)
  %.tr26 = trunc i64 %i.bf to i32
  %i.bh = shl i32 %.tr26, 5
  %i.bi = add i32 %i.bc, 52
  %i.bj = add i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %i.as, align 4
  ret void

bb.m:                                             ; preds = %.critedge, %bb.q, %bb.p, %bb.o, %bb.n, %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24
          to label %.critedge27 unwind label %bb.m

bb.p:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #24
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %.critedge unwind label %bb.m

.critedge27:                                      ; preds = %bb.o, %.critedge
  %.pn30 = phi { ptr, i32 } [ %i.bl, %.critedge ], [ %i.af, %bb.o ]
  resume { ptr, i32 } %.pn30

.critedge:                                        ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bm) #24
          to label %.critedge27 unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject15get_byte_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject25validate_xorb_object_info(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp ule i32 %3, %2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %3, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 12, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = zext i32 %2 to i64
  %i.i = add nsw i64 %i.h, -1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %._crit_edge, %bb.h
  %i.m = phi i64 [ %i.k, %bb.h ], [ %.pre, %._crit_edge ] ; 2 uses
  %.sroa.03.0 = phi i32 [ %i.t, %bb.h ], [ 0, %._crit_edge ]
  %i.n = zext i32 %3 to i64
  %i.o = add nsw i64 %i.n, -1                     ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.i
  %i.t = load i32, ptr %i.s, align 4, !noundef !4
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #26
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.o
  %i.x = load i32, ptr %i.w, align 4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.03.0, ptr %i.y, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.x, ptr %4, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject16chunk_hash_sizes(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject25validate_xorb_object_info(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %i.f = icmp ugt i32 %3, %i.e
  %i.g = icmp ugt i32 %2, %3
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.h, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %3, ptr %4, align 4
  store ptr %1, ptr %i.a, align 8
  call void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_3ops5range5RangemENCNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB1G_10XorbObject16chunk_hash_sizes0ETNtNtNtB1K_10merklehash9data_hash8DataHashyEINtNtB6_6result6ResultzNtNtB1K_5error9CoreErrorENCINvXso_B4d_IB4b_INtNtCsexYYUdYSQU6_5alloc3vec3VecB3s_EB4x_EINtNtNtB4_6traits7collect12FromIteratorIB4b_B3s_B4x_EE9from_iterBQ_E0B5e_EB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 12, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB5_10XorbObject18get_chunk_contents(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 16               ; 12 uses
  %i.m = alloca [24 x i8], align 16               ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %3, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.s, align 8
  %.not.not111.not = icmp eq i64 %3, 0
  br i1 %.not.not111.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit40, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !188
  store i64 0, ptr %i.l, align 16, !noalias !188
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !188
  store i64 0, ptr %i.u, align 16, !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !190
  store i64 0, ptr %i.j, align 8, !noalias !190
  %i.ad = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull %i.j, i64 noundef 8)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !191 ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.i.i, label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.thread.i.i

_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.thread.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !190
  %i.ae = ptrtoint ptr %i.ad to i64
  br label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format27deserialize_chunk_to_writerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB6_.exit.thread.i

_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.i.i: ; preds = %.noexc.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.j, align 8, !noalias !190
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format18parse_chunk_header(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, i64 noundef %.sroa.03.0.copyload.i.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !192

.noexc28.i:                                       ; preds = %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.i.i
  %.pr.i.i = load i64, ptr %i.k, align 8, !noalias !189 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !190
  %.not.i.i = icmp eq i64 %.pr.i.i, -1
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.v, align 8, !noalias !189 ; 3 uses
  br i1 %.not.i.i, label %bb.c, label %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format27deserialize_chunk_to_writerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB6_.exit.thread.i

_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format27deserialize_chunk_to_writerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB6_.exit.thread.i: ; preds = %.noexc28.i, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.thread.i.i
  %.sroa.413.0.copyload.i.i = phi i64 [ %i.ae, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.thread.i.i ], [ %.sroa.08.0.copyload.i.i, %.noexc28.i ] ; 2 uses
  %i.af = phi i64 [ 0, %_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format24deserialize_chunk_headerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB6_.exit.thread.i.i ], [ %.pr.i.i, %.noexc28.i ]
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.18.16.copyload.i = load ptr, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !193
  %.sroa.25.16..sroa.514.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ag = load <2 x i64>, ptr %.sroa.25.16..sroa.514.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !189
  %.sroa.1037.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.413.0.copyload.i.i to i8
  %.sroa.1037.sroa.10.0.extract.shift.i = lshr i64 %.sroa.413.0.copyload.i.i, 8
  br label %bb.m

bb.c:                                             ; preds = %.noexc28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !189
  store i64 %.sroa.08.0.copyload.i.i, ptr %i.i, align 8, !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !195
  store i32 0, ptr %i.c, align 4, !noalias !195
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.c, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !196

.noexc29.i:                                       ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.c, align 4, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !195
  %i.ah = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !noalias !194
  store i64 %i.ah, ptr %i.x, align 8, !noalias !194
  store i64 %i.ah, ptr %i.y, align 8, !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !194
  %i.ai = lshr i64 %.sroa.08.0.copyload.i.i, 32
  %i.aj = trunc i64 %i.ai to i8
  invoke void @_RNvXs1_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18compression_schemeNtB5_17CompressionSchemeINtNtCskKLDkoKarTP_4core7convert7TryFromhE8try_from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, i8 noundef %i.aj)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !197

.noexc30.i:                                       ; preds = %.noexc29.i
  %i.ak = load i64, ptr %i.e, align 8, !range !6, !noalias !194, !noundef !4 ; 2 uses
  %.not.i19.i.i = icmp eq i64 %i.ak, -1
  %i.al = load i8, ptr %i.z, align 8, !noalias !194 ; 2 uses
  br i1 %.not.i19.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc30.i
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.1037.sroa.10.sroa.0.0.copyload.i = load i56, ptr %.sroa.525.0..sroa_idx.i.i.i, align 1, !noalias !198
  %.sroa.18.9..sroa.525.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.18.9.copyload.i = load ptr, ptr %.sroa.18.9..sroa.525.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !198
  %.sroa.25.9..sroa.525.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = load <2 x i64>, ptr %.sroa.25.9..sroa.525.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !194
  %i.an = zext i56 %.sroa.1037.sroa.10.sroa.0.0.copyload.i to i64
  br label %bb.l

bb.e:                                             ; preds = %.noexc30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !194
  store i8 %i.al, ptr %i.f, align 1, !noalias !194
  invoke void @_RINvMs3_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18compression_schemeNtB6_17CompressionScheme22decompress_from_readerINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB27_6cursor6CursorRShEEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBa_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !199

.noexc31.i:                                       ; preds = %bb.e
  %i.ao = load i64, ptr %i.g, align 8, !range !6, !noalias !194, !noundef !4 ; 2 uses
  %.not44.i.i.i = icmp eq i64 %i.ao, -1
  %i.ap = load i64, ptr %i.aa, align 8, !noalias !194 ; 3 uses
  br i1 %.not44.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc31.i
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.18.16.copyload38.i = load ptr, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !noalias !198
  %.sroa.25.16..sroa.534.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aq = load <2 x i64>, ptr %.sroa.25.16..sroa.534.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !194
  %.sroa.1037.sroa.0.0.extract.trunc46.i = trunc i64 %i.ap to i8
  %.sroa.1037.sroa.10.0.extract.shift53.i = lshr i64 %i.ap, 8
  br label %bb.l

bb.g:                                             ; preds = %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  store i32 0, ptr %i.b, align 4, !noalias !200
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.b, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !199

.noexc32.i:                                       ; preds = %bb.g
  %.sroa.0.0.copyload.i46.i.i.i = load i32, ptr %i.b, align 4, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  %i.ar = zext i32 %.sroa.0.0.copyload.i46.i.i.i to i64
  %.not45.i.i.i = icmp eq i64 %i.ap, %i.ar
  br i1 %.not45.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  store i32 0, ptr %i.a, align 4, !noalias !201
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.a, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !199

bb.i:                                             ; preds = %.noexc32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !194
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 74, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !199

end_hunk_0
