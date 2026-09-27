Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3gix6config4tree6traits3Key9full_name17hf2319652f38d8990E:bb.a
  %i.an = extractvalue { ptr, i64 } %i.aj, 0
  %i.ao = extractvalue { ptr, i64 } %i.aj, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42879)
  %i.ap = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42880, !noalias !42881, !noundef !41 ; 3 uses
  %i.aq = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42880, !noalias !42881, !noundef !41 ; 2 uses
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = icmp ugt i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.u, label %bb.v, !prof !44

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ap, i64 noundef %i.ao, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

.noexc:                                           ; preds = %bb.u
  %.pre.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42882, !noalias !42881
  %.pre = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42883, !noalias !42884
  br label %bb.v

bb.v:                                             ; preds = %.noexc, %bb.t
  %i.at = phi i64 [ %i.aq, %bb.t ], [ %.pre, %.noexc ]
  %i.au = phi i64 [ %i.ap, %bb.t ], [ %.pre.i.i.i, %.noexc ] ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42882, !noalias !42881, !nonnull !41, !noundef !41 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.an, i64 %i.ao, i1 false), !noalias !42882
  %i.ay = add i64 %i.au, %i.ao                    ; 4 uses
  store i64 %i.ay, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42882, !noalias !42881
  %i.az = icmp eq i64 %i.ay, %i.at
  br i1 %i.az, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit"

bb.w:                                             ; preds = %bb.v
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @961)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit_crit_edge" unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit_crit_edge": ; preds = %bb.w
  %.pre64 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42883, !noalias !42884
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit_crit_edge", %bb.v
  %i.ba = phi ptr [ %.pre64, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit_crit_edge" ], [ %i.aw, %bb.v ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 46, ptr %i.bb, align 1
  %i.bc = add i64 %i.ay, 1
  store i64 %i.bc, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42883, !noalias !42884
  br label %bb.s

bb.x:                                             ; preds = %bb.s
  %i.bd = extractvalue { ptr, i64 } %i.am, 0
  %i.be = extractvalue { ptr, i64 } %i.am, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42885)
  call void @llvm.experimental.noalias.scope.decl(metadata !42886)
  call void @llvm.experimental.noalias.scope.decl(metadata !42887)
  %i.bf = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42888, !noalias !42889, !noundef !41 ; 3 uses
  %i.bg = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42888, !noalias !42889, !noundef !41
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = icmp ugt i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.y, label %bb.z, !prof !44

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bf, i64 noundef %i.be, i64 noundef 1, i64 noundef 1)
          to label %.noexc46 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

.noexc46:                                         ; preds = %bb.y
  %.pre.i.i.i45 = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42890, !noalias !42889
  br label %bb.z

bb.z:                                             ; preds = %.noexc46, %bb.x
  %i.bj = phi i64 [ %i.bf, %bb.x ], [ %.pre.i.i.i45, %.noexc46 ] ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42890, !noalias !42889, !nonnull !41, !noundef !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bd, i64 %i.be, i1 false), !noalias !42890
  %i.bn = add i64 %i.bj, %i.be                    ; 4 uses
  store i64 %i.bn, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42890, !noalias !42889
  %i.bo = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42891, !noalias !42892, !noundef !41
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @962)
          to label %bb.ab unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42891, !noalias !42892, !nonnull !41, !noundef !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 46, ptr %i.br, align 1
  %i.bs = add i64 %i.bn, 1                        ; 5 uses
  store i64 %i.bs, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42891, !noalias !42892
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !42893)
  call void @llvm.experimental.noalias.scope.decl(metadata !42894)
  call void @llvm.experimental.noalias.scope.decl(metadata !42895)
  %i.bt = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42896, !noalias !42897, !noundef !41
  %i.bu = sub i64 %i.bt, %i.bs
  %i.bv = icmp ugt i64 %3, %i.bu
  br i1 %i.bv, label %bb.ad, label %bb.ae, !prof !44

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bs, i64 noundef %3, i64 noundef 1, i64 noundef 1)
          to label %.noexc51 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

.noexc51:                                         ; preds = %bb.ad
  %.pre.i.i.i50 = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42898, !noalias !42897
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc51, %bb.ac
  %i.bw = phi i64 [ %i.bs, %bb.ac ], [ %.pre.i.i.i50, %.noexc51 ] ; 3 uses
  %i.bx = icmp sgt i64 %i.bw, -1
  call void @llvm.assume(i1 %i.bx)
  %i.by = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42898, !noalias !42897, !nonnull !41, !noundef !41
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !42898
  %i.ca = add i64 %i.bw, %3                       ; 4 uses
  store i64 %i.ca, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42898, !noalias !42897
  %i.cb = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42899, !noalias !42900, !noundef !41
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit53"

