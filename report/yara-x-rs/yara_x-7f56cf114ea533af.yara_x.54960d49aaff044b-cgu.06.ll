Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNCNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB7_8Compiler18read_included_file0B9_:bb.a
bb.t:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !2388
  unreachable

_RNCNCNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB9_8Compiler18read_included_file00Bb_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %_RNCNCNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB9_8Compiler18read_included_file00Bb_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.an = load i64, ptr %i.g, align 8, !range !20, !noundef !9
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %.thread, label %bb.w

bb.v:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.af

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.aq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !9
  %i.ar = invoke { ptr, i64 } @_RINvMs16_NtCsG258MDvU3F_3std4pathNtB7_4Path12strip_prefixNtB7_7PathBufECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.y unwind label %bb.x       ; 2 uses

bb.x:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit.i, %bb.ak, %bb.z, %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.y:                                             ; preds = %bb.w
  %i.at = extractvalue { ptr, i64 } %i.ar, 0      ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.v, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = extractvalue { ptr, i64 } %i.ar, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.av)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs7gfv9tzbXmh_6yara_x.exit.i38 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body39 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs7gfv9tzbXmh_6yara_x.exit.i38: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs7gfv9tzbXmh_6yara_x.exit.i38
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.body39:                                          ; preds = %bb.ab, %bb.ad
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.ay, %bb.ad ], [ %i.aw, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.body35

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs7gfv9tzbXmh_6yara_x.exit.i38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit59, %bb.v, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit62 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.al, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.al ], [ %i.ba, %bb.ag ], [ %.pn33, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %.body35, %bb.f, %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread:                                          ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  %.val.i.i52 = load ptr, ptr %i.bd, align 8, !alias.scope !2391, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2391
  %i.be = ptrtoint ptr %.val.i.i52 to i64         ; 2 uses
  %i.bf = and i64 %i.be, 3
  switch i64 %i.bf, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit59
    i64 3, label %bb.aj
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit59
    i64 1, label %bb.ak
  ], !prof !30

default.unreachable:                              ; preds = %.thread
  unreachable

bb.aj:                                            ; preds = %.thread
  %i.bg = icmp ult ptr %.val.i.i52, inttoptr (i64 188978561024 to ptr)
  %i.bh = and i64 %i.be, 1095216660480
  %i.bi = icmp ne i64 %i.bh, 1095216660480
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.assume(i1 %i.bi)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit59

bb.ak:                                            ; preds = %.thread
  %i.bj = getelementptr i8, ptr %.val.i.i52, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !2392, !noalias !2391
  store i8 3, ptr %i.a, align 8, !alias.scope !2392, !noalias !2391
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit59 unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs7gfv9tzbXmh_6yara_x.exit59: ; preds = %.thread, %.thread, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2391
  br label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit62: ; preds = %bb.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs7gfv9tzbXmh_6yara_x.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit62 unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs7gfv9tzbXmh_6yara_x.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB7_8Compiler21c_alternation_literal0B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nonnull captures(address, read_provenance) %.0.val, i64 %.8.val, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !9, !align !17, !noundef !9 ; 5 uses
  %i.g = tail call fastcc noundef i32 @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler14intern_literal(ptr noalias nofree noundef align 8 dereferenceable(3296) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i1 noundef zeroext %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr i8, ptr %i.f, i64 2312
  %.val6 = load i64, ptr %i.h, align 8, !noundef !9
  %i.i = zext i32 %i.g to i64                     ; 2 uses
  %i.j = icmp ugt i64 %.val6, %i.i
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 2304
  %.val = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.i ; 2 uses
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.03.0.i = load ptr, ptr %.sroa.03.0.in.i, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.34.0.in.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.34.0.i = load i64, ptr %.sroa.34.0.in.i, align 8, !noundef !9 ; 4 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %.sroa.34.0.i, i64 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.024.i.i = phi i32 [ -2147483648, %bb.b ], [ %.sroa.0.1.i.i, %bb.e ] ; 2 uses
  %.sroa.02.023.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.02.1.i.i, %bb.e ]
  %.sroa.3.022.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.3.1.i.i, %bb.e ]
  %.sroa.0.01121.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.e ] ; 8 uses
  %i.n = add i64 %.sroa.0.01121.i.i, 4
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 range(i64 0, -9223372036854775808) %.sroa.34.0.i) ; 4 uses
  %2 = icmp ult i64 %..i.i.i, %.sroa.0.01121.i.i
  br i1 %2, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i, i64 noundef %..i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.34.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46, !noalias !2398
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nuw i64 %.sroa.0.01121.i.i, 1
  %i.p = sub nuw nsw i64 %..i.i.i, %.sroa.0.01121.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 %.sroa.0.01121.i.i
  %i.r = tail call fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.p) #47, !noalias !2398 ; 2 uses
  %i.s = icmp sgt i32 %i.r, %.sroa.0.024.i.i      ; 2 uses
  %.sroa.3.1.i.i = select i1 %i.s, i64 %..i.i.i, i64 %.sroa.3.022.i.i ; 2 uses
  %.sroa.02.1.i.i = select i1 %i.s, i64 %.sroa.0.01121.i.i, i64 %.sroa.02.023.i.i ; 2 uses
  %.sroa.0.1.i.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.sroa.0.024.i.i)
  %exitcond.not.i = icmp eq i64 %.sroa.0.01121.i.i, %i.m
  br i1 %exitcond.not.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i, label %bb.c

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2399
  call void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.34.0.i, i64 noundef %.sroa.02.1.i.i, i64 noundef %.sroa.3.1.i.i), !noalias !2400
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.u = load i8, ptr %i.t, align 2, !range !16, !noalias !2399, !noundef !9
  %.not.i = icmp eq i8 %i.u, 2
  br i1 %.not.i, label %bb.f, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality18best_atom_in_bytes.exit, !prof !11

bb.f:                                             ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46, !noalias !2400
  unreachable

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality18best_atom_in_bytes.exit: ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !2401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2399
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !9, !align !48, !noundef !9
  %i.x = load i16, ptr %i.w, align 2, !noundef !9
  %i.y = zext i1 %1 to i16
  %.sroa.03.0 = or i16 %i.x, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !9, !align !17, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.g, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load <2 x i64>, ptr %i.aa, align 8
  store <2 x i64> %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %.sroa.03.0, ptr %i.ae, align 2
  store i8 0, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !9, !noundef !9
  %i.ah = load i8, ptr %i.ag, align 1, !range !46, !noundef !9
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !9, !align !50, !noundef !9
  %i.al = load i32, ptr %i.ak, align 4, !noundef !9 ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #46
  unreachable

bb.h:                                             ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality18best_atom_in_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call fastcc void @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceNtNtB6_5atoms4AtomENvMsa_NtB6_5rulesNtB2l_14SubPatternAtom9from_atomB1W_EB8_(ptr noalias nofree noundef align 8 dereferenceable(3296) %i.f, i32 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.i:                                             ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality18best_atom_in_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB5_4Atom17case_combinations(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.k unwind label %bb.m

bb.j:                                             ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.i
  invoke fastcc void @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternNtNtB6_5atoms16CaseCombinationsNvMsa_NtB6_5rulesNtB1I_14SubPatternAtom9from_atomNtB19_4AtomEB8_(ptr noalias nofree noundef align 8 dereferenceable(3296) %i.f, i32 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit: ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.m:                                             ; preds = %bb.k, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtCs7gfv9tzbXmh_6yara_x11string_poolINtB2_10StringPoolNtNtB4_8compiler7IdentIdE13get_or_internB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call fastcc noundef align 4 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapReNtCslAmxFS6h4Nz_8intaglio6SymbolINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE3geteECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #47 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 4, !noundef !9
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCslAmxFS6h4Nz_8intaglio6SymbolNtBJ_19SymbolOverflowErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.b, align 8, !range !13, !noundef !9
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !18, !noundef !9 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #41
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.q = icmp ule i64 %2, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.e
  store i64 %i.m, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %i.r = call { i32, i32 } @_RINvMsc_NtCslAmxFS6h4Nz_8intaglio3strINtB6_11SymbolTableINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE6internNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) ; 2 uses
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = extractvalue { i32, i32 } %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.u = trunc nuw i32 %i.s to i1
  br i1 %i.u, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCslAmxFS6h4Nz_8intaglio6SymbolNtBJ_19SymbolOverflowErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #46
  unreachable

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.f

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtCslAmxFS6h4Nz_8intaglio6SymbolNtBJ_19SymbolOverflowErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.f, %bb.b
  %.sroa.0.0 = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.f ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler7contextNtB2_14CompileContext15get_pattern_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [168 x i8], align 8               ; 4 uses
  %i.j = alloca [208 x i8], align 8               ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = getelementptr inbounds nuw [192 x i8], ptr %i.q, i64 %i.s
  store ptr %i.q, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %2, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !9 ; 6 uses
  %i.y = call { i64, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtBQ_7contextNtB2z_14CompileContext15get_pattern_mut0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 1        ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = extractvalue { i64, ptr } %i.y, 0
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !9, !align !17, !noundef !9 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule:bb.a
bb.ly:                                            ; preds = %bb.lw
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.bcd = load ptr, ptr %i.bcc, align 8, !nonnull !9, !noundef !9
  %i.bce = getelementptr [112 x i8], ptr %i.bcd, i64 %i.bcb
  %i.bcf = getelementptr i8, ptr %i.bce, i64 -112
  %i.bcg = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.bci = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  store ptr %i.bcf, ptr %i.bci, align 8
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  store ptr %i.bcg, ptr %i.bcj, align 8
  %i.bck = getelementptr inbounds nuw i8, ptr %i.ha, i64 88
  store ptr %i.bch, ptr %i.bck, align 8
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.ha, i64 96
  store ptr %i.zd, ptr %i.bcl, align 8
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.ha, i64 104
  store ptr %i.ym, ptr %i.bcm, align 8
  store i64 0, ptr %i.ha, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.566.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.572.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler4emit19emit_rule_condition(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ha, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.yu, i32 noundef %i.ajm, i32 noundef %.sroa.041.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1976) %0)
          to label %bb.ma unwind label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.bcn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler4emit11EmitContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ha) #42
          to label %bb.lr unwind label %bb.ef

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler4emit11EmitContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ha)
          to label %bb.mb unwind label %bb.lt

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  %i.bco = load i64, ptr %i.hc, align 8, !range !55, !alias.scope !4418, !noundef !9
  %i.bcp = icmp eq i64 %i.bco, -2
  br i1 %i.bcp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit482, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.hc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit482 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit: ; preds = %bb.mc
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  br label %.body460

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit482: ; preds = %bb.mb, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ht)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1z_.exit484 unwind label %bb.ih

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1z_.exit484: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hv)
          to label %bb.md unwind label %.loopexit.split-lp858

bb.md:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEEB1z_.exit484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules16HeaderConstraintEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hz)
          to label %bb.me unwind label %.loopexit.split-lp872

bb.me:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  br label %bb.cj

bb.mf:                                            ; preds = %bb.lp
  %i.bcr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.hd) #42
          to label %.body460 unwind label %bb.ef

.thread702.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mi, %bb.adq, %_RNvXsk_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_16HeaderConstraintNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.adm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i, %bb.adg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules16HeaderConstraintEBH_.exit.sink.split.i, %.invoke3053, %.invoke3054, %bb.ado
  %lpad.loopexit.split-lp3610 = landingpad { ptr, i32 }
          cleanup
  br label %.thread689

bb.mg:                                            ; preds = %bb.lm
  br i1 %i.bbl, label %bb.mj, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bcs = load i64, ptr %i.hk, align 8, !range !33, !alias.scope !4419, !noundef !9
  %cond = icmp samesign ult i64 %i.bcs, 2
  br i1 %cond, label %bb.mi, label %.invoke3053

bb.mi:                                            ; preds = %bb.mh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir14LiteralPatternEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.hk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleEBH_.exit unwind label %.thread702.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke3053:                                      ; preds = %bb.mh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13RegexpPatternEBH_(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.11604.8..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleEBH_.exit unwind label %.thread702.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleEBH_.exit: ; preds = %.invoke3053, %bb.mi, %bb.adq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11604)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11604)
  %i.bct = icmp eq ptr %i.bbi, %i.ats
  br i1 %i.bct, label %._crit_edge2000, label %bb.ll

bb.mj:                                            ; preds = %bb.mg
  %.val269 = load i32, ptr %i.atz, align 8, !alias.scope !52, !noundef !9 ; 3 uses
  %.val270 = load i32, ptr %i.aua, align 4, !alias.scope !53, !noundef !9 ; 3 uses
  %.sroa.0612.0.copyload = load i64, ptr %i.hk, align 8 ; 3 uses
  %.sroa.5614.0.copyload = load i64, ptr %.sroa.5614.0..sroa_idx, align 8 ; 5 uses
  %i.bcu = icmp ult i64 %.sroa.0612.0.copyload, 2
  br i1 %i.bcu, label %bb.mk, label %bb.rz

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  store i64 %.sroa.0612.0.copyload, ptr %i.hj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6607.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.11604.8..sroa_idx, i64 136, i1 false)
  store i64 %.sroa.5614.0.copyload, ptr %.sroa.8609.0..sroa_idx, align 8
  %i.bcv = load i32, ptr %i.bbg, align 4, !noundef !9 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4420)
  call void @llvm.experimental.noalias.scope.decl(metadata !4421)
  %i.bcw = trunc i64 %.sroa.5614.0.copyload to i16 ; 9 uses
  %i.bcx = and i16 %i.bcw, 64
  %.not.i488 = icmp eq i16 %i.bcx, 0
  %spec.select.i489 = select i1 %.not.i488, i16 0, i16 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !4422
  store i64 0, ptr %i.ds, align 8, !noalias !4422
  store ptr inttoptr (i64 8 to ptr), ptr %i.axu, align 8, !noalias !4422
  store i64 0, ptr %i.axv, align 8, !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !4422
  %i.bcy = and i16 %i.bcw, 3
  %.not38.i = icmp eq i16 %i.bcy, 0
  br i1 %.not38.i, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mw, %bb.mk
  %i.bcz = phi i64 [ %i.bdx, %bb.mw ], [ 0, %bb.mk ]
  %i.bda = phi ptr [ %i.bdv, %bb.mw ], [ inttoptr (i64 8 to ptr), %bb.mk ]
  %.sroa.025.0.i = phi i8 [ 1, %bb.mw ], [ 0, %bb.mk ] ; 8 uses
  %i.bdb = and i16 %i.bcw, 1
  %.not39.i = icmp eq i16 %i.bdb, 0
  br i1 %.not39.i, label %bb.mx, label %bb.nc

bb.mm:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !4422
  %i.bdc = load ptr, ptr %i.axw, align 8, !alias.scope !4421, !nonnull !9, !noundef !9
  %i.bdd = load i64, ptr %i.axx, align 8, !alias.scope !4421, !noundef !9
  invoke void @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms9make_wide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdc, i64 noundef %i.bdd)
          to label %bb.mn unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit, !noalias !4421

.body.i490:                                       ; preds = %.loopexit.split-lp403.loopexit.split-lp.i.loopexit, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp, %.thread349.i, %bb.nf, %.loopexit402.i
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %.pn60.pn.i, %.thread349.i ], [ %i.bfb, %bb.nf ], [ %lpad.loopexit404.i, %.loopexit402.i ], [ %lpad.loopexit844, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp845, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %.sroa.027.0.i = phi i1 [ false, %.thread349.i ], [ true, %bb.nf ], [ true, %.loopexit402.i ], [ %.sroa.027.1.ph.ph.i.ph, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit ], [ true, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %.sroa.025.1.i = phi i8 [ %.sroa.025.0.i, %.thread349.i ], [ %.sroa.025.0.i, %bb.nf ], [ %.sroa.025.0.i, %.loopexit402.i ], [ %.sroa.025.2.ph.ph.i.ph, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit ], [ %.sroa.025.2.ph.ph.i.ph843, %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp ]
  %i.bde = trunc nuw i8 %.sroa.025.1.i to i1
  br i1 %i.bde, label %.body.thread.i, label %bb.nv

.loopexit402.i:                                   ; preds = %bb.na
  %lpad.loopexit404.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i490

.body.thread804.i:                                ; preds = %bb.mq
  %lpad.loopexit407.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.loopexit.split-lp403.loopexit.split-lp.i.loopexit: ; preds = %bb.mm, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i
  %.sroa.027.1.ph.ph.i.ph = phi i1 [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ true, %bb.mm ], [ true, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i ], [ true, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i ]
  %.sroa.025.2.ph.ph.i.ph = phi i8 [ %.sroa.025.0.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i ], [ 0, %bb.mm ], [ 1, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i ], [ %.sroa.025.0.i, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i ]
  %lpad.loopexit844 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i490

.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp: ; preds = %bb.mp, %bb.mr, %bb.mz, %bb.nb
  %.sroa.025.2.ph.ph.i.ph843 = phi i8 [ 1, %bb.mr ], [ 1, %bb.mp ], [ %.sroa.025.0.i, %bb.nb ], [ %.sroa.025.0.i, %bb.mz ]
  %lpad.loopexit.split-lp845 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i490

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !4422
  %i.bdf = load ptr, ptr %i.axy, align 8, !noalias !4422, !nonnull !9, !noundef !9 ; 3 uses
  %i.bdg = load i64, ptr %i.axz, align 8, !noalias !4422, !noundef !9 ; 5 uses
  %i.bdh = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bdg, i64 4)
  br label %bb.mo

bb.mo:                                            ; preds = %.noexc65.i, %bb.mn
  %.sroa.0.024.i.i.i = phi i32 [ -2147483648, %bb.mn ], [ %.sroa.0.1.i.i.i, %.noexc65.i ] ; 2 uses
  %.sroa.02.023.i.i.i = phi i64 [ 0, %bb.mn ], [ %.sroa.02.1.i.i.i, %.noexc65.i ]
  %.sroa.3.022.i.i.i = phi i64 [ 0, %bb.mn ], [ %.sroa.3.1.i.i.i, %.noexc65.i ]
  %.sroa.0.01121.i.i.i = phi i64 [ 0, %bb.mn ], [ %i.bdm, %.noexc65.i ] ; 8 uses
  %i.bdi = add i64 %.sroa.0.01121.i.i.i, 4
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bdi, i64 range(i64 0, -9223372036854775808) %i.bdg) ; 4 uses
  %2 = icmp ult i64 %..i.i.i.i, %.sroa.0.01121.i.i.i
  br i1 %2, label %bb.mp, label %bb.mq, !prof !24

