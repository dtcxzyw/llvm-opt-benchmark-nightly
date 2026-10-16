Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.11?download=true
inline.NumInlined: 700
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs5en5qRIBftj_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE10to_rfc3339Cs9SMuO7kbZ2K_7git_xet:bb.a
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %bb.l
  %i.ay = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !884, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 45, ptr %i.az, align 1, !noalias !880
  %i.ba = add nuw i64 %i.aw, 1
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !884
  %i.bb = trunc i32 %i.aj to i8
  %i.bc = add i8 %i.aq, %i.bb
  %i.bd = lshr i8 %i.bc, 1
  %i.be = and i8 %i.bd, 31
  %i.bf = invoke noundef zeroext i1 @_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.be)
          to label %.noexc9 unwind label %bb.c

.noexc9:                                          ; preds = %.noexc8
  br i1 %i.bf, label %_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc9
  %i.bg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !885, !noundef !6 ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  call void @llvm.assume(i1 %i.bh)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc10 unwind label %bb.c

.noexc10:                                         ; preds = %bb.m
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !885, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 84, ptr %i.bj, align 1, !noalias !880
  %i.bk = add nuw i64 %i.bg, 1
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !885
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !880, !noundef !6 ; 3 uses
  %i.bn = urem i32 %i.bm, 60
  %i.bo = udiv i32 %i.bm, 60
  %i.bp = udiv i32 %i.bm, 3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !881
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !880, !noundef !6 ; 3 uses
  %i.bs = icmp ugt i32 %i.br, 999999999           ; 2 uses
  %i.bt = add i32 %i.br, -1000000000
  %storemerge.i = select i1 %i.bs, i32 %i.bt, i32 %i.br ; 6 uses
  %i.bu = zext i1 %i.bs to i32
  %.sroa.04.0.i = add nuw nsw i32 %i.bn, %i.bu
  store i32 %storemerge.i, ptr %i.h, align 4, !noalias !881
  %i.bv = trunc i32 %i.bp to i8
  %i.bw = invoke noundef zeroext i1 @_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.bv)
          to label %.noexc11 unwind label %bb.c

.noexc11:                                         ; preds = %.noexc10
  br i1 %i.bw, label %bb.w, label %bb.n

bb.n:                                             ; preds = %.noexc11
  %i.bx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !886, !noundef !6 ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %bb.n
  %i.bz = urem i32 %i.bo, 60
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !886, !nonnull !6, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  store i8 58, ptr %i.cb, align 1, !noalias !880
  %i.cc = add nuw i64 %i.bx, 1
  store i64 %i.cc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !886
  %i.cd = trunc nuw nsw i32 %i.bz to i8
  %i.ce = invoke noundef zeroext i1 @_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.cd)
          to label %.noexc13 unwind label %bb.c

.noexc13:                                         ; preds = %.noexc12
  br i1 %i.ce, label %bb.w, label %bb.o

bb.o:                                             ; preds = %.noexc13
  %i.cf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !887, !noundef !6 ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 1)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %bb.o
  %i.ch = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !887, !nonnull !6, !noundef !6
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 58, ptr %i.ci, align 1, !noalias !880
  %i.cj = add nuw i64 %i.cf, 1
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !887
  %i.ck = trunc nuw nsw i32 %.sroa.04.0.i to i8
  %i.cl = invoke noundef zeroext i1 @_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i8 noundef %i.ck)
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %.noexc14
  br i1 %i.cl, label %bb.w, label %bb.q

bb.p:                                             ; preds = %.noexc19, %.noexc18, %.noexc17, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !881
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.b, align 4, !noalias !881
  %i.cm = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCs5en5qRIBftj_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.c

bb.q:                                             ; preds = %.noexc15
  %i.cn = icmp eq i32 %storemerge.i, 0
  br i1 %i.cn, label %bb.p, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = urem i32 %storemerge.i, 1000000
  %i.cp = udiv i32 %storemerge.i, 1000000
  %i.cq = icmp eq i32 %i.co, 0
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !881
  store i32 %i.cp, ptr %i.g, align 4, !noalias !881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !881
  store ptr %i.g, ptr %i.f, align 8, !noalias !881
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !881
  %i.cr = invoke noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @18, ptr noundef nonnull %i.f)
          to label %.noexc17 unwind label %bb.c

.noexc17:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !881
  br i1 %i.cr, label %bb.w, label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.cs = urem i32 %storemerge.i, 1000
  %i.ct = udiv i32 %storemerge.i, 1000
  %i.cu = icmp eq i32 %i.cs, 0
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !881
  store i32 %i.ct, ptr %i.e, align 4, !noalias !881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !881
  store ptr %i.e, ptr %i.d, align 8, !noalias !881
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !881
  %i.cv = invoke noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @19, ptr noundef nonnull %i.d)
          to label %.noexc18 unwind label %bb.c