bb.af:                                            ; preds = %bb.ae
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @963)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit53" unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit53": ; preds = %bb.af, %bb.ae
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42899, !noalias !42900, !nonnull !41, !noundef !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  store i8 46, ptr %i.ce, align 1
  %i.cf = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.cf, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42899, !noalias !42900
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit53"
  %i.cg = phi i64 [ %i.bs, %bb.ab ], [ %i.cf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h5eaf576251aafcd1E.exit53" ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !42901, !nonnull !41, !align !46, !noundef !41
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !42901, !noundef !41 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42902)
  call void @llvm.experimental.noalias.scope.decl(metadata !42903)
  call void @llvm.experimental.noalias.scope.decl(metadata !42904)
  %i.cl = load i64, ptr %i.i, align 8, !range !43, !alias.scope !42905, !noalias !42906, !noundef !41
  %i.cm = sub i64 %i.cl, %i.cg
  %i.cn = icmp ugt i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.ah, label %bb.ai, !prof !44

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cg, i64 noundef %i.ck, i64 noundef 1, i64 noundef 1)
          to label %.noexc55 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"

.noexc55:                                         ; preds = %bb.ah
  %.pre.i.i.i54 = load i64, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42907, !noalias !42906
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc55, %bb.ag
  %i.co = phi i64 [ %i.cg, %bb.ag ], [ %.pre.i.i.i54, %.noexc55 ] ; 3 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !42907, !noalias !42906, !nonnull !41, !noundef !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %i.ci, i64 %i.ck, i1 false), !noalias !42907
  %i.cs = add i64 %i.co, %i.ck
  store i64 %i.cs, ptr %.sroa.59.0..sroa_idx, align 8, !alias.scope !42907, !noalias !42906
  br label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit36"