bb.mp:                                            ; preds = %bb.mo
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i.i, i64 noundef %..i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.bdg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
          to label %.noexc.i513 unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp, !noalias !4421

.noexc.i513:                                      ; preds = %bb.mp
  unreachable

bb.mq:                                            ; preds = %bb.mo
  %i.bdj = sub nuw nsw i64 %..i.i.i.i, %.sroa.0.01121.i.i.i
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.sroa.0.01121.i.i.i
  %i.bdl = invoke fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdk, i64 noundef %i.bdj) #47
          to label %.noexc65.i unwind label %.body.thread804.i, !noalias !4421 ; 2 uses

.noexc65.i:                                       ; preds = %bb.mq
  %i.bdm = add nuw i64 %.sroa.0.01121.i.i.i, 1
  %i.bdn = icmp sgt i32 %i.bdl, %.sroa.0.024.i.i.i ; 2 uses
  %.sroa.3.1.i.i.i = select i1 %i.bdn, i64 %..i.i.i.i, i64 %.sroa.3.022.i.i.i ; 2 uses
  %.sroa.02.1.i.i.i = select i1 %i.bdn, i64 %.sroa.0.01121.i.i.i, i64 %.sroa.02.023.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i = call i32 @llvm.smax.i32(i32 %i.bdl, i32 %.sroa.0.024.i.i.i)
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.01121.i.i.i, %i.bdh
  br i1 %exitcond.not.i.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i, label %bb.mo

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i: ; preds = %.noexc65.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !4423
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdf, i64 noundef range(i64 0, -9223372036854775808) %i.bdg, i64 noundef %.sroa.02.1.i.i.i, i64 noundef %.sroa.3.1.i.i.i)
          to label %.noexc66.i unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit, !noalias !4421

.noexc66.i:                                       ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i.i
  %i.bdo = load i8, ptr %i.aya, align 2, !range !16, !noalias !4423, !noundef !9
  %.not.i.i492 = icmp eq i8 %i.bdo, 2
  br i1 %.not.i.i492, label %bb.mr, label %bb.ms, !prof !11

bb.mr:                                            ; preds = %.noexc66.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
          to label %.noexc67.i unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp, !noalias !4421

.noexc67.i:                                       ; preds = %bb.mr
  unreachable

bb.ms:                                            ; preds = %.noexc66.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.da, i64 32, i1 false), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !4423
  %i.bdp = or disjoint i16 %spec.select.i489, 1
  store ptr %i.bdf, ptr %i.ayb, align 8, !noalias !4422
  store i64 %i.bdg, ptr %i.ayc, align 8, !noalias !4422
  store i16 %i.bdp, ptr %i.ayd, align 8, !noalias !4422
  %i.bdq = load i64, ptr %i.axv, align 8, !alias.scope !4424, !noalias !4422, !noundef !9 ; 3 uses
  %i.bdr = load i64, ptr %i.ds, align 8, !range !14, !alias.scope !4424, !noalias !4422, !noundef !9
  %i.bds = icmp eq i64 %i.bdq, %i.bdr
  br i1 %i.bds, label %bb.mt, label %bb.mw

bb.mt:                                            ; preds = %bb.ms
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtBU_15SubPatternFlagsEE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.mw unwind label %bb.mu, !noalias !4425

bb.mu:                                            ; preds = %bb.mt
  %i.bdt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dp)
          to label %.body.thread.i unwind label %bb.mv, !noalias !4421

bb.mv:                                            ; preds = %bb.mu
  %i.bdu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

bb.mw:                                            ; preds = %bb.mt, %bb.ms
  %i.bdv = load ptr, ptr %i.axu, align 8, !alias.scope !4424, !noalias !4422, !nonnull !9, !noundef !9 ; 2 uses
  %i.bdw = getelementptr inbounds nuw [56 x i8], ptr %i.bdv, i64 %i.bdq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdw, ptr noundef nonnull align 8 dereferenceable(56) %i.dp, i64 56, i1 false), !noalias !4421
  %i.bdx = add i64 %i.bdq, 1                      ; 2 uses
  store i64 %i.bdx, ptr %i.axv, align 8, !alias.scope !4424, !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !4422
  br label %bb.ml

bb.mx:                                            ; preds = %bb.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !4422
  %i.bdy = load ptr, ptr %i.axw, align 8, !alias.scope !4421, !nonnull !9, !noundef !9 ; 3 uses
  %i.bdz = load i64, ptr %i.axx, align 8, !alias.scope !4421, !noundef !9 ; 5 uses
  %i.bea = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bdz, i64 4)
  br label %bb.my

bb.my:                                            ; preds = %.noexc80.i, %bb.mx
  %.sroa.0.024.i.i68.i = phi i32 [ -2147483648, %bb.mx ], [ %.sroa.0.1.i.i75.i, %.noexc80.i ] ; 2 uses
  %.sroa.02.023.i.i69.i = phi i64 [ 0, %bb.mx ], [ %.sroa.02.1.i.i74.i, %.noexc80.i ]
  %.sroa.3.022.i.i70.i = phi i64 [ 0, %bb.mx ], [ %.sroa.3.1.i.i73.i, %.noexc80.i ]
  %.sroa.0.01121.i.i71.i = phi i64 [ 0, %bb.mx ], [ %i.bef, %.noexc80.i ] ; 8 uses
  %i.beb = add i64 %.sroa.0.01121.i.i71.i, 4
  %..i.i.i72.i = call noundef i64 @llvm.umin.i64(i64 %i.beb, i64 range(i64 0, -9223372036854775808) %i.bdz) ; 4 uses
  %3 = icmp ult i64 %..i.i.i72.i, %.sroa.0.01121.i.i71.i
  br i1 %3, label %bb.mz, label %bb.na, !prof !24

bb.mz:                                            ; preds = %bb.my
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i71.i, i64 noundef %..i.i.i72.i, i64 noundef range(i64 0, -9223372036854775808) %i.bdz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
          to label %.noexc79.i unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp, !noalias !4421

.noexc79.i:                                       ; preds = %bb.mz
  unreachable

bb.na:                                            ; preds = %bb.my
  %i.bec = sub nuw nsw i64 %..i.i.i72.i, %.sroa.0.01121.i.i71.i
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdy, i64 %.sroa.0.01121.i.i71.i
  %i.bee = invoke fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bed, i64 noundef %i.bec) #47
          to label %.noexc80.i unwind label %.loopexit402.i, !noalias !4421 ; 2 uses

.noexc80.i:                                       ; preds = %bb.na
  %i.bef = add nuw i64 %.sroa.0.01121.i.i71.i, 1
  %i.beg = icmp sgt i32 %i.bee, %.sroa.0.024.i.i68.i ; 2 uses
  %.sroa.3.1.i.i73.i = select i1 %i.beg, i64 %..i.i.i72.i, i64 %.sroa.3.022.i.i70.i ; 2 uses
  %.sroa.02.1.i.i74.i = select i1 %i.beg, i64 %.sroa.0.01121.i.i71.i, i64 %.sroa.02.023.i.i69.i ; 2 uses
  %.sroa.0.1.i.i75.i = call i32 @llvm.smax.i32(i32 %i.bee, i32 %.sroa.0.024.i.i68.i)
  %exitcond.not.i76.i = icmp eq i64 %.sroa.0.01121.i.i71.i, %i.bea
  br i1 %exitcond.not.i76.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i, label %bb.my

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i: ; preds = %.noexc80.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !4426
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bdy, i64 noundef range(i64 0, -9223372036854775808) %i.bdz, i64 noundef %.sroa.02.1.i.i74.i, i64 noundef %.sroa.3.1.i.i73.i)
          to label %.noexc81.i unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit, !noalias !4421

.noexc81.i:                                       ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i77.i
  %i.beh = load i8, ptr %i.aye, align 2, !range !16, !noalias !4426, !noundef !9
  %.not.i78.i = icmp eq i8 %i.beh, 2
  br i1 %.not.i78.i, label %bb.nb, label %bb.nd, !prof !11

bb.nb:                                            ; preds = %.noexc81.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
          to label %.noexc82.i unwind label %.loopexit.split-lp403.loopexit.split-lp.i.loopexit.split-lp, !noalias !4421

.noexc82.i:                                       ; preds = %bb.nb
  unreachable

bb.nc:                                            ; preds = %bb.nh, %bb.ml
  %i.bei = phi i64 [ %i.bff, %bb.nh ], [ %i.bcz, %bb.ml ] ; 3 uses
  %i.bej = phi ptr [ %i.bfd, %bb.nh ], [ %i.bda, %bb.ml ] ; 4 uses
  %i.bek = load i64, ptr %i.ds, align 8, !range !14, !noalias !4422, !noundef !9
  %i.bel = icmp ult i64 %i.bei, 164703072086692426
  call void @llvm.assume(i1 %i.bel)
  %.idx.i494 = mul nuw nsw i64 %i.bei, 56
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 %.idx.i494 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !4422
  store ptr %i.bej, ptr %i.dn, align 8, !noalias !4422
  store ptr %i.bej, ptr %.sroa.4.0..sroa_idx.i495, align 8, !noalias !4422
  store i64 %i.bek, ptr %.sroa.5.0..sroa_idx.i496, align 8, !noalias !4422
  store ptr %i.bem, ptr %.sroa.6.0..sroa_idx.i497, align 8, !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.ben = icmp eq i64 %i.bei, 0
  br i1 %i.ben, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader: ; preds = %bb.nc
  %i.beo = and i16 %i.bcw, 32
  %.not41.i = icmp eq i16 %i.beo, 0
  %i.bep = and i64 %.sroa.5614.0.copyload, 16711680
  %.not59.i = icmp eq i64 %i.bep, 131072
  %sh.diff = lshr i64 %.sroa.5614.0.copyload, 16
  %tr.sh.diff = trunc i64 %sh.diff to i24
  %i.beq = and i24 %tr.sh.diff, -256
  %i.ber = trunc i64 %.sroa.5614.0.copyload to i24
  %i.bes = lshr i24 %i.ber, 16
  %.sroa.0.0.insert.insert.i.i = or disjoint i24 %i.beq, %i.bes
  %i.bet = and i16 %i.bcw, 4
  %.not42.i = icmp eq i16 %i.bet, 0
  %i.beu = and i16 %i.bcw, 24
  %.not43.i = icmp eq i16 %i.beu, 0
  %i.bev = and i16 %i.bcw, 8
  %.not44.i = icmp eq i16 %i.bev, 0
  %i.bew = and i16 %i.bcw, 16
  %.not48.i = icmp eq i16 %i.bew, 0
  %i.bex = and i16 %i.bcw, 16
  %.not45.i = icmp eq i16 %i.bex, 0
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i

bb.nd:                                            ; preds = %.noexc81.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !4426
  store ptr %i.bdy, ptr %i.ayf, align 8, !noalias !4422
  store i64 %i.bdz, ptr %i.ayg, align 8, !noalias !4422
  store i16 %spec.select.i489, ptr %i.ayh, align 8, !noalias !4422
  %i.bey = load i64, ptr %i.axv, align 8, !alias.scope !4427, !noalias !4422, !noundef !9 ; 3 uses
  %i.bez = load i64, ptr %i.ds, align 8, !range !14, !alias.scope !4427, !noalias !4422, !noundef !9
  %i.bfa = icmp eq i64 %i.bey, %i.bez
  br i1 %i.bfa, label %bb.ne, label %bb.nh

bb.ne:                                            ; preds = %bb.nd
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtBU_15SubPatternFlagsEE8grow_oneBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.nh unwind label %bb.nf, !noalias !4428

bb.nf:                                            ; preds = %bb.ne
  %i.bfb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.do)
          to label %.body.i490 unwind label %bb.ng, !noalias !4421

bb.ng:                                            ; preds = %bb.nf
  %i.bfc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

bb.nh:                                            ; preds = %bb.ne, %bb.nd
  %i.bfd = load ptr, ptr %i.axu, align 8, !alias.scope !4427, !noalias !4422, !nonnull !9, !noundef !9 ; 2 uses
  %i.bfe = getelementptr inbounds nuw [56 x i8], ptr %i.bfd, i64 %i.bey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bfe, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false), !noalias !4421
  %i.bff = add i64 %i.bey, 1                      ; 2 uses
  store i64 %i.bff, ptr %i.axv, align 8, !alias.scope !4427, !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !4422
  br label %bb.nc

.thread349.i:                                     ; preds = %.thread345.i, %bb.rt
  %.pn60.pn.i = phi { ptr, i32 } [ %i.bmw, %bb.rt ], [ %.pn60348.i, %.thread345.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB1x_15SubPatternFlagsEEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn) #42
          to label %.body.i490 unwind label %bb.qe, !noalias !4421

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i
  %i.bfg = phi ptr [ %i.bfh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i ], [ %i.bej, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader ] ; 7 uses
  %.sroa.7276.sroa.0.0651.i = phi i32 [ %.sroa.7276.sroa.0.3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader ] ; 7 uses
  %.sroa.7298.sroa.0.0650.i = phi i32 [ %.sroa.7298.sroa.0.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i.preheader ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 56 ; 3 uses
  store ptr %i.bfh, ptr %.sroa.4.0..sroa_idx.i495, align 8, !alias.scope !4429, !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(26) %i.bfg, i64 26, i1 false), !noalias !4430
  %.sroa.5.0..sroa_idx259.i = getelementptr inbounds nuw i8, ptr %i.bfg, i64 26
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx259.i, align 2, !noalias !4430 ; 2 uses
  %.sroa.7.0..sroa_idx.i502 = getelementptr inbounds nuw i8, ptr %i.bfg, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.0..sroa_idx.i502, i64 5, i1 false), !noalias !4430
  %.sroa.7263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bfg, i64 32
  %.sroa.7263.0.copyload.i = load ptr, ptr %.sroa.7263.0..sroa_idx.i, align 8, !noalias !4430 ; 5 uses
  %.sroa.8.0..sroa_idx.i503 = getelementptr inbounds nuw i8, ptr %i.bfg, i64 40
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i503, align 8, !noalias !4430 ; 9 uses
  %.sroa.9.0..sroa_idx.i504 = getelementptr inbounds nuw i8, ptr %i.bfg, i64 48
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i504, align 8, !noalias !4430 ; 3 uses
  %.not40.i = icmp eq i8 %.sroa.5.0.copyload.i, 2
  br i1 %.not40.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i, label %bb.ni

bb.ni:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7263.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.dm, ptr noundef nonnull align 8 dereferenceable(26) %.sroa.0.i, i64 26, i1 false), !noalias !4422
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx260.i, align 2, !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.0..sroa_idx262.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.7.i, i64 5, i1 false), !noalias !4422
  call void @llvm.experimental.noalias.scope.decl(metadata !4431)
  %i.bfi = invoke fastcc noundef align 4 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRShNtCslAmxFS6h4Nz_8intaglio6SymbolINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE3getBP_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ayi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7263.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i) #47
          to label %.noexc91.i unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421 ; 2 uses

.noexc91.i:                                       ; preds = %bb.ni
  %.not.i90.i = icmp eq ptr %i.bfi, null
  br i1 %.not.i90.i, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %.noexc91.i
  %i.bfj = load i32, ptr %i.bfi, align 4, !noalias !4432, !noundef !9
  br label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internRShEB8_.exit.i

bb.nk:                                            ; preds = %.noexc91.i
  %i.bfk = load i64, ptr %i.ayj, align 8, !alias.scope !4433, !noundef !9
  %i.bfl = add i64 %i.bfk, %.sroa.8.0.copyload.i
  store i64 %i.bfl, ptr %i.ayj, align 8, !alias.scope !4433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !4434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !4434
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc92.i unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

.noexc92.i:                                       ; preds = %bb.nk
  %i.bfm = load i64, ptr %i.cx, align 8, !range !13, !noalias !4434, !noundef !9
  %i.bfn = trunc nuw i64 %i.bfm to i1
  %i.bfo = load i64, ptr %i.ayk, align 8, !range !18, !noalias !4434, !noundef !9 ; 3 uses
  br i1 %i.bfn, label %bb.nl, label %bb.nm, !prof !11

bb.nl:                                            ; preds = %.noexc92.i
  %i.bfp = load i64, ptr %i.ayl, align 8, !noalias !4434
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bfo, i64 %i.bfp) #41
          to label %.noexc93.i unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

.noexc93.i:                                       ; preds = %bb.nl
  unreachable

bb.nm:                                            ; preds = %.noexc92.i
  %i.bfq = load ptr, ptr %i.ayl, align 8, !noalias !4434, !nonnull !9, !noundef !9 ; 2 uses
  %i.bfr = icmp samesign ule i64 %.sroa.8.0.copyload.i, %i.bfo
  call void @llvm.assume(i1 %i.bfr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !4434
  store i64 %i.bfo, ptr %i.cy, align 8, !noalias !4434
  store ptr %i.bfq, ptr %i.aym, align 8, !noalias !4434
  store i64 0, ptr %i.ayn, align 8, !noalias !4434
  %.not4.i.i = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %.not4.i.i, label %bb.nn, label %bb.np

bb.nn:                                            ; preds = %bb.np, %bb.nm
  %i.bfs = invoke { i32, i32 } @_RINvMsc_NtCslAmxFS6h4Nz_8intaglio5bytesINtB6_11SymbolTableINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE6internINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ym, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy)
          to label %.noexc94.i unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421 ; 2 uses

.noexc94.i:                                       ; preds = %bb.nn
  %i.bft = extractvalue { i32, i32 } %i.bfs, 0
  %i.bfu = extractvalue { i32, i32 } %i.bfs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !4434
  %i.bfv = trunc nuw i32 %i.bft to i1
  br i1 %i.bfv, label %bb.no, label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internRShEB8_.exit.i, !prof !11

bb.no:                                            ; preds = %.noexc94.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #46
          to label %.noexc95.i unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

.noexc95.i:                                       ; preds = %bb.no
  unreachable

