Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.03?download=true
inline.NumInlined: 562
inline.NumDeleted: 235
begin_hunk_0_@_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13find_snapshot:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67, i64 24, i1 false)
  invoke void @_RNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotId3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr %i.c, align 8, !range !6, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  br i1 %i.o, label %bb.j, label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtBZ_7IdErrorEEB13_.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtBZ_7IdErrorEEB13_.exit, %.thread, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtBZ_7IdErrorEEB13_.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.r = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtBZ_7IdErrorEEB13_.exit30, label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtBZ_7IdErrorEEB13_.exit30: ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
  br label %bb.i

bb.l:                                             ; preds = %bb.m, %bb.d
  resume { ptr, i32 } %i.j

bb.m:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdNtBZ_7IdErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #20
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.m = load i64, ptr %i.c, align 8, !range !12, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !21, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp samesign ugt i64 %i.p, 4
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.s, ptr noundef nonnull align 1 dereferenceable(5) @44, i64 5, i1 false)
  store i64 %i.p, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 5, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add.exit unwind label %bb.d, !noalias !295

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #20
          to label %common.resume unwind label %bb.e, !noalias !295

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !295
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.o, %.body12, %bb.ad, %bb.l, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.ad ], [ %i.u, %bb.d ], [ %i.ah, %bb.i ], [ %i.aj, %bb.l ], [ %.pn4, %.body12 ], [ %.pn, %bb.o ], [ %i.ag, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add.exit: ; preds = %bb.c
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !296, !noalias !295, !noundef !5 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !296, !noalias !295, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 47, ptr %i.z, align 1, !noalias !294
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !296, !noalias !295
  %i.aa = add i64 %.pre.i.i, 1
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !296, !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !297, !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = invoke noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #20
          to label %common.resume unwind label %bb.af

bb.g:                                             ; preds = %_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add.exit
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit9 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit9: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  call void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 5)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinRNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit17, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit
  %.sroa.0.0 = phi i1 [ %2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit17 ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %i.at, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.af

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit9
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit9
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !5
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path14with_extensionReECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 8)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %bb.o unwind label %bb.af

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %i.az, %bb.t ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %.body12 unwind label %bb.af

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i11 unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body12 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i11: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit14 unwind label %bb.y

.body12:                                          ; preds = %bb.y, %bb.w, %.body
  %.pn4 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.be, %bb.y ], [ %i.bc, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #20
          to label %common.resume unwind label %bb.af

bb.y:                                             ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i11, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit14
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit14: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi)
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit14
  %i.bj = load i64, ptr %i.b, align 8, !range !18, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val7 = load ptr, ptr %i.bk, align 8           ; 4 uses
  %.not.i = icmp eq i64 %i.bj, 2
  br i1 %.not.i, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.bl = ptrtoint ptr %.val7 to i64              ; 2 uses
  %i.bm = and i64 %i.bl, 3
  switch i64 %i.bm, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i
    i64 3, label %bb.ab
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i
    i64 1, label %bb.ac
  ], !prof !15

default.unreachable:                              ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bn = icmp ult ptr %.val7, inttoptr (i64 188978561024 to ptr)
  %i.bo = and i64 %i.bl, 1095216660480
  %i.bp = icmp ne i64 %i.bo, 1095216660480
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 %i.bp)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.bq = getelementptr i8, ptr %.val7, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !alias.scope !299
  store i8 3, ptr %i.a, align 8, !alias.scope !299
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit17 unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit17: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit
  %2 = icmp ne i64 %i.bj, 2
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.af:                                            ; preds = %.body12, %.body, %bb.r, %bb.o, %bb.f
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository14lock_exclusive(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 4 %i.j)
  %i.k = load i64, ptr %i.i, align 8, !range !12, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !308, !noundef !5 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !9, !noundef !5 ; 5 uses
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.q = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 30)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskuiImRAV2ip_9elfshaker(ptr nonnull align 4 %i.n, i8 %i.p) #20
          to label %common.resume unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw i8 %i.p to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.v = and i64 %i.u, 9223372036854775807
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #22
  br i1 %i.x, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.t monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.y = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.h, label %_RNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB7_10Repository14lock_exclusive0Bb_.exit, !prof !11