"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit": ; preds = %bb.n, %bb.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.thread.sink.split", %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit"
  %.pn73 = phi { ptr, i32 } [ %i.p, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit" ], [ %i.p, %bb.b ], [ %i.w, %bb.i ], [ %i.aa, %bb.n ], [ %.pn.ph.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.thread.sink.split" ]
  resume { ptr, i32 } %.pn73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN3gix6config4tree6traits7Section12sub_sections17h6d70fb157523e72eE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 8 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN3gix6config4tree6traits7Section12sub_sections17hc39820cc43cc5effE(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 8 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN3gix6config4tree6traits7Section6parent17h2a10407880a5ca56E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN3gix6config4tree6traits7Section6parent17h9f4f1320ef912677E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN3gix6config4tree8sections5clone99_$LT$impl$u20$gix..config..tree..traits..Section$u20$for$u20$gix..config..tree..sections..Clone$GT$4keys17h1a438fb41346ba00E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @972, i64 2 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN3gix6config4tree8sections5clone99_$LT$impl$u20$gix..config..tree..traits..Section$u20$for$u20$gix..config..tree..sections..Clone$GT$4name17ha41ccea89beaded2E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @973, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN3gix6config4tree8sections5fetch99_$LT$impl$u20$gix..config..tree..traits..Section$u20$for$u20$gix..config..tree..sections..Fetch$GT$4keys17h5a3d52ff18e467b0E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @981, i64 2 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN3gix6config4tree8sections5fetch99_$LT$impl$u20$gix..config..tree..traits..Section$u20$for$u20$gix..config..tree..sections..Fetch$GT$4name17hcaeec9f9671f0b56E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @219, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN3gix6config7section10is_trusted17h7aa912065f125feeE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !47, !noundef !41
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !range !144
  %i.f = and i8 %i.e, 14
  %switch = icmp ne i8 %i.f, 4
  %.sroa.0.0 = select i1 %i.c, i1 true, i1 %switch
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN3gix6create4into28_$u7b$$u7b$closure$u7d$$u7d$17hae7b11687e810a74E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #75
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN3gix6remote10connection5fetch12receive_pack66_$LT$impl$u20$gix..remote..connection..fetch..Prepare$LT$T$GT$$GT$7receive17haddc2479767f1943E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(440) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(368) %1, ptr noalias noundef nonnull align 1 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [47 x i8], align 1        ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [128 x i8], align 8               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4277 = alloca [87 x i8], align 1         ; 4 uses
  %.sroa.7108 = alloca [80 x i8], align 8         ; 3 uses
  %i.m = alloca [128 x i8], align 8               ; 6 uses
  %i.n = alloca [104 x i8], align 8               ; 4 uses
  %i.o = alloca [56 x i8], align 8                ; 4 uses
  %i.p = alloca [120 x i8], align 8               ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [120 x i8], align 8               ; 6 uses
  %i.s = alloca [56 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [56 x i8], align 8                ; 10 uses
  %i.v = alloca [128 x i8], align 8               ; 6 uses
  %.sroa.5149 = alloca [48 x i8], align 8         ; 3 uses
  %.sroa.6151.sroa.0 = alloca [48 x i8], align 8  ; 3 uses
  %.sroa.10153 = alloca [119 x i8], align 1       ; 2 uses
  %i.w = alloca [120 x i8], align 8               ; 5 uses
  %i.x = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.0154 = alloca [208 x i8], align 8        ; 3 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [104 x i8], align 8              ; 4 uses
  %.sroa.4114 = alloca [40 x i8], align 8         ; 2 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %i.ac = alloca [64 x i8], align 8               ; 10 uses
  %i.ad = alloca [48 x i8], align 16              ; 9 uses
  %i.ae = alloca [128 x i8], align 8              ; 7 uses
  %i.af = alloca [128 x i8], align 8              ; 20 uses
  %i.ag = alloca [128 x i8], align 8              ; 7 uses
  %i.ah = alloca [128 x i8], align 8              ; 9 uses
  %.sroa.059 = alloca [48 x i8], align 8          ; 5 uses
  %i.ai = alloca [208 x i8], align 8              ; 30 uses
  %i.aj = alloca [48 x i8], align 8               ; 9 uses
  %i.ak = alloca [104 x i8], align 8              ; 17 uses
  %i.al = alloca [120 x i8], align 8              ; 28 uses
  %.sroa.655 = alloca [16 x i8], align 8          ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [1216 x i8], align 8             ; 10 uses
  %i.ao = alloca [1216 x i8], align 8             ; 11 uses
  %.sroa.846.sroa.10 = alloca [56 x i8], align 1  ; 6 uses
  %.sroa.19 = alloca [56 x i8], align 8           ; 5 uses
  %i.ap = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.015 = alloca [16 x i8], align 8          ; 6 uses
  %.sroa.1113 = alloca [47 x i8], align 1         ; 5 uses
  %.sroa.8 = alloca [111 x i8], align 1           ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 11 uses
  %i.ar = alloca [88 x i8], align 8               ; 16 uses
  %i.as = alloca [160 x i8], align 8              ; 11 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !41 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 67818912035696881
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, 0
  %.sroa.0129.0.sroa.gep337 = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 3 uses
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !41 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 96076792050570582
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.be, align 8 ; 3 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i64 -9223372036854775807, ptr %i.be, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -9223372036854775807
  br i1 %.not, label %bb.m, label %bb.l, !prof !44

bb.d:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val400 = load ptr, ptr %i.bf, align 8, !nonnull !41, !noundef !41
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val401 = load i64, ptr %i.bg, align 8, !noundef !41
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9c539035226165eeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val400, i64 noundef %.val401)
          to label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6063754a285111b9E.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr53drop_in_place$LT$gix_protocol..handshake..Outcome$GT$17h021b9a7aea78064fE.exit", %bb.fe, %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6063754a285111b9E.exit": ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !41, !noundef !41
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val399 = load i64, ptr %i.bj, align 8, !noundef !41
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9c539035226165eeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val399)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6063754a285111b9E.exit"
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.f ], [ %i.bv, %bb.h ]
  call void @"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$gix_refspec..RefSpec$GT$$GT$17hb020d1df2be5d068E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at) #75
  br label %bb.gs