bb.np:                                            ; preds = %bb.nm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bfq, ptr nonnull readonly align 1 %.sroa.7263.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.8.0.copyload.i, i1 false), !noalias !4432
  store i64 %.sroa.8.0.copyload.i, ptr %i.ayn, align 8, !noalias !4434
  br label %bb.nn

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
end_hunk_1
begin_hunk_2_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule:bb.a
  %.sroa.8272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8272.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8272.0..sroa_idx.i, i64 16, i1 false), !noalias !4435
  %.not47.i = icmp eq i64 %.sroa.5271.0.copyload.i, -1
  br i1 %.not47.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %bb.oj

bb.oj:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !4422
  store i64 %.sroa.5271.0.copyload.i, ptr %i.dh, align 8, !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8272.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8272.i, i64 16, i1 false), !noalias !4422
  br i1 %.not46.i, label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i, label %bb.qf

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit180.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i, %bb.oh
  %i.bgr = phi ptr [ %i.bgi, %bb.oh ], [ %i.bgm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit180.i ], [ %i.bgq, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i ]
  %.sroa.7276.sroa.0.2.lcssa.i = phi i32 [ %.sroa.7276.sroa.0.0651.i, %bb.oh ], [ %.sroa.7276.sroa.0.5.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit180.i ], [ %.sroa.7276.sroa.0.2608.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i ] ; 2 uses
  store ptr %i.bgr, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8272.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.di)
          to label %bb.ok unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

bb.ok:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !4422
  br i1 %.not48.i, label %bb.op, label %bb.og

bb.ol:                                            ; preds = %bb.og
  %i.bgs = load ptr, ptr %i.azw, align 8, !noalias !4422, !nonnull !9, !noundef !9 ; 4 uses
  %i.bgt = load i64, ptr %i.dg, align 8, !range !14, !noalias !4422, !noundef !9
  %i.bgu = load i64, ptr %i.azx, align 8, !noalias !4422, !noundef !9 ; 3 uses
  %i.bgv = icmp ult i64 %i.bgu, 288230376151711744
  call void @llvm.assume(i1 %i.bgv)
  %.idx653.i = shl nuw nsw i64 %i.bgu, 5
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgs, i64 %.idx653.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !4422
  store ptr %i.bgs, ptr %i.df, align 8, !noalias !4422
  store i64 %i.bgt, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !4422
  store ptr %i.bgw, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293.i)
  %i.bgx = icmp eq i64 %i.bgu, 0
  br i1 %i.bgx, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i.preheader

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i.preheader: ; preds = %bb.ol
  %.not4.i103.i = icmp eq i64 %i.bgh, 0
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i

.body134.i:                                       ; preds = %bb.qc, %.body131.i.a, %bb.om
  %.pn53.i = phi { ptr, i32 } [ %.pn.i506, %.body131.i.a ], [ %i.bgy, %bb.om ], [ %i.bjx, %bb.qc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.df) #42
          to label %.thread345.i unwind label %bb.qe, !noalias !4421

bb.om:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  br label %.body134.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i
  %i.bgz = phi ptr [ %i.bha, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.bgs, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i.preheader ] ; 4 uses
  %.sroa.7298.sroa.0.1645.i = phi i32 [ %.sroa.7298.sroa.0.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.7298.sroa.0.0650.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i.preheader ] ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 32 ; 19 uses
  %.sroa.0290.0.copyload.i = load i8, ptr %i.bgz, align 8, !noalias !4436
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %.sroa.5292.0.copyload.i = load i64, ptr %.sroa.5292.0..sroa_idx.i, align 8, !noalias !4436 ; 2 uses
  %.sroa.8293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.0..sroa_idx.i, i64 16, i1 false), !noalias !4436
  %.not50.i = icmp eq i64 %.sroa.5292.0.copyload.i, -1
  br i1 %.not50.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.thread.i, label %bb.on

bb.on:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !4422
  store i64 %.sroa.5292.0.copyload.i, ptr %i.de, align 8, !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8293.i, i64 16, i1 false), !noalias !4422
  br i1 %.not49.i, label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit.i, label %bb.oq

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i, %bb.ol
  %i.bhb = phi ptr [ %i.bgs, %bb.ol ], [ %i.bgw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.bha, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i ]
  %.sroa.7298.sroa.0.1.lcssa.i = phi i32 [ %.sroa.7298.sroa.0.0650.i, %bb.ol ], [ %.sroa.7298.sroa.0.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.7298.sroa.0.1645.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i ]
  store ptr %i.bhb, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.df)
          to label %bb.oo unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

bb.oo:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !4422
  br label %bb.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i: ; preds = %bb.rx, %bb.op, %bb.od
  %.sroa.7298.sroa.0.2.i = phi i32 [ %.sroa.7298.sroa.0.0650.i, %bb.od ], [ %.sroa.7298.sroa.0.0650.i, %bb.rx ], [ %.sroa.7298.sroa.0.3.i, %bb.op ]
  %.sroa.7276.sroa.0.3.i = phi i32 [ %.sroa.7276.sroa.0.0651.i, %bb.od ], [ %.sroa.7276.sroa.0.0651.i, %bb.rx ], [ %.sroa.7276.sroa.0.4.i, %bb.op ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.bhc = icmp eq ptr %i.bfh, %i.bem
  br i1 %i.bhc, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB14_15SubPatternFlagsEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB16_.exit.i

bb.op:                                            ; preds = %bb.rq, %bb.oo, %bb.ok, %bb.oe
  %.sroa.7298.sroa.0.3.i = phi i32 [ %.sroa.7298.sroa.0.0650.i, %bb.oe ], [ %.sroa.7298.sroa.0.1.lcssa.i, %bb.oo ], [ %.sroa.7298.sroa.0.0650.i, %bb.ok ], [ %.sroa.7298.sroa.0.0650.i, %bb.rq ]
  %.sroa.7276.sroa.0.4.i = phi i32 [ %.sroa.7276.sroa.0.0651.i, %bb.oe ], [ %.sroa.7276.sroa.0.1.i, %bb.oo ], [ %.sroa.7276.sroa.0.2.lcssa.i, %bb.ok ], [ %.sroa.7276.sroa.0.0651.i, %bb.rq ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i unwind label %bb.rt, !noalias !4421

bb.oq:                                            ; preds = %bb.on
  call void @llvm.experimental.noalias.scope.decl(metadata !4437)
  %i.bhd = invoke fastcc noundef align 4 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRShNtCslAmxFS6h4Nz_8intaglio6SymbolINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE3getBP_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ayi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bgg, i64 noundef %i.bgh) #47
          to label %.noexc104.i unwind label %.loopexit389.i, !noalias !4421 ; 2 uses

.noexc104.i:                                      ; preds = %bb.oq
  %.not.i101.i = icmp eq ptr %i.bhd, null
  br i1 %.not.i101.i, label %bb.os, label %bb.or

bb.or:                                            ; preds = %.noexc104.i
  %i.bhe = load i32, ptr %i.bhd, align 4, !noalias !4438, !noundef !9
  br label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit.i

bb.os:                                            ; preds = %.noexc104.i
  %i.bhf = load i64, ptr %i.ayj, align 8, !alias.scope !4439, !noundef !9
  %i.bhg = add i64 %i.bhf, %i.bgh
  store i64 %i.bhg, ptr %i.ayj, align 8, !alias.scope !4439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !4440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !4440
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cv, i64 noundef %i.bgh, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc105.i unwind label %.loopexit389.i, !noalias !4421

.noexc105.i:                                      ; preds = %bb.os
  %i.bhh = load i64, ptr %i.cv, align 8, !range !13, !noalias !4440, !noundef !9
  %i.bhi = trunc nuw i64 %i.bhh to i1
  %i.bhj = load i64, ptr %i.azy, align 8, !range !18, !noalias !4440, !noundef !9 ; 3 uses
  br i1 %i.bhi, label %bb.ot, label %bb.ou, !prof !11

bb.ot:                                            ; preds = %.noexc105.i
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  %i.bhk = load i64, ptr %i.azz, align 8, !noalias !4440
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bhj, i64 %i.bhk) #41
          to label %.noexc106.i unwind label %.loopexit.split-lp390.i, !noalias !4421

.noexc106.i:                                      ; preds = %bb.ot
  unreachable

bb.ou:                                            ; preds = %.noexc105.i
  %i.bhl = load ptr, ptr %i.azz, align 8, !noalias !4440, !nonnull !9, !noundef !9 ; 2 uses
  %i.bhm = icmp ule i64 %i.bgh, %i.bhj
  call void @llvm.assume(i1 %i.bhm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !4440
  store i64 %i.bhj, ptr %i.cw, align 8, !noalias !4440
  store ptr %i.bhl, ptr %i.baa, align 8, !noalias !4440
  store i64 0, ptr %i.bab, align 8, !noalias !4440
  br i1 %.not4.i103.i, label %bb.ov, label %bb.ox

bb.ov:                                            ; preds = %bb.ox, %bb.ou
  %i.bhn = invoke { i32, i32 } @_RINvMsc_NtCslAmxFS6h4Nz_8intaglio5bytesINtB6_11SymbolTableINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE6internINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ym, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cw)
          to label %.noexc107.i unwind label %.loopexit389.i, !noalias !4421 ; 2 uses

.noexc107.i:                                      ; preds = %bb.ov
  %i.bho = extractvalue { i32, i32 } %i.bhn, 0
  %i.bhp = extractvalue { i32, i32 } %i.bhn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !4440
  %i.bhq = trunc nuw i32 %i.bho to i1
  br i1 %i.bhq, label %bb.ow, label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit.i, !prof !11

bb.ow:                                            ; preds = %.noexc107.i
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #46
          to label %.noexc108.i unwind label %.loopexit.split-lp390.i, !noalias !4421

.noexc108.i:                                      ; preds = %bb.ow
  unreachable

bb.ox:                                            ; preds = %bb.ou
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhl, ptr nonnull readonly align 1 %i.bgg, i64 %i.bgh, i1 false), !noalias !4438
  store i64 %i.bgh, ptr %i.bab, align 8, !noalias !4440
  br label %bb.ov

_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit.i: ; preds = %.noexc107.i, %bb.or, %bb.on
  %.sroa.7298.sroa.0.4.i = phi i32 [ %.sroa.7298.sroa.0.1645.i, %bb.on ], [ %i.bhe, %bb.or ], [ %i.bhp, %.noexc107.i ] ; 3 uses
  %storemerge.i = phi i8 [ 9, %bb.on ], [ 11, %bb.or ], [ 11, %.noexc107.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !4422
  %i.bhr = load ptr, ptr %.sroa.8293.8..sroa_idx.i, align 8, !noalias !4422, !nonnull !9, !noundef !9
  %i.bhs = load i64, ptr %i.bac, align 8, !noalias !4422, !noundef !9
  invoke void @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms9make_wide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bhr, i64 noundef %i.bhs)
          to label %bb.oy unwind label %.loopexit389.i, !noalias !4421

.body131.i.a:                                     ; preds = %bb.pz, %.body127.i, %.loopexit.split-lp390.i, %.loopexit389.i
  %.pn.i506 = phi { ptr, i32 } [ %eh.lpad-body128.i, %.body127.i ], [ %i.bjv, %bb.pz ], [ %lpad.loopexit391.i, %.loopexit389.i ], [ %lpad.loopexit.split-lp392.i, %.loopexit.split-lp390.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.de) #42
          to label %.body134.i unwind label %bb.qe, !noalias !4421

.loopexit389.i:                                   ; preds = %bb.qa, %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit.i, %bb.ov, %bb.os, %bb.oq
  %lpad.loopexit391.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  br label %.body131.i.a

.loopexit.split-lp390.i:                          ; preds = %bb.ow, %bb.ot
  %lpad.loopexit.split-lp392.i = landingpad { ptr, i32 }
          cleanup
  br label %.body131.i.a

bb.oy:                                            ; preds = %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit.i
  %i.bht = load ptr, ptr %i.bad, align 8, !noalias !4422, !nonnull !9, !noundef !9 ; 2 uses
  %i.bhu = load i64, ptr %i.bae, align 8, !noalias !4422, !noundef !9 ; 4 uses
  %i.bhv = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bhu, i64 4)
  br label %bb.oz

bb.oz:                                            ; preds = %.noexc121.i, %bb.oy
  %.sroa.0.024.i.i109.i = phi i32 [ -2147483648, %bb.oy ], [ %.sroa.0.1.i.i116.i, %.noexc121.i ] ; 2 uses
  %.sroa.02.023.i.i110.i = phi i64 [ 0, %bb.oy ], [ %.sroa.02.1.i.i115.i, %.noexc121.i ]
  %.sroa.3.022.i.i111.i = phi i64 [ 0, %bb.oy ], [ %.sroa.3.1.i.i114.i, %.noexc121.i ]
  %.sroa.0.01121.i.i112.i = phi i64 [ 0, %bb.oy ], [ %i.bhx, %.noexc121.i ] ; 8 uses
  %i.bhw = add i64 %.sroa.0.01121.i.i112.i, 4
  %..i.i.i113.i = call noundef i64 @llvm.umin.i64(i64 %i.bhw, i64 range(i64 0, -9223372036854775808) %i.bhu) ; 4 uses
  %4 = icmp ult i64 %..i.i.i113.i, %.sroa.0.01121.i.i112.i
  br i1 %4, label %bb.pa, label %bb.pb, !prof !24

bb.pa:                                            ; preds = %bb.oz
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i112.i, i64 noundef %..i.i.i113.i, i64 noundef range(i64 0, -9223372036854775808) %i.bhu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.split-lp.i510, !noalias !4421

.noexc120.i:                                      ; preds = %bb.pa
  unreachable

bb.pb:                                            ; preds = %bb.oz
  %i.bhx = add nuw i64 %.sroa.0.01121.i.i112.i, 1
  %i.bhy = sub nuw nsw i64 %..i.i.i113.i, %.sroa.0.01121.i.i112.i
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bht, i64 %.sroa.0.01121.i.i112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !4441
  call void @llvm.experimental.noalias.scope.decl(metadata !4442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !4443
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc194.i unwind label %.loopexit.i, !noalias !4421

.noexc194.i:                                      ; preds = %bb.pb
  %i.bia = load i64, ptr %i.ch, align 8, !range !13, !noalias !4443, !noundef !9
  %i.bib = trunc nuw i64 %i.bia to i1
  %i.bic = load i64, ptr %i.baf, align 8, !range !18, !noalias !4443, !noundef !9 ; 3 uses
  br i1 %i.bib, label %bb.pc, label %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i.i, !prof !11

bb.pc:                                            ; preds = %.noexc194.i
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  %i.bid = load i64, ptr %i.bag, align 8, !noalias !4443
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bic, i64 %i.bid) #41
          to label %.noexc195.i unwind label %.loopexit.split-lp.loopexit.split-lp.i510, !noalias !4421

.noexc195.i:                                      ; preds = %bb.pc
  unreachable

_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i.i: ; preds = %.noexc194.i
  %i.bie = load ptr, ptr %i.bag, align 8, !noalias !4443, !nonnull !9, !noundef !9
  %i.bif = icmp ugt i64 %i.bic, 3
  call void @llvm.assume(i1 %i.bif)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !4443
  store i64 4, ptr %i.bah, align 8, !alias.scope !4442, !noalias !4441
  store i64 0, ptr %i.bai, align 8, !alias.scope !4442, !noalias !4441
  store i32 0, ptr %i.baj, align 8, !alias.scope !4442, !noalias !4441
  store i32 -2147483648, ptr %i.bak, align 4, !alias.scope !4442, !noalias !4441
  store i64 0, ptr %i.ck, align 8, !alias.scope !4442, !noalias !4441
  store i64 %i.bic, ptr %i.bal, align 8, !alias.scope !4442, !noalias !4441
  store ptr %i.bie, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !4442, !noalias !4441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !4442, !noalias !4441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bam, i8 0, i64 32, i1 false), !alias.scope !4442, !noalias !4441
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRShINtNtNtB6_7sources6repeat6RepeatRhEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bhz, i64 noundef range(i64 0, -9223372036854775808) %i.bhy, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28)
          to label %bb.pd unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

bb.pd:                                            ; preds = %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cj, align 8, !noalias !4441, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i500, align 8, !noalias !4441, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i501, align 8, !noalias !4441 ; 2 uses
  %i.big = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  br i1 %i.big, label %._crit_edge3550, label %.lr.ph3549.preheader

.lr.ph3549.preheader:                             ; preds = %bb.pd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  br label %.lr.ph3549

bb.pe:                                            ; preds = %.lr.ph3549
  %i.bih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i193.i3547, i64 1 ; 2 uses
  %i.bii = icmp eq ptr %i.bih, %.sroa.5.0.copyload.i.i
  br i1 %i.bii, label %._crit_edge3550, label %.lr.ph3549

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph3549, %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i.i
  %lpad.loopexit.split-lp3573 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bal)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.pf, !noalias !4421

bb.pf:                                            ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.bij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bal)
          to label %.body222.i unwind label %bb.pg, !noalias !4421

bb.pg:                                            ; preds = %bb.pf
  %i.bik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bal)
          to label %.body127.i unwind label %bb.pt, !noalias !4421

.lr.ph3549:                                       ; preds = %.lr.ph3549.preheader, %bb.pe
  %.sroa.0.0.i193.i3547 = phi ptr [ %i.bih, %bb.pe ], [ %.sroa.0.0.copyload.i.i, %.lr.ph3549.preheader ] ; 2 uses
  %i.bil = load i8, ptr %.sroa.0.0.i193.i3547, align 1, !noalias !4421, !noundef !9
  %i.bim = load i8, ptr %.sroa.6.0.copyload.i.i, align 1, !noalias !4421, !noundef !9
  invoke fastcc void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4feed(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ck, i8 noundef %i.bil, i8 noundef %i.bim)
          to label %bb.pe unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

._crit_edge3550:                                  ; preds = %bb.pe, %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !4441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ci, ptr noundef nonnull align 8 dereferenceable(112) %i.ck, i64 112, i1 false), !noalias !4441
  call void @llvm.experimental.noalias.scope.decl(metadata !4444)
  %i.bin = load i32, ptr %i.ban, align 4, !alias.scope !4444, !noalias !4422, !noundef !9 ; 2 uses
  %i.bio = icmp ne i32 %i.bin, -2147483648
  %i.bip = load i64, ptr %i.bap, align 8, !alias.scope !4444, !noalias !4422 ; 2 uses
  %i.biq = icmp eq i64 %i.bip, 0
  %or.cond.i216.i = select i1 %i.bio, i1 true, i1 %i.biq
  br i1 %or.cond.i216.i, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %._crit_edge3550
  %i.bir = invoke fastcc noundef i32 @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder7quality(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ci)
          to label %bb.pl unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, !noalias !4445 ; 2 uses

