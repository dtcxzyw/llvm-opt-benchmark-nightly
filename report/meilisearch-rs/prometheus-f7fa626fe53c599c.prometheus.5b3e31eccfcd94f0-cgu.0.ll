Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus7encoder4text12write_sample17h92da5e7bfc8529bcE:bb.a
bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.72.0.copyload, i64 noundef %.sroa.01.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1213
  br label %common.resume

bb.ar:                                            ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h24cced0adc2565d5E.exit"
  %.not65 = icmp eq ptr %i.bx, null
  br i1 %.not65, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %.sroa.447.0..sroa_idx, align 8
  %i.ca = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.ca, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit82", label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.72.0.copyload, i64 noundef %.sroa.01.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1214
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit82"

bb.au:                                            ; preds = %bb.ar
  %i.cb = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.cb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit85", label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.72.0.copyload, i64 noundef %.sroa.01.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1215
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit85"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit85": ; preds = %bb.au, %bb.av
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !6 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit94", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit85"
  %i.cf = call noundef ptr %.24.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 1) ; 2 uses
  %.not72 = icmp eq ptr %i.cf, null
  br i1 %.not72, label %bb.bi, label %bb.bh

bb.ax:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit85"
  %i.cg = call noundef ptr %.24.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @76, i64 noundef 1) ; 2 uses
  %.not67 = icmp eq ptr %i.cg, null
  br i1 %.not67, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %.sroa.450.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit82"

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN51_$LT$i64$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h43f0aca62bb23cf4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 %i.cd)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !6
  %i.cl = invoke noundef ptr %.24.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %i.ck)
          to label %bb.bc unwind label %bb.ba     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %.val.i86 = load i64, ptr %i.f, align 8, !alias.scope !1216 ; 2 uses
  %i.cn = icmp eq i64 %.val.i86, 0
  br i1 %i.cn, label %common.resume, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef %.val.i86, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1216
  br label %common.resume

bb.bc:                                            ; preds = %bb.az
  %.not70 = icmp eq ptr %i.cl, null
  br i1 %.not70, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %.val.i89 = load i64, ptr %i.f, align 8, !alias.scope !1217 ; 2 uses
  %i.co = icmp eq i64 %.val.i89, 0
  br i1 %i.co, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit91", label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef %.val.i89, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1217
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit91"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit91": ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit82"

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %.val.i92 = load i64, ptr %i.f, align 8, !alias.scope !1218 ; 2 uses
  %i.cp = icmp eq i64 %.val.i92, 0
  br i1 %i.cp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit94", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef %.val.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1218
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit94"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit94": ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aw

bb.bh:                                            ; preds = %bb.aw
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %.sroa.456.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit82"

bb.bi:                                            ; preds = %bb.aw
  store i64 -9223372036854775804, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit82"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10prometheus7encoder4text13escape_string17h9ac21b1c82b6a109E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 13 uses
  %i.b = alloca [16 x i8], align 4                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 7 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic ptr, ptr @_ZN6memchr4arch6x86_646memchr11memchr2_raw2FN17h91d616431dad7aeaE monotonic, align 8, !noalias !1299, !nonnull !6, !noundef !6
  %i.f = tail call { i64, ptr } %i.e(i8 noundef 92, i8 noundef 10, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.d), !noalias !1300, !inline_history !1223 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = load atomic ptr, ptr @_ZN6memchr4arch6x86_646memchr11memchr3_raw2FN17h7de5b2265a84ffbeE monotonic, align 8, !noalias !1301, !nonnull !6, !noundef !6
  %i.j = tail call { i64, ptr } %i.i(i8 noundef 92, i8 noundef 10, i8 noundef 34, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.d), !noalias !1302, !inline_history !1226 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %i.m = extractvalue { i64, ptr } %.sink.i, 1    ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 16 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = shl i64 %2, 1                            ; 6 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.d
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1303
  %i.u = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 1) #42, !noalias !1303 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit"

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #45
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit": ; preds = %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.u, %bb.e ] ; 2 uses
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 18 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.w = icmp eq ptr %i.m, %1                     ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit"
  %.not.i = icmp ult i64 %i.p, %2
  br i1 %.not.i, label %bb.h, label %.split.i

.split.i:                                         ; preds = %bb.g
  %i.x = icmp eq i64 %i.p, %2
  br i1 %i.x, label %bb.k, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !1304, !noundef !6
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.k, label %.invoke