bb.g:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6063754a285111b9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43200)
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 8, !alias.scope !43200, !noalias !43199 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !43200, !noalias !43199, !nonnull !41, !noundef !41 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !43200, !noalias !43199 ; 6 uses
  %i.bl = icmp ult i64 %.sroa.5.0.copyload.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  store ptr %.sroa.4.0.copyload.i, ptr %i.t, align 8, !alias.scope !43199, !noalias !43200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.bn, align 8, !alias.scope !43199, !noalias !43200
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %i.bo, align 8, !alias.scope !43199, !noalias !43200
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.bm, ptr %i.bp, align 8, !alias.scope !43199, !noalias !43200
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload.i, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4core4iter8adapters7flatten17and_then_or_clear17h9d249718e50af94bE:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !69798, !noalias !69811, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69799
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %_ZN4core3ops8function6FnOnce9call_once17h7ac561d127bbaf36E.exit unwind label %bb.i, !noalias !69811

bb.i:                                             ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_package..index..Id$GT$17h632b496baf5a45d8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #75, !noalias !69811
  br label %common.resume.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h7ac561d127bbaf36E.exit: ; preds = %"_ZN69_$LT$nickel_lang_package..index..Id$u20$as$u20$core..clone..Clone$GT$5clone17hd688be5fb4d85465E.exit.i.i.i"
  %.sroa.01.72..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.72..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !69799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.01.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69799
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  ret void

bb.l:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h7ac561d127bbaf36E.exit, %bb.l
  %.sroa.0.015 = phi i64 [ -9223372036854775807, %_ZN4core3ops8function6FnOnce9call_once17h7ac561d127bbaf36E.exit ], [ -9223372036854775806, %bb.l ]
  %.sroa.10.09 = phi i64 [ %i.y, %_ZN4core3ops8function6FnOnce9call_once17h7ac561d127bbaf36E.exit ], [ undef, %bb.l ]
  %i.aa = phi <2 x i64> [ %i.w, %_ZN4core3ops8function6FnOnce9call_once17h7ac561d127bbaf36E.exit ], [ undef, %bb.l ]
  store i64 %.sroa.0.015, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.i.i.i, i64 96, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i64> %i.aa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.10.09, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core5clone5Clone10clone_from17hc2fbe2cef2af73b5E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69833)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !69834, !noalias !69835, !noundef !41 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN79_$LT$hashbrown..table..HashTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442da5387e45ff05E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond5.i.i.i.i = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond5.i.i.i.i, label %bb.d, label %bb.c, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %bb.d, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i, !prof !53

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !69836
  %i.m = tail call noalias noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #67, !noalias !69836 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17ha3b5e09eb6e1cbdeE.exit.i.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69836
  store ptr @2781, ptr %i.a, align 8, !noalias !69836
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !69836
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !69836
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !69836
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.r, align 8, !noalias !69836
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2783) #73, !noalias !69836
  unreachable

