Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.02?download=true
inline.NumInlined: 358
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9configure3aqt11build_icons17h94c10d842ccebf96E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @36, i64 noundef 34)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bj, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bj ], [ %i.em, %bb.bh ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ej, i64 noundef 144, i64 noundef 8) #18
  br label %bb.aw

bb.bh:                                            ; preds = %bb.bf
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @37, i64 noundef 32)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.bm ], [ %i.en, %bb.bk ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.r) #16
          to label %bb.bg unwind label %bb.cc

bb.bk:                                            ; preds = %bb.bi
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @38, i64 noundef 30)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.q) #16
          to label %bb.bj unwind label %bb.cc

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3, ptr %i.er, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.ej, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 3, ptr %.sroa.587.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.s, align 8
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h24957f40b8e85b8eE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @11, i64 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %bb.bo unwind label %bb.ax

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.es = load i64, ptr %i.t, align 8, !range !167, !alias.scope !171, !noundef !10
  %i.et = icmp eq i64 %i.es, -9223372036854775803
  br i1 %i.et, label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E.exit71", label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E.exit71" unwind label %bb.ax

"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E.exit71": ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eu = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hd38dcd9586165e74E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @21)
          to label %bb.br unwind label %bb.bq     ; 2 uses

"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit": ; preds = %.body, %bb.bq
  %.pn57 = phi { ptr, i32 } [ %i.ev, %bb.bq ], [ %eh.lpad-body, %.body ]
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24ffc248413dd906E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %common.resume unwind label %bb.cc

bb.bq:                                            ; preds = %bb.br, %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E.exit71"
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit"

bb.br:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$ninja_gen..input..BuildInput$GT$$GT$17h95941964f2582739E.exit71"
  %i.ew = extractvalue { i64, i64 } %i.eu, 0
  %i.ex = extractvalue { i64, i64 } %i.eu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hbba190fa27b603a6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, i64 noundef 1, i64 noundef %i.ew, i64 noundef %i.ex)
          to label %bb.bt unwind label %bb.bq

bb.bs:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i", %bb.bv, %bb.bu
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.by, %bb.bs
  %eh.lpad-body = phi { ptr, i32 } [ %i.ey, %bb.bs ], [ %i.fg, %bb.by ]
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3eeda5b08ada749aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit" unwind label %bb.cc

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.ez = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #18 ; 4 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.bu, label %bb.bv, !prof !130

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 16) #19
          to label %bb.cb unwind label %bb.bs

bb.bv:                                            ; preds = %bb.bt
  store ptr @39, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 25, ptr %i.fb, align 8
  store i64 1, ptr %i.m, align 8, !alias.scope !174
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ez, ptr %i.fc, align 8, !alias.scope !174
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.fd, align 8, !alias.scope !174
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3e4c56e2a230e719E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.bw unwind label %bb.bs

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.fe = load i64, ptr %i.n, align 8, !range !33, !alias.scope !177, !noundef !10
  %i.ff = icmp eq i64 %i.fe, -9223372036854775808
  br i1 %i.ff, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h040d78a81c75c243E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i" unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i": ; preds = %bb.bx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit" unwind label %bb.bs

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit": ; preds = %bb.bw, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr @7, ptr %i.z, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 10, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr @40, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 16, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.fn = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h5179106c156724c1E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @41, i64 noundef 20, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN9configure3aqt18build_themed_icons17h28ab08c21b390850E.exit, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit", %bb.av, %bb.ap
  %.sroa.0.0 = phi ptr [ %i.fn, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit" ], [ %i.cw, %_ZN9configure3aqt18build_themed_icons17h28ab08c21b390850E.exit ], [ %i.dk, %bb.ap ], [ %i.dy, %bb.av ]
  ret ptr %.sroa.0.0

bb.cb:                                            ; preds = %bb.bu
  unreachable

bb.cc:                                            ; preds = %.body, %"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17hb1a9ae4dedb14d2eE.exit", %bb.aw, %bb.bm, %bb.bj
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN9configure3aqt12check_python17hf683dd98dfe43dedE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 11 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %1 = alloca [24 x i8], align 8                  ; 7 uses
  %.sroa.073 = alloca [24 x i8], align 8          ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.j = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.073)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !180
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !range !165, !noalias !180, !noundef !10
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !33, !noalias !180, !noundef !10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.g, !prof !130

bb.d:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.p, align 8, !noalias !180
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.o, i64 %i.q) #19
          to label %.noexc40 unwind label %bb.f

.noexc40:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.r, %bb.f ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 48, i64 noundef 8) #18
  br label %bb.ad

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.p, align 8, !noalias !180, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = icmp ugt i64 %i.o, 9
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.s, ptr noundef nonnull align 1 dereferenceable(10) @52, i64 10, i1 false), !noalias !184
  store i64 %i.o, ptr %1, align 8
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx59, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 10, ptr %.sroa.560.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !185
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc41 unwind label %bb.i