bb.pi:                                            ; preds = %bb.pl, %._crit_edge3550
  %i.bis = phi i32 [ %i.bin, %._crit_edge3550 ], [ %i.bir, %bb.pl ]
  %i.bit = phi i64 [ %i.bip, %._crit_edge3550 ], [ %i.bix, %bb.pl ]
  %i.biu = icmp eq i64 %i.bit, 0
  br i1 %i.biu, label %._crit_edge.i.i509, label %.lr.ph.i.i507

.loopexit.split-lp.loopexit.split-lp.i.loopexit.i: ; preds = %.lr.ph.i.i507
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  br label %.loopexit.split-lp.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i: ; preds = %bb.ph
  %lpad.loopexit379.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  br label %.loopexit.split-lp.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.pq
  %lpad.loopexit.split-lp380.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ], [ %lpad.loopexit379.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp380.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i248.i.a unwind label %bb.pj, !noalias !4445

bb.pj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i
  %i.biv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %.body249.i.a unwind label %bb.pk, !noalias !4445

bb.pk:                                            ; preds = %bb.pj
  %i.biw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4445
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i248.i.a: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %.body127.i unwind label %bb.ps, !noalias !4421

bb.pl:                                            ; preds = %bb.ph
  store i32 %i.bir, ptr %i.ban, align 4, !alias.scope !4444, !noalias !4422
  %i.bix = load i64, ptr %i.bap, align 8, !alias.scope !4444, !noalias !4422, !noundef !9 ; 2 uses
  store i64 1, ptr %i.ci, align 8, !alias.scope !4444, !noalias !4422
  store i64 0, ptr %.sroa.4.0..sroa_idx.i217.i, align 8, !alias.scope !4444, !noalias !4422
  store i64 %i.bix, ptr %.sroa.5.0..sroa_idx.i218.i, align 8, !alias.scope !4444, !noalias !4422
  br label %bb.pi

.lr.ph.i.i507:                                    ; preds = %bb.pi, %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !4446
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEE9pop_frontCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %bb.po unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i, !noalias !4445

._crit_edge.loopexit.i.i:                         ; preds = %bb.pp
  %.pre.i.i508 = load i32, ptr %i.ban, align 4, !alias.scope !4444, !noalias !4422
  br label %._crit_edge.i.i509

._crit_edge.i.i509:                               ; preds = %._crit_edge.loopexit.i.i, %bb.pi
  %i.biy = phi i32 [ %.pre.i.i508, %._crit_edge.loopexit.i.i ], [ %i.bis, %bb.pi ] ; 2 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i.i unwind label %bb.pm, !noalias !4445

bb.pm:                                            ; preds = %._crit_edge.i.i509
  %i.biz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %.body127.i unwind label %bb.pn, !noalias !4445

bb.pn:                                            ; preds = %bb.pm
  %i.bja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4445
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i.i: ; preds = %._crit_edge.i.i509
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bao)
          to label %.noexc121.i unwind label %.loopexit.i, !noalias !4421

bb.po:                                            ; preds = %.lr.ph.i.i507
  %i.bjb = load i64, ptr %i.cc, align 8, !range !13, !noalias !4446, !noundef !9
  %i.bjc = trunc nuw i64 %i.bjb to i1
  br i1 %i.bjc, label %bb.pp, label %bb.pq, !prof !10

bb.pp:                                            ; preds = %bb.po
  %i.bjd = load i32, ptr %i.baq, align 4, !noalias !4446, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !4446
  %i.bje = load i32, ptr %i.bar, align 8, !alias.scope !4444, !noalias !4422, !noundef !9
  %i.bjf = sub i32 %i.bje, %i.bjd
  store i32 %i.bjf, ptr %i.bar, align 8, !alias.scope !4444, !noalias !4422
  %i.bjg = load i64, ptr %i.bap, align 8, !alias.scope !4444, !noalias !4422, !noundef !9
  %i.bjh = icmp eq i64 %i.bjg, 0
  br i1 %i.bjh, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i507

bb.pq:                                            ; preds = %bb.po
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #41
          to label %bb.pr unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, !noalias !4445

bb.pr:                                            ; preds = %bb.pq
  unreachable

bb.ps:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i248.i.a
  %i.bji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body249.i.a

.body249.i.a:                                     ; preds = %bb.ps, %bb.pj
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4445
  unreachable

bb.pt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.bjj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body222.i

.body222.i:                                       ; preds = %bb.pt, %bb.pf
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

.noexc121.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !4441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !4441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !4422
  %i.bjk = icmp sgt i32 %i.biy, %.sroa.0.024.i.i109.i ; 2 uses
  %.sroa.3.1.i.i114.i = select i1 %i.bjk, i64 %..i.i.i113.i, i64 %.sroa.3.022.i.i111.i ; 2 uses
  %.sroa.02.1.i.i115.i = select i1 %i.bjk, i64 %.sroa.0.01121.i.i112.i, i64 %.sroa.02.023.i.i110.i ; 2 uses
  %.sroa.0.1.i.i116.i = call i32 @llvm.smax.i32(i32 %i.biy, i32 %.sroa.0.024.i.i109.i)
  %exitcond.not.i117.i = icmp eq i64 %.sroa.0.01121.i.i112.i, %i.bhv
  br i1 %exitcond.not.i117.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i118.i, label %bb.oz

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i118.i: ; preds = %.noexc121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !4447
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bht, i64 noundef range(i64 0, -9223372036854775808) %i.bhu, i64 noundef %.sroa.02.1.i.i115.i, i64 noundef %.sroa.3.1.i.i114.i)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !4421

.noexc122.i:                                      ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i118.i
  %i.bjl = load i8, ptr %i.bas, align 2, !range !16, !noalias !4447, !noundef !9
  %.not.i119.i = icmp eq i8 %i.bjl, 2
  br i1 %.not.i119.i, label %bb.pu, label %bb.px, !prof !11

bb.pu:                                            ; preds = %.noexc122.i
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.split-lp.i510, !noalias !4421

.noexc123.i:                                      ; preds = %bb.pu
  unreachable

.body127.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i510, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.pm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i248.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i.i
  %eh.lpad-body128.i = phi { ptr, i32 } [ %lpad.phi.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i248.i.a ], [ %lpad.loopexit.split-lp3573, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %i.biz, %bb.pm ], [ %lpad.loopexit376.i.a, %.loopexit.i ], [ %lpad.loopexit394.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp395.i, %.loopexit.split-lp.loopexit.split-lp.i510 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dd) #42
          to label %.body131.i.a unwind label %bb.qe, !noalias !4421

.loopexit.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i.i, %bb.pb
  %lpad.loopexit376.i.a = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  br label %.body127.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.px, %bb.pw, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i118.i
  %lpad.loopexit394.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  br label %.body127.i

.loopexit.split-lp.loopexit.split-lp.i510:        ; preds = %bb.pu, %bb.pc, %bb.pa
  %lpad.loopexit.split-lp395.i = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i

bb.pv:                                            ; preds = %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4448
  %i.bjm = load i64, ptr %i.xw, align 8, !alias.scope !4449, !noundef !9 ; 3 uses
  %i.bjn = load i64, ptr %i.avl, align 8, !range !14, !alias.scope !4449, !noundef !9
  %i.bjo = icmp eq i64 %i.bjm, %i.bjn
  br i1 %i.bjo, label %bb.pw, label %bb.py

bb.pw:                                            ; preds = %bb.pv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtBP_10SubPatternEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avl) #44
          to label %bb.py unwind label %.loopexit.split-lp.loopexit.i, !noalias !4450

bb.px:                                            ; preds = %.noexc122.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.bat, ptr noundef nonnull align 8 dereferenceable(26) %i.cu, i64 26, i1 false), !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5790.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.3311.0..sroa_idx312.i, i64 5, i1 false), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !4447
  call void @llvm.experimental.noalias.scope.decl(metadata !4451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !4422
  %i.bjp = load i64, ptr %i.xw, align 8, !alias.scope !4452, !noundef !9 ; 2 uses
  %i.bjq = icmp ult i64 %i.bjp, 288230376151711744
  call void @llvm.assume(i1 %i.bjq)
  %i.bjr = trunc i64 %i.bjp to i32
  store i32 %i.bjr, ptr %i.ct, align 4, !noalias !4448
  %.sroa.7298.sroa.0.0.insert.ext300.i = zext i32 %.sroa.7298.sroa.0.4.i to i64
  store i8 0, ptr %.sroa.4789.0..sroa_idx.i, align 2, !noalias !4453
  store ptr %i.a, ptr %i.cs, align 8, !alias.scope !4454, !noalias !4448
  store ptr %i.ct, ptr %i.bau, align 8, !alias.scope !4454, !noalias !4448
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2i_7sources4once4OnceNtNtBX_5atoms4AtomENCINvMs4_BX_NtBX_8Compiler15add_sub_patternB2Z_NvMsa_BV_BT_9from_atomB3s_E0EE11spec_extendBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.cs)
          to label %bb.pv unwind label %.loopexit.split-lp.loopexit.i, !noalias !4421

bb.py:                                            ; preds = %bb.pw, %bb.pv
  %i.bjs = load ptr, ptr %i.avm, align 8, !alias.scope !4449, !nonnull !9, !noundef !9
  %i.bjt = getelementptr inbounds nuw [32 x i8], ptr %i.bjs, i64 %i.bjm ; 5 uses
  store i32 %i.bcv, ptr %i.bjt, align 8, !noalias !4450
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8
  store i8 %storemerge.i, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !4450
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bjt, i64 9
  store i8 %.sroa.0290.0.copyload.i, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !4450
  %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bjt, i64 12
  store i32 %.sroa.0.0.i.i505, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !4450
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bjt, i64 16
  store i64 %.sroa.7298.sroa.0.0.insert.ext300.i, ptr %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !4450
  %i.bju = add i64 %i.bjm, 1
  store i64 %i.bju, ptr %i.xw, align 8, !alias.scope !4449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !4422
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.qa unwind label %bb.pz, !noalias !4421

bb.pz:                                            ; preds = %bb.py
  %i.bjv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %.body131.i.a unwind label %bb.qb, !noalias !4421

bb.qa:                                            ; preds = %bb.py
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit133.i unwind label %.loopexit389.i, !noalias !4421

bb.qb:                                            ; preds = %bb.pz
  %i.bjw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit133.i: ; preds = %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !4422
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.qc, !noalias !4421

bb.qc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit133.i
  %i.bjx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bha, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !4422
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body134.i unwind label %bb.qd, !noalias !4421

bb.qd:                                            ; preds = %bb.qc
  %i.bjy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit133.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.om, !noalias !4421

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8293.i)
  %i.bjz = icmp eq ptr %i.bha, %i.bgw
  br i1 %i.bjz, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit99.i

bb.qe:                                            ; preds = %bb.ry, %.thread.i491, %.body.thread.i, %.thread345.i, %.body172.i, %.body127.i, %.body131.i.a, %.body134.i, %.body177.i, %.thread349.i
  %i.bka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.qf:                                            ; preds = %bb.oj
  call void @llvm.experimental.noalias.scope.decl(metadata !4455)
  %i.bkb = invoke fastcc noundef align 4 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRShNtCslAmxFS6h4Nz_8intaglio6SymbolINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE3getBP_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ayi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bgd, i64 noundef %i.bge) #47
          to label %.noexc140.i unwind label %.loopexit.split-lp383.loopexit.i, !noalias !4421 ; 2 uses

.noexc140.i:                                      ; preds = %bb.qf
  %.not.i137.i = icmp eq ptr %i.bkb, null
  br i1 %.not.i137.i, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %.noexc140.i
  %i.bkc = load i32, ptr %i.bkb, align 4, !noalias !4456, !noundef !9
  br label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i

bb.qh:                                            ; preds = %.noexc140.i
  %i.bkd = load i64, ptr %i.ayj, align 8, !alias.scope !4457, !noundef !9
  %i.bke = add i64 %i.bkd, %i.bge
  store i64 %i.bke, ptr %i.ayj, align 8, !alias.scope !4457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !4458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !4458
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, i64 noundef %i.bge, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc141.i unwind label %.loopexit.split-lp383.loopexit.i, !noalias !4421

.noexc141.i:                                      ; preds = %bb.qh
  %i.bkf = load i64, ptr %i.cq, align 8, !range !13, !noalias !4458, !noundef !9
  %i.bkg = trunc nuw i64 %i.bkf to i1
  %i.bkh = load i64, ptr %i.ayy, align 8, !range !18, !noalias !4458, !noundef !9 ; 3 uses
  br i1 %i.bkg, label %bb.qi, label %bb.qj, !prof !11

bb.qi:                                            ; preds = %.noexc141.i
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  %i.bki = load i64, ptr %i.ayz, align 8, !noalias !4458
  br label %.invoke.i511

.invoke.i511:                                     ; preds = %bb.qq, %bb.qi
  %i.bkj = phi i64 [ %i.bkh, %bb.qi ], [ %i.bla, %bb.qq ]
  %i.bkk = phi i64 [ %i.bki, %bb.qi ], [ %i.blb, %bb.qq ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bkj, i64 %i.bkk) #41
          to label %.cont.i512 unwind label %.loopexit.split-lp383.loopexit.split-lp.i, !noalias !4421

.cont.i512:                                       ; preds = %.invoke.i511
  unreachable

bb.qj:                                            ; preds = %.noexc141.i
  %i.bkl = load ptr, ptr %i.ayz, align 8, !noalias !4458, !nonnull !9, !noundef !9 ; 2 uses
  %i.bkm = icmp ule i64 %i.bge, %i.bkh
  call void @llvm.assume(i1 %i.bkm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !4458
  store i64 %i.bkh, ptr %i.cr, align 8, !noalias !4458
  store ptr %i.bkl, ptr %i.aza, align 8, !noalias !4458
  store i64 0, ptr %i.azb, align 8, !noalias !4458
  br i1 %.not4.i139.i, label %bb.qk, label %bb.qm

bb.qk:                                            ; preds = %bb.qm, %bb.qj
  %i.bkn = invoke { i32, i32 } @_RINvMsc_NtCslAmxFS6h4Nz_8intaglio5bytesINtB6_11SymbolTableINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsaO0k6qjB80f_10rustc_hash8FxHasherEE6internINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ym, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cr)
          to label %.noexc143.i unwind label %.loopexit.split-lp383.loopexit.i, !noalias !4421 ; 2 uses

.noexc143.i:                                      ; preds = %bb.qk
  %i.bko = extractvalue { i32, i32 } %i.bkn, 0
  %i.bkp = extractvalue { i32, i32 } %i.bkn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !4458
  %i.bkq = trunc nuw i32 %i.bko to i1
  br i1 %i.bkq, label %bb.ql, label %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i, !prof !11

bb.ql:                                            ; preds = %.noexc143.i
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #46
          to label %.noexc144.i unwind label %.loopexit.split-lp383.loopexit.split-lp.i, !noalias !4421

.noexc144.i:                                      ; preds = %bb.ql
  unreachable

bb.qm:                                            ; preds = %bb.qj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bkl, ptr nonnull readonly align 1 %i.bgd, i64 %i.bge, i1 false), !noalias !4456
  store i64 %i.bge, ptr %i.azb, align 8, !noalias !4458
  br label %bb.qk

_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i: ; preds = %.noexc143.i, %bb.qg, %bb.oj
  %.sroa.7276.sroa.0.5.i = phi i32 [ %.sroa.7276.sroa.0.2608.i, %bb.oj ], [ %i.bkc, %bb.qg ], [ %i.bkp, %.noexc143.i ] ; 3 uses
  %storemerge56.i = phi i8 [ 8, %bb.oj ], [ 10, %bb.qg ], [ 10, %.noexc143.i ]
  %i.bkr = load ptr, ptr %.sroa.8272.8..sroa_idx.i, align 8, !noalias !4422, !nonnull !9, !noundef !9 ; 2 uses
  %i.bks = load i64, ptr %i.azc, align 8, !noalias !4422, !noundef !9 ; 4 uses
  %i.bkt = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.bks, i64 4)
  br label %bb.qn

bb.qn:                                            ; preds = %.noexc158.i, %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i
  %.sroa.0.024.i.i146.i = phi i32 [ -2147483648, %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i ], [ %.sroa.0.1.i.i153.i, %.noexc158.i ] ; 2 uses
  %.sroa.02.023.i.i147.i = phi i64 [ 0, %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i ], [ %.sroa.02.1.i.i152.i, %.noexc158.i ]
  %.sroa.3.022.i.i148.i = phi i64 [ 0, %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i ], [ %.sroa.3.1.i.i151.i, %.noexc158.i ]
  %.sroa.0.01121.i.i149.i = phi i64 [ 0, %_RINvMs3_NtCs7gfv9tzbXmh_6yara_x11string_poolINtB6_11BStringPoolNtNtB8_8compiler9LiteralIdE13get_or_internReEB8_.exit145.i ], [ %i.bkv, %.noexc158.i ] ; 8 uses
  %i.bku = add i64 %.sroa.0.01121.i.i149.i, 4
  %..i.i.i150.i = call noundef i64 @llvm.umin.i64(i64 %i.bku, i64 range(i64 0, -9223372036854775808) %i.bks) ; 4 uses
  %5 = icmp ult i64 %..i.i.i150.i, %.sroa.0.01121.i.i149.i
  br i1 %5, label %bb.qo, label %bb.qp, !prof !24

bb.qo:                                            ; preds = %bb.qn
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i149.i, i64 noundef %..i.i.i150.i, i64 noundef range(i64 0, -9223372036854775808) %i.bks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
          to label %.noexc157.i unwind label %.loopexit.split-lp383.loopexit.split-lp.i, !noalias !4421

.noexc157.i:                                      ; preds = %bb.qo
  unreachable