bb.e:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef %i.j) #73, !noalias !69836
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17ha3b5e09eb6e1cbdeE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69837)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !69838, !noalias !69839, !nonnull !41, !noundef !41 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.s, ptr nonnull align 1 %i.t, i64 %i.i, i1 false), !noalias !69840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69841)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !69842, !noalias !69843, !noundef !41 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17ha3b5e09eb6e1cbdeE.exit.i.i"
  %.val24.i.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !69844
  %i.x = icmp sgt <16 x i8> %.val24.i.i.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = ptrtoint ptr %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %.sroa.14.018.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.am, %.loopexit.i.i.i ]
  %.sroa.10.017.i.i.i = phi i16 [ %i.y, %.lr.ph.i.i.i ], [ %i.aj, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.sroa.012.1.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.not11.i.i.i.i = icmp eq i16 %.sroa.10.017.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ab = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.6.016.i.i.i, %bb.f ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.sroa.012.015.i.i.i, %bb.f ]
  %.val79.i.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !69845
  %i.ad = icmp sgt <16 x i8> %.val79.i.i.i.i, splat (i8 -1)
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ad to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.015.i.i.i, %bb.f ], [ %i.ae, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.016.i.i.i, %bb.f ], [ %i.af, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.10.017.i.i.i, %bb.f ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ag = add i16 %.lcssa.i.i.i.i, -1
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = and i16 %i.ag, %.lcssa.i.i.i.i
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.012.1.i.i.i, i64 %i.ak ; 2 uses
  %i.am = add i64 %.sroa.14.018.i.i.i, -1         ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !69846, !noalias !69840, !noundef !41
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.aa, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  store i64 %i.ao, ptr %i.au, align 8, !noalias !69840
  %i.av = icmp eq i64 %i.am, 0
  br i1 %i.av, label %.loopexit.i.i, label %bb.f

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17ha3b5e09eb6e1cbdeE.exit.i.i"
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !69838, !noalias !69839, !noundef !41
  br label %"_ZN79_$LT$hashbrown..table..HashTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442da5387e45ff05E.exit"

"_ZN79_$LT$hashbrown..table..HashTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442da5387e45ff05E.exit": ; preds = %bb.a, %.loopexit.i.i
  %.sroa.7.0.i = phi i64 [ %i.v, %.loopexit.i.i ], [ 0, %bb.a ]
  %.sroa.6.0.i = phi i64 [ %i.ax, %.loopexit.i.i ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.s, %.loopexit.i.i ], [ @6, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val1 = load i64, ptr %i.ay, align 8, !noundef !41 ; 4 uses
  %i.az = icmp eq i64 %.val1, 0
  br i1 %i.az, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h8f74158cd7588b6eE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i2

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i2: ; preds = %"_ZN79_$LT$hashbrown..table..HashTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442da5387e45ff05E.exit"
  %.val = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41
  %i.ba = shl i64 %.val1, 3
  %i.bb = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = and i64 %i.ba, -16                      ; 2 uses
  %i.bd = add i64 %i.bc, 16                       ; 2 uses
  %i.be = add nsw i64 %.val1, 17
  %i.bf = add i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = icmp uge i64 %i.bf, %i.bd
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp ult i64 %i.bf, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = sub nuw nsw i64 -16, %i.bc
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %i.bi
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 16) #67
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h8f74158cd7588b6eE.exit"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h8f74158cd7588b6eE.exit": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i2, %"_ZN79_$LT$hashbrown..table..HashTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h442da5387e45ff05E.exit"
  store ptr %.sroa.0.0.i, ptr %0, align 8
  store i64 %i.c, ptr %i.ay, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx8, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h05d27d2e6cb3856aE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h0aa0c7b7413aed32E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h0c36ed495ed86366E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h11fa44dcac534771E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h138845a568c6be27E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1a34fea046c31bbdE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1fea32440f1722e3E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h2184d77fd488fcaaE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h259b620c93584ef6E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h2868779652481b78E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h28f843db3aaeeca9E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h36b612dad176f5e3E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h3d6e2f57f33c81eaE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h408b353d6259f71fE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h4097486954a1974cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h42e9f4be86d57290E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h45195bbef738eba8E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h49fcde5c9c75371bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h5289d719c5e8eac5E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h54664244bb6c6045E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h57a143e4cd15699aE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h62a84efa3eb2e24cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h726096487f69a528E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h83972402fa6f95e5E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h8ceeafbccaeaa672E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h976dde6b9f218fe2E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha60ef284d8a2ea09E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha662046730f19a4aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha674cff31a90ac2aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha9a6ec5a91a72c58E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hac7a39ef0e33c6cbE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hadaf5f9678717bedE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hb28a20543da1ba82E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hc28e20c85c1af3feE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hc7a7645d6b997938E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hd21c2e9eb7f33029E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hd313415734e63c81E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hdca09d81159b9a69E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hdf1cb7ab1178df8bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hec14dd21f716b67fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hf29412f40399054cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hff1217022012cc3eE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, i64 } { ptr @1140, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h017194bb25a7e9bdE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN72_$LT$gix_object..find..existing..Error$u20$as$u20$core..error..Error$GT$6source17h975b9cff8790625dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0331beb405545814E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69847
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h07485f4e6c51697cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !alias.scope !69850, !noundef !41
  %.not.i = icmp eq i64 %i.a, -9223372036854775808 ; 2 uses
  %.sroa.3.0.i = select i1 %.not.i, ptr @2145, ptr @2147
  %.sroa.0.0.idx.i = select i1 %.not.i, i64 8, i64 0
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i
  %i.b = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h08a99dae6960106eE(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69851
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0ad418eecac19053E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69852
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h15d75a15d3a55076E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69853
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h1b50fbbdefaac85cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h20841031d64c6b5fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN74_$LT$gix_worktree_state..checkout..Error$u20$as$u20$core..error..Error$GT$6source17h6ae3e17e47b463bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h20bcf3e65b473dbdE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !76, !alias.scope !69856, !noundef !41
  %.not.i = icmp eq i8 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.c
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @1441, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h23239e28e58cda27E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69857
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2349c987c49a98cdE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h359f945ac956e8ffE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN72_$LT$gix_index..init..from_tree..Error$u20$as$u20$core..error..Error$GT$6source17hac26da50d20cadceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h35cb55a12a19db9cE(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69858
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3a3fa109f99b6539E(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h43242fb2adc4ef72E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69859
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h45d4579db296c676E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69860
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h48cfca4b115fa2e1E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69861
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h527c385621739a74E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !41, !nonnull !41
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !69862
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h687f9a25164a2de2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h693f86f7baf9bae9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN76_$LT$gix_pack..bundle..write..error..Error$u20$as$u20$core..error..Error$GT$6source17he32d63da3e97bb8cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret { ptr, ptr } %i.a
end_hunk_1
begin_hunk_2_@"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17ha1ed2a92f56f0105E":bb.a
  %i.cc = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.08.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.08.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$gix..remote..connect..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hccf5086787f8a596E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = load i64, ptr %0, align 8, !range !147, !noundef !41 ; 2 uses
  %i.k = xor i64 %i.j, -9223372036854775808
  %i.l = icmp slt i64 %i.j, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 8
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.i, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1809, i64 noundef 10, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1808)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.h, align 8
  %i.q = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1225, i64 noundef 10, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.g, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1810, i64 noundef 27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1811, i64 noundef 9, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1813, i64 noundef 16, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1812)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %i.e, align 8
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1815, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @645, i64 noundef 3, ptr noundef nonnull align 1 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1230, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1110, i64 noundef 6, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1814)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.d, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1817, i64 noundef 7, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1816)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.c, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1819, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1820, i64 noundef 9, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1818)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.b, align 8
  %i.ad = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1821, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 6, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1256)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.af = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1824, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 6, ptr noundef nonnull align 1 %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1822, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @645, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1823)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.f ], [ %i.x, %bb.g ], [ %i.z, %bb.h ], [ %i.ab, %bb.i ], [ %i.ad, %bb.j ], [ %i.af, %bb.k ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$gix_features..zlib..inflate..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h4fcea174554c4d33E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !76, !noundef !41
  switch i8 %i.d, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1835, i64 noundef 13, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1837, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1836)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1839, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1838)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i8, i64 } @"_ZN71_$LT$gix_pack..cache..Never$u20$as$u20$gix_pack..cache..DecodeEntry$GT$3get17ha6c9e9cb5f8d04afE"(ptr noalias nofree nonnull readnone align 1 captures(none) %0, i32 %1, i64 %2, ptr noalias nofree readnone align 8 captures(none) %3) unnamed_addr #17 {