.noexc18:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !881
  br i1 %i.cv, label %bb.w, label %bb.p

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !881
  store ptr %i.h, ptr %i.c, align 8, !noalias !881
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !881
  %i.cw = invoke noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull @20, ptr noundef nonnull %i.c)
          to label %.noexc19 unwind label %bb.c

.noexc19:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !881
  br i1 %i.cw, label %bb.w, label %bb.p

bb.w:                                             ; preds = %.noexc19, %.noexc18, %.noexc17, %.noexc15, %.noexc13, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !881
  br label %_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.thread

_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.thread: ; preds = %.noexc, %.noexc3, %.noexc5, %.noexc6, %.noexc9, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !881
  br label %bb.x

_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !881
  br i1 %i.cm, label %bb.x, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9SMuO7kbZ2K_7git_xet.exit, !prof !888

bb.x:                                             ; preds = %_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.thread, %_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 52, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #26
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %bb.x
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RINvNtNtCs5en5qRIBftj_6chrono6format10formatting13write_rfc3339NtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.y:                                             ; preds = %bb.c
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.z:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB15_NtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtNtB2c_6marker4SendNtB3J_4SyncNtB31_10UnwindSafeEL_EE8get_slowCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !897, !alias.scope !898, !noundef !6
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.u, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCs9SMuO7kbZ2K_7git_xet.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #26
  unreachable

4:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #24
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #25
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCs9SMuO7kbZ2K_7git_xet.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %14
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !5, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %12, align 8, !nonnull !6, !align !9, !noundef !6 ; 9 uses
  %i.ab = load i8, ptr %13, align 8, !range !10, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !14

.noexc19:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit, !prof !8

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !18, !noundef !6
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !6, !align !9, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.aw, align 8
  store i64 0, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ba = trunc nuw i8 %i.ab to i1
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit22, !prof !8

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !899
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #29, !noalias !899 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !8

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #24
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #25
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !900 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !12, !alias.scope !900, !noundef !6 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bq = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !900
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23, !noalias !900
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !900
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !900
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit32, !prof !8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !900
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !901
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #29, !noalias !901 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %4, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCs9SMuO7kbZ2K_7git_xet.exit9, !prof !8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB15_NtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtNtB2c_6marker4SendNtB3J_4SyncNtB31_10UnwindSafeEL_EE9put_valueCs9SMuO7kbZ2K_7git_xet(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB29_NtNtNtB3h_5panic11unwind_safe13RefUnwindSafeNtNtB3h_6marker4SendNtB4O_4SyncNtB46_10UnwindSafeEL_EE9put_value0jECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @63)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #24
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %bb.ch, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.phi, %bb.ch ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.9
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #29
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26
  %.lcssa = phi i64 [ %i.fb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.8 ], [ %i.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26 ], [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.1 ], [ %i.bv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.2 ], [ %i.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.3 ], [ %i.cx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.4 ], [ %i.dl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.5 ], [ %i.dz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.6 ], [ %i.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.7 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #24
          to label %bb.d unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !6, !align !9, !noundef !6 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !10, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !925, !noundef !6 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !18, !alias.scope !925, !noundef !6
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !926

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs9SMuO7kbZ2K_7git_xet(ptr nonnull align 8 %1) #25
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet(ptr nonnull %i.p, i8 %i.q) #25
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !925, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !926
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !925
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !14

.noexc14:                                         ; preds = %bb.n
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.ah, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit, !prof !8

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit

bb.q:                                             ; preds = %bb.ch, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.r:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !927 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !12, !alias.scope !927, !noundef !6 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !927
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.u
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.al monotonic, align 1, !noalias !927
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19: ; preds = %bb.v, %.noexc24, %bb.t, %bb.s
  %i.ar = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !927
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit.sink.split.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26, !prof !8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit.sink.split.i20: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26 unwind label %.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs9SMuO7kbZ2K_7git_xet.exit.sink.split.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %bb.w, label %bb.g

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.aw)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %.val.i16.1 = load ptr, ptr %i.j, align 8, !alias.scope !928 ; 4 uses
  %.val3.i17.1 = load i8, ptr %i.k, align 8, !range !12, !alias.scope !928, !noundef !6 ; 2 uses
  %.not.i.i18.1 = icmp eq i8 %.val3.i17.1, 2
  br i1 %.not.i.i18.1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs9SMuO7kbZ2K_7git_xet.exit26.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.1) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i16.1, i64 4
end_hunk_0
