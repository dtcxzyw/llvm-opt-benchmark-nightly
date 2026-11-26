Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.03?download=true
inline.NumInlined: 200
inline.NumDeleted: 96
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h6cd0e36cc30482f1E":bb.a
bb.b:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i", %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2 = load i64, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val4 = load i64, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val2)
          to label %.noexc5 unwind label %bb.c

.noexc5:                                          ; preds = %.noexc
  %i.j = invoke noundef range(i8 -1, 2) i8 @_ZN3std4path18compare_components17hde56beecf8bddcb4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc5, %.noexc, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal28_$u7b$$u7b$closure$u7d$$u7d$17h5c92c430206dcda7E.exit"
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #13
          to label %.body unwind label %bb.i

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i": ; preds = %bb.d
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit" unwind label %bb.b

"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit10" unwind label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit10": ; preds = %"_ZN4core3ptr65drop_in_place$LT$core..cmp..Reverse$LT$std..path..PathBuf$GT$$GT$17hb75084461bd76640E.exit"
  %i.p = icmp slt i8 %i.j, 0
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.p

bb.i:                                             ; preds = %bb.c, %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN5which6helper24has_executable_extension17hd912fb4fc7bfade4E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !130 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call { ptr, i64 } @_ZN3std4path4Path9extension17h14b5a7bd556c0375E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !17, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !9, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.idx = mul nuw nsw i64 %2, 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %.not21.i.i.i31 = icmp eq i64 %i.l, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i"
  %i.n = phi ptr [ %i.o, %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i" ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val4.i = load ptr, ptr %i.p, align 8, !noalias !132, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val5.i = load i64, ptr %i.q, align 8, !noalias !132, !noundef !5 ; 4 uses
  switch i64 %.val5.i, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E.exit.i.i" [
    i64 0, label %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i"
    i64 1, label %.critedge.i.i
  ]

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E.exit.i.i": ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val4.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !133, !noalias !132, !noundef !5
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.e, label %.critedge.i.i, !prof !10

.critedge.i.i:                                    ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E.exit.i.i", %.lr.ph.i
  %i.u = add i64 %.val5.i, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.not.i.i.i = icmp eq i64 %i.l, %i.u
  br i1 %.not.i.i.i, label %.preheader.i.i.i.preheader, label %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i"

.preheader.i.i.i.preheader:                       ; preds = %.critedge.i.i
  br i1 %.not21.i.i.i31, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit", label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7.i.i34, i64 1
  %i.w = add i64 %.sroa.611.0.i.i.i32, -1         ; 2 uses
  %.not21.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not21.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.sroa.0.0.i7.i.i34 = phi ptr [ %i.v, %.preheader.i.i.i ], [ %i.j, %.preheader.i.i.i.preheader ] ; 2 uses
  %.sroa.07.0.i.pn.i.i33 = phi ptr [ %.sroa.07.0.i.i.i, %.preheader.i.i.i ], [ %.val4.i, %.preheader.i.i.i.preheader ]
  %.sroa.611.0.i.i.i32 = phi i64 [ %i.w, %.preheader.i.i.i ], [ %i.l, %.preheader.i.i.i.preheader ]
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.pn.i.i33, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.0.0.i7.i.i34, align 1, !alias.scope !136, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -65
  %i.z = icmp ult i8 %i.y, 26
  %i.aa = select i1 %i.z, i8 32, i8 0
  %.sroa.016.0.i.i.i = or i8 %i.aa, %i.x
  %i.ab = load i8, ptr %.sroa.07.0.i.i.i, align 1, !alias.scope !135, !noalias !132, !noundef !5 ; 2 uses
  %i.ac = add i8 %i.ab, -65
  %i.ad = icmp ult i8 %i.ac, 26
  %i.ae = select i1 %i.ad, i8 32, i8 0
  %.sroa.017.0.i.i.i = or i8 %i.ae, %i.ab
  %i.af = icmp eq i8 %.sroa.016.0.i.i.i, %.sroa.017.0.i.i.i
  br i1 %i.af, label %.preheader.i.i.i, label %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i"

bb.e:                                             ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E.exit.i.i"
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val4.i, i64 noundef %.val5.i, i64 noundef 1, i64 noundef %.val5.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #15, !noalias !132
  unreachable