bb.a:
  ret { i8, i64 } { i8 4, i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN71_$LT$gix_pack..cache..Never$u20$as$u20$gix_pack..cache..DecodeEntry$GT$3put17hc1f3cff6e99b5468E"(ptr noalias nofree nonnull readnone align 1 captures(none) %0, i32 %1, i64 %2, ptr noalias nonnull readonly align 1 captures(none) %3, i64 %4, i8 range(i8 0, 4) %5, i64 %6) unnamed_addr #17 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$gix_tempfile..Handle$LT$Marker$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h082c8245d756c003E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1843, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @731, i64 noundef 2, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1292, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1844, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1842)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$gix_utils..btoi..ParseIntegerError$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d0e6f27ec30b7b9E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1846, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1300, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1845)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..label..Label$u20$as$u20$core..cmp..PartialEq$GT$2eq17h14e28397bd642f07E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !41, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.f)
  br i1 %i.g, label %bb.b, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !78861, !noalias !78862, !noundef !41 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1                     ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !78861, !noalias !78862, !nonnull !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !78861, !noalias !78862
  %.sink11.i.i = select i1 %i.l, ptr %i.m, ptr %i.h
  %.sink10.i.i = select i1 %i.l, i64 %i.o, i64 %i.k ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !78863, !noalias !78864, !noundef !41 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1                     ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !alias.scope !78863, !noalias !78864, !nonnull !41
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !78863, !noalias !78864
  %.sink11.i.i12 = select i1 %i.r, ptr %i.s, ptr %i.i
  %.sink10.i.i13 = select i1 %i.r, i64 %i.u, i64 %i.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78866)
  %.not.i = icmp eq i64 %.sink10.i.i, %.sink10.i.i13
  br i1 %.not.i, label %.preheader.split.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

