Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.05?download=true
inline.NumInlined: 225
inline.NumDeleted: 93
begin_hunk_0_@_RNvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB2_7GitRepo11remote_name:bb.a

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ck, ptr %i.cp, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cn, ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cf, ptr %.sroa.5141.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs9_NtCsg0kSldJeyDi_4git212string_arrayNtB5_11StringArrayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git212string_array11StringArrayECs1YANDSn9Kib_7git_xet.exit198 unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git212string_array11StringArrayECs1YANDSn9Kib_7git_xet.exit198: ; preds = %bb.ba, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab

bb.bb:                                            ; preds = %bb.be, %bb.ax
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionReENtNtCsg0kSldJeyDi_4git25error5ErrorEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.au, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionReENtNtCsg0kSldJeyDi_4git25error5ErrorEECs1YANDSn9Kib_7git_xet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bd unwind label %bb.aq

bb.bd:                                            ; preds = %bb.bc
  %i.cq = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !55, !noundef !4 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cr, label %bb.be, label %bb.bf, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.cv = load i64, ptr %i.cu, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ct, i64 %i.cv) #26
          to label %bb.bb unwind label %bb.aq

bb.bf:                                            ; preds = %bb.bd
  %i.cw = load ptr, ptr %i.cu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = icmp samesign ugt i64 %i.ct, 5
  call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cw, ptr noundef nonnull align 1 dereferenceable(6) @9, i64 6, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.cy, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cw, ptr %.sroa.4146.0..sroa_idx, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 6, ptr %.sroa.5147.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXs9_NtCsg0kSldJeyDi_4git212string_arrayNtB5_11StringArrayNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git212string_array11StringArrayECs1YANDSn9Kib_7git_xet.exit200 unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git212string_array11StringArrayECs1YANDSn9Kib_7git_xet.exit200: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs0_NtCsg0kSldJeyDi_4git26configNtB5_6ConfigNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit202 unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit202: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git212string_array11StringArrayECs1YANDSn9Kib_7git_xet.exit200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet(ptr nonnull %i.ao, i8 %i.aq)
          to label %bb.bg unwind label %bb.g

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit202, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit191: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.da = trunc nuw i8 %i.aq to i1
  br i1 %i.da, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit191
  %i.db = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dc = and i64 %i.db, 9223372036854775807
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bi, !prof !10

bb.bi:                                            ; preds = %bb.bh
  %i.de = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc203 unwind label %bb.g

.noexc203:                                        ; preds = %bb.bi
  br i1 %i.de, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc203
  store atomic i8 1, ptr %i.cz monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bj, %.noexc203, %bb.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit191
  %i.df = atomicrmw xchg ptr %i.ao, i32 0 release, align 4
  %i.dg = icmp eq i32 %i.df, 2
  br i1 %i.dg, label %bb.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit, !prof !11

bb.bk:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.bk
  %i.dh = load i64, ptr %i.s, align 8, !range !5, !noundef !4
  %i.di = icmp ne i64 %i.dh, -1
  %i.dj = trunc nuw i8 %.sroa.064.7 to i1
  %or.cond = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond, label %bb.bl, label %bb.bg

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit208
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.bt, %bb.bm
  %common.resume.op = phi { ptr, i32 } [ %i.dk, %bb.bm ], [ %.pn162, %bb.bt ], [ %.pn162, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.bl
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.bg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit184: ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.dn = trunc nuw i8 %i.aq to i1
  br i1 %i.dn, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit184
  %i.do = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205, label %bb.bp, !prof !10

bb.bp:                                            ; preds = %bb.bo
  %i.dr = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc206 unwind label %bb.g

.noexc206:                                        ; preds = %bb.bp
  br i1 %i.dr, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205, label %bb.bq

bb.bq:                                            ; preds = %.noexc206
  store atomic i8 1, ptr %i.dm monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205: ; preds = %bb.bq, %.noexc206, %bb.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26config6ConfigECs1YANDSn9Kib_7git_xet.exit184
  %i.ds = atomicrmw xchg ptr %i.ao, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit208, !prof !11

bb.br:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit208 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit208: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i205, %bb.br, %bb.bs
  %i.du = load i64, ptr %i.s, align 8, !range !5, !noundef !4
  %.not164 = icmp eq i64 %i.du, -1
  br i1 %.not164, label %bb.bg, label %bb.bl

bb.bs:                                            ; preds = %bb.h
  %.sroa.017.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.619.0.copyload = load ptr, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.822.0.copyload = load i8, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.1025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.688.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.1025.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %.sroa.017.0.copyload, ptr %0, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.619.0.copyload, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.822.0.copyload, ptr %.sroa.587.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit208

bb.bt:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #25
          to label %common.resume unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB2_7GitRepo17open_from_cur_dir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtCsG258MDvU3F_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e)
  %i.f = load i64, ptr %i.e, align 8, !range !5, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 7, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.f, ptr %i.d, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.8.0..sroa_idx4, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104
  invoke void @_RINvMs_NtCsg0kSldJeyDi_4git24repoNtB5_10Repository8discoverRNtNtCsG258MDvU3F_3std4path4PathECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %.sroa.5.0.copyload)
          to label %bb.e unwind label %bb.d, !noalias !104

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h, %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.j, %bb.d ], [ %i.n, %bb.h ], [ %i.u, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %common.resume.i unwind label %bb.s, !noalias !101

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !noalias !104, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load <2 x i64>, ptr %i.l, align 8, !noalias !104
  %.sroa.443.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %.sroa.5.0.copyload)
          to label %bb.p unwind label %bb.g, !noalias !111

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = icmp eq i64 %.sroa.443.0.copyload.i, 0
  br i1 %i.o, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, 0) %.sroa.443.0.copyload.i, i64 noundef 1) #21, !noalias !111
  br label %.body.i