bb.qp:                                            ; preds = %bb.qn
  %i.bkv = add nuw i64 %.sroa.0.01121.i.i149.i, 1
  %i.bkw = sub nuw nsw i64 %..i.i.i150.i, %.sroa.0.01121.i.i149.i
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %.sroa.0.01121.i.i149.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !4459
  call void @llvm.experimental.noalias.scope.decl(metadata !4460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !4461
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cd, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc210.i unwind label %.loopexit382.i, !noalias !4421

.noexc210.i:                                      ; preds = %bb.qp
  %i.bky = load i64, ptr %i.cd, align 8, !range !13, !noalias !4461, !noundef !9
  %i.bkz = trunc nuw i64 %i.bky to i1
  %i.bla = load i64, ptr %i.azd, align 8, !range !18, !noalias !4461, !noundef !9 ; 3 uses
  br i1 %i.bkz, label %bb.qq, label %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i199.i, !prof !11

bb.qq:                                            ; preds = %.noexc210.i
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  %i.blb = load i64, ptr %i.aze, align 8, !noalias !4461
  br label %.invoke.i511

_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i199.i: ; preds = %.noexc210.i
  %i.blc = load ptr, ptr %i.aze, align 8, !noalias !4461, !nonnull !9, !noundef !9
  %i.bld = icmp ugt i64 %i.bla, 3
  call void @llvm.assume(i1 %i.bld)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !4461
  store i64 4, ptr %i.azf, align 8, !alias.scope !4460, !noalias !4459
  store i64 0, ptr %i.azg, align 8, !alias.scope !4460, !noalias !4459
  store i32 0, ptr %i.azh, align 8, !alias.scope !4460, !noalias !4459
  store i32 -2147483648, ptr %i.azi, align 4, !alias.scope !4460, !noalias !4459
  store i64 0, ptr %i.cg, align 8, !alias.scope !4460, !noalias !4459
  store i64 %i.bla, ptr %i.azj, align 8, !alias.scope !4460, !noalias !4459
  store ptr %i.blc, ptr %.sroa.42.0..sroa_idx.i.i200.i, align 8, !alias.scope !4460, !noalias !4459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i201.i, i8 0, i64 16, i1 false), !alias.scope !4460, !noalias !4459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.azk, i8 0, i64 32, i1 false), !alias.scope !4460, !noalias !4459
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRShINtNtNtB6_7sources6repeat6RepeatRhEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bkx, i64 noundef range(i64 0, -9223372036854775808) %i.bkw, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28)
          to label %bb.qr unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i202.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

bb.qr:                                            ; preds = %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i199.i
  %.sroa.0.0.copyload.i204.i = load ptr, ptr %i.cf, align 8, !noalias !4459, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.5.0.copyload.i206.i = load ptr, ptr %.sroa.5.0..sroa_idx.i205.i, align 8, !noalias !4459, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.6.0.copyload.i208.i = load ptr, ptr %.sroa.6.0..sroa_idx.i207.i, align 8, !noalias !4459 ; 2 uses
  %i.ble = icmp eq ptr %.sroa.0.0.copyload.i204.i, %.sroa.5.0.copyload.i206.i
  br i1 %i.ble, label %._crit_edge3546, label %.lr.ph3545.preheader

.lr.ph3545.preheader:                             ; preds = %bb.qr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i208.i) ]
  br label %.lr.ph3545

bb.qs:                                            ; preds = %.lr.ph3545
  %i.blf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i209.i3543, i64 1 ; 2 uses
  %i.blg = icmp eq ptr %i.blf, %.sroa.5.0.copyload.i206.i
  br i1 %i.blg, label %._crit_edge3546, label %.lr.ph3545

.thread.loopexit.split-lp.loopexit.split-lp.i202.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph3545, %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder3new.exit.i199.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i242.i unwind label %bb.qt, !noalias !4421

bb.qt:                                            ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i202.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.blh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azj)
          to label %.body243.i unwind label %bb.qu, !noalias !4421

bb.qu:                                            ; preds = %bb.qt
  %i.bli = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i242.i: ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.i202.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azj)
          to label %.body172.i unwind label %bb.rh, !noalias !4421

.lr.ph3545:                                       ; preds = %.lr.ph3545.preheader, %bb.qs
  %.sroa.0.0.i209.i3543 = phi ptr [ %i.blf, %bb.qs ], [ %.sroa.0.0.copyload.i204.i, %.lr.ph3545.preheader ] ; 2 uses
  %i.blj = load i8, ptr %.sroa.0.0.i209.i3543, align 1, !noalias !4421, !noundef !9
  %i.blk = load i8, ptr %.sroa.6.0.copyload.i208.i, align 1, !noalias !4421, !noundef !9
  invoke fastcc void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4feed(ptr noalias nofree noundef align 8 dereferenceable(112) %i.cg, i8 noundef %i.blj, i8 noundef %i.blk)
          to label %bb.qs unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i202.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

._crit_edge3546:                                  ; preds = %bb.qs, %bb.qr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !4459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %i.cg, i64 112, i1 false), !noalias !4459
  call void @llvm.experimental.noalias.scope.decl(metadata !4462)
  %i.bll = load i32, ptr %i.azl, align 4, !alias.scope !4462, !noalias !4422, !noundef !9 ; 2 uses
  %i.blm = icmp ne i32 %i.bll, -2147483648
  %i.bln = load i64, ptr %i.azn, align 8, !alias.scope !4462, !noalias !4422 ; 2 uses
  %i.blo = icmp eq i64 %i.bln, 0
  %or.cond.i225.i = select i1 %i.blm, i1 true, i1 %i.blo
  br i1 %or.cond.i225.i, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %._crit_edge3546
  %i.blp = invoke fastcc noundef i32 @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder7quality(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ce)
          to label %bb.qz unwind label %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.i, !noalias !4463 ; 2 uses

bb.qw:                                            ; preds = %bb.qz, %._crit_edge3546
  %i.blq = phi i32 [ %i.bll, %._crit_edge3546 ], [ %i.blp, %bb.qz ]
  %i.blr = phi i64 [ %i.bln, %._crit_edge3546 ], [ %i.blv, %bb.qz ]
  %i.bls = icmp eq i64 %i.blr, 0
  br i1 %i.bls, label %._crit_edge.i235.i, label %.lr.ph.i232.i

.loopexit.split-lp.loopexit.split-lp.i226.loopexit.i: ; preds = %.lr.ph.i232.i
  %lpad.loopexit370.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  br label %.loopexit.split-lp.loopexit.split-lp.i226.i

.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.i: ; preds = %bb.qv
  %lpad.loopexit386.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  br label %.loopexit.split-lp.loopexit.split-lp.i226.i

.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.re
  %lpad.loopexit.split-lp387.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i226.i

.loopexit.split-lp.loopexit.split-lp.i226.i:      ; preds = %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.i
  %lpad.phi372.i = phi { ptr, i32 } [ %lpad.loopexit370.i, %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.i ], [ %lpad.loopexit386.i, %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp387.i, %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i254.i unwind label %bb.qx, !noalias !4463

bb.qx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i226.i
  %i.blt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %.body255.i unwind label %bb.qy, !noalias !4463

bb.qy:                                            ; preds = %bb.qx
  %i.blu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4463
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i254.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i226.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %.body172.i unwind label %bb.rg, !noalias !4421

bb.qz:                                            ; preds = %bb.qv
  store i32 %i.blp, ptr %i.azl, align 4, !alias.scope !4462, !noalias !4422
  %i.blv = load i64, ptr %i.azn, align 8, !alias.scope !4462, !noalias !4422, !noundef !9 ; 2 uses
  store i64 1, ptr %i.ce, align 8, !alias.scope !4462, !noalias !4422
  store i64 0, ptr %.sroa.4.0..sroa_idx.i230.i, align 8, !alias.scope !4462, !noalias !4422
  store i64 %i.blv, ptr %.sroa.5.0..sroa_idx.i231.i, align 8, !alias.scope !4462, !noalias !4422
  br label %bb.qw

.lr.ph.i232.i:                                    ; preds = %bb.qw, %bb.rd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !4464
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEE9pop_frontCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %bb.rc unwind label %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.i, !noalias !4463

._crit_edge.loopexit.i233.i:                      ; preds = %bb.rd
  %.pre.i234.i = load i32, ptr %i.azl, align 4, !alias.scope !4462, !noalias !4422
  br label %._crit_edge.i235.i

._crit_edge.i235.i:                               ; preds = %._crit_edge.loopexit.i233.i, %bb.qw
  %i.blw = phi i32 [ %.pre.i234.i, %._crit_edge.loopexit.i233.i ], [ %i.blq, %bb.qw ] ; 2 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i236.i unwind label %bb.ra, !noalias !4463

bb.ra:                                            ; preds = %._crit_edge.i235.i
  %i.blx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %.body172.i unwind label %bb.rb, !noalias !4463

bb.rb:                                            ; preds = %bb.ra
  %i.bly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4463
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i236.i: ; preds = %._crit_edge.i235.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.azm)
          to label %.noexc158.i unwind label %.loopexit382.i, !noalias !4421

bb.rc:                                            ; preds = %.lr.ph.i232.i
  %i.blz = load i64, ptr %i.cb, align 8, !range !13, !noalias !4464, !noundef !9
  %i.bma = trunc nuw i64 %i.blz to i1
  br i1 %i.bma, label %bb.rd, label %bb.re, !prof !10

bb.rd:                                            ; preds = %bb.rc
  %i.bmb = load i32, ptr %i.azo, align 4, !noalias !4464, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4464
  %i.bmc = load i32, ptr %i.azp, align 8, !alias.scope !4462, !noalias !4422, !noundef !9
  %i.bmd = sub i32 %i.bmc, %i.bmb
  store i32 %i.bmd, ptr %i.azp, align 8, !alias.scope !4462, !noalias !4422
  %i.bme = load i64, ptr %i.azn, align 8, !alias.scope !4462, !noalias !4422, !noundef !9
  %i.bmf = icmp eq i64 %i.bme, 0
  br i1 %i.bmf, label %._crit_edge.loopexit.i233.i, label %.lr.ph.i232.i

bb.re:                                            ; preds = %bb.rc
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #41
          to label %bb.rf unwind label %.loopexit.split-lp.loopexit.split-lp.i226.loopexit.split-lp.loopexit.split-lp.i, !noalias !4463

bb.rf:                                            ; preds = %bb.re
  unreachable

bb.rg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i254.i
  %i.bmg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body255.i

.body255.i:                                       ; preds = %bb.rg, %bb.qx
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4463
  unreachable

bb.rh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i242.i
  %i.bmh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body243.i

.body243.i:                                       ; preds = %bb.rh, %bb.qt
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

.noexc158.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i236.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !4459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !4459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !4422
  %i.bmi = icmp sgt i32 %i.blw, %.sroa.0.024.i.i146.i ; 2 uses
  %.sroa.3.1.i.i151.i = select i1 %i.bmi, i64 %..i.i.i150.i, i64 %.sroa.3.022.i.i148.i ; 2 uses
  %.sroa.02.1.i.i152.i = select i1 %i.bmi, i64 %.sroa.0.01121.i.i149.i, i64 %.sroa.02.023.i.i147.i ; 2 uses
  %.sroa.0.1.i.i153.i = call i32 @llvm.smax.i32(i32 %i.blw, i32 %.sroa.0.024.i.i146.i)
  %exitcond.not.i154.i = icmp eq i64 %.sroa.0.01121.i.i149.i, %i.bkt
  br i1 %exitcond.not.i154.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i155.i, label %bb.qn

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i155.i: ; preds = %.noexc158.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !4465
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bkr, i64 noundef range(i64 0, -9223372036854775808) %i.bks, i64 noundef %.sroa.02.1.i.i152.i, i64 noundef %.sroa.3.1.i.i151.i)
          to label %.noexc159.i unwind label %.loopexit.split-lp383.loopexit.i, !noalias !4421

.noexc159.i:                                      ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i155.i
  %i.bmj = load i8, ptr %i.azq, align 2, !range !16, !noalias !4465, !noundef !9
  %.not.i156.i = icmp eq i8 %i.bmj, 2
  br i1 %.not.i156.i, label %bb.ri, label %bb.rl, !prof !11

bb.ri:                                            ; preds = %.noexc159.i
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
          to label %.noexc160.i unwind label %.loopexit.split-lp383.loopexit.split-lp.i, !noalias !4421

.noexc160.i:                                      ; preds = %bb.ri
  unreachable

.body172.i:                                       ; preds = %.loopexit.split-lp383.loopexit.split-lp.i, %.loopexit.split-lp383.loopexit.i, %.loopexit382.i, %bb.ra, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i254.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i242.i
  %eh.lpad-body173.i = phi { ptr, i32 } [ %lpad.phi372.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i254.i ], [ %lpad.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTjhhlEEECs7gfv9tzbXmh_6yara_x.exit.i242.i ], [ %i.blx, %bb.ra ], [ %lpad.loopexit384.i, %.loopexit382.i ], [ %lpad.loopexit397.i, %.loopexit.split-lp383.loopexit.i ], [ %lpad.loopexit.split-lp398.i, %.loopexit.split-lp383.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dh) #42
          to label %.body177.i unwind label %bb.qe, !noalias !4421

.loopexit382.i:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit.i236.i, %bb.qp
  %lpad.loopexit384.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  br label %.body172.i

.loopexit.split-lp383.loopexit.i:                 ; preds = %bb.rl, %bb.rk, %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i155.i, %bb.qk, %bb.qh, %bb.qf
  %lpad.loopexit397.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  br label %.body172.i

.loopexit.split-lp383.loopexit.split-lp.i:        ; preds = %bb.ri, %bb.qo, %bb.ql, %.invoke.i511
  %lpad.loopexit.split-lp398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i

bb.rj:                                            ; preds = %bb.rl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !4466
  %i.bmk = load i64, ptr %i.xw, align 8, !alias.scope !4467, !noundef !9 ; 3 uses
  %i.bml = load i64, ptr %i.avl, align 8, !range !14, !alias.scope !4467, !noundef !9
  %i.bmm = icmp eq i64 %i.bmk, %i.bml
  br i1 %i.bmm, label %bb.rk, label %bb.rm

bb.rk:                                            ; preds = %bb.rj
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtBP_10SubPatternEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avl) #44
          to label %bb.rm unwind label %.loopexit.split-lp383.loopexit.i, !noalias !4468

bb.rl:                                            ; preds = %.noexc159.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !4466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.azr, ptr noundef nonnull align 8 dereferenceable(26) %i.cp, i64 26, i1 false), !noalias !4422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5787.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.3288.0..sroa_idx289.i, i64 5, i1 false), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !4465
  call void @llvm.experimental.noalias.scope.decl(metadata !4469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !4422
  %i.bmn = load i64, ptr %i.xw, align 8, !alias.scope !4470, !noundef !9 ; 2 uses
  %i.bmo = icmp ult i64 %i.bmn, 288230376151711744
  call void @llvm.assume(i1 %i.bmo)
  %i.bmp = trunc i64 %i.bmn to i32
  store i32 %i.bmp, ptr %i.co, align 4, !noalias !4466
  %.sroa.7276.sroa.0.0.insert.ext278.i = zext i32 %.sroa.7276.sroa.0.5.i to i64
  store i8 0, ptr %.sroa.4786.0..sroa_idx.i, align 2, !noalias !4471
  store ptr %i.a, ptr %i.cn, align 8, !alias.scope !4472, !noalias !4466
  store ptr %i.co, ptr %i.azs, align 8, !alias.scope !4472, !noalias !4466
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2i_7sources4once4OnceNtNtBX_5atoms4AtomENCINvMs4_BX_NtBX_8Compiler15add_sub_patternB2Z_NvMsa_BV_BT_9from_atomB3s_E0EE11spec_extendBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.cn)
          to label %bb.rj unwind label %.loopexit.split-lp383.loopexit.i, !noalias !4421

bb.rm:                                            ; preds = %bb.rk, %bb.rj
  %i.bmq = load ptr, ptr %i.avm, align 8, !alias.scope !4467, !nonnull !9, !noundef !9
  %i.bmr = getelementptr inbounds nuw [32 x i8], ptr %i.bmq, i64 %i.bmk ; 5 uses
  store i32 %i.bcv, ptr %i.bmr, align 8, !noalias !4468
  %.sroa.4.i162.sroa.3.0..sroa.4.0..sroa_idx.i165.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  store i8 %storemerge56.i, ptr %.sroa.4.i162.sroa.3.0..sroa.4.0..sroa_idx.i165.sroa_idx.i, align 8, !noalias !4468
  %.sroa.4.i162.sroa.4.0..sroa.4.0..sroa_idx.i165.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmr, i64 9
  store i8 %.sroa.0269.0.copyload.i, ptr %.sroa.4.i162.sroa.4.0..sroa.4.0..sroa_idx.i165.sroa_idx.i, align 1, !noalias !4468
  %.sroa.4.i162.sroa.6.0..sroa.4.0..sroa_idx.i165.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmr, i64 12
  store i32 %.sroa.0.0.i.i505, ptr %.sroa.4.i162.sroa.6.0..sroa.4.0..sroa_idx.i165.sroa_idx.i, align 4, !noalias !4468
  %.sroa.4.i162.sroa.7.0..sroa.4.0..sroa_idx.i165.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  store i64 %.sroa.7276.sroa.0.0.insert.ext278.i, ptr %.sroa.4.i162.sroa.7.0..sroa.4.0..sroa_idx.i165.sroa_idx.i, align 8, !noalias !4468
  %i.bms = add i64 %i.bmk, 1
  store i64 %i.bms, ptr %i.xw, align 8, !alias.scope !4467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !4422
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i176.i unwind label %bb.rn, !noalias !4421

bb.rn:                                            ; preds = %bb.rm
  %i.bmt = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bgq, ptr %.sroa.46.0..sroa_idx.i498, align 8, !noalias !4422
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %.body177.i unwind label %bb.ro, !noalias !4421

bb.ro:                                            ; preds = %bb.rn
  %i.bmu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4421
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i176.i: ; preds = %bb.rm
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit180.i unwind label %bb.oi, !noalias !4421

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2AhGS15tZfv_4bstr7bstring7BStringECs7gfv9tzbXmh_6yara_x.exit180.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8272.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8272.i)
  %i.bmv = icmp eq ptr %i.bgq, %i.bgm
  br i1 %i.bmv, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i

bb.rp:                                            ; preds = %bb.oa
  invoke fastcc void @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternNtNtB6_5atoms16CaseCombinationsNvMsa_NtB6_5rulesNtB1I_14SubPatternAtom9from_atomNtB19_4AtomEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bcv, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.dl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.dk)
          to label %bb.rq unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