"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i": ; preds = %.lr.ph, %.critedge.i.i, %.lr.ph.i
  %.not15.i = icmp eq ptr %i.o, %i.m
  br i1 %.not15.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit", label %.lr.ph.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hb4b15f0ecdb9f99cE.exit": ; preds = %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i", %.preheader.i.i.i.preheader, %.preheader.i.i.i, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ true, %.preheader.i.i.i ], [ false, %"_ZN5which6helper24has_executable_extension28_$u7b$$u7b$closure$u7d$$u7d$17hcde40938a52e6ed2E.exit.i" ], [ true, %.preheader.i.i.i.preheader ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7anki_io10write_file17hc41485b4c6d78aeaE(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !139 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !140, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !140, !noundef !5 ; 2 uses
  %i.d = invoke noundef ptr @_ZN3std2fs5write5inner17hef6adfd32e013394E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E"(ptr noalias noundef align 8 dereferenceable(24) %1) #13
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.val.i.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.val1.i.i, ptr %i.g, align 8
  store i64 -9223372036854775804, ptr %i.a, align 8
  invoke void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17he3e25e4118fe650bE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit": ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7anki_io10write_file17hda7839c8dfefd618E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !143 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !144, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !144, !noundef !5 ; 2 uses
  %i.d = invoke noundef ptr @_ZN3std2fs5write5inner17hef6adfd32e013394E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E"(ptr noalias noundef align 8 dereferenceable(24) %1) #13
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.val.i.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.val1.i.i, ptr %i.g, align 8
  store i64 -9223372036854775804, ptr %i.a, align 8
  invoke void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17he3e25e4118fe650bE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit": ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7anki_io14create_dir_all17h5785294760d76f17E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !147 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  store i32 511, ptr %i.a, align 4, !noalias !148
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.c, align 4, !noalias !148
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !noalias !148, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !noalias !148, !noundef !5 ; 2 uses
  %i.f = call noundef ptr @_ZN3std2fs10DirBuilder7_create17hbb09447985a8d972E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.val.i.i.i, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.val1.i.i.i, ptr %i.h, align 8
  store i64 -9223372036854775805, ptr %i.b, align 8
  call void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17he3e25e4118fe650bE"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN7anki_io9read_file17h98a1d942fd7b8b02E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !151 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN3std2fs4read5inner17h1747fdee54479d58E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %i.d, align 8
  store i64 -9223372036854775807, ptr %i.a, align 8
  call void @"_ZN83_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$snafu..ResultExt$LT$T$C$E$GT$$GT$7context17hbd884e5085af6fe5E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h2d70638301b99216E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !167 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h6b786fc0e22a1805E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha276d4588f5dede9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !noalias !168, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.01.09.i = phi i64 [ %1, %.lr.ph.i ], [ %i.o, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !168
  store i64 %.sroa.01.09.i, ptr %i.a, align 8, !noalias !168
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !171, !noalias !168, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !174
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h58344b026eb0143aE.exit.i.i.i.i.i"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h58344b026eb0143aE.exit.i.i.i.i.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !175, !noalias !168, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !175, !noalias !168 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i, align 1
  %i.m = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hfdb3c36c820a9aeeE.exit.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i, i64 noundef 1) #16
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hfdb3c36c820a9aeeE.exit.i.i.i.i.i"

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h58344b026eb0143aE.exit.i.i.i.i.i": ; preds = %bb.e, %bb.d
  %.val.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !175, !noalias !168, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !175, !noalias !168 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i, align 1
  %i.n = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.n, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h58344b026eb0143aE.exit.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #16
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..ffi..c_str..CString$GT$17hfdb3c36c820a9aeeE.exit.i.i.i.i.i": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !171, !noalias !168, !nonnull !5, !noundef !5
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr nonnull %.val.i.i.i), !noalias !171
  br label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i"

"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i": ; preds = %bb.i, %bb.h, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h58344b026eb0143aE.exit.i.i.i.i.i"
  %i.o = add i64 %.sroa.01.09.i, -1               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.p = icmp eq i64 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168
  br i1 %i.p, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h6b786fc0e22a1805E.exit, label %bb.j

._crit_edge.i:                                    ; preds = %bb.j, %bb.b
  %.sroa.01.0.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.o, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h6b786fc0e22a1805E.exit

bb.j:                                             ; preds = %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha276d4588f5dede9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  %i.q = load i64, ptr %i.b, align 8, !range !17, !noalias !168, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.c, label %._crit_edge.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h6b786fc0e22a1805E.exit: ; preds = %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i", %._crit_edge.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.lcssa.i, %._crit_edge.i ], [ 0, %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by28_$u7b$$u7b$closure$u7d$$u7d$17h7d56fdc52c9a7dacE.exit.i" ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h161b5700eb9d0ef4E"(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 !guid !176 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
end_hunk_0
