Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.00?download=true
inline.NumInlined: 2370
inline.NumDeleted: 908
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClient19shard_path_for_hash:bb.a

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult ptr %.val11, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.o, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  call void @llvm.assume(i1 %i.q)
  call void @llvm.assume(i1 %i.s)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.val11, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !4447, !noalias !4444
  store i8 3, ptr %i.a, align 8, !alias.scope !4447, !noalias !4444
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMse_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHash3hex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.i unwind label %bb.b

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @149, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiAynQAjgDuT_10xet_client.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %.body unwind label %bb.p

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiAynQAjgDuT_10xet_client.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiAynQAjgDuT_10xet_client.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 29, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.m ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsiAynQAjgDuT_10xet_client.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.p:                                             ; preds = %bb.j, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClient20object_tag_from_path(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [176 x i8], align 8               ; 13 uses
  %i.l = alloca [176 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvNtCsG258MDvU3F_3std2fs8metadataRNtNtB4_4path4PathECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.m = load i64, ptr %i.k, align 8, !range !122, !noundef !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10
  %i.q = tail call noundef nonnull ptr @_RINvMNtCsbdFR6LubKyl_6anyhow5errorNtB5_5Error3newNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECsiAynQAjgDuT_10xet_client(ptr noundef nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 28, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.474.0..sroa_idx, align 8
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.sroa.445.sroa.0.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.445.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.445.sroa.4.0.copyload = load ptr, ptr %.sroa.445.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx, align 8
  %.sroa.445.sroa.5.0..sroa.445.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.445.sroa.5.0..sroa.445.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.546.sroa.0.0.copyload = load i64, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.546.sroa.4.0.copyload = load i32, ptr %.sroa.546.sroa.4.0..sroa.546.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx, i64 20, i1 false)
  %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.546.sroa.6.0.copyload = load i64, ptr %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.546.sroa.7.0..sroa.546.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.612.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.546.sroa.7.0..sroa.546.0..sroa_idx.sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.m, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.445.sroa.0.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.445.sroa.4.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.546.sroa.0.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 %.sroa.546.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %.sroa.546.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsm_NtCsG258MDvU3F_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !range !4450, !noundef !10 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.v = call noundef nonnull ptr @_RINvMNtCsbdFR6LubKyl_6anyhow5errorNtB5_5Error3newNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECsiAynQAjgDuT_10xet_client(ptr noundef nonnull %i.u)
  %i.w = ptrtoint ptr %i.v to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 28, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.i, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.x, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.s, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef 0, i32 noundef 0)
  %i.z = load i64, ptr %i.h, align 8, !range !84, !alias.scope !4451, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !4451
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !range !3929, !alias.scope !4451
  %.sroa.0.0.i = select i1 %i.aa, i64 0, i64 %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.af = zext i64 %.sroa.0.0.i to i128
  %i.ag = mul nuw nsw i128 %i.af, 1000000000
  %i.ah = zext nneg i32 %i.ae to i128
  %3 = select i1 %i.aa, i128 0, i128 %i.ah
  %4 = add nuw nsw i128 %i.ag, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMsm_NtCsG258MDvU3F_3std2fsNtB5_8Metadata7created(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !range !4450, !noundef !10 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4454
  %i.al = ptrtoint ptr %.val to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %.thread
    i64 3, label %bb.g
    i64 0, label %.thread
    i64 1, label %bb.h
  ], !prof !48

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.an = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.al, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.an)
  call void @llvm.assume(i1 %i.ap)
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !4457, !noalias !4454
  store i8 3, ptr %i.a, align 8, !alias.scope !4457, !noalias !4454
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar), !noalias !4454
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_4time8DurationE6map_oroNCNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB1k_11LocalClient20object_tag_from_paths_0EB1q_.exit