bb.i:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.l, align 8, !noalias !104, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  store i64 1, ptr %i.b, align 8, !noalias !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.q, align 8, !noalias !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.r, align 8, !noalias !104
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %.sroa.013.sroa.4.0..sroa_idx.i, align 4, !noalias !104
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.p, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !104
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !112
  %i.s = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 2, 81) 32, i64 noundef range(i64 1, 9) 8) #21, !noalias !112 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.m, !prof !11

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26
          to label %.noexc.i unwind label %bb.k, !noalias !104

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsg0kSldJeyDi_4git24repoNtB5_10RepositoryNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.514.0..sroa_idx.i)
          to label %.body.i unwind label %bb.l, !noalias !104

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !104
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.w, align 8, !alias.scope !101, !noalias !115
  store i64 -1, ptr %0, align 8, !alias.scope !101, !noalias !115
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB3_7GitRepo4openNtNtCsG258MDvU3F_3std4path7PathBufEB5_.exit unwind label %bb.n, !noalias !101

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.o, !noalias !101

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !101
  unreachable

common.resume.i:                                  ; preds = %bb.q, %bb.n, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.q ], [ %i.x, %bb.n ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %bb.f
  %.sroa.528.sroa.5.0..sroa.528.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528.sroa.5.0..sroa.528.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  store i64 1, ptr %0, align 8, !alias.scope !101, !noalias !115
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !101, !noalias !115
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.m, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !101, !noalias !115
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB3_7GitRepo4openNtNtCsG258MDvU3F_3std4path7PathBufEB5_.exit unwind label %bb.q, !noalias !101

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.r, !noalias !101

bb.r:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !101
  unreachable

bb.s:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !101
  unreachable

_RINvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB3_7GitRepo4openNtNtCsG258MDvU3F_3std4path7PathBufEB5_.exit: ; preds = %bb.m, %bb.p
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !101
  br label %bb.t

bb.t:                                             ; preds = %_RINvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB3_7GitRepo4openNtNtCsG258MDvU3F_3std4path7PathBufEB5_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB2_7GitRepo18remote_name_to_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 16               ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [224 x i8], align 8               ; 9 uses
  %.sroa.621 = alloca [56 x i8], align 8          ; 6 uses
  %i.m = alloca [224 x i8], align 8               ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.q = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.s = cmpxchg ptr %i.r, i32 0, i32 1 acquire monotonic, align 4, !noalias !116
  %i.t = extractvalue { i32, i1 } %i.s, 1
  br i1 %i.t, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.r), !noalias !116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !116
  %i.v = and i64 %i.u, 9223372036854775807
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryE4lockCs1YANDSn9Kib_7git_xet.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23, !noalias !116
  %i.y = xor i1 %i.x, true
  %i.z = zext i1 %i.y to i8
  br label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryE4lockCs1YANDSn9Kib_7git_xet.exit

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryE4lockCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 1, !noalias !116
  %.not.i.i = icmp ne i8 %i.ab, 0
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryENCNvMs9_BZ_BW_3new0ECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.r)
  %i.ac = load i64, ptr %i.n, align 8, !range !6, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !85, !noundef !4 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !86, !noundef !4 ; 4 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryE4lockCs1YANDSn9Kib_7git_xet.exit
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @_RINvMNtCs1YANDSn9Kib_7git_xet6errorsNtB3_11GitXetError8internalINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtB12_5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEEEB5_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noundef nonnull align 8 %i.af, i1 noundef zeroext %i.ai)
  %.sroa.07.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.812.0.copyload = load i8, ptr %.sroa.812.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.07.0.copyload, ptr %i.aj, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.69.0.copyload, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.812.0.copyload, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.667.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %i.g, i64 39, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet.exit

bb.f:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryE4lockCs1YANDSn9Kib_7git_xet.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  invoke void @_RNvMs_NtCsg0kSldJeyDi_4git24repoNtB4_10Repository11find_remote(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26remote6RemoteECs1YANDSn9Kib_7git_xet.exit: ; preds = %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26remote6RemoteECs1YANDSn9Kib_7git_xet.exit128, %bb.g
  %.pn102 = phi { ptr, i32 } [ %i.al, %bb.g ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26remote6RemoteECs1YANDSn9Kib_7git_xet.exit128 ], [ %.pn100, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsg0kSldJeyDi_4git24repo10RepositoryEECs1YANDSn9Kib_7git_xet(ptr nonnull %i.af, i8 %i.ah) #25
          to label %bb.ap unwind label %bb.ak

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg0kSldJeyDi_4git26remote6RemoteECs1YANDSn9Kib_7git_xet.exit

bb.h:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