bb.rq:                                            ; preds = %bb.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !4422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !4422
  br label %bb.op

bb.rr:                                            ; preds = %bb.ny
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41
          to label %bb.rs unwind label %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !4421

bb.rs:                                            ; preds = %bb.rr
  unreachable

bb.rt:                                            ; preds = %bb.ob, %bb.rw, %bb.rv, %bb.op
  %i.bmw = landingpad { ptr, i32 }
          cleanup
  br label %.thread349.i

bb.ru:                                            ; preds = %bb.rw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !4473
  %i.bmx = load i64, ptr %i.xw, align 8, !alias.scope !4474, !noundef !9 ; 3 uses
  %i.bmy = load i64, ptr %i.avl, align 8, !range !14, !alias.scope !4474, !noundef !9
  %i.bmz = icmp eq i64 %i.bmx, %i.bmy
  br i1 %i.bmz, label %bb.rv, label %bb.rx

bb.rv:                                            ; preds = %bb.ru
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtBP_10SubPatternEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avl) #44
          to label %bb.rx unwind label %bb.rt, !noalias !4475

bb.rw:                                            ; preds = %bb.ny
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !4473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ayo, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 32, i1 false), !noalias !4422
  call void @llvm.experimental.noalias.scope.decl(metadata !4476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !4422
  %i.bna = load i64, ptr %i.xw, align 8, !alias.scope !4477, !noundef !9 ; 2 uses
  %i.bnb = icmp ult i64 %i.bna, 288230376151711744
  call void @llvm.assume(i1 %i.bnb)
  %i.bnc = trunc i64 %i.bna to i32
  store i32 %i.bnc, ptr %i.cm, align 4, !noalias !4473
  store i24 %.sroa.0.0.insert.insert.i.i, ptr %.sroa.4.0..sroa_idx783.i, align 8, !noalias !4478
  store ptr %i.a, ptr %i.cl, align 8, !alias.scope !4479, !noalias !4473
  store ptr %i.cm, ptr %i.ayp, align 8, !alias.scope !4479, !noalias !4473
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtBV_5atoms15XorCombinationsNCINvMs4_BV_NtBV_8Compiler15add_sub_patternB2X_NvMsa_BT_BR_9from_atomNtB2Z_4AtomE0EE11spec_extendBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.cl)
          to label %bb.ru unwind label %bb.rt, !noalias !4421

bb.rx:                                            ; preds = %bb.rv, %bb.ru
  %i.bnd = load ptr, ptr %i.avm, align 8, !alias.scope !4474, !nonnull !9, !noundef !9
  %i.bne = getelementptr inbounds nuw [32 x i8], ptr %i.bnd, i64 %i.bmx ; 4 uses
  store i32 %i.bcv, ptr %i.bne, align 8, !noalias !4475
  %.sroa.4.i181.sroa.3.0..sroa.4.0..sroa_idx.i184.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bne, i64 8
  store i8 7, ptr %.sroa.4.i181.sroa.3.0..sroa.4.0..sroa_idx.i184.sroa_idx.i, align 8, !noalias !4475
  %.sroa.4.i181.sroa.5.0..sroa.4.0..sroa_idx.i184.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bne, i64 10
  store i16 %.sroa.9.0.copyload.i, ptr %.sroa.4.i181.sroa.5.0..sroa.4.0..sroa_idx.i184.sroa_idx.i, align 2, !noalias !4475
  %.sroa.4.i181.sroa.6.0..sroa.4.0..sroa_idx.i184.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bne, i64 12
  store i32 %.sroa.0.0.i.i505, ptr %.sroa.4.i181.sroa.6.0..sroa.4.0..sroa_idx.i184.sroa_idx.i, align 4, !noalias !4475
  %i.bnf = add i64 %i.bmx, 1
  store i64 %i.bnf, ptr %i.xw, align 8, !alias.scope !4474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !4422
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomEBH_.exit.i

.thread345.i:                                     ; preds = %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.body134.i, %.body177.i
  %.pn60348.i = phi { ptr, i32 } [ %.pn57.i, %.body177.i ], [ %.pn53.i, %.body134.i ], [ %lpad.loopexit.split-lp3584, %.thread353.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %.thread349.i unwind label %bb.qe, !noalias !4421

.body.thread.i:                                   ; preds = %bb.mu, %.body.thread804.i, %.body.i490
  %.sroa.027.0366.i = phi i1 [ %.sroa.027.0.i, %.body.i490 ], [ true, %bb.mu ], [ true, %.body.thread804.i ]
  %.pn60.pn.pn365.i = phi { ptr, i32 } [ %.pn60.pn.pn.i, %.body.i490 ], [ %i.bdt, %bb.mu ], [ %lpad.loopexit407.i, %.body.thread804.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dr) #42
          to label %bb.nv unwind label %bb.qe, !noalias !4421

.thread.i491:                                     ; preds = %bb.ry, %bb.nw, %bb.nv, %bb.ns
  %.pn60.pn.pn.pn344.i = phi { ptr, i32 } [ %.pn60.pn.pn.pn.i, %bb.nv ], [ %.pn60.pn.pn.pn.i, %bb.ry ], [ %i.bfz, %bb.nw ], [ %i.bfx, %bb.ns ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir14LiteralPatternEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.hj) #42
          to label %.thread689 unwind label %bb.qe

bb.ry:                                            ; preds = %bb.nv
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRShNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4AtomNtB1g_15SubPatternFlagsEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ds) #42
          to label %.thread.i491 unwind label %bb.qe, !noalias !4421

_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler17c_literal_pattern.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  br label %.thread705
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir7hex2hir28hex_sub_pattern_hir_from_ast:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ai, ptr %i.ad, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ah, ptr %i.qb, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull @448, ptr noundef nonnull %i.ad)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit202 unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pz, ptr nonnull align 1 %i.cn, i64 %i.cp, i1 false)
  br label %bb.fn

bb.fp:                                            ; preds = %bb.fn
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit202: ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.qd = load <2 x i32>, ptr %i.cj, align 8
  store <2 x i32> %i.qd, ptr %i.ac, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.pq, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %.sroa.7.0.le645, ptr %i.qf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  br i1 %.sroa.016.0.lcssa642, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit202
  store i64 -1, ptr %i.ab, align 8
  br label %bb.fs

bb.fr:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 50, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ft unwind label %bb.fy

bb.fs:                                            ; preds = %bb.fv, %bb.fq
  %i.qg = invoke { i64, ptr } @_RNvMs48_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_14InvalidPattern5build(ptr noundef nonnull align 8 %i.ci, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.fw unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.da, %bb.fs, %bb.t, %bb.bs, %bb.ex, %bb.fj, %bb.ae, %bb.ff, %.invoke762, %bb.k, %bb.an, %bb.u, %bb.m, %bb.be, %._crit_edge, %bb.eu, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionIBw_RNtNtCsfF8zpZz1lvn_13yara_x_parser3ast8HexTokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECs7gfv9tzbXmh_6yara_x.exit.thread.thread646, %.noexc199, %bb.ge, %.noexc198, %bb.n, %.invoke, %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread240

bb.ft:                                            ; preds = %bb.fr
  %i.qh = load i64, ptr %i.o, align 8, !range !13, !noundef !9
  %i.qi = trunc nuw i64 %i.qh to i1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.qk = load i64, ptr %i.qj, align 8, !range !18, !noundef !9 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.qi, label %bb.fu, label %bb.fv, !prof !11

bb.fu:                                            ; preds = %bb.ft
  %i.qm = load i64, ptr %i.ql, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.qk, i64 %i.qm) #41
          to label %bb.al unwind label %bb.fy

bb.fv:                                            ; preds = %bb.ft
  %i.qn = load ptr, ptr %i.ql, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.qo = icmp samesign ugt i64 %i.qk, 49
  call void @llvm.assume(i1 %i.qo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.qn, ptr noundef nonnull align 1 dereferenceable(50) @449, i64 50, i1 false)
  store i64 %i.qk, ptr %i.ab, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.qn, ptr %.sroa.4114.0..sroa_idx, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 50, ptr %.sroa.5115.0..sroa_idx, align 8
  br label %bb.fs

bb.fw:                                            ; preds = %bb.fs
  %i.qp = extractvalue { i64, ptr } %i.qg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 21, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qp, ptr %i.qr, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.fh

bb.fx:                                            ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  ret void

bb.fy:                                            ; preds = %bb.fu, %bb.fr
  %lpad.thr_comm301 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #42
          to label %bb.fz unwind label %bb.ak

bb.fz:                                            ; preds = %bb.fy, %bb.fp
  %.pn131.ph = phi { ptr, i32 } [ %i.qc, %bb.fp ], [ %lpad.thr_comm301, %bb.fy ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #42
          to label %.thread240 unwind label %bb.ak

bb.ga:                                            ; preds = %.noexc199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5564
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5565
  %i.qs = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 48, i64 noundef 8) #45, !noalias !5565 ; 3 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %bb.gb, label %bb.ge, !prof !11

bb.gb:                                            ; preds = %bb.ga
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #41
          to label %.noexc203 unwind label %bb.gc

.noexc203:                                        ; preds = %bb.gb
  unreachable

bb.gc:                                            ; preds = %bb.gb
  %i.qu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y) #42
          to label %.thread240 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ge:                                            ; preds = %bb.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qs, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i32 %.sroa.047.0, ptr %i.dm, align 8
  store i32 %i.kx, ptr %i.z, align 8
  store i32 %i.kv, ptr %i.dn, align 4
  store i8 0, ptr %i.do, align 4
  store ptr %i.qs, ptr %i.dp, align 8
  invoke fastcc void @_RNvMs3_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3Hir10repetition(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.gf unwind label %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.qw = load i64, ptr %i.bz, align 8, !alias.scope !5566, !noundef !9 ; 3 uses
  %i.qx = load i64, ptr %i.bm, align 8, !range !14, !alias.scope !5566, !noundef !9
  %i.qy = icmp eq i64 %i.qw, %i.qx
  br i1 %i.qy, label %bb.gg, label %bb.gj

bb.gg:                                            ; preds = %bb.gf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.gj unwind label %bb.gh, !noalias !5567

bb.gh:                                            ; preds = %bb.gg
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa) #42
          to label %.thread240 unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.gj:                                            ; preds = %bb.gg, %bb.gf
  %i.rb = load ptr, ptr %i.by, align 8, !alias.scope !5566, !nonnull !9, !noundef !9
  %i.rc = getelementptr inbounds nuw [48 x i8], ptr %i.rb, i64 %i.qw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rc, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false)
  %i.rd = add i64 %i.qw, 1
  store i64 %i.rd, ptr %i.bz, align 8, !alias.scope !5566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %.outer

bb.gk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit192, %bb.dw
  %lpad.thr_comm280 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler8warnings7WarningEBH_(i64 2, ptr nonnull %i.lp) #42
          to label %.thread240 unwind label %bb.ak

bb.gl:                                            ; preds = %bb.df
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #42
          to label %.thread240 unwind label %bb.ak

.thread240:                                       ; preds = %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit, %bb.dv, %bb.dp, %.thread.i, %bb.es, %bb.cb, %bb.bh, %bb.gl, %bb.gk, %bb.fz, %bb.fi, %.body184.thread265, %bb.bk, %bb.bl, %bb.am, %bb.gh, %bb.gc, %bb.br, %bb.q
  %.pn144236 = phi { ptr, i32 } [ %i.qz, %bb.gh ], [ %i.lr, %bb.dp ], [ %i.ic, %bb.br ], [ %i.qu, %bb.gc ], [ %i.eq, %bb.q ], [ %i.re, %bb.gl ], [ %i.hb, %bb.bh ], [ %lpad.thr_comm280, %bb.gk ], [ %i.oh, %bb.es ], [ %.pn131.ph, %bb.fz ], [ %.pn24.ph.i, %bb.dv ], [ %lpad.thr_comm288, %bb.fi ], [ %i.ip, %bb.cb ], [ %eh.lpad-body185267, %.body184.thread265 ], [ %.pn56.i, %.thread.i ], [ %i.hg, %bb.bk ], [ %.pn138, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit ], [ %.pn138, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit ], [ %.pn138, %bb.bl ], [ %.pn142.ph, %bb.am ], [ %.pn138, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit ], [ %.pn138, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7LiteralECs7gfv9tzbXmh_6yara_x.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp316.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bm) #42
          to label %common.resume unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality18best_atom_in_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 4)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.024.i = phi i32 [ -2147483648, %bb.a ], [ %.sroa.0.1.i, %bb.d ] ; 2 uses
  %.sroa.02.023.i = phi i64 [ 0, %bb.a ], [ %.sroa.02.1.i, %bb.d ]
  %.sroa.3.022.i = phi i64 [ 0, %bb.a ], [ %.sroa.3.1.i, %bb.d ]
  %.sroa.0.01121.i = phi i64 [ 0, %bb.a ], [ %i.d, %bb.d ] ; 8 uses
  %i.c = add i64 %.sroa.0.01121.i, 4
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 range(i64 0, -9223372036854775808) %2) ; 4 uses
  %3 = icmp ult i64 %..i.i, %.sroa.0.01121.i
  br i1 %3, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i, i64 noundef %..i.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46, !noalias !5570
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = add nuw i64 %.sroa.0.01121.i, 1
  %i.e = sub nuw nsw i64 %..i.i, %.sroa.0.01121.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.01121.i
  %i.g = tail call fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.e) #47, !noalias !5570 ; 2 uses
  %i.h = icmp sgt i32 %i.g, %.sroa.0.024.i        ; 2 uses
  %.sroa.3.1.i = select i1 %i.h, i64 %..i.i, i64 %.sroa.3.022.i ; 2 uses
  %.sroa.02.1.i = select i1 %i.h, i64 %.sroa.0.01121.i, i64 %.sroa.02.023.i ; 2 uses
  %.sroa.0.1.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.sroa.0.024.i)
  %exitcond.not = icmp eq i64 %.sroa.0.01121.i, %i.b
  br i1 %exitcond.not, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit, label %bb.b

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.02.1.i, i64 noundef %.sroa.3.1.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.j = load i8, ptr %i.i, align 2, !range !16, !noundef !9
  %.not = icmp eq i8 %i.j, 2
  br i1 %.not, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 4)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.024 = phi i32 [ -2147483648, %bb.a ], [ %.sroa.0.1, %bb.e ] ; 2 uses
  %.sroa.02.023 = phi i64 [ 0, %bb.a ], [ %.sroa.02.1, %bb.e ]
  %.sroa.3.022 = phi i64 [ 0, %bb.a ], [ %.sroa.3.1, %bb.e ]
  %.sroa.0.01121 = phi i64 [ 0, %bb.a ], [ %i.e, %bb.e ] ; 8 uses
  %i.b = add i64 %.sroa.0.01121, 4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 4 uses
  %3 = icmp ult i64 %..i, %.sroa.0.01121
  br i1 %3, label %bb.d, label %bb.e, !prof !24

bb.c:                                             ; preds = %bb.e
  store i64 %.sroa.02.1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.1, ptr %i.d, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121, i64 noundef %..i, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = add nuw i64 %.sroa.0.01121, 1
  %i.f = sub nuw nsw i64 %..i, %.sroa.0.01121
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.01121
  %i.h = tail call fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.f) #47 ; 2 uses
  %i.i = icmp sgt i32 %i.h, %.sroa.0.024          ; 2 uses
  %.sroa.3.1 = select i1 %i.i, i64 %..i, i64 %.sroa.3.022 ; 2 uses
  %.sroa.02.1 = select i1 %i.i, i64 %.sroa.0.01121, i64 %.sroa.02.023 ; 2 uses
  %.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %.sroa.0.024) ; 2 uses
  %.not.i.not = icmp ult i64 %.sroa.0.01121, %i.a
  br i1 %.not.i.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality26best_range_in_masked_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2N_3ops5range14RangeInclusivejENvMB15_B13_3newEE9from_iterB1b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRShBN_ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.434.0.copyload = load ptr, ptr %.sroa.434.0..sroa_idx, align 8 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.g = icmp ult i64 %.sroa.536.0.copyload, %.sroa.7.0.copyload
  br i1 %i.g, label %.lr.ph57, label %..thread47_crit_edge

..thread47_crit_edge:                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre91 = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread47

.lr.ph57:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.434.0.copyload) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !9 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.thread47, label %.lr.ph57.split.preheader

.lr.ph57.split.preheader:                         ; preds = %.lr.ph57
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load ptr, ptr %i.k, align 8             ; 2 uses
  %.idx = mul nuw nsw i64 %i.i, 112
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %bb.m
  %exitcond.not = icmp eq i64 %i.m, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread47, label %.lr.ph.preheader, !llvm.loop !5571

.lr.ph.preheader:                                 ; preds = %.loopexit, %.lr.ph57.split.preheader
  %.sroa.536.056 = phi i64 [ %i.m, %.loopexit ], [ %.sroa.536.0.copyload, %.lr.ph57.split.preheader ] ; 3 uses
  %i.m = add i64 %.sroa.536.056, 1                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.536.056
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.434.0.copyload, i64 %.sroa.536.056
  br label %.lr.ph