.noexc41:                                         ; preds = %bb.g
  %i.u = load i64, ptr %i.b, align 8, !range !165, !noalias !185, !noundef !10
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !33, !noalias !185, !noundef !10 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.j, !prof !130

bb.h:                                             ; preds = %.noexc41
  %i.z = load i64, ptr %i.y, align 8, !noalias !185
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.x, i64 %i.z) #19
          to label %.noexc42 unwind label %bb.i

.noexc42:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %1) #16
          to label %bb.e unwind label %bb.aa

bb.j:                                             ; preds = %.noexc41
  %i.ab = load ptr, ptr %i.y, align 8, !noalias !185, !nonnull !10, !noundef !10 ; 2 uses
  %i.ac = icmp ugt i64 %i.x, 25
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ab, ptr noundef nonnull align 1 dereferenceable(26) @53, i64 26, i1 false), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.073, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.073, i64 24, i1 false)
  %.sroa.474.0..sroa.052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.x, ptr %.sroa.474.0..sroa.052.0..sroa_idx, align 8
  %.sroa.575.0..sroa.052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.ab, ptr %.sroa.575.0..sroa.052.0..sroa_idx, align 8
  %.sroa.676.0..sroa.052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 26, ptr %.sroa.676.0..sroa.052.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.073)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 1, ptr %i.ad, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98c6837e4dd74476E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.k unwind label %.thread86

.thread86:                                        ; preds = %bb.n, %bb.w, %bb.j, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.k:                                             ; preds = %bb.j
  store i64 -9223372036854775805, ptr %i.h, align 8, !alias.scope !190, !noalias !193
  %i.af = invoke noundef ptr @_ZN9ninja_gen6python13python_format17h20478c36a1ec291cE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @50, i64 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.l unwind label %.thread86  ; 2 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.ag = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #18 ; 9 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %bb.o, !prof !130

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 144) #19
          to label %bb.ab unwind label %.thread86

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 11)
          to label %bb.q unwind label %bb.p

.thread:                                          ; preds = %bb.p, %bb.r
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.r ], [ %i.ai, %bb.p ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 144, i64 noundef 8) #18
  br label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.v, %bb.s
  %.pn31 = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %i.aj, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #16
          to label %.thread unwind label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc48 unwind label %bb.v

.noexc48:                                         ; preds = %bb.t
  %i.ak = load i64, ptr %i.a, align 8, !range !165, !noalias !195, !noundef !10
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !33, !noalias !195, !noundef !10 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.al, label %bb.u, label %bb.w, !prof !130

bb.u:                                             ; preds = %.noexc48
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !195
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.an, i64 %i.ap) #19
          to label %.noexc49 unwind label %bb.v

.noexc49:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #16
          to label %bb.r unwind label %bb.aa

bb.w:                                             ; preds = %.noexc48
  %i.ar = load ptr, ptr %i.ao, align 8, !noalias !195, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = icmp ugt i64 %i.an, 10
  call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ar, ptr noundef nonnull align 1 dereferenceable(11) @60, i64 11, i1 false), !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i64 %i.an, ptr %i.au, align 8
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store ptr %i.ar, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store i64 11, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  store i64 -9223372036854775808, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr @61, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 8, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @58, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 4, ptr %i.ay, align 8
  store i64 -9223372036854775805, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ag, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 3, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.az = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h3c0321af7a141899E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @62, i64 noundef 16, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %bb.x unwind label %.thread86  ; 2 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not34 = icmp eq ptr %i.az, null
  br i1 %.not34, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.ba = call noundef ptr @_ZN9ninja_gen6python16check_complexity17h551311facff1cfbdE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @50, i64 noundef 2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @50, i64 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ac
  %.sroa.0.0 = phi ptr [ %i.ba, %bb.y ], [ %.sroa.0.2, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret ptr %.sroa.0.0

bb.aa:                                            ; preds = %bb.ae, %bb.v, %bb.r, %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.ab:                                            ; preds = %bb.n
  unreachable

bb.ac:                                            ; preds = %bb.l, %bb.x
  %.sroa.0.2 = phi ptr [ %i.af, %bb.l ], [ %i.az, %bb.x ]
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
  br label %bb.z

bb.ad:                                            ; preds = %bb.e, %bb.ae
  %.pn36.pn = phi { ptr, i32 } [ %.pn3685, %bb.ae ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %.pn36.pn

bb.ae:                                            ; preds = %.thread86, %.thread
  %.pn3685 = phi { ptr, i32 } [ %.pn31.pn, %.thread ], [ %lpad.thr_comm, %.thread86 ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #16
          to label %bb.ad unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN9configure3aqt14copy_sveltekit17h4add919bd7e1234aE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.c = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 17)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775805, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_0