bb.i:                                             ; preds = %bb.b, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ac, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.w

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %4, %bb.at, %bb.ab, %bb.ax, %bb.ay, %.invoke, %bb.v, %bb.l
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !1305 ; 2 uses
  %i.ad = icmp eq i64 %.val.i, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1305, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1305
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

bb.k:                                             ; preds = %bb.h, %.split.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.ae = icmp samesign ugt i64 %i.p, %i.r
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.p, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1308
  %.pre = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1308
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  %i.af = phi ptr [ %.sroa.10.0.i, %bb.k ], [ %.pre, %.noexc ]
  %i.ag = phi i64 [ 0, %bb.k ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %1, i64 %i.p, i1 false), !noalias !1308
  %i.aj = add nuw i64 %i.ag, %i.p                 ; 2 uses
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1308
  br i1 %i.w, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i19 = icmp ult i64 %i.p, %2
  br i1 %.not.i19, label %bb.o, label %.split.i20

.split.i20:                                       ; preds = %bb.n
  %i.ak = icmp eq i64 %i.p, %2
  br i1 %i.ak, label %bb.p, label %.invoke

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1309, !noundef !6
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o, %.split.i20, %bb.m
  %i.ao = icmp eq ptr %i.m, %i.d
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.sroa.5.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.q