.thread47:                                        ; preds = %.loopexit, %.lr.ph57, %..thread47_crit_edge
  %i.p = phi i64 [ %.pre91, %..thread47_crit_edge ], [ 0, %.lr.ph57 ], [ %i.i, %.loopexit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.u = load i64, ptr %i.f, align 8, !range !14, !noundef !9
  %i.v = icmp ult i64 %i.p, 82351536043346213
  call void @llvm.assume(i1 %i.v)
  %.idx77 = mul nuw nsw i64 %i.p, 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx77 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.t, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.u, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.w, ptr %.sroa.610.0..sroa_idx, align 8
  %i.x = icmp eq i64 %i.p, 0
  br i1 %i.x, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph: ; preds = %.thread47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit

bb.c:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %.sroa.48.0..sroa_idx, align 8
  store i64 %i.ad, ptr %0, align 8
  store i64 %i.ae, ptr %i.q, align 8
  store i32 %i.af, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #42
          to label %.thread unwind label %bb.l

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph, %.backedge
  %i.ac = phi ptr [ %i.t, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph ], [ %i.ag, %.backedge ] ; 3 uses
  %i.ad = phi i64 [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph ], [ %i.as, %.backedge ] ; 7 uses
  %i.ae = phi i64 [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph ], [ %i.ar, %.backedge ] ; 7 uses
  %i.af = phi i32 [ -2147483648, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph ], [ %i.aq, %.backedge ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 112 ; 4 uses
  %.sroa.037.0.copyload38 = load i64, ptr %i.ac, align 8, !noalias !5574 ; 2 uses
  %.not30 = icmp eq i64 %.sroa.037.0.copyload38, 2
  br i1 %.not30, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit
  %.sroa.8.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.037.0.copyload38, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx39, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder8finalize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.b)
          to label %bb.e unwind label %bb.c

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit, %.backedge, %.thread47
  %.lcssa67 = phi i32 [ -2147483648, %.thread47 ], [ %i.af, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit ], [ %i.aq, %.backedge ]
  %.lcssa63 = phi i64 [ 0, %.thread47 ], [ %i.ae, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit ], [ %i.ar, %.backedge ]
  %.lcssa59 = phi i64 [ 0, %.thread47 ], [ %i.ad, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit ], [ %i.as, %.backedge ]
  %i.ah = phi ptr [ %i.t, %.thread47 ], [ %i.ag, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit ], [ %i.w, %.backedge ]
  store ptr %i.ah, ptr %.sroa.48.0..sroa_idx, align 8
  store i64 %.lcssa59, ptr %0, align 8
  store i64 %.lcssa63, ptr %i.q, align 8
  store i32 %.lcssa67, ptr %i.r, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.a, align 8, !range !13, !noundef !9
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.y, align 8, !noundef !9 ; 3 uses
  %i.al = load i64, ptr %i.z, align 8, !noundef !9 ; 3 uses
  %i.am = load i32, ptr %i.aa, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not31 = icmp ult i64 %i.ad, %i.ae
  br i1 %.not31, label %bb.h, label %.backedge

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.an = call i8 @llvm.scmp.i8.i32(i32 %i.am, i32 %i.af)
  switch i8 %i.an, label %bb.i [
    i8 -1, label %.backedge
    i8 0, label %bb.j
    i8 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %.sroa.013.0 = call i64 @llvm.usub.sat.i64(i64 %i.al, i64 %i.ak)
  %i.ao = sub nuw i64 %i.ae, %i.ad
  %i.ap = icmp ult i64 %.sroa.013.0, %i.ao
  br i1 %i.ap, label %bb.k, label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.k, %bb.h, %bb.g, %bb.f
  %i.aq = phi i32 [ %i.am, %bb.f ], [ %i.af, %bb.g ], [ %i.af, %bb.h ], [ %i.am, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.ar = phi i64 [ %i.al, %bb.f ], [ %i.ae, %bb.g ], [ %i.ae, %bb.h ], [ %i.al, %bb.k ], [ %i.ae, %bb.j ] ; 2 uses
  %i.as = phi i64 [ %i.ak, %bb.f ], [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.ak, %bb.k ], [ %i.ad, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = icmp eq ptr %i.ag, %i.w
  br i1 %i.at, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB14_.exit

bb.k:                                             ; preds = %bb.h, %bb.j
  br label %.backedge

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.sroa.05.055 = phi ptr [ %i.ax, %bb.m ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.av = load i8, ptr %i.n, align 1, !noundef !9
  %i.aw = load i8, ptr %i.o, align 1, !noundef !9
  invoke fastcc void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4feed(ptr noalias nofree noundef align 8 dereferenceable(112) %.sroa.05.055, i8 noundef %i.av, i8 noundef %i.aw)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.055, i64 112 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.l
  br i1 %i.ay, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_13EmitWasmErrorNtNtCskKLDkoKarTP_4core5error5Error6source
define { ptr, ptr } @_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_13EmitWasmErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs0_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #47
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_post(ptr noalias nofree noundef align 8 dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0737 = alloca i32, align 4               ; 14 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 9 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [12 x i8], align 4               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 10 uses
  %i.by = alloca [32 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [2 x i8], align 1                ; 5 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [2 x i8], align 1                ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [2 x i8], align 1                ; 5 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [2 x i8], align 1                ; 5 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [2 x i8], align 1                ; 5 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [2 x i8], align 1                ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [2 x i8], align 1                ; 5 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [2 x i8], align 1                ; 5 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [2 x i8], align 1                ; 5 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [2 x i8], align 1                ; 5 uses
  %i.cy = alloca [8 x i8], align 8                ; 4 uses
  %i.cz = alloca [2 x i8], align 1                ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [2 x i8], align 1                ; 5 uses
  %i.dc = alloca [8 x i8], align 8                ; 4 uses
  %i.dd = alloca [2 x i8], align 1                ; 5 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [2 x i8], align 1                ; 5 uses
  %i.dg = alloca [8 x i8], align 8                ; 4 uses
  %i.dh = alloca [2 x i8], align 1                ; 5 uses
  %i.di = alloca [8 x i8], align 8                ; 4 uses
  %i.dj = alloca [2 x i8], align 1                ; 5 uses
  %i.dk = alloca [16 x i8], align 8               ; 4 uses
  %i.dl = alloca [8 x i8], align 8                ; 4 uses
  %i.dm = alloca [8 x i8], align 8                ; 4 uses
  %i.dn = alloca [8 x i8], align 8                ; 4 uses
  %i.do = alloca [1 x i8], align 1                ; 4 uses
  %i.dp = alloca [2 x i8], align 1                ; 5 uses
  %i.dq = alloca [8 x i8], align 8                ; 4 uses
  %i.dr = alloca [8 x i8], align 8                ; 4 uses
  %i.ds = alloca [1 x i8], align 1                ; 4 uses
  %i.dt = alloca [2 x i8], align 1                ; 5 uses
  %i.du = alloca [40 x i8], align 8               ; 8 uses
  %i.dv = alloca [64 x i8], align 8               ; 6 uses
  %i.dw = alloca [40 x i8], align 8               ; 10 uses
  %i.dx = alloca [24 x i8], align 8               ; 8 uses
  %i.dy = alloca [24 x i8], align 8               ; 13 uses
  %i.dz = alloca [24 x i8], align 8               ; 4 uses
  %i.ea = alloca [24 x i8], align 8               ; 4 uses
  %i.eb = alloca [32 x i8], align 8               ; 7 uses
  %i.ec = alloca [24 x i8], align 8               ; 12 uses
  %i.ed = alloca [24 x i8], align 8               ; 4 uses
  %i.ee = alloca [24 x i8], align 8               ; 5 uses
  %i.ef = alloca [40 x i8], align 8               ; 11 uses
  %i.eg = alloca [24 x i8], align 8               ; 12 uses
  %i.eh = alloca [24 x i8], align 8               ; 5 uses
  %i.ei = alloca [24 x i8], align 8               ; 6 uses
  %i.ej = alloca [24 x i8], align 8               ; 9 uses
  %i.ek = alloca [40 x i8], align 8               ; 7 uses
  %i.el = alloca [24 x i8], align 8               ; 11 uses
  %i.em = alloca [24 x i8], align 8               ; 13 uses
  %i.en = alloca [24 x i8], align 8               ; 4 uses
  %i.eo = alloca [32 x i8], align 8               ; 13 uses
  %i.ep = alloca [24 x i8], align 8               ; 4 uses
  %i.eq = alloca [24 x i8], align 8               ; 4 uses
  %i.er = alloca [32 x i8], align 8               ; 6 uses
  %i.es = alloca [32 x i8], align 8               ; 4 uses
  %i.et = alloca [24 x i8], align 8               ; 10 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !noundef !9
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr %i.eu, align 8
  %i.ex = load i64, ptr %1, align 8, !range !34, !noundef !9 ; 4 uses
  %i.ey = icmp ne i64 %i.ex, 4
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = add nsw i64 %i.ex, -2
  %.inv = icmp samesign ult i64 %i.ex, 2          ; 2 uses
  %i.fa = select i1 %.inv, i64 2, i64 %i.ez
  switch i64 %i.fa, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.ac
    i64 3, label %bb.ai
    i64 4, label %bb.du
    i64 5, label %bb.jr
    i64 6, label %bb.js
    i64 7, label %bb.jt
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !9
  %.not71 = icmp eq i32 %i.fc, 0
  br i1 %.not71, label %bb.ju, label %bb.qu

bb.d:                                             ; preds = %bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.fd, align 8, !nonnull !9, !noundef !9 ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val81 = load i64, ptr %i.fe, align 8, !noundef !9 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6039)
  %i.ff = getelementptr inbounds nuw i8, ptr %.val, i64 %.val81 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6040)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !6041, !noundef !9
  %i.fi = icmp samesign eq i64 %.val81, 0
  br i1 %i.fi, label %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread, label %.lr.ph.i.i

_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread: ; preds = %bb.d
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.fn, %bb.p ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %i.fo = load i8, ptr %.sroa.0.08.i.i, align 1, !noalias !6042, !noundef !9 ; 2 uses
  %i.fp = icmp eq i8 %i.fo, -86
  br i1 %i.fp, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !6042
  store i8 -86, ptr %i.dt, align 1, !noalias !6042
  store i8 -86, ptr %i.fm, align 1, !noalias !6042
  %i.fq = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef 2), !noalias !6043 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i2.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !6044
  store ptr %i.fq, ptr %i.dq, align 8, !noalias !6044
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
          to label %bb.i unwind label %bb.h, !noalias !6043

bb.h:                                             ; preds = %bb.g
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq) #42
          to label %common.resume unwind label %bb.j, !noalias !6043

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

common.resume:                                    ; preds = %bb.qn, %bb.qd, %bb.na, %bb.mr, %bb.ma, %bb.lv, %bb.ks, %.body198, %.thread358, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jw, %bb.ke, %.thread373, %bb.io, %bb.jn, %bb.am, %bb.ar, %bb.aw, %bb.bb, %bb.bg, %bb.bl, %bb.bq, %bb.bv, %bb.ca, %bb.cf, %bb.ck, %bb.cp, %bb.cu, %bb.cz, %bb.de, %bb.dj, %bb.h, %bb.m, %bb.t, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bhk, %bb.qd ], [ %i.gm, %bb.y ], [ %i.mz, %bb.dj ], [ %i.amj, %bb.jn ], [ %i.anv, %bb.ke ], [ %eh.lpad-body199, %.body198 ], [ %i.atc, %bb.lv ], [ %i.atn, %bb.ma ], [ %i.avx, %bb.mr ], [ %i.axk, %bb.na ], [ %i.fu, %bb.m ], [ %i.fr, %bb.h ], [ %i.gj, %bb.t ], [ %i.mo, %bb.de ], [ %i.hz, %bb.am ], [ %i.ik, %bb.ar ], [ %i.iq, %bb.aw ], [ %i.jb, %bb.bb ], [ %i.jh, %bb.bg ], [ %i.js, %bb.bl ], [ %i.jy, %bb.bq ], [ %i.kj, %bb.bv ], [ %i.kp, %bb.ca ], [ %i.la, %bb.cf ], [ %i.lg, %bb.ck ], [ %i.lr, %bb.cp ], [ %i.lx, %bb.cu ], [ %i.mi, %bb.cz ], [ %i.ain, %bb.io ], [ %.pn63.pn356.a, %.thread358 ], [ %lpad.loopexit.split-lp1464, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body195, %.thread373 ], [ %i.amy, %bb.jw ], [ %i.bjo, %bb.qn ], [ %i.aqd, %bb.ks ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !6042
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !6042
  store i8 %i.fo, ptr %i.ds, align 1, !noalias !6042
  %i.ft = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef 1), !noalias !6043 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !6045
  store ptr %i.ft, ptr %i.dr, align 8, !noalias !6045
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #41
          to label %bb.n unwind label %bb.m, !noalias !6043

bb.m:                                             ; preds = %bb.l
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dr) #42
          to label %common.resume unwind label %bb.o, !noalias !6043

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !6042
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i.i
  %i.fw = icmp eq ptr %i.fn, %i.ff
  br i1 %i.fw, label %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i, label %bb.e

_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i: ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !6039, !noundef !9 ; 2 uses
  %.not.i = icmp eq i64 %i.fz, 0
  %i.ga = load ptr, ptr %i.fx, align 8, !alias.scope !6039, !nonnull !9
  %i.gb = getelementptr [48 x i8], ptr %i.ga, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 -48
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.gd, ptr %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.ab, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i
  %.sroa.4.08.i.i = phi ptr [ %i.ff, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i ], [ %i.gf, %bb.ab ]
  %i.gf = getelementptr inbounds i8, ptr %.sroa.4.08.i.i, i64 -1 ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !6046, !noundef !9 ; 2 uses
  %i.gh = icmp eq i8 %i.gg, -86
  br i1 %i.gh, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !6046
  store i8 -86, ptr %i.dp, align 1, !noalias !6046
  store i8 -86, ptr %i.ge, align 1, !noalias !6046
  %i.gi = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef 2), !noalias !6043 ; 2 uses
  %.not.i2.i9.i = icmp eq ptr %i.gi, null
  br i1 %.not.i2.i9.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i10.i, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !6047
  store ptr %i.gi, ptr %i.dm, align 8, !noalias !6047
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
          to label %bb.u unwind label %bb.t, !noalias !6043

bb.t:                                             ; preds = %bb.s
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm) #42
          to label %common.resume unwind label %bb.v, !noalias !6043

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i10.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !6046
  br label %bb.ab

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !6046
  store i8 %i.gg, ptr %i.do, align 1, !noalias !6046
  %i.gl = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef 1), !noalias !6043 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i5.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i8.i, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !6048
  store ptr %i.gl, ptr %i.dn, align 8, !noalias !6048
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #41
          to label %bb.z unwind label %bb.y, !noalias !6043

bb.y:                                             ; preds = %bb.x
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dn) #42
          to label %common.resume unwind label %bb.aa, !noalias !6043

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i8.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !6046
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i8.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i10.i
  %i.go = icmp eq ptr %.val, %i.gf
  br i1 %i.go, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit, label %bb.q

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit: ; preds = %bb.ab, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread
  %i.gp = phi ptr [ %i.fl, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread ], [ %i.gd, %bb.ab ]
  %i.gq = phi ptr [ %i.fk, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread ], [ %i.fy, %bb.ab ]
  %i.gr = phi ptr [ %i.fj, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread ], [ %i.fx, %bb.ab ]
  %i.gs = load i64, ptr %i.gq, align 8, !alias.scope !6049, !noundef !9 ; 2 uses
  %.not.i96 = icmp eq i64 %i.gs, 0
  %i.gt = load ptr, ptr %i.gr, align 8, !alias.scope !6049, !nonnull !9
  %i.gu = getelementptr [48 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 -48
  %.sroa.0.0.i97 = select i1 %.not.i96, ptr %i.gp, ptr %i.gv ; 2 uses
  %i.gw = getelementptr i8, ptr %.sroa.0.0.i97, i64 32
  %.val87 = load i64, ptr %i.gw, align 8, !noundef !9
  %i.gx = getelementptr i8, ptr %.sroa.0.0.i97, i64 24
end_hunk_4
begin_hunk_5_@_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_post:bb.a
  %i.alp = icmp slt i64 %i.alo, -2147483648
  %i.alq = icmp sgt i64 %i.alo, 2147483647
  %i.alr = shl nsw i64 %i.alo, 32
  %spec.select.i27.i410.i = select i1 %i.alq, i64 513, i64 %i.alr
  %.sroa.3.0.insert.insert.i28.i411.i = select i1 %i.alp, i64 769, i64 %spec.select.i27.i410.i ; 2 uses
  %i.als = trunc i64 %.sroa.3.0.insert.insert.i28.i411.i to i1
  br i1 %i.als, label %bb.jk, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %.sroa.525.0.extract.shift.i412.i = lshr i64 %.sroa.3.0.insert.insert.i28.i411.i, 32
  %.sroa.525.0.extract.trunc.i413.i = trunc nuw i64 %.sroa.525.0.extract.shift.i412.i to i32
  call fastcc void @_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8InstrSeq11patch_instr(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.akk, i32 noundef %.sroa.521.0.extract.trunc.i409.i), !noalias !6139
  %i.alt = load i64, ptr %i.ahn, align 8, !alias.scope !6237, !noundef !9 ; 2 uses
  %.not.i416.i = icmp eq i64 %i.alt, 0
  %i.alu = load ptr, ptr %i.ahm, align 8, !alias.scope !6237, !nonnull !9
  %i.alv = getelementptr [48 x i8], ptr %i.alu, i64 %i.alt
  %i.alw = getelementptr i8, ptr %i.alv, i64 -48
  %.sroa.0.0.i417.i = select i1 %.not.i416.i, ptr %i.ahs, ptr %i.alw
  call fastcc void @_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8InstrSeq11patch_instr(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0.0.i417.i, i64 noundef %i.akr, i32 noundef %.sroa.525.0.extract.trunc.i413.i), !noalias !6139
  br i1 %i.ais, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !6140
  store i64 %.sroa.6118.sroa.0.0.i, ptr %i.bl, align 8, !noalias !6140
  %.sroa.6118.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.6118.sroa.5.0.i, ptr %.sroa.6118.sroa.5.0..sroa_idx.i, align 8, !noalias !6140
  %.sroa.6118.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %.sroa.6118.sroa.6.0.i, ptr %.sroa.6118.sroa.6.0..sroa_idx.i, align 8, !noalias !6140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !6140
  call void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB2_7CodeLoc3sub(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl), !noalias !6139
  %i.alx = load i8, ptr %i.bk, align 4, !range !46, !noalias !6140, !noundef !9
  %i.aly = trunc nuw i8 %i.alx to i1
  br i1 %i.aly, label %bb.ji, label %bb.jj

bb.jh:                                            ; preds = %bb.jj, %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !6140
  call fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler28reverse_backward_code_chunks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef 2), !noalias !6139
  %i.alz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ama = load i64, ptr %i.alz, align 8, !noalias !6140, !noundef !9
  %.not249.i = icmp eq i64 %i.ama, 0
  br i1 %.not249.i, label %bb.jm, label %bb.jl

bb.ji:                                            ; preds = %bb.jg
  %i.amb = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.amc = load i8, ptr %i.amb, align 1, !range !16, !noalias !6140, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !6140
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jg
  %i.amd = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.ame = load i32, ptr %i.amd, align 4, !noalias !6140, !noundef !9
  %i.amf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.amg = load i32, ptr %i.amf, align 4, !noalias !6140, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !6140
  call fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler11patch_instr(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 %.sroa.6118.sroa.0.0.i, i64 %.sroa.6118.sroa.6.0.i, i32 noundef %i.ame, i32 noundef %i.amg), !noalias !6139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !6140
  br label %bb.jh