bb.i:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.as, ptr %i.d, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.aj, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 0, i32 noundef 0)
  %i.au = load i64, ptr %i.c, align 8, !range !84, !noundef !10
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !range !3929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.av, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_4time8DurationE6map_oroNCNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB1k_11LocalClient20object_tag_from_paths_0EB1q_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = zext i64 %i.ax to i128
  %i.bb = mul nuw nsw i128 %i.ba, 1000000000
  %i.bc = zext nneg i32 %i.az to i128
  %i.bd = add nuw nsw i128 %i.bb, %i.bc
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_4time8DurationE6map_oroNCNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB1k_11LocalClient20object_tag_from_paths_0EB1q_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_4time8DurationE6map_oroNCNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB1k_11LocalClient20object_tag_from_paths_0EB1q_.exit: ; preds = %bb.i, %.thread, %bb.j
  %.sroa.03.0.i = phi i128 [ %i.bd, %bb.j ], [ 0, %.thread ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 41, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.be = load i64, ptr %i.b, align 8, !range !84, !noundef !10
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !1439, !noundef !10 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_4time8DurationE6map_oroNCNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB1k_11LocalClient20object_tag_from_paths_0EB1q_.exit
  %i.bj = load i64, ptr %i.bi, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bj) #31
  unreachable

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_4time8DurationE6map_oroNCNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB1k_11LocalClient20object_tag_from_paths_0EB1q_.exit
  %i.bk = load ptr, ptr %i.bi, align 8, !nonnull !10, !noundef !10
  %i.bl = icmp samesign ugt i64 %i.bh, 40
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bh, ptr %i.f, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 11 uses
  store i64 0, ptr %i.bn, align 8
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 16)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.l, %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #27
          to label %common.resume unwind label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.bp = load i64, ptr %i.bn, align 8, !alias.scope !4460, !noundef !10 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = load ptr, ptr %i.bm, align 8, !alias.scope !4460, !nonnull !10, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i128 %4, ptr %i.bs, align 1
  %.pre.i = load i64, ptr %i.bn, align 8, !alias.scope !4460
  %i.bt = add i64 %.pre.i, 16
  store i64 %i.bt, ptr %i.bn, align 8, !alias.scope !4460
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 16)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.bu = load i64, ptr %i.bn, align 8, !alias.scope !4463, !noundef !10 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = load ptr, ptr %i.bm, align 8, !alias.scope !4463, !nonnull !10, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i128 %.sroa.03.0.i, ptr %i.bx, align 1
  %.pre.i97 = load i64, ptr %i.bn, align 8, !alias.scope !4463
  %i.by = add i64 %.pre.i97, 16
  store i64 %i.by, ptr %i.bn, align 8, !alias.scope !4463
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 8)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.bn, align 8, !alias.scope !4466, !noundef !10 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load ptr, ptr %i.bm, align 8, !alias.scope !4466, !nonnull !10, !noundef !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i64 %.sroa.546.sroa.6.0.copyload, ptr %i.cc, align 1
  %.pre.i99 = load i64, ptr %i.bn, align 8, !alias.scope !4466 ; 2 uses
  %i.cd = add i64 %.pre.i99, 8                    ; 3 uses
  store i64 %i.cd, ptr %i.bn, align 8, !alias.scope !4466
  %i.ce = and i32 %.sroa.546.sroa.4.0.copyload, 146
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i8
  %i.ch = load i64, ptr %i.f, align 8, !range !52, !alias.scope !4469, !noundef !10
  %i.ci = icmp eq i64 %i.cd, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cj = load ptr, ptr %i.bm, align 8, !alias.scope !4469, !nonnull !10, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cd
  store i8 %i.cg, ptr %i.ck, align 1
  %i.cl = add i64 %.pre.i99, 9                    ; 2 uses
  store i64 %i.cl, ptr %i.bn, align 8, !alias.scope !4469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cm = load ptr, ptr %i.bm, align 8, !nonnull !10, !noundef !10
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash17compute_data_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cl)
          to label %bb.s unwind label %bb.m

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.t ], [ %i.bo, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.s
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.w:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
end_hunk_0
