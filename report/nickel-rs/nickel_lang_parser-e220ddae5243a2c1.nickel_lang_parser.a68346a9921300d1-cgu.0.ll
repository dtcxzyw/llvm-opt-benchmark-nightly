Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN18nickel_lang_parser7grammar13__parse__Term12__reduce220317h5470ae2cd524ab5eE:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !130754
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !130753
  %i.n = load i64, ptr %0, align 8, !range !38, !alias.scope !130753, !noundef !19 ; 3 uses
  %i.o = icmp samesign ult i64 %i.m, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !130753, !nonnull !19, !noundef !19 ; 3 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.m ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull align 8 dereferenceable(304) %i.r, i64 304, i1 false), !noalias !130754
  %.pr.i = load i8, ptr %i.d, align 8, !noalias !130754 ; 2 uses
  %i.s = icmp eq i8 %.pr.i, 4
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term22__symbol_type_mismatch17ha9846476a177a7c1E() #52
          to label %bb.f unwind label %bb.e, !noalias !130754

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i = icmp eq i8 %.pr.i, 86
  br i1 %cond.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.t, %bb.g ], [ %.pn.ph, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hc2b2f0b170a9a38dE"(ptr noalias noundef align 8 dereferenceable(288) %i.d) #53, !noalias !130754
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noalias !130754, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !130753
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.y = load i64, ptr %i.x, align 8, !noalias !130754, !noundef !19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.v, ptr %i.z, align 8, !alias.scope !130752
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !130752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130756
  %i.ab = add nsw i64 %i.j, -2                    ; 4 uses
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !130755
  %i.ac = icmp samesign ult i64 %i.ab, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !noalias !130756
  %.pr.i5 = load i8, ptr %i.c, align 8, !noalias !130756 ; 2 uses
  %i.ae = icmp eq i8 %.pr.i5, 22
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term22__symbol_type_mismatch17ha9846476a177a7c1E() #52
          to label %bb.k unwind label %bb.j, !noalias !130756

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = and i8 %.pr.i5, 63
  %or.cond8.i = icmp eq i8 %i.ag, 22
  br i1 %or.cond8.i, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hc2b2f0b170a9a38dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !130756
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.ai, i64 248, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !130756
  store <2 x i64> %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130759
  %i.al = add nsw i64 %i.j, -3                    ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !alias.scope !130758
  %i.am = icmp samesign ult i64 %i.al, %i.n
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.al ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.an, i64 304, i1 false), !noalias !130759
  %.pr.i7 = load i8, ptr %i.b, align 8, !noalias !130759 ; 2 uses
  %i.ao = icmp eq i8 %.pr.i7, 23
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term22__symbol_type_mismatch17ha9846476a177a7c1E() #52
          to label %bb.p unwind label %bb.o, !noalias !130759

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %cond.i8 = icmp eq i8 %.pr.i7, 86
  br i1 %cond.i8, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hc2b2f0b170a9a38dE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !130759
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !130758
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = load <2 x i64>, ptr %i.aq, align 8, !noalias !130759
  %i.au = load i64, ptr %i.aq, align 8, !noalias !130759, !noundef !19
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !130757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !130759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.v, ptr %i.av, align 8, !noalias !130761
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.y, ptr %i.aw, align 8, !noalias !130761
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130760
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130762)
  store i8 81, ptr %i.an, align 8, !noalias !130762
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store i64 %i.au, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !130762
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !130762
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !130762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.q
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..LetBinding$C$usize$RP$$GT$17h839eae472729741fE"(ptr noalias noundef align 8 dereferenceable(264) %i.e) #53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.af, %bb.j ], [ %i.af, %bb.l ]
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term12__reduce220417hf77eed11c2764cf3E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [304 x i8], align 8               ; 8 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130777
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !130776, !noundef !19 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 86, ptr %i.c, align 8, !noalias !130777
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 3 uses
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !130776
  %i.j = load i64, ptr %0, align 8, !range !38, !alias.scope !130776, !noundef !19
  %i.k = icmp samesign ult i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !130776, !nonnull !19, !noundef !19
  %i.n = icmp ult i64 %i.g, 30340039594917027
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [304 x i8], ptr %i.m, i64 %i.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 304, i1 false), !noalias !130777
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !130777 ; 2 uses
  %i.p = icmp eq i8 %.pr.i, 22
  br i1 %i.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hcd733f23ed2f8554E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.q = phi i8 [ 86, %.thread.i ], [ %.pr.i, %bb.b ]
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term22__symbol_type_mismatch17ha9846476a177a7c1E() #52
          to label %bb.e unwind label %bb.d, !noalias !130777

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = and i8 %i.q, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hc2b2f0b170a9a38dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !130777
  br label %bb.f

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hcd733f23ed2f8554E.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = load i64, ptr %i.t, align 8, !noalias !130777, !noundef !19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.v, i64 248, i1 false), !noalias !130776
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.x = load i64, ptr %i.w, align 8, !noalias !130777, !noundef !19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i64 %i.u, ptr %i.y, align 8, !alias.scope !130775
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i64 %i.x, ptr %i.z, align 8, !alias.scope !130775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.u, ptr %i.aa, align 8, !noalias !130778
  store i64 0, ptr %i.b, align 8, !noalias !130778
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !130778
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !130778
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.u, ptr %i.ab, align 8, !noalias !130778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130778
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.x, ptr %i.ac, align 8, !noalias !130779
  store i64 169, ptr %i.a, align 8, !noalias !130779
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.x, ptr %i.ad, align 8, !noalias !130779
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130780)
  store i8 81, ptr %i.o, align 8, !noalias !130780
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.41.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 %i.u, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !130780
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !130780
  store i64 %i.g, ptr %i.f, align 8, !alias.scope !130780
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term12__reduce220517h2d2717abc06a1784E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  %i.c = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [264 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 4 uses
  %i.i = icmp ult i64 %i.h, 30340039594917026
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2152) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130799
  %i.k = add nsw i64 %i.h, -1                     ; 4 uses
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !130798
  %i.l = load i64, ptr %0, align 8, !range !38, !alias.scope !130798, !noundef !19 ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !130798, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.p, i64 304, i1 false), !noalias !130799
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !130799 ; 2 uses
  %i.q = icmp eq i8 %.pr.i, 22
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term22__symbol_type_mismatch17ha9846476a177a7c1E() #52
          to label %bb.f unwind label %bb.e, !noalias !130799

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = and i8 %.pr.i, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hc2b2f0b170a9a38dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !130799
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.u, i64 248, i1 false), !noalias !130798
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.x = load i64, ptr %i.v, align 8, !noalias !130799, !noundef !19
  %i.y = load <2 x i64>, ptr %i.t, align 8, !noalias !130799
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !130797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130802
  %i.z = add nsw i64 %i.h, -2                     ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !alias.scope !130801
  %i.aa = icmp samesign ult i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.z ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.ab, i64 304, i1 false), !noalias !130802
  %.pr.i4 = load i8, ptr %i.b, align 8, !noalias !130802 ; 2 uses
  %i.ac = icmp eq i8 %.pr.i4, 23
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term22__symbol_type_mismatch17ha9846476a177a7c1E() #52
          to label %bb.k unwind label %bb.j, !noalias !130802

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %cond.i = icmp eq i8 %.pr.i4, 86
  br i1 %cond.i, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hc2b2f0b170a9a38dE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !130802
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !130801
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !noalias !130802
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !130802, !noundef !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !130800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !130802
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130803
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.3.0.copyload, ptr %i.aj, align 8, !noalias !130804
  store i64 169, ptr %i.a, align 8, !noalias !130804
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.3.0.copyload, ptr %i.ak, align 8, !noalias !130804
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130803
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130805)
  store i8 81, ptr %i.ab, align 8, !noalias !130805
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  store i64 %i.ai, ptr %.sroa.56.0..sroa_idx, align 8, !noalias !130805
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !130805
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !130805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.l
end_hunk_0
begin_hunk_1_@_ZN18nickel_lang_parser7grammar18__parse__FixedType12__reduce220317h9bca04883ecd874dE:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !220638
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !220637
  %i.n = load i64, ptr %0, align 8, !range !38, !alias.scope !220637, !noundef !19 ; 3 uses
  %i.o = icmp samesign ult i64 %i.m, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !220637, !nonnull !19, !noundef !19 ; 3 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.m ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull align 8 dereferenceable(304) %i.r, i64 304, i1 false), !noalias !220638
  %.pr.i = load i8, ptr %i.d, align 8, !noalias !220638 ; 2 uses
  %i.s = icmp eq i8 %.pr.i, 4
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType22__symbol_type_mismatch17hc653e715723875b5E() #52
          to label %bb.f unwind label %bb.e, !noalias !220638

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i = icmp eq i8 %.pr.i, 86
  br i1 %cond.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.t, %bb.g ], [ %.pn.ph, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$nickel_lang_parser..grammar..__parse__FixedType..__Symbol$GT$17h835ba34221164e9dE"(ptr noalias noundef align 8 dereferenceable(288) %i.d) #53, !noalias !220638
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noalias !220638, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !220637
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.y = load i64, ptr %i.x, align 8, !noalias !220638, !noundef !19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.v, ptr %i.z, align 8, !alias.scope !220636
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !220636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !220638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220640
  %i.ab = add nsw i64 %i.j, -2                    ; 4 uses
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !220639
  %i.ac = icmp samesign ult i64 %i.ab, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !noalias !220640
  %.pr.i5 = load i8, ptr %i.c, align 8, !noalias !220640 ; 2 uses
  %i.ae = icmp eq i8 %.pr.i5, 22
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType22__symbol_type_mismatch17hc653e715723875b5E() #52
          to label %bb.k unwind label %bb.j, !noalias !220640

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = and i8 %.pr.i5, 63
  %or.cond8.i = icmp eq i8 %i.ag, 22
  br i1 %or.cond8.i, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$nickel_lang_parser..grammar..__parse__FixedType..__Symbol$GT$17h835ba34221164e9dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !220640
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.ai, i64 248, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !220640
  store <2 x i64> %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220643
  %i.al = add nsw i64 %i.j, -3                    ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !alias.scope !220642
  %i.am = icmp samesign ult i64 %i.al, %i.n
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.al ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.an, i64 304, i1 false), !noalias !220643
  %.pr.i7 = load i8, ptr %i.b, align 8, !noalias !220643 ; 2 uses
  %i.ao = icmp eq i8 %.pr.i7, 23
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType22__symbol_type_mismatch17hc653e715723875b5E() #52
          to label %bb.p unwind label %bb.o, !noalias !220643

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %cond.i8 = icmp eq i8 %.pr.i7, 86
  br i1 %cond.i8, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$nickel_lang_parser..grammar..__parse__FixedType..__Symbol$GT$17h835ba34221164e9dE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !220643
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !220642
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = load <2 x i64>, ptr %i.aq, align 8, !noalias !220643
  %i.au = load i64, ptr %i.aq, align 8, !noalias !220643, !noundef !19
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !220641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.v, ptr %i.av, align 8, !noalias !220645
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.y, ptr %i.aw, align 8, !noalias !220645
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220644
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220646)
  store i8 81, ptr %i.an, align 8, !noalias !220646
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store i64 %i.au, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !220646
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !220646
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !220646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.q
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..LetBinding$C$usize$RP$$GT$17h839eae472729741fE"(ptr noalias noundef align 8 dereferenceable(264) %i.e) #53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.af, %bb.j ], [ %i.af, %bb.l ]
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType12__reduce220417h93a5322caa67492fE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [304 x i8], align 8               ; 8 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220661
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !220660, !noundef !19 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 86, ptr %i.c, align 8, !noalias !220661
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 3 uses
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !220660
  %i.j = load i64, ptr %0, align 8, !range !38, !alias.scope !220660, !noundef !19
  %i.k = icmp samesign ult i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !220660, !nonnull !19, !noundef !19
  %i.n = icmp ult i64 %i.g, 30340039594917027
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [304 x i8], ptr %i.m, i64 %i.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 304, i1 false), !noalias !220661
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !220661 ; 2 uses
  %i.p = icmp eq i8 %.pr.i, 22
  br i1 %i.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heae7342e5287a0afE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.q = phi i8 [ 86, %.thread.i ], [ %.pr.i, %bb.b ]
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType22__symbol_type_mismatch17hc653e715723875b5E() #52
          to label %bb.e unwind label %bb.d, !noalias !220661

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = and i8 %i.q, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$nickel_lang_parser..grammar..__parse__FixedType..__Symbol$GT$17h835ba34221164e9dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !220661
  br label %bb.f

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heae7342e5287a0afE.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = load i64, ptr %i.t, align 8, !noalias !220661, !noundef !19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.v, i64 248, i1 false), !noalias !220660
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.x = load i64, ptr %i.w, align 8, !noalias !220661, !noundef !19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i64 %i.u, ptr %i.y, align 8, !alias.scope !220659
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i64 %i.x, ptr %i.z, align 8, !alias.scope !220659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.u, ptr %i.aa, align 8, !noalias !220662
  store i64 0, ptr %i.b, align 8, !noalias !220662
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !220662
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !220662
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.u, ptr %i.ab, align 8, !noalias !220662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220662
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.x, ptr %i.ac, align 8, !noalias !220663
  store i64 169, ptr %i.a, align 8, !noalias !220663
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.x, ptr %i.ad, align 8, !noalias !220663
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220664)
  store i8 81, ptr %i.o, align 8, !noalias !220664
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.41.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 %i.u, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !220664
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !220664
  store i64 %i.g, ptr %i.f, align 8, !alias.scope !220664
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType12__reduce220517hb874db9b92008ba4E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  %i.c = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [264 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 4 uses
  %i.i = icmp ult i64 %i.h, 30340039594917026
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4257) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220683
  %i.k = add nsw i64 %i.h, -1                     ; 4 uses
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !220682
  %i.l = load i64, ptr %0, align 8, !range !38, !alias.scope !220682, !noundef !19 ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !220682, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.p, i64 304, i1 false), !noalias !220683
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !220683 ; 2 uses
  %i.q = icmp eq i8 %.pr.i, 22
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType22__symbol_type_mismatch17hc653e715723875b5E() #52
          to label %bb.f unwind label %bb.e, !noalias !220683

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = and i8 %.pr.i, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$nickel_lang_parser..grammar..__parse__FixedType..__Symbol$GT$17h835ba34221164e9dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !220683
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.u, i64 248, i1 false), !noalias !220682
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.x = load i64, ptr %i.v, align 8, !noalias !220683, !noundef !19
  %i.y = load <2 x i64>, ptr %i.t, align 8, !noalias !220683
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !220681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220685)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220686
  %i.z = add nsw i64 %i.h, -2                     ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !alias.scope !220685
  %i.aa = icmp samesign ult i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.z ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.ab, i64 304, i1 false), !noalias !220686
  %.pr.i4 = load i8, ptr %i.b, align 8, !noalias !220686 ; 2 uses
  %i.ac = icmp eq i8 %.pr.i4, 23
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType22__symbol_type_mismatch17hc653e715723875b5E() #52
          to label %bb.k unwind label %bb.j, !noalias !220686

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %cond.i = icmp eq i8 %.pr.i4, 86
  br i1 %cond.i, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$nickel_lang_parser..grammar..__parse__FixedType..__Symbol$GT$17h835ba34221164e9dE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !220686
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !220685
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !noalias !220686
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !220686, !noundef !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !220684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220686
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220687
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.3.0.copyload, ptr %i.aj, align 8, !noalias !220688
  store i64 169, ptr %i.a, align 8, !noalias !220688
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.3.0.copyload, ptr %i.ak, align 8, !noalias !220688
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220687
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220689)
  store i8 81, ptr %i.ab, align 8, !noalias !220689
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  store i64 %i.ai, ptr %.sroa.56.0..sroa_idx, align 8, !noalias !220689
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !220689
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !220689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.l
end_hunk_1
begin_hunk_2_@_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm12__reduce220317h15b8cd771c9ceb47E:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !310535
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !310534
  %i.n = load i64, ptr %0, align 8, !range !38, !alias.scope !310534, !noundef !19 ; 3 uses
  %i.o = icmp samesign ult i64 %i.m, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !310534, !nonnull !19, !noundef !19 ; 3 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.m ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull align 8 dereferenceable(304) %i.r, i64 304, i1 false), !noalias !310535
  %.pr.i = load i8, ptr %i.d, align 8, !noalias !310535 ; 2 uses
  %i.s = icmp eq i8 %.pr.i, 4
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm22__symbol_type_mismatch17h3a7cd77dfb7eadcfE() #52
          to label %bb.f unwind label %bb.e, !noalias !310535

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i = icmp eq i8 %.pr.i, 86
  br i1 %cond.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.t, %bb.g ], [ %.pn.ph, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias noundef align 8 dereferenceable(288) %i.d) #53, !noalias !310535
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noalias !310535, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !310534
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.y = load i64, ptr %i.x, align 8, !noalias !310535, !noundef !19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.v, ptr %i.z, align 8, !alias.scope !310533
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !310533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !310535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !310537
  %i.ab = add nsw i64 %i.j, -2                    ; 4 uses
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !310536
  %i.ac = icmp samesign ult i64 %i.ab, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !noalias !310537
  %.pr.i5 = load i8, ptr %i.c, align 8, !noalias !310537 ; 2 uses
  %i.ae = icmp eq i8 %.pr.i5, 22
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm22__symbol_type_mismatch17h3a7cd77dfb7eadcfE() #52
          to label %bb.k unwind label %bb.j, !noalias !310537

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = and i8 %.pr.i5, 63
  %or.cond8.i = icmp eq i8 %i.ag, 22
  br i1 %or.cond8.i, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !310537
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.ai, i64 248, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !310537
  store <2 x i64> %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !310537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310540
  %i.al = add nsw i64 %i.j, -3                    ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !alias.scope !310539
  %i.am = icmp samesign ult i64 %i.al, %i.n
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.al ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.an, i64 304, i1 false), !noalias !310540
  %.pr.i7 = load i8, ptr %i.b, align 8, !noalias !310540 ; 2 uses
  %i.ao = icmp eq i8 %.pr.i7, 23
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm22__symbol_type_mismatch17h3a7cd77dfb7eadcfE() #52
          to label %bb.p unwind label %bb.o, !noalias !310540

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %cond.i8 = icmp eq i8 %.pr.i7, 86
  br i1 %cond.i8, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !310540
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !310539
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = load <2 x i64>, ptr %i.aq, align 8, !noalias !310540
  %i.au = load i64, ptr %i.aq, align 8, !noalias !310540, !noundef !19
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !310538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !310540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.v, ptr %i.av, align 8, !noalias !310542
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.y, ptr %i.aw, align 8, !noalias !310542
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310541
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310543)
  store i8 81, ptr %i.an, align 8, !noalias !310543
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store i64 %i.au, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !310543
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !310543
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !310543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.q
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..LetBinding$C$usize$RP$$GT$17h839eae472729741fE"(ptr noalias noundef align 8 dereferenceable(264) %i.e) #53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.af, %bb.j ], [ %i.af, %bb.l ]
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm12__reduce220417he2270431c5320c54E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [304 x i8], align 8               ; 8 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !310558
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !310557, !noundef !19 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 86, ptr %i.c, align 8, !noalias !310558
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 3 uses
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !310557
  %i.j = load i64, ptr %0, align 8, !range !38, !alias.scope !310557, !noundef !19
  %i.k = icmp samesign ult i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !310557, !nonnull !19, !noundef !19
  %i.n = icmp ult i64 %i.g, 30340039594917027
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [304 x i8], ptr %i.m, i64 %i.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 304, i1 false), !noalias !310558
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !310558 ; 2 uses
  %i.p = icmp eq i8 %.pr.i, 22
  br i1 %i.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h341a9ca56f42259fE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.q = phi i8 [ 86, %.thread.i ], [ %.pr.i, %bb.b ]
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm22__symbol_type_mismatch17h3a7cd77dfb7eadcfE() #52
          to label %bb.e unwind label %bb.d, !noalias !310558

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = and i8 %i.q, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !310558
  br label %bb.f

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h341a9ca56f42259fE.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = load i64, ptr %i.t, align 8, !noalias !310558, !noundef !19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.v, i64 248, i1 false), !noalias !310557
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.x = load i64, ptr %i.w, align 8, !noalias !310558, !noundef !19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i64 %i.u, ptr %i.y, align 8, !alias.scope !310556
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i64 %i.x, ptr %i.z, align 8, !alias.scope !310556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !310558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.u, ptr %i.aa, align 8, !noalias !310559
  store i64 0, ptr %i.b, align 8, !noalias !310559
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !310559
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !310559
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.u, ptr %i.ab, align 8, !noalias !310559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310559
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.x, ptr %i.ac, align 8, !noalias !310560
  store i64 169, ptr %i.a, align 8, !noalias !310560
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.x, ptr %i.ad, align 8, !noalias !310560
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310561)
  store i8 81, ptr %i.o, align 8, !noalias !310561
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.41.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 %i.u, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !310561
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !310561
  store i64 %i.g, ptr %i.f, align 8, !alias.scope !310561
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm12__reduce220517hd22cb7afb7ed8ee0E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  %i.c = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [264 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 4 uses
  %i.i = icmp ult i64 %i.h, 30340039594917026
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6184) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !310580
  %i.k = add nsw i64 %i.h, -1                     ; 4 uses
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !310579
  %i.l = load i64, ptr %0, align 8, !range !38, !alias.scope !310579, !noundef !19 ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !310579, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.p, i64 304, i1 false), !noalias !310580
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !310580 ; 2 uses
  %i.q = icmp eq i8 %.pr.i, 22
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm22__symbol_type_mismatch17h3a7cd77dfb7eadcfE() #52
          to label %bb.f unwind label %bb.e, !noalias !310580

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = and i8 %.pr.i, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !310580
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.u, i64 248, i1 false), !noalias !310579
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.x = load i64, ptr %i.v, align 8, !noalias !310580, !noundef !19
  %i.y = load <2 x i64>, ptr %i.t, align 8, !noalias !310580
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !310578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !310580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310582)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310583
  %i.z = add nsw i64 %i.h, -2                     ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !alias.scope !310582
  %i.aa = icmp samesign ult i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.z ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.ab, i64 304, i1 false), !noalias !310583
  %.pr.i4 = load i8, ptr %i.b, align 8, !noalias !310583 ; 2 uses
  %i.ac = icmp eq i8 %.pr.i4, 23
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm22__symbol_type_mismatch17h3a7cd77dfb7eadcfE() #52
          to label %bb.k unwind label %bb.j, !noalias !310583

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %cond.i = icmp eq i8 %.pr.i4, 86
  br i1 %cond.i, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$nickel_lang_parser..grammar..__parse__ExtendedTerm..__Symbol$GT$17h35911617b0deb48dE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !310583
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !310582
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !noalias !310583
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !310583, !noundef !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !310581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !310583
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !310584
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.3.0.copyload, ptr %i.aj, align 8, !noalias !310585
  store i64 169, ptr %i.a, align 8, !noalias !310585
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.3.0.copyload, ptr %i.ak, align 8, !noalias !310585
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !310584
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310586)
  store i8 81, ptr %i.ab, align 8, !noalias !310586
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  store i64 %i.ai, ptr %.sroa.56.0..sroa_idx, align 8, !noalias !310586
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !310586
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !310586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.l
end_hunk_2
begin_hunk_3_@_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath12__reduce220317h0f2e5dd5a1c9d7ecE:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !400432
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !400431
  %i.n = load i64, ptr %0, align 8, !range !38, !alias.scope !400431, !noundef !19 ; 3 uses
  %i.o = icmp samesign ult i64 %i.m, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !400431, !nonnull !19, !noundef !19 ; 3 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.m ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull align 8 dereferenceable(304) %i.r, i64 304, i1 false), !noalias !400432
  %.pr.i = load i8, ptr %i.d, align 8, !noalias !400432 ; 2 uses
  %i.s = icmp eq i8 %.pr.i, 4
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath22__symbol_type_mismatch17h12a1491df8b5a78cE() #52
          to label %bb.f unwind label %bb.e, !noalias !400432

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i = icmp eq i8 %.pr.i, 86
  br i1 %cond.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.t, %bb.g ], [ %.pn.ph, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef align 8 dereferenceable(288) %i.d) #53, !noalias !400432
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noalias !400432, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !400431
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.y = load i64, ptr %i.x, align 8, !noalias !400432, !noundef !19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.v, ptr %i.z, align 8, !alias.scope !400430
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !400430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !400432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !400434
  %i.ab = add nsw i64 %i.j, -2                    ; 4 uses
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !400433
  %i.ac = icmp samesign ult i64 %i.ab, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !noalias !400434
  %.pr.i5 = load i8, ptr %i.c, align 8, !noalias !400434 ; 2 uses
  %i.ae = icmp eq i8 %.pr.i5, 22
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath22__symbol_type_mismatch17h12a1491df8b5a78cE() #52
          to label %bb.k unwind label %bb.j, !noalias !400434

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = and i8 %.pr.i5, 63
  %or.cond8.i = icmp eq i8 %i.ag, 22
  br i1 %or.cond8.i, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !400434
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.ai, i64 248, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !400434
  store <2 x i64> %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !400434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400437
  %i.al = add nsw i64 %i.j, -3                    ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !alias.scope !400436
  %i.am = icmp samesign ult i64 %i.al, %i.n
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.al ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.an, i64 304, i1 false), !noalias !400437
  %.pr.i7 = load i8, ptr %i.b, align 8, !noalias !400437 ; 2 uses
  %i.ao = icmp eq i8 %.pr.i7, 23
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath22__symbol_type_mismatch17h12a1491df8b5a78cE() #52
          to label %bb.p unwind label %bb.o, !noalias !400437

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %cond.i8 = icmp eq i8 %.pr.i7, 86
  br i1 %cond.i8, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !400437
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !400436
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = load <2 x i64>, ptr %i.aq, align 8, !noalias !400437
  %i.au = load i64, ptr %i.aq, align 8, !noalias !400437, !noundef !19
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !400435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.v, ptr %i.av, align 8, !noalias !400439
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.y, ptr %i.aw, align 8, !noalias !400439
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400438
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400440)
  store i8 81, ptr %i.an, align 8, !noalias !400440
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store i64 %i.au, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !400440
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !400440
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !400440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.q
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..LetBinding$C$usize$RP$$GT$17h839eae472729741fE"(ptr noalias noundef align 8 dereferenceable(264) %i.e) #53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.af, %bb.j ], [ %i.af, %bb.l ]
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath12__reduce220417hfd1fd6a319662c1bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [304 x i8], align 8               ; 8 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !400455
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !400454, !noundef !19 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 86, ptr %i.c, align 8, !noalias !400455
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 3 uses
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !400454
  %i.j = load i64, ptr %0, align 8, !range !38, !alias.scope !400454, !noundef !19
  %i.k = icmp samesign ult i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !400454, !nonnull !19, !noundef !19
  %i.n = icmp ult i64 %i.g, 30340039594917027
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [304 x i8], ptr %i.m, i64 %i.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 304, i1 false), !noalias !400455
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !400455 ; 2 uses
  %i.p = icmp eq i8 %.pr.i, 22
  br i1 %i.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h035db530c0402b0eE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.q = phi i8 [ 86, %.thread.i ], [ %.pr.i, %bb.b ]
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath22__symbol_type_mismatch17h12a1491df8b5a78cE() #52
          to label %bb.e unwind label %bb.d, !noalias !400455

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = and i8 %i.q, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !400455
  br label %bb.f

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h035db530c0402b0eE.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = load i64, ptr %i.t, align 8, !noalias !400455, !noundef !19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.v, i64 248, i1 false), !noalias !400454
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.x = load i64, ptr %i.w, align 8, !noalias !400455, !noundef !19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i64 %i.u, ptr %i.y, align 8, !alias.scope !400453
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i64 %i.x, ptr %i.z, align 8, !alias.scope !400453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !400455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.u, ptr %i.aa, align 8, !noalias !400456
  store i64 0, ptr %i.b, align 8, !noalias !400456
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !400456
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !400456
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.u, ptr %i.ab, align 8, !noalias !400456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400456
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.x, ptr %i.ac, align 8, !noalias !400457
  store i64 169, ptr %i.a, align 8, !noalias !400457
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.x, ptr %i.ad, align 8, !noalias !400457
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400458)
  store i8 81, ptr %i.o, align 8, !noalias !400458
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.41.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 %i.u, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !400458
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !400458
  store i64 %i.g, ptr %i.f, align 8, !alias.scope !400458
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath12__reduce220517h473072a0da80f445E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  %i.c = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [264 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 4 uses
  %i.i = icmp ult i64 %i.h, 30340039594917026
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8111) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !400477
  %i.k = add nsw i64 %i.h, -1                     ; 4 uses
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !400476
  %i.l = load i64, ptr %0, align 8, !range !38, !alias.scope !400476, !noundef !19 ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !400476, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.p, i64 304, i1 false), !noalias !400477
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !400477 ; 2 uses
  %i.q = icmp eq i8 %.pr.i, 22
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath22__symbol_type_mismatch17h12a1491df8b5a78cE() #52
          to label %bb.f unwind label %bb.e, !noalias !400477

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = and i8 %.pr.i, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !400477
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.u, i64 248, i1 false), !noalias !400476
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.x = load i64, ptr %i.v, align 8, !noalias !400477, !noundef !19
  %i.y = load <2 x i64>, ptr %i.t, align 8, !noalias !400477
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !400475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !400477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400480
  %i.z = add nsw i64 %i.h, -2                     ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !alias.scope !400479
  %i.aa = icmp samesign ult i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.z ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.ab, i64 304, i1 false), !noalias !400480
  %.pr.i4 = load i8, ptr %i.b, align 8, !noalias !400480 ; 2 uses
  %i.ac = icmp eq i8 %.pr.i4, 23
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath22__symbol_type_mismatch17h12a1491df8b5a78cE() #52
          to label %bb.k unwind label %bb.j, !noalias !400480

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %cond.i = icmp eq i8 %.pr.i4, 86
  br i1 %cond.i, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$nickel_lang_parser..grammar..__parse__StaticFieldPath..__Symbol$GT$17h6850774a541a75ceE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !400480
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !400479
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !noalias !400480
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !400480, !noundef !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !400478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400480
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400481
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.3.0.copyload, ptr %i.aj, align 8, !noalias !400482
  store i64 169, ptr %i.a, align 8, !noalias !400482
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.3.0.copyload, ptr %i.ak, align 8, !noalias !400482
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400481
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400483)
  store i8 81, ptr %i.ab, align 8, !noalias !400483
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  store i64 %i.ai, ptr %.sroa.56.0..sroa_idx, align 8, !noalias !400483
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !400483
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !400483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.l
end_hunk_3
begin_hunk_4_@_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment12__reduce220317h66a33042b59ddae5E:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !490329
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !490328
  %i.n = load i64, ptr %0, align 8, !range !38, !alias.scope !490328, !noundef !19 ; 3 uses
  %i.o = icmp samesign ult i64 %i.m, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !490328, !nonnull !19, !noundef !19 ; 3 uses
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.m ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull align 8 dereferenceable(304) %i.r, i64 304, i1 false), !noalias !490329
  %.pr.i = load i8, ptr %i.d, align 8, !noalias !490329 ; 2 uses
  %i.s = icmp eq i8 %.pr.i, 4
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment22__symbol_type_mismatch17hcbcc27ec5f5cac52E() #52
          to label %bb.f unwind label %bb.e, !noalias !490329

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond.i = icmp eq i8 %.pr.i, 86
  br i1 %cond.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.t, %bb.g ], [ %.pn.ph, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef align 8 dereferenceable(288) %i.d) #53, !noalias !490329
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.v = load i64, ptr %i.u, align 8, !noalias !490329, !noundef !19 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !490328
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.y = load i64, ptr %i.x, align 8, !noalias !490329, !noundef !19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %i.v, ptr %i.z, align 8, !alias.scope !490327
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !490327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !490329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !490331
  %i.ab = add nsw i64 %i.j, -2                    ; 4 uses
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !490330
  %i.ac = icmp samesign ult i64 %i.ab, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !noalias !490331
  %.pr.i5 = load i8, ptr %i.c, align 8, !noalias !490331 ; 2 uses
  %i.ae = icmp eq i8 %.pr.i5, 22
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment22__symbol_type_mismatch17hcbcc27ec5f5cac52E() #52
          to label %bb.k unwind label %bb.j, !noalias !490331

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = and i8 %.pr.i5, 63
  %or.cond8.i = icmp eq i8 %i.ag, 22
  br i1 %or.cond8.i, label %bb.t, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !490331
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.ai, i64 248, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !490331
  store <2 x i64> %i.ak, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !490331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !490334
  %i.al = add nsw i64 %i.j, -3                    ; 3 uses
  store i64 %i.al, ptr %i.i, align 8, !alias.scope !490333
  %i.am = icmp samesign ult i64 %i.al, %i.n
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [304 x i8], ptr %i.q, i64 %i.al ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.an, i64 304, i1 false), !noalias !490334
  %.pr.i7 = load i8, ptr %i.b, align 8, !noalias !490334 ; 2 uses
  %i.ao = icmp eq i8 %.pr.i7, 23
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment22__symbol_type_mismatch17hcbcc27ec5f5cac52E() #52
          to label %bb.p unwind label %bb.o, !noalias !490334

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %cond.i8 = icmp eq i8 %.pr.i7, 86
  br i1 %cond.i8, label %bb.s, label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !490334
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !490333
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = load <2 x i64>, ptr %i.aq, align 8, !noalias !490334
  %i.au = load i64, ptr %i.aq, align 8, !noalias !490334, !noundef !19
  store <2 x i64> %i.at, ptr %i.as, align 8, !alias.scope !490332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !490334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !490335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.v, ptr %i.av, align 8, !noalias !490336
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.y, ptr %i.aw, align 8, !noalias !490336
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490335
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490337)
  store i8 81, ptr %i.an, align 8, !noalias !490337
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  store i64 %i.au, ptr %.sroa.511.0..sroa_idx, align 8, !noalias !490337
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !490337
  store i64 %i.ab, ptr %i.i, align 8, !alias.scope !490337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %bb.o, %bb.q
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..LetBinding$C$usize$RP$$GT$17h839eae472729741fE"(ptr noalias noundef align 8 dereferenceable(264) %i.e) #53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.l
  %.pn.ph = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.af, %bb.j ], [ %i.af, %bb.l ]
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment12__reduce220417hcc17ad6f8f25f1c9E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [304 x i8], align 8               ; 8 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [264 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490351)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !490352
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !490351, !noundef !19 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 86, ptr %i.c, align 8, !noalias !490352
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.g, -1                     ; 3 uses
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !490351
  %i.j = load i64, ptr %0, align 8, !range !38, !alias.scope !490351, !noundef !19
  %i.k = icmp samesign ult i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !490351, !nonnull !19, !noundef !19
  %i.n = icmp ult i64 %i.g, 30340039594917027
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [304 x i8], ptr %i.m, i64 %i.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 304, i1 false), !noalias !490352
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !490352 ; 2 uses
  %i.p = icmp eq i8 %.pr.i, 22
  br i1 %i.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.q = phi i8 [ 86, %.thread.i ], [ %.pr.i, %bb.b ]
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment22__symbol_type_mismatch17hcbcc27ec5f5cac52E() #52
          to label %bb.e unwind label %bb.d, !noalias !490352

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = and i8 %i.q, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.d
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !490352
  br label %bb.f

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0f4d0473142ee59eE.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = load i64, ptr %i.t, align 8, !noalias !490352, !noundef !19 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(248) %i.v, i64 248, i1 false), !noalias !490351
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.x = load i64, ptr %i.w, align 8, !noalias !490352, !noundef !19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i64 %i.u, ptr %i.y, align 8, !alias.scope !490350
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i64 %i.x, ptr %i.z, align 8, !alias.scope !490350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !490352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.u, ptr %i.aa, align 8, !noalias !490353
  store i64 0, ptr %i.b, align 8, !noalias !490353
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !490353
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !490353
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.u, ptr %i.ab, align 8, !noalias !490353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !490353
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.x, ptr %i.ac, align 8, !noalias !490354
  store i64 169, ptr %i.a, align 8, !noalias !490354
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.x, ptr %i.ad, align 8, !noalias !490354
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490355)
  store i8 81, ptr %i.o, align 8, !noalias !490355
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.41.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 %i.u, ptr %.sroa.52.0..sroa_idx, align 8, !noalias !490355
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !490355
  store i64 %i.g, ptr %i.f, align 8, !alias.scope !490355
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment12__reduce220517h9f0c2a24f2cfdb71E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [304 x i8], align 8               ; 6 uses
  %i.c = alloca [304 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [264 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 4 uses
  %i.i = icmp ult i64 %i.h, 30340039594917026
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %i.h, 1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10038) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !490374
  %i.k = add nsw i64 %i.h, -1                     ; 4 uses
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !490373
  %i.l = load i64, ptr %0, align 8, !range !38, !alias.scope !490373, !noundef !19 ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !490373, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %i.p, i64 304, i1 false), !noalias !490374
  %.pr.i = load i8, ptr %i.c, align 8, !noalias !490374 ; 2 uses
  %i.q = icmp eq i8 %.pr.i, 22
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment22__symbol_type_mismatch17hcbcc27ec5f5cac52E() #52
          to label %bb.f unwind label %bb.e, !noalias !490374

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = and i8 %.pr.i, 63
  %or.cond8.i = icmp eq i8 %i.s, 22
  br i1 %or.cond8.i, label %common.resume, label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.ad, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef align 8 dereferenceable(288) %i.c) #53, !noalias !490374
  br label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.u, i64 248, i1 false), !noalias !490373
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.x = load i64, ptr %i.v, align 8, !noalias !490374, !noundef !19
  %i.y = load <2 x i64>, ptr %i.t, align 8, !noalias !490374
  store <2 x i64> %i.y, ptr %i.w, align 8, !alias.scope !490372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !490374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !490377
  %i.z = add nsw i64 %i.h, -2                     ; 3 uses
  store i64 %i.z, ptr %i.g, align 8, !alias.scope !490376
  %i.aa = icmp samesign ult i64 %i.z, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [304 x i8], ptr %i.o, i64 %i.z ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.ab, i64 304, i1 false), !noalias !490377
  %.pr.i4 = load i8, ptr %i.b, align 8, !noalias !490377 ; 2 uses
  %i.ac = icmp eq i8 %.pr.i4, 23
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment22__symbol_type_mismatch17hcbcc27ec5f5cac52E() #52
          to label %bb.k unwind label %bb.j, !noalias !490377

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %cond.i = icmp eq i8 %.pr.i4, 86
  br i1 %cond.i, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr87drop_in_place$LT$nickel_lang_parser..grammar..__parse__CliFieldAssignment..__Symbol$GT$17h0730e20f1eb5faddE"(ptr noalias noundef align 8 dereferenceable(288) %i.b) #53, !noalias !490377
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !490376
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !noalias !490377
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !490377, !noundef !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !490375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !490377
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !490378
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.3.0.copyload, ptr %i.aj, align 8, !noalias !490379
  store i64 169, ptr %i.a, align 8, !noalias !490379
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.3.0.copyload, ptr %i.ak, align 8, !noalias !490379
  call fastcc void @_ZN18nickel_lang_parser7grammar11__action43017hc10b47605ddb299fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(264) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490378
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490380)
  store i8 81, ptr %i.ab, align 8, !noalias !490380
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  store i64 %i.ai, ptr %.sroa.56.0..sroa_idx, align 8, !noalias !490380
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !490380
  store i64 %i.k, ptr %i.g, align 8, !alias.scope !490380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.l
end_hunk_4