bb.jk:                                            ; preds = %bb.jd, %bb.je, %bb.ji
  %.sroa.25.0 = phi i8 [ %i.amc, %bb.ji ], [ 0, %bb.je ], [ 0, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !6140
  br label %bb.jq

bb.jl:                                            ; preds = %bb.jh
  %i.amh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ami = load ptr, ptr %i.amh, align 8, !noalias !6140, !nonnull !9, !noundef !9
  %.sroa.41245.8.copyload246 = load i64, ptr %i.ami, align 8, !noalias !6138
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj), !noalias !6139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !6140
  br label %bb.mk

bb.jm:                                            ; preds = %bb.jh
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #41
          to label %bb.jo unwind label %bb.jn, !noalias !6139

bb.jn:                                            ; preds = %bb.jm
  %i.amj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #42
          to label %common.resume unwind label %bb.jp, !noalias !6139

bb.jo:                                            ; preds = %bb.jm
  unreachable

bb.jp:                                            ; preds = %bb.jn
  %i.amk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6139
  unreachable

bb.jq:                                            ; preds = %bb.jk, %bb.ja
  %.sroa.25.1 = phi i8 [ %i.akg, %bb.ja ], [ %.sroa.25.0, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !6140
  br label %bb.iz

bb.jr:                                            ; preds = %bb.a
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.amm = load i64, ptr %i.aml, align 8, !noundef !9 ; 3 uses
  %i.amn = icmp eq i64 %i.amm, 0
  br i1 %i.amn, label %bb.mn, label %bb.mo, !prof !11

bb.js:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %i.amo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.amp = load i64, ptr %i.amo, align 8, !noundef !9 ; 2 uses
  call fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler28reverse_backward_code_chunks(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.em, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef range(i64 0, 192153584101141163) %i.amp)
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.amr = load i32, ptr %i.amq, align 4, !noundef !9
  %.not58 = icmp eq i32 %i.amr, 0
  br i1 %.not58, label %bb.mu, label %bb.mq

bb.jt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.amt = load i64, ptr %i.ams, align 8, !noundef !9
  call fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler22visit_post_alternation(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.eb, ptr noalias nofree noundef align 8 dereferenceable(240) %0, i64 noundef %i.amt)
  %i.amu = load i8, ptr %i.eb, align 8, !range !46, !noundef !9
  %i.amv = trunc nuw i8 %i.amu to i1
  br i1 %i.amv, label %bb.pw, label %bb.px

bb.ju:                                            ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.amw = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef 8) #45 ; 4 uses
  %i.amx = icmp eq ptr %i.amw, null
  br i1 %i.amx, label %bb.jv, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.jv:                                            ; preds = %bb.ju
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #41
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  invoke void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom5exactAhj0_EBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.es)
          to label %.thread unwind label %bb.jw

bb.jw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %i.amy = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amw, i64 noundef 32, i64 noundef 8) #45
  br label %common.resume

.thread:                                          ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amw, ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ana = load i64, ptr %i.amz, align 8, !alias.scope !6238, !noundef !9
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.and = load i64, ptr %i.anc, align 8, !alias.scope !6238, !noundef !9 ; 2 uses
  %.not.i109 = icmp eq i64 %i.and, 0
  %i.ane = load ptr, ptr %i.anb, align 8, !alias.scope !6238, !nonnull !9
  %i.anf = getelementptr [48 x i8], ptr %i.ane, i64 %i.and
  %i.ang = getelementptr i8, ptr %i.anf, i64 -48
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.i110 = select i1 %.not.i109, ptr %i.anh, ptr %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i110, i64 24
  %.sroa.7227.0.copyload853.cast = ptrtoint ptr %i.amw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i64 %i.ana, ptr %i.et, align 8
  %.sroa.13.0..sroa_idx856 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.anj = load <2 x i64>, ptr %i.ani, align 8, !noalias !6239
  %i.ank = shufflevector <2 x i64> %i.anj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ank, ptr %.sroa.13.0..sroa_idx856, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  br label %bb.qb

bb.jx:                                            ; preds = %bb.py, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit138, %bb.mp, %bb.mm, %bb.mi, %bb.mg, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit117
  %.sroa.0266.0.ph = phi i64 [ %.sroa.0306.0.copyload, %bb.py ], [ %.sroa.0266.2.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit138 ], [ %.sroa.0294.0.copyload, %bb.mp ], [ %.sroa.41245.0, %bb.mm ], [ %.sroa.0181.0.i, %bb.mi ], [ %.sroa.0266.1, %bb.mg ], [ %i.aot, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit117 ]
  %.sroa.13.0.ph = phi i64 [ %.val82, %bb.py ], [ %.sroa.13.1.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit138 ], [ %.val83, %bb.mp ], [ %.val84, %bb.mm ], [ %.val85, %bb.mi ], [ %.val86, %bb.mg ], [ %.val87, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit117 ]
  %.sroa.21.0.ph = phi i64 [ %.val88, %bb.py ], [ %.sroa.21.1.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit138 ], [ %.val89, %bb.mp ], [ %.val90, %bb.mm ], [ %.val91, %bb.mi ], [ %.val92, %bb.mg ], [ %i.aos, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit117 ]
  %.sroa.0.0.copyload.pr = load i64, ptr %i.ec, align 8 ; 3 uses
  %.sroa.7227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.7227.0.copyload = load i64, ptr %.sroa.7227.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.7232.0.copyload = load i64, ptr %.sroa.7232.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i64 %.sroa.0266.0.ph, ptr %i.et, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.13.0.ph, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.21.0.ph, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %.not72 = icmp eq i64 %.sroa.0.0.copyload.pr, -1
  br i1 %.not72, label %bb.qa, label %bb.pz

bb.jy:                                            ; preds = %bb.ke, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread353, %.thread358, %bb.pv, %.body148
  %i.anl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.jz:                                            ; preds = %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  %i.anm = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %.val81, i64 4)
  br label %bb.ka

bb.ka:                                            ; preds = %bb.kc, %bb.jz
  %.sroa.0.024.i.i = phi i32 [ -2147483648, %bb.jz ], [ %.sroa.0.1.i.i, %bb.kc ] ; 2 uses
  %.sroa.02.023.i.i = phi i64 [ 0, %bb.jz ], [ %.sroa.02.1.i.i, %bb.kc ]
  %.sroa.3.022.i.i = phi i64 [ 0, %bb.jz ], [ %.sroa.3.1.i.i, %bb.kc ]
  %.sroa.0.01121.i.i = phi i64 [ 0, %bb.jz ], [ %i.ano, %bb.kc ] ; 8 uses
  %i.ann = add i64 %.sroa.0.01121.i.i, 4
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ann, i64 range(i64 0, -9223372036854775808) %.val81) ; 4 uses
  %2 = icmp ult i64 %..i.i.i, %.sroa.0.01121.i.i
  br i1 %2, label %bb.kb, label %bb.kc, !prof !24

bb.kb:                                            ; preds = %bb.ka
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.01121.i.i, i64 noundef %..i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val81, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46, !noalias !6240
  unreachable

bb.kc:                                            ; preds = %bb.ka
  %i.ano = add nuw i64 %.sroa.0.01121.i.i, 1
  %i.anp = sub nuw nsw i64 %..i.i.i, %.sroa.0.01121.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.01121.i.i
  %i.anr = call fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.anq, i64 noundef %i.anp) #47, !noalias !6240 ; 2 uses
  %i.ans = icmp sgt i32 %i.anr, %.sroa.0.024.i.i  ; 2 uses
  %.sroa.3.1.i.i = select i1 %i.ans, i64 %..i.i.i, i64 %.sroa.3.022.i.i ; 2 uses
  %.sroa.02.1.i.i = select i1 %i.ans, i64 %.sroa.0.01121.i.i, i64 %.sroa.02.023.i.i ; 2 uses
  %.sroa.0.1.i.i = call i32 @llvm.smax.i32(i32 %i.anr, i32 %.sroa.0.024.i.i)
  %exitcond.not.i111 = icmp eq i64 %.sroa.0.01121.i.i, %i.anm
  br i1 %exitcond.not.i111, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i, label %bb.ka

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i: ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6241
  call void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val81, i64 noundef %.sroa.02.1.i.i, i64 noundef %.sroa.3.1.i.i), !noalias !6242
  %i.ant = getelementptr inbounds nuw i8, ptr %i.z, i64 26
  %i.anu = load i8, ptr %i.ant, align 2, !range !16, !noalias !6241, !noundef !9
  %.not.i112 = icmp eq i8 %i.anu, 2
  br i1 %.not.i112, label %bb.kd, label %bb.kf, !prof !11

bb.kd:                                            ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46, !noalias !6242
  unreachable

bb.ke:                                            ; preds = %bb.ki, %bb.kh
  %i.anv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %common.resume unwind label %bb.jy

bb.kf:                                            ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !6243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6241
  %i.anw = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %.val95 = load i16, ptr %i.anw, align 8, !noundef !9 ; 3 uses
  %i.anx = zext i16 %.val95 to i64                ; 7 uses
  %.not70 = icmp ult i64 %.val81, %i.anx
  br i1 %.not70, label %bb.kh, label %bb.kg, !prof !24

bb.kg:                                            ; preds = %bb.kf
  %i.any = getelementptr inbounds nuw i8, ptr %.val, i64 %i.anx
  %i.anz = icmp eq i16 %.val95, 0
  br i1 %i.anz, label %.loopexit386, label %.lr.ph.i114.preheader

.lr.ph.i114.preheader:                            ; preds = %bb.kg
  %min.iters.check = icmp ult i16 %.val95, 4
  br i1 %min.iters.check, label %.lr.ph.i114.preheader1467, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i114.preheader
  %n.vec = and i64 %i.anx, 65532                  ; 3 uses
  %i.aoa = getelementptr i8, ptr %.val, i64 %n.vec
  %i.aob = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.anx, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.aob, %vector.ph ], [ %i.aoh, %vector.body ]
  %vec.phi1460 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aoi, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val, i64 %index ; 2 uses
  %i.aoc = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !alias.scope !6244
  %wide.load1461 = load <2 x i8>, ptr %i.aoc, align 1, !alias.scope !6244
  %i.aod = icmp eq <2 x i8> %wide.load, splat (i8 -86)
  %i.aoe = icmp eq <2 x i8> %wide.load1461, splat (i8 -86)
  %i.aof = zext <2 x i1> %i.aod to <2 x i64>
  %i.aog = zext <2 x i1> %i.aoe to <2 x i64>
  %i.aoh = add <2 x i64> %vec.phi, %i.aof         ; 2 uses
  %i.aoi = add <2 x i64> %vec.phi1460, %i.aog     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aoj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aoj, label %middle.block, label %vector.body, !llvm.loop !5900

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aoi, %i.aoh
  %i.aok = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.anx
  br i1 %cmp.n, label %.loopexit386, label %.lr.ph.i114.preheader1467

.lr.ph.i114.preheader1467:                        ; preds = %.lr.ph.i114.preheader, %middle.block
  %.sroa.0.05.i.ph = phi i64 [ %i.anx, %.lr.ph.i114.preheader ], [ %i.aok, %middle.block ]
  %.sroa.02.04.i.ph = phi ptr [ %.val, %.lr.ph.i114.preheader ], [ %i.aoa, %middle.block ]
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.preheader1467, %.lr.ph.i114
  %.sroa.0.05.i = phi i64 [ %spec.select.i, %.lr.ph.i114 ], [ %.sroa.0.05.i.ph, %.lr.ph.i114.preheader1467 ]
  %.sroa.02.04.i = phi ptr [ %i.aol, %.lr.ph.i114 ], [ %.sroa.02.04.i.ph, %.lr.ph.i114.preheader1467 ] ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 1 ; 2 uses
  %i.aom = load i8, ptr %.sroa.02.04.i, align 1, !alias.scope !6244, !noundef !9
  %i.aon = icmp eq i8 %i.aom, -86
  %i.aoo = zext i1 %i.aon to i64
  %spec.select.i = add i64 %.sroa.0.05.i, %i.aoo  ; 2 uses
  %i.aop = icmp eq ptr %i.aol, %i.any
  br i1 %i.aop, label %.loopexit386, label %.lr.ph.i114, !llvm.loop !5901

bb.kh:                                            ; preds = %bb.kf
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.anx, i64 noundef %.val81, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #41
          to label %bb.kj unwind label %bb.ke

.loopexit386:                                     ; preds = %.lr.ph.i114, %middle.block, %bb.kg
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.kg ], [ %i.aok, %middle.block ], [ %spec.select.i, %.lr.ph.i114 ] ; 2 uses
  store i16 0, ptr %i.anw, align 8, !alias.scope !6247
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.aoq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef 8) #45 ; 3 uses
  %i.aor = icmp eq ptr %i.aoq, null
  br i1 %i.aor, label %bb.ki, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit117, !prof !11

bb.ki:                                            ; preds = %.loopexit386
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #41
          to label %.noexc116 unwind label %bb.ke

.noexc116:                                        ; preds = %bb.ki
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit117: ; preds = %.loopexit386
  %i.aos = sub i64 %.val93, %.sroa.0.0.lcssa.i
  %i.aot = add i64 %.sroa.0.0.lcssa.i, %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoq, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false)
  store i64 1, ptr %i.ec, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.aoq, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 1, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  br label %bb.jx

bb.kj:                                            ; preds = %bb.qk, %bb.pu, %bb.pf, %bb.kh
  unreachable

.thread338:                                       ; preds = %bb.ae, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %.pre754.a = load i64, ptr %i.ha, align 8, !alias.scope !6248, !noalias !6249
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %.thread338
  %i.aou = phi i64 [ %.pre754.a, %bb.kk ], [ %i.he, %.thread338 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  %i.aov = icmp eq i64 %i.aou, 0
  %.phi.trans.insert755 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.pre = load ptr, ptr %.phi.trans.insert755, align 8 ; 3 uses
  br i1 %i.aov, label %.critedge, label %._crit_edge1176

._crit_edge1176:                                  ; preds = %bb.kl
  %.pre1179 = load i8, ptr %.val.i.pre, align 1, !noalias !6250
  br label %bb.km

bb.km:                                            ; preds = %._crit_edge1176, %.thread862
  %i.aow = phi i8 [ 0, %.thread862 ], [ %.pre1179, %._crit_edge1176 ] ; 4 uses
  %i.aox = phi ptr [ %i.hd, %.thread862 ], [ %.val.i.pre, %._crit_edge1176 ] ; 5 uses
  %i.aoy = phi i64 [ %i.he, %.thread862 ], [ %i.aou, %._crit_edge1176 ] ; 4 uses
  %.idx.i209 = shl i64 %i.aoy, 1                  ; 2 uses
  %i.aoz = getelementptr i8, ptr %i.aox, i64 %.idx.i209 ; 2 uses
  %i.apa = getelementptr i8, ptr %i.aoz, i64 -1
  %i.apb = load i8, ptr %i.apa, align 1, !noalias !6250, !noundef !9
  %i.apc = xor i8 %i.apb, %i.aow                  ; 2 uses
  %i.apd = icmp eq i64 %.idx.i209, 0
  br i1 %i.apd, label %.critedge, label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %bb.km, %bb.kp
  %.sroa.03.021.i = phi i32 [ %i.apq, %bb.kp ], [ 0, %bb.km ]
  %.sroa.05.020.i = phi ptr [ %i.ape, %bb.kp ], [ %i.aox, %bb.km ] ; 4 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 2 ; 2 uses
  %i.apf = load i8, ptr %.sroa.05.020.i, align 1, !noalias !6250, !noundef !9
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 1
  %i.aph = load i8, ptr %i.apg, align 1, !noalias !6250, !noundef !9
  br label %bb.kn

._crit_edge.i216:                                 ; preds = %bb.kp
  %i.api = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.apc)
  %i.apj = zext nneg i8 %i.api to i32
  %i.apk = shl nuw nsw i32 1, %i.apj
  %.not12.i = icmp eq i32 %i.apk, %i.apq
  br i1 %.not12.i, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir20class_to_masked_byte.exit, label %.critedge

bb.kn:                                            ; preds = %bb.ko, %.lr.ph.i210
  %.sroa.6.014.i = phi i8 [ %i.apf, %.lr.ph.i210 ], [ %i.apm, %bb.ko ] ; 4 uses
  %.sroa.0.013.i = phi i1 [ false, %.lr.ph.i210 ], [ %i.apl, %bb.ko ]
  %.not.i.i211 = icmp ugt i8 %.sroa.6.014.i, %i.aph
  %or.cond.i212 = select i1 %.sroa.0.013.i, i1 true, i1 %.not.i.i211
  br i1 %or.cond.i212, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.apl = icmp eq i8 %.sroa.6.014.i, -1
  %i.apm = add i8 %.sroa.6.014.i, 1
  %i.apn = and i8 %.sroa.6.014.i, %i.aow
  %.not.i213 = icmp eq i8 %i.apn, %i.aow
  br i1 %.not.i213, label %bb.kn, label %.critedge

bb.kp:                                            ; preds = %bb.kn
  %i.apo = tail call noundef i64 @_RNvMsi_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %.sroa.05.020.i), !noalias !6250
  %i.app = trunc i64 %i.apo to i32
  %i.apq = add i32 %.sroa.03.021.i, %i.app        ; 2 uses
  %i.apr = icmp eq ptr %i.ape, %i.aoz
  br i1 %i.apr, label %._crit_edge.i216, label %.lr.ph.i210

_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir20class_to_masked_byte.exit: ; preds = %._crit_edge.i216
  %i.aps = xor i8 %i.apc, -1
  %i.apt = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  call fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16emit_masked_byte(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.apt, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i8 noundef %i.aow, i8 noundef %i.aps), !noalias !9
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread

.thread337:                                       ; preds = %bb.af, %bb.ag, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.apu = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6251
  call void @_RNvMsa_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_12ClassUnicode13to_byte_class(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.apu), !noalias !6249, !inline_history !5910
  %i.apv = load i64, ptr %i.y, align 8, !range !20, !noalias !6251, !noundef !9
end_hunk_5