.invoke:                                          ; preds = %.split.i20, %bb.o, %.split.i, %bb.h
  %i.ax = phi i64 [ 0, %.split.i ], [ 0, %bb.h ], [ %i.p, %bb.o ], [ %i.p, %.split.i20 ]
  %i.ay = phi i64 [ %i.p, %.split.i ], [ %i.p, %bb.h ], [ %2, %bb.o ], [ %2, %.split.i20 ]
  %i.az = phi ptr [ @92, %.split.i ], [ @92, %bb.h ], [ @93, %bb.o ], [ @93, %.split.i20 ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ax, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az) #45
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %.lr.ph, %bb.av
  %.sroa.0.0107 = phi ptr [ %i.ap, %.lr.ph ], [ %.sroa.0.1.ph, %bb.av ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 1 ; 3 uses
  %i.bb = load i8, ptr %.sroa.0.0107, align 1, !noalias !1310, !noundef !6 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i": ; preds = %bb.q
  %i.bd = and i8 %i.bb, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = icmp ne ptr %i.ba, %i.d
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 2 ; 3 uses
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !1310, !noundef !6
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i", label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.s

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i"
  %i.bo = icmp ne ptr %i.bg, %i.d
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 3 ; 3 uses
  %i.bq = load i8, ptr %i.bg, align 1, !noalias !1310, !noundef !6
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i", label %bb.s

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i"
  %i.by = icmp ne ptr %i.bp, %i.d
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 4
  %i.ca = load i8, ptr %i.bp, align 1, !noalias !1310, !noundef !6
  %i.cb = shl nuw nsw i32 %i.be, 18
  %i.cc = and i32 %i.cb, 1835008
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = and i8 %i.ca, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i"
  %.sroa.0.1.ph = phi ptr [ %i.bg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i" ], [ %i.bp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i" ], [ %i.bz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i" ], [ %i.ba, %bb.r ] ; 2 uses
  %.sroa.4.0.i22.ph = phi i32 [ %i.bl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i" ], [ %i.bw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i" ], [ %i.ch, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i" ], [ %i.bn, %bb.r ] ; 24 uses
  %i.ci = icmp samesign ult i32 %.sroa.4.0.i22.ph, 1114112
  tail call void @llvm.assume(i1 %i.ci)
  switch i32 %.sroa.4.0.i22.ph, label %bb.x [
    i32 92, label %bb.ai
    i32 10, label %bb.ai
    i32 34, label %bb.ar
  ]

._crit_edge.loopexit:                             ; preds = %bb.av
  %.pre118 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1311
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.cj = phi i64 [ %.pre118, %._crit_edge.loopexit ], [ %i.aj, %bb.p ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.ck = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1311, !noundef !6 ; 3 uses
  %i.cl = icmp ugt i64 %i.ck, %i.cj
  br i1 %i.cl, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit"

bb.t:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %.val22.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1314, !nonnull !6, !noundef !6 ; 2 uses
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", label %bb.u

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1314
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i"

bb.u:                                             ; preds = %bb.t
  %i.cn = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.val22.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.cj) #42, !noalias !1314 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.v, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i": ; preds = %bb.u, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  %storemerge.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %i.cn, %bb.u ]
  store ptr %storemerge.i.i.i, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1314
  store i64 %i.cj, ptr %i.c, align 8, !alias.scope !1314
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit"

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #45
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.v
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i", %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit", %bb.i
  ret void

bb.x:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.cp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1315, !noundef !6 ; 4 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ult i32 %.sroa.4.0.i22.ph, 128
  br i1 %i.cr, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_ZN10prometheus7encoder4text13escape_string17h9ac21b1c82b6a109E:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.ed = add nsw i32 %.sroa.4.0.i22.ph, -32
  %or.cond.i = icmp ult i32 %i.ed, 95
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.ak:                                            ; preds = %bb.ai
  store i8 92, ptr %i.b, align 4, !alias.scope !1317
  store i8 114, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 0, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.al:                                            ; preds = %bb.ai
  store i8 92, ptr %i.b, align 4, !alias.scope !1317
  store i8 110, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 0, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.am:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.ee = trunc nuw nsw i32 %.sroa.4.0.i22.ph to i8
  store i8 92, ptr %i.b, align 4, !alias.scope !1317
  store i8 %i.ee, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 0, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.an:                                            ; preds = %bb.aj
  %i.ef = or i32 %.sroa.4.0.i22.ph, 1
  %i.eg = tail call range(i32 11, 32) i32 @llvm.ctlz.i32(i32 %i.ef, i1 true)
  %i.eh = lshr i32 %i.eg, 2
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ej = add nsw i64 %i.ei, -2                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 3, i1 false), !noalias !1317
  %i.ek = lshr i32 %.sroa.4.0.i22.ph, 20
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @186, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.en, ptr %i.aq, align 1, !noalias !1317
  %i.eo = lshr i32 %.sroa.4.0.i22.ph, 16
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @186, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.er, ptr %i.ar, align 1, !noalias !1317
  %i.es = lshr i32 %.sroa.4.0.i22.ph, 12
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @186, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.ev, ptr %i.as, align 1, !noalias !1317
  %i.ew = lshr i32 %.sroa.4.0.i22.ph, 8
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @186, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.ez, ptr %i.at, align 1, !noalias !1317
  %i.fa = lshr i32 %.sroa.4.0.i22.ph, 4
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @186, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.fd, ptr %i.au, align 1, !noalias !1317
  %i.fe = and i32 %.sroa.4.0.i22.ph, 15
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @186, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.fh, ptr %i.av, align 1, !noalias !1317
  store i8 125, ptr %i.aw, align 1, !noalias !1317
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ej
  store i8 92, ptr %i.fi, align 1, !noalias !1317
  %i.fj = getelementptr i8, ptr %i.a, i64 %i.ei   ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  store i8 117, ptr %i.fk, align 1, !noalias !1317
  store i8 123, ptr %i.fj, align 1, !noalias !1317
  %i.fl = trunc nuw nsw i64 %i.ej to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(10) %i.a, i64 10, i1 false)
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj
  %i.fm = trunc nuw nsw i32 %.sroa.4.0.i22.ph to i8 ; 2 uses
  %i.fn = zext nneg i32 %.sroa.4.0.i22.ph to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @187, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !1320, !noundef !6 ; 2 uses
  %i.fq = and i8 %i.fp, 127                       ; 3 uses
  %i.fr = icmp sgt i8 %i.fp, -1
  br i1 %i.fr, label %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = icmp eq i8 %i.fq, 0
  br i1 %i.fs, label %bb.aq, label %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ft = and i8 %i.fm, 15
  %i.fu = zext nneg i8 %i.ft to i64
  %i.fv = lshr i8 %i.fm, 4
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @186, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !range !1318, !noalias !1321, !noundef !6
  %i.fz = getelementptr inbounds nuw i8, ptr @186, i64 %i.fu
  %i.ga = load i8, ptr %i.fz, align 1, !range !1318, !noalias !1321, !noundef !6
  %.sroa.9.2.insert.ext.i = zext nneg i8 %i.fy to i64
  %.sroa.9.3.insert.ext.i = zext nneg i8 %i.ga to i64
  %.sroa.9.3.insert.shift.i = shl nuw nsw i64 %.sroa.9.3.insert.ext.i, 8
  %.sroa.9.3.insert.insert.i = or disjoint i64 %.sroa.9.3.insert.shift.i, %.sroa.9.2.insert.ext.i
  br label %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i

_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.049.0.i = phi i8 [ %i.fq, %bb.ao ], [ 92, %bb.aq ], [ 92, %bb.ap ]
  %.sroa.9.0.i = phi i64 [ 0, %bb.ao ], [ %.sroa.9.3.insert.insert.i, %bb.aq ], [ 0, %bb.ap ]
  %.sroa.17.0.i = phi i8 [ 1, %bb.ao ], [ 4, %bb.aq ], [ 2, %bb.ap ]
  %.sroa.650.0.i = phi i8 [ 0, %bb.ao ], [ 120, %bb.aq ], [ %i.fq, %bb.ap ]
  store i8 %.sroa.049.0.i, ptr %i.b, align 4, !alias.scope !1317
  store i8 %.sroa.650.0.i, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 %.sroa.9.0.i, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.ar:                                            ; preds = %bb.s
  br i1 %3, label %bb.aw, label %.thread101

.thread101:                                       ; preds = %bb.ar
  %i.gb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1322, !noundef !6 ; 2 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  tail call void @llvm.assume(i1 %i.gc)
  br label %bb.aa

bb.as:                                            ; preds = %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.gd = phi i8 [ %.sroa.17.0.i, %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i ], [ 2, %bb.ak ], [ 2, %bb.al ], [ 2, %bb.am ], [ 10, %bb.an ] ; 3 uses
  %i.ge = phi i8 [ 0, %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i ], [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ], [ %i.fl, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.gf = sub nsw i8 %i.gd, %i.ge
  %i.gg = zext i8 %i.gf to i64                    ; 2 uses
  %i.gh = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1325, !noundef !6 ; 2 uses
  %i.gi = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1325, !noundef !6
  %i.gj = sub i64 %i.gi, %i.gh
  %i.gk = icmp ult i64 %i.gj, %i.gg
  br i1 %i.gk, label %bb.at, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27", !prof !11

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gh, i64 noundef %i.gg, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27": ; preds = %bb.at, %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.gl = icmp samesign ult i8 %i.ge, %i.gd
  br i1 %i.gl, label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i", label %"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit"

"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27"
  %i.gm = zext nneg i8 %i.ge to i64
  %wide.trip.count.i.i.i = zext nneg i8 %i.gd to i64
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1330
  %.pre1.i.i = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1331
  br label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"

"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i", %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i"
  %i.gn = phi i64 [ %.pre1.i.i, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i" ], [ %i.gu, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i" ] ; 3 uses
  %i.go = phi i64 [ %.pre.i.i.i, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i" ], [ %i.gz, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i" ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ %i.gm, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i" ], [ %indvars.iv.next.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i" ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.i.i.i, 10
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gr = load i8, ptr %i.gq, align 1, !range !1318, !alias.scope !1332, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.gs = icmp sgt i64 %i.go, -1
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp eq i64 %i.gn, %i.go
  br i1 %i.gt, label %bb.au, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i", !prof !11

bb.au:                                            ; preds = %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gn, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.au
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1330
  %.pre.i.i28 = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1331
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i": ; preds = %.noexc30, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"
  %i.gu = phi i64 [ %i.gn, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i" ], [ %.pre.i.i28, %.noexc30 ]
  %i.gv = phi i64 [ %i.go, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i" ], [ %.pre.i.i.i.i.i.i, %.noexc30 ] ; 2 uses
  %i.gw = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1330, !nonnull !6, !noundef !6
  %i.gx = icmp sgt i64 %i.gv, -1
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv
  store i8 %i.gr, ptr %i.gy, align 1, !noalias !1334
  %i.gz = add nuw i64 %i.go, 1                    ; 2 uses
  store i64 %i.gz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1330
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit", label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"

"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.av

bb.av:                                            ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76.1", %"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit"
  %i.ha = icmp eq ptr %.sroa.0.1.ph, %i.d
  br i1 %i.ha, label %._crit_edge.loopexit, label %bb.q

bb.aw:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.hb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1336, !noundef !6 ; 3 uses
  %i.hc = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1336, !noundef !6 ; 2 uses
  %i.hd = sub i64 %i.hc, %i.hb
  %i.he = icmp ult i64 %i.hd, 2
  br i1 %i.he, label %4, label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69", !prof !11

4:                                                ; preds = %bb.aw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hb, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge": ; preds = %4
  %.pre.i.i.i71.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1337
  %.pre1.i.i72.pre = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1338
  br label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69"

"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69": ; preds = %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge", %bb.aw
  %.pre1.i.i72 = phi i64 [ %.pre1.i.i72.pre, %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge" ], [ %i.hc, %bb.aw ] ; 3 uses
  %.pre.i.i.i71 = phi i64 [ %.pre.i.i.i71.pre, %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge" ], [ %i.hb, %bb.aw ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.hf = icmp sgt i64 %.pre.i.i.i71, -1
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp eq i64 %.pre1.i.i72, %.pre.i.i.i71
  br i1 %i.hg, label %bb.ax, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76", !prof !11

bb.ax:                                            ; preds = %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.pre1.i.i72, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.ax
  %.pre.i.i.i.i.i.i78 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1337
  %.pre.i.i79 = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1338
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76": ; preds = %.noexc81, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69"
  %5 = phi i64 [ %.pre1.i.i72, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69" ], [ %.pre.i.i79, %.noexc81 ] ; 2 uses
  %6 = phi i64 [ %.pre.i.i.i71, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69" ], [ %.pre.i.i.i.i.i.i78, %.noexc81 ] ; 2 uses
  %i.hh = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1337, !nonnull !6, !noundef !6 ; 2 uses
  %i.hi = icmp sgt i64 %6, -1
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %6
  store i8 92, ptr %i.hj, align 1, !noalias !1342
  %i.hk = add nuw nsw i64 %.pre.i.i.i71, 1        ; 3 uses
  store i64 %i.hk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.hl = icmp eq i64 %5, %i.hk
  br i1 %i.hl, label %bb.ay, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76.1", !prof !11

bb.ay:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %5, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc81.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81.1:                                       ; preds = %bb.ay
  %.pre.i.i.i.i.i.i78.1 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1344
  %.pre117 = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1344
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76.1"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76.1": ; preds = %.noexc81.1, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76"
  %i.hm = phi ptr [ %i.hh, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76" ], [ %.pre117, %.noexc81.1 ]
  %i.hn = phi i64 [ %i.hk, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76" ], [ %.pre.i.i.i.i.i.i78.1, %.noexc81.1 ] ; 2 uses
  %i.ho = icmp sgt i64 %i.hn, -1
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  store i8 34, ptr %i.hp, align 1, !noalias !1345
  %i.hq = add nuw i64 %.pre.i.i.i71, 2
  store i64 %i.hq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1344
  br label %bb.av

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit": ; preds = %bb.j, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp147
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus7metrics4Opts12const_labels17h447861ee3d0804abE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 168)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(168) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h75607476e5bbcd71E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN10prometheus7metrics4Opts15variable_labels17h271267e8cc564eb2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(168) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !1352, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !1352, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.f = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1355, !noalias !1352 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1355, !noalias !1352, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1356
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = icmp eq i64 %i.f, %.val1.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %i.a, align 8, !range !10, !alias.scope !1352, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h860b387b49ad8ff8E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i"
  %i.k = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1352
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h860b387b49ad8ff8E.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h860b387b49ad8ff8E.exit": ; preds = %bb.c, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10prometheus7metrics4Opts3new17h2bdaa1e24b08d9f4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 15, 30) %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef range(i64 29, 55) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1397
  %i.a = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 0, 55) %2, i64 noundef range(i64 1, 9) 1) #42, !noalias !1397 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 0, 55) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 0, 55) %2, i1 false), !noalias !1398
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1399
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 0, 55) %4, i64 noundef range(i64 1, 9) 1) #42, !noalias !1399 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 range(i64 0, 55) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
          to label %.noexc21 unwind label %bb.d

.noexc21:                                         ; preds = %bb.c
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit25": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit29", %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit29" ], [ %i.e, %bb.d ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1400
  resume { ptr, i32 } %.pn

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit25"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 range(i64 0, 55) %4, i1 false), !noalias !1401
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !23, !noalias !1402, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i", !prof !14

._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i: ; preds = %bb.e
  %.pre.i.i = load i64, ptr %i.f, align 8, !noalias !1403
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !1403
  br label %bb.f

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i": ; preds = %bb.e
  %i.j = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc26 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit29" ; 2 uses

.noexc26:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i"
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !1404
  store i8 1, ptr %i.g, align 8, !noalias !1404
  br label %bb.f

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit29": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E.exit.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1405
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit25"

bb.f:                                             ; preds = %.noexc26, %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i
  %.pre-phi55 = phi i64 [ %i.l, %.noexc26 ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.k, %.noexc26 ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E.exit_crit_edge.i.i ] ; 2 uses
  %i.o = add i64 %.pre-phi, 1
  store i64 %i.o, ptr %i.f, align 8, !noalias !1403
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx32, align 8
  %.sroa.6.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.538.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx34, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.538.0..sroa_idx39, align 8
  %.sroa.641.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.641.0..sroa_idx42, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.p, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.a, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.q, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.c, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %4, ptr %.sroa.748.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.pre-phi, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.pre-phi55, ptr %.sroa.58.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus7metrics4Opts7fq_name17h1a7c5978b544aaa3E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_1