bb.h:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB7_10Repository14lock_exclusive0Bb_.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn28, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB7_10Repository14lock_exclusive0Bb_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskuiImRAV2ip_9elfshaker.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 5 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !range !9, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.bb, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %bb.bg, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = invoke noundef ptr @_RNvXCs2R7sF1bDyVm_3fs2NtNtCsaL1QbXo9JQH_3std2fs4FileNtB2_7FileExt6unlock(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae)
          to label %bb.n unwind label %bb.m       ; 2 uses

.body:                                            ; preds = %.body.i, %bb.m, %bb.t
  %.pn28 = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %i.ah, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskuiImRAV2ip_9elfshaker(ptr nonnull %i.n, i8 %i.p) #20
          to label %common.resume unwind label %bb.aw

bb.m:                                             ; preds = %bb.au, %bb.ae, %bb.bi, %bb.bh, %bb.o, %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.l
  %.not25 = icmp eq ptr %i.ag, null
  br i1 %.not25, label %bb.o, label %bb.bb

bb.o:                                             ; preds = %bb.n
  %i.ai = invoke noundef ptr @_RNvXCs2R7sF1bDyVm_3fs2NtNtCsaL1QbXo9JQH_3std2fs4FileNtB2_7FileExt18try_lock_exclusive(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae)
          to label %bb.p unwind label %bb.m       ; 6 uses

bb.p:                                             ; preds = %bb.o
  %.not26 = icmp eq ptr %i.ai, null
  br i1 %.not26, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = and i64 %i.aj, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 0, label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit
  ], !prof !15

default.unreachable:                              ; preds = %bb.as, %bb.ao, %bb.ai, %bb.u, %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.al = lshr i64 %i.aj, 32
  %i.am = trunc nuw i64 %i.al to i32
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit

bb.s:                                             ; preds = %bb.q
  %i.an = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.aj, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.an)
  call void @llvm.assume(i1 %i.ap)
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit

bb.t:                                             ; preds = %bb.x, %bb.y, %bb.ac, %bb.ab, %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr nonnull %i.ai) #20
          to label %.body unwind label %bb.aw

_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.q
  %.sroa.553.0 = phi i32 [ %i.am, %bb.r ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.q ]
  %i.ar = phi i1 [ true, %bb.r ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.q ] ; 2 uses
  %i.as = invoke noundef nonnull ptr @_RNvCs2R7sF1bDyVm_3fs220lock_contended_error()
          to label %bb.u unwind label %bb.t       ; 4 uses

bb.u:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECskuiImRAV2ip_9elfshaker.exit
  %i.at = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.au = and i64 %i.at, 3
  switch i64 %i.au, label %default.unreachable [
    i64 2, label %bb.w
    i64 3, label %bb.v
    i64 0, label %bb.z
    i64 1, label %bb.z
  ], !prof !15

bb.v:                                             ; preds = %bb.u
  %i.av = icmp ult ptr %i.as, inttoptr (i64 188978561024 to ptr)
  %i.aw = and i64 %i.at, 1095216660480
  %i.ax = icmp ne i64 %i.aw, 1095216660480
  call void @llvm.assume(i1 %i.av)
  call void @llvm.assume(i1 %i.ax)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.ay = lshr i64 %i.at, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = icmp eq i32 %.sroa.553.0, %i.az
  %or.cond = select i1 %i.ar, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr nonnull %i.as)
          to label %.thread62 unwind label %bb.t

bb.y:                                             ; preds = %bb.w, %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr nonnull %i.as)
          to label %bb.aa unwind label %bb.t

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.u
  br i1 %i.ar, label %bb.x, label %bb.y

bb.aa:                                            ; preds = %bb.y
end_hunk_0