.preheader.split.i:                               ; preds = %bb.b
  %.not19.i = icmp eq i64 %.sink10.i.i, 0
  br i1 %.not19.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17he3491f9e0ef5205bE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %_ZN4core3cmp9PartialEq2ne17he11834124ce2f2cbE.exit.i
  %.sroa.01.09.i = phi i64 [ %i.as, %_ZN4core3cmp9PartialEq2ne17he11834124ce2f2cbE.exit.i ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.sink11.i.i, i64 %.sroa.01.09.i ; 5 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.sink11.i.i12, i64 %.sroa.01.09.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78870)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !64, !alias.scope !78871, !noalias !78872, !noundef !41
  %.not.i.i.i = icmp eq i64 %i.y, -9223372036854775808
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !range !64, !alias.scope !78872, !noalias !78871, !noundef !41
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  br i1 %i.ab, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit", label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.ab, label %bb.f, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.val3.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !78871, !noalias !78872, !noundef !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.val5.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !78872, !noalias !78871, !noundef !41
  %.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit.i.i.i", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit.i.i.i": ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.val4.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !78872, !noalias !78871, !nonnull !41, !noundef !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !78871, !noalias !78872, !nonnull !41, !noundef !41
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %.val3.i.i.i), !alias.scope !78873, !noalias !78874
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.f, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

bb.f:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit.i.i.i", %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val6.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !78871, !noalias !78872, !nonnull !41, !noundef !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val7.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !78871, !noalias !78872, !noundef !41 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val8.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !78872, !noalias !78871, !nonnull !41, !noundef !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val9.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !78872, !noalias !78871, !noundef !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78876)
  %.not.i.i10.i.i.i = icmp eq i64 %.val7.i.i.i, %.val9.i.i.i
  br i1 %.not.i.i10.i.i.i, label %.preheader.split.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

.preheader.split.i.i.i.i.i:                       ; preds = %bb.f
  %.not16.i.i.i.i.i = icmp eq i64 %.val7.i.i.i, 0
  br i1 %.not16.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17he11834124ce2f2cbE.exit.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17had3ee527b175965aE.exit.i.i.i.i.i
  %i.al = add nuw i64 %.sroa.01.012.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.al, %.val7.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17he11834124ce2f2cbE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.split.i.i.i.i.i, %bb.g
  %.sroa.01.012.i.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ 0, %.preheader.split.i.i.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.val6.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.val8.i.i.i, i64 %.sroa.01.012.i.i.i.i.i ; 2 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val6.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !78875, !noalias !78877, !noundef !41 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !78876, !noalias !78878, !noundef !41
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val6.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17had3ee527b175965aE.exit.i.i.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

_ZN4core3cmp9PartialEq2ne17had3ee527b175965aE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val7.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !78876, !noalias !78878, !nonnull !41, !noundef !41
  %i.ar = getelementptr i8, ptr %i.am, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !78875, !noalias !78877, !nonnull !41, !noundef !41
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val7.i.i.i.i.i, i64 %.val6.i.i.i.i.i), !alias.scope !78879, !noalias !78880
  %.not10.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i, label %bb.g, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

_ZN4core3cmp9PartialEq2ne17he11834124ce2f2cbE.exit.i: ; preds = %bb.g, %.preheader.split.i.i.i.i.i
  %i.as = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.sink10.i.i
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17he3491f9e0ef5205bE.exit", label %.lr.ph.i

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17he3491f9e0ef5205bE.exit": ; preds = %_ZN4core3cmp9PartialEq2ne17he11834124ce2f2cbE.exit.i, %.preheader.split.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.au = load i32, ptr %i.at, align 4, !noundef !41
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aw = load i32, ptr %i.av, align 4, !noundef !41
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

bb.h:                                             ; preds = %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17he3491f9e0ef5205bE.exit"
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noundef !41
  %.not = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !41
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.bc, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit", label %.split

bb.j:                                             ; preds = %bb.h
  br i1 %i.bc, label %bb.k, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

.split:                                           ; preds = %bb.i
  %i.bd = tail call noundef zeroext i1 @"_ZN83_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha722721ec038c411E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
  br i1 %i.bd, label %bb.k, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

bb.k:                                             ; preds = %.split, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load i32, ptr %i.be, align 8, !noundef !41
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bh = load i32, ptr %i.bg, align 8, !noundef !41
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h21f6aebcae8c7d41E.exit"

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bk = load i8, ptr %i.bj, align 4, !range !47, !noundef !41
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bm = load i8, ptr %i.bl, align 4, !range !47, !noundef !41
end_hunk_2
