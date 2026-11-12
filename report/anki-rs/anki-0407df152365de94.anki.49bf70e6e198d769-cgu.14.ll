Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hce30d2f4c5f0895eE":bb.a
bb.dk:                                            ; preds = %bb.dj
  %.sroa.2303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2303.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !noalias !14227
  %.sroa.9280.0.copyload282.i = load ptr, ptr %.sroa.9280.8..sroa_idx.i, align 8, !alias.scope !14279, !noalias !14227
  %.sroa.10283.0.copyload285.i = load i64, ptr %.sroa.10283.8..sroa_idx.i, align 8, !alias.scope !14279, !noalias !14227
  %.sroa.11286.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.5306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5306.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11286.0..sroa_idx287.i, i64 72, i1 false), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14227
  store i64 %i.hl, ptr %i.f, align 8, !alias.scope !14280, !noalias !14227
  %.sroa.3304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.9280.0.copyload282.i, ptr %.sroa.3304.0..sroa_idx.i, align 8, !alias.scope !14280, !noalias !14227
  %.sroa.4305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.10283.0.copyload285.i, ptr %.sroa.4305.0..sroa_idx.i, align 8, !alias.scope !14280, !noalias !14227
  br label %bb.fe

bb.dl:                                            ; preds = %bb.dj
  %.sroa.9280.8.copyload.i = load ptr, ptr %.sroa.9280.8..sroa_idx.i, align 8, !alias.scope !14279, !noalias !14227, !nonnull !13, !noundef !13
  %.sroa.10283.8.copyload.i = load i64, ptr %.sroa.10283.8..sroa_idx.i, align 8, !alias.scope !14279, !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14227
  %i.hm = load ptr, ptr %i.fq, align 8, !noalias !14227, !nonnull !13, !align !16, !noundef !13 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !14226, !nonnull !13, !align !15, !noundef !13 ; 9 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !14226, !noundef !13 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14281)
  call void @llvm.experimental.noalias.scope.decl(metadata !14282)
  call void @llvm.experimental.noalias.scope.decl(metadata !14283)
  call void @llvm.experimental.noalias.scope.decl(metadata !14284)
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %.thread359.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.hr = icmp ult i64 %i.hp, %i.gg
  br i1 %i.hr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.hs = icmp eq i64 %i.hp, 1
  br i1 %i.hs, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %.not.i.i.i = icmp eq i64 %i.hp, %i.gg
  br i1 %.not.i.i.i, label %bb.ej, label %.loopexit.i

bb.dp:                                            ; preds = %bb.dn
  %i.ht = icmp ult i64 %i.hp, 33
  br i1 %i.ht, label %bb.dt, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i

bb.dq:                                            ; preds = %bb.dn
  %i.hu = load i8, ptr %i.hn, align 1, !alias.scope !14285, !noalias !14226, !noundef !13 ; 2 uses
  %i.hv = icmp ult i64 %i.gg, 16
  br i1 %i.hv, label %.lr.ph.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.hw = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef %i.hu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gf, i64 noundef %i.gg)
          to label %.noexc137.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc137.i:                                      ; preds = %bb.dr
  %i.hx = extractvalue { i64, i64 } %i.hw, 0
  %i.hy = icmp eq i64 %i.hx, 1
  %i.hz = zext i1 %i.hy to i8
  br label %.loopexit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dq, %bb.ds
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.id, %bb.ds ], [ 0, %bb.dq ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.01.05.i.i.i.i
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !14286, !noalias !14226, !noundef !13
  %i.ic = icmp eq i8 %i.ib, %i.hu
  br i1 %i.ic, label %.thread359.i, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i
  %i.id = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.id, %i.gg
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i: ; preds = %bb.du, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14287
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gf, i64 noundef %i.gg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hn, i64 noundef %i.hp)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc138.i:                                      ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc139.i:                                      ; preds = %.noexc138.i
  %i.ie = load i64, ptr %i.c, align 8, !range !21, !noalias !14287, !noundef !13
  %i.if = trunc nuw nsw i64 %i.ie to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14287
  br label %.loopexit.i

bb.dt:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !14288)
  call void @llvm.experimental.noalias.scope.decl(metadata !14289)
  %i.ig = load i8, ptr %i.hn, align 1, !alias.scope !14290, !noalias !14226, !noundef !13 ; 3 uses
  %i.ih = add nsw i64 %i.hp, -1                   ; 2 uses
  %i.ii = icmp eq i64 %i.hp, 2
  br i1 %i.ii, label %.thread.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dt
  %i.ij = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.hp, i64 4)
  br label %bb.dv

bb.du:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i"
  %i.ik = icmp ult i64 %i.ij, %i.im
  br i1 %i.ik, label %bb.dv, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i

bb.dv:                                            ; preds = %.lr.ph, %bb.du
  %i.il = phi i64 [ %i.hp, %.lr.ph ], [ %i.im, %bb.du ]
  %i.im = add nsw i64 %i.il, -1                   ; 6 uses
  %i.in = icmp ult i64 %i.im, %i.hp
  br i1 %i.in, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.im, i64 noundef range(i64 2, 33) %i.hp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @555) #35
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc140.i:                                      ; preds = %bb.dw
  unreachable

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i": ; preds = %bb.dv
  %i.io = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.im
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !14290, !noalias !14291, !noundef !13 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i8 %i.ip, %i.ig
  br i1 %.not.i.not.i.i.i.i.i, label %bb.du, label %bb.dx

bb.dx:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i"
  %i.iq = add nuw nsw i64 %i.hp, 15
  %i.ir = icmp ult i64 %i.gg, %i.iq
  br i1 %i.ir, label %.lr.ph.split.us.i.i.i.i.i, label %bb.dy

.thread.i.i.i.i:                                  ; preds = %bb.dt
  %i.is = icmp ult i64 %i.gg, 17
  br i1 %i.is, label %.lr.ph.split.us.i.i.i.i.i, label %.thread106.i.i.i.i

.thread106.i.i.i.i:                               ; preds = %.thread.i.i.i.i
  %i.it = insertelement <1 x i8> poison, i8 %i.ig, i64 0
  %i.iu = shufflevector <1 x i8> %i.it, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %.pre.i.i.i.i = load <1 x i8>, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !14290, !noalias !14226
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.iv = insertelement <1 x i8> poison, i8 %i.ip, i64 0
  %i.iw = insertelement <1 x i8> poison, i8 %i.ig, i64 0
  %i.ix = shufflevector <1 x i8> %i.iw, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dz

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.thread.i.i.i.i, %bb.dx
  %bcmp.i.i.us23.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gf, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.hn, i64 range(i64 2, 33) %i.hp), !alias.scope !14292, !noalias !14293
  %i.iy = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i, 0
  br i1 %i.iy, label %.thread359.i, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i"

.split.us.i.i.i.i.i:                              ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i"
  %i.iz = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.iz, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.hn, i64 range(i64 2, 33) %i.hp), !alias.scope !14292, !noalias !14293
  %i.ja = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i, 0
  br i1 %i.ja, label %.thread359.i, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i": ; preds = %.lr.ph.split.us.i.i.i.i.i, %.split.us.i.i.i.i.i
  %.pn.i.i.i.i = phi ptr [ %i.iz, %.split.us.i.i.i.i.i ], [ %i.gf, %.lr.ph.split.us.i.i.i.i.i ]
  %.in.i.i.i.i = phi i64 [ %i.jb, %.split.us.i.i.i.i.i ], [ %i.gg, %.lr.ph.split.us.i.i.i.i.i ]
  %i.jb = add i64 %.in.i.i.i.i, -1                ; 2 uses
  %.not28.i.i.i.i.i = icmp ugt i64 %i.hp, %i.jb
  br i1 %.not28.i.i.i.i.i, label %.loopexit.i, label %.split.us.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dy, %.thread106.i.i.i.i
  %i.jc = phi <1 x i8> [ %.pre.i.i.i.i, %.thread106.i.i.i.i ], [ %i.iv, %bb.dy ]
  %i.jd = phi <16 x i8> [ %i.iu, %.thread106.i.i.i.i ], [ %i.ix, %bb.dy ] ; 6 uses
  %storemerge105108.i.i.i.i = phi i64 [ 1, %.thread106.i.i.i.i ], [ %i.im, %bb.dy ] ; 6 uses
  %i.je = shufflevector <1 x i8> %i.jc, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14294
  store ptr %i.gf, ptr %i.a, align 8, !noalias !14294
  store i64 %i.gg, ptr %i.fr, align 8, !noalias !14294
  store ptr %i.jf, ptr %i.fs, align 8, !noalias !14294
  store i64 %i.ih, ptr %i.ft, align 8, !noalias !14294
  %i.jg = add nuw nsw i64 %i.hp, 63               ; 2 uses
  %.not.i6.i.i.i = icmp ult i64 %i.jg, %i.gg
  br i1 %.not.i6.i.i.i, label %.lr.ph.i9.i.i.i, label %.preheader.i7.i.i.i

.preheader.i7.i.i.i:                              ; preds = %bb.ed, %bb.dz
  %.sroa.015.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.dz ], [ %.sroa.015.2.3.i.i.i.i, %bb.ed ] ; 2 uses
  %.sroa.07.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.dz ], [ %i.kv, %bb.ed ] ; 2 uses
  %i.jh = add nuw nsw i64 %i.hp, 15               ; 2 uses
  %i.ji = add i64 %.sroa.07.0.lcssa.i.i.i.i, %i.jh
  %i.jj = icmp uge i64 %i.ji, %i.gg
  %i.jk = trunc nuw i8 %.sroa.015.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond3118.i.i.i.i = select i1 %i.jj, i1 true, i1 %i.jk
  br i1 %or.cond3118.i.i.i.i, label %._crit_edge.i8.i.i.i, label %.lr.ph120.i.i.i.i

.lr.ph.i9.i.i.i:                                  ; preds = %bb.dz, %bb.ed
  %.sroa.07.0116.i.i.i.i = phi i64 [ %i.kv, %bb.ed ], [ 0, %bb.dz ] ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.07.0116.i.i.i.i ; 5 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.jl, align 1, !alias.scope !14295, !noalias !14296
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %storemerge105108.i.i.i.i
  %.val.i.i.i.i.i = load <16 x i8>, ptr %i.jm, align 1, !alias.scope !14295, !noalias !14296
  %i.jn = icmp eq <16 x i8> %.val3.i.i.i.i.i, %i.jd
  %i.jo = icmp eq <16 x i8> %.val.i.i.i.i.i, %i.je
  %narrow.i.i.i.i.i = select <16 x i1> %i.jn, <16 x i1> %i.jo, <16 x i1> zeroinitializer
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %.val3.i.1.i.i.i.i = load <16 x i8>, ptr %i.jp, align 1, !alias.scope !14295, !noalias !14296
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %storemerge105108.i.i.i.i
  %.val.i.1.i.i.i.i = load <16 x i8>, ptr %i.jq, align 1, !alias.scope !14295, !noalias !14296
  %i.jr = icmp eq <16 x i8> %.val3.i.1.i.i.i.i, %i.jd
  %i.js = icmp eq <16 x i8> %.val.i.1.i.i.i.i, %i.je
  %narrow.i.1.i.i.i.i = select <16 x i1> %i.jr, <16 x i1> %i.js, <16 x i1> zeroinitializer
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 32 ; 2 uses
  %.val3.i.2.i.i.i.i = load <16 x i8>, ptr %i.jt, align 1, !alias.scope !14295, !noalias !14296
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %storemerge105108.i.i.i.i
  %.val.i.2.i.i.i.i = load <16 x i8>, ptr %i.ju, align 1, !alias.scope !14295, !noalias !14296
  %i.jv = icmp eq <16 x i8> %.val3.i.2.i.i.i.i, %i.jd
  %i.jw = icmp eq <16 x i8> %.val.i.2.i.i.i.i, %i.je
  %narrow.i.2.i.i.i.i = select <16 x i1> %i.jv, <16 x i1> %i.jw, <16 x i1> zeroinitializer
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 48 ; 2 uses
  %.val3.i.3.i.i.i.i = load <16 x i8>, ptr %i.jx, align 1, !alias.scope !14295, !noalias !14296
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %storemerge105108.i.i.i.i
  %.val.i.3.i.i.i.i = load <16 x i8>, ptr %i.jy, align 1, !alias.scope !14295, !noalias !14296
  %i.jz = icmp eq <16 x i8> %.val3.i.3.i.i.i.i, %i.jd
  %i.ka = icmp eq <16 x i8> %.val.i.3.i.i.i.i, %i.je
  %narrow.i.3.i.i.i.i = select <16 x i1> %i.jz, <16 x i1> %i.ka, <16 x i1> zeroinitializer
  %i.kb = bitcast <16 x i1> %narrow.i.i.i.i.i to i16 ; 2 uses
  %i.kc = icmp eq i16 %i.kb, 0
  br i1 %i.kc, label %.preheader109.1.i.i.i.i, label %bb.ee

.preheader109.1.i.i.i.i:                          ; preds = %.noexc144.i, %.lr.ph.i9.i.i.i
  %.sroa.015.2.i.i.i.i = phi i8 [ 0, %.lr.ph.i9.i.i.i ], [ %i.la, %.noexc144.i ] ; 3 uses
  %3 = bitcast <16 x i1> %narrow.i.1.i.i.i.i to i16 ; 2 uses
  %i.kd = icmp eq i16 %3, 0
  br i1 %i.kd, label %.preheader109.2.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %.preheader109.1.i.i.i.i
  %i.ke = or disjoint i64 %.sroa.07.0116.i.i.i.i, 16
  %i.kf = trunc nuw i8 %.sroa.015.2.i.i.i.i to i1
  %i.kg = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ke, i16 noundef %3, i1 noundef zeroext %i.kf)
          to label %.noexc141.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc141.i:                                      ; preds = %bb.ea
  %i.kh = zext i1 %i.kg to i8
  %i.ki = or i8 %.sroa.015.2.i.i.i.i, %i.kh
  br label %.preheader109.2.i.i.i.i

.preheader109.2.i.i.i.i:                          ; preds = %.noexc141.i, %.preheader109.1.i.i.i.i
  %.sroa.015.2.1.i.i.i.i = phi i8 [ %.sroa.015.2.i.i.i.i, %.preheader109.1.i.i.i.i ], [ %i.ki, %.noexc141.i ] ; 3 uses
  %4 = bitcast <16 x i1> %narrow.i.2.i.i.i.i to i16 ; 2 uses
  %i.kj = icmp eq i16 %4, 0
  br i1 %i.kj, label %.preheader109.3.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %.preheader109.2.i.i.i.i
  %i.kk = or disjoint i64 %.sroa.07.0116.i.i.i.i, 32
  %i.kl = trunc nuw i8 %.sroa.015.2.1.i.i.i.i to i1
  %i.km = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.kk, i16 noundef %4, i1 noundef zeroext %i.kl)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc142.i:                                      ; preds = %bb.eb
  %i.kn = zext i1 %i.km to i8
  %i.ko = or i8 %.sroa.015.2.1.i.i.i.i, %i.kn
  br label %.preheader109.3.i.i.i.i

.preheader109.3.i.i.i.i:                          ; preds = %.noexc142.i, %.preheader109.2.i.i.i.i
  %.sroa.015.2.2.i.i.i.i = phi i8 [ %.sroa.015.2.1.i.i.i.i, %.preheader109.2.i.i.i.i ], [ %i.ko, %.noexc142.i ] ; 3 uses
  %5 = bitcast <16 x i1> %narrow.i.3.i.i.i.i to i16 ; 2 uses
  %i.kp = icmp eq i16 %5, 0
  br i1 %i.kp, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.preheader109.3.i.i.i.i
  %i.kq = or disjoint i64 %.sroa.07.0116.i.i.i.i, 48
  %i.kr = trunc nuw i8 %.sroa.015.2.2.i.i.i.i to i1
  %i.ks = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.kq, i16 noundef %5, i1 noundef zeroext %i.kr)
          to label %.noexc143.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc143.i:                                      ; preds = %bb.ec
  %i.kt = zext i1 %i.ks to i8
  %i.ku = or i8 %.sroa.015.2.2.i.i.i.i, %i.kt
  br label %bb.ed

bb.ed:                                            ; preds = %.noexc143.i, %.preheader109.3.i.i.i.i
  %.sroa.015.2.3.i.i.i.i = phi i8 [ %.sroa.015.2.2.i.i.i.i, %.preheader109.3.i.i.i.i ], [ %i.ku, %.noexc143.i ] ; 2 uses
  %i.kv = add i64 %.sroa.07.0116.i.i.i.i, 64      ; 3 uses
  %i.kw = add i64 %i.kv, %i.jg
  %i.kx = icmp uge i64 %i.kw, %i.gg
  %i.ky = trunc nuw i8 %.sroa.015.2.3.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %i.kx, i1 true, i1 %i.ky
  br i1 %or.cond.i.i.i.i, label %.preheader.i7.i.i.i, label %.lr.ph.i9.i.i.i

bb.ee:                                            ; preds = %.lr.ph.i9.i.i.i
  %i.kz = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0116.i.i.i.i, i16 noundef %i.kb, i1 noundef zeroext false)
          to label %.noexc144.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc144.i:                                      ; preds = %bb.ee
  %i.la = zext i1 %i.kz to i8
  br label %.preheader109.1.i.i.i.i

._crit_edge.i8.i.i.i:                             ; preds = %bb.ef, %.preheader.i7.i.i.i
  %.sroa.015.3.lcssa.i.i.i.i = phi i8 [ %.sroa.015.0.lcssa.i.i.i.i, %.preheader.i7.i.i.i ], [ %.sroa.015.4.i.i.i.i, %bb.ef ] ; 2 uses
  %.lcssa.i.i.i.i = phi i1 [ %i.jk, %.preheader.i7.i.i.i ], [ %i.ls, %bb.ef ]
  %i.lb = sub nuw i64 %i.gg, %i.ih
  %i.lc = add i64 %i.lb, -16                      ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.lc ; 2 uses
  %.val3.i65.i.i.i.i = load <16 x i8>, ptr %i.ld, align 1, !alias.scope !14295, !noalias !14297
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %storemerge105108.i.i.i.i
  %.val.i66.i.i.i.i = load <16 x i8>, ptr %i.le, align 1, !alias.scope !14295, !noalias !14297
  %i.lf = icmp eq <16 x i8> %.val3.i65.i.i.i.i, %i.jd
  %i.lg = icmp eq <16 x i8> %.val.i66.i.i.i.i, %i.je
  %narrow.i67.i.i.i.i = select <16 x i1> %i.lf, <16 x i1> %i.lg, <16 x i1> zeroinitializer
  %i.lh = bitcast <16 x i1> %narrow.i67.i.i.i.i to i16 ; 2 uses
  %i.li = icmp eq i16 %i.lh, 0
  br i1 %i.li, label %bb.eh, label %bb.ei

.lr.ph120.i.i.i.i:                                ; preds = %.preheader.i7.i.i.i, %bb.ef
  %.sroa.07.1119.i.i.i.i = phi i64 [ %i.lp, %bb.ef ], [ %.sroa.07.0.lcssa.i.i.i.i, %.preheader.i7.i.i.i ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.07.1119.i.i.i.i ; 2 uses
  %.val3.i68.i.i.i.i = load <16 x i8>, ptr %i.lj, align 1, !alias.scope !14295, !noalias !14298
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %storemerge105108.i.i.i.i
  %.val.i69.i.i.i.i = load <16 x i8>, ptr %i.lk, align 1, !alias.scope !14295, !noalias !14298
  %i.ll = icmp eq <16 x i8> %.val3.i68.i.i.i.i, %i.jd
  %i.lm = icmp eq <16 x i8> %.val.i69.i.i.i.i, %i.je
  %narrow.i70.i.i.i.i = select <16 x i1> %i.ll, <16 x i1> %i.lm, <16 x i1> zeroinitializer
  %i.ln = bitcast <16 x i1> %narrow.i70.i.i.i.i to i16 ; 2 uses
  %i.lo = icmp eq i16 %i.ln, 0
  br i1 %i.lo, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.noexc145.i, %.lr.ph120.i.i.i.i
  %.sroa.015.4.i.i.i.i = phi i8 [ 0, %.lr.ph120.i.i.i.i ], [ %i.lu, %.noexc145.i ] ; 2 uses
  %i.lp = add i64 %.sroa.07.1119.i.i.i.i, 16      ; 2 uses
  %i.lq = add i64 %i.lp, %i.jh
  %i.lr = icmp uge i64 %i.lq, %i.gg
  %i.ls = trunc nuw i8 %.sroa.015.4.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i = or i1 %i.lr, %i.ls
  br i1 %or.cond3.i.i.i.i, label %._crit_edge.i8.i.i.i, label %.lr.ph120.i.i.i.i

bb.eg:                                            ; preds = %.lr.ph120.i.i.i.i
  %i.lt = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1119.i.i.i.i, i16 noundef %i.ln, i1 noundef zeroext false)
          to label %.noexc145.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc145.i:                                      ; preds = %bb.eg
  %i.lu = zext i1 %i.lt to i8
  br label %bb.ef

bb.eh:                                            ; preds = %.noexc146.i, %._crit_edge.i8.i.i.i
  %.sroa.015.5.i.i.i.i = phi i8 [ %.sroa.015.3.lcssa.i.i.i.i, %._crit_edge.i8.i.i.i ], [ %i.lx, %.noexc146.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14294
  br label %.loopexit.i

bb.ei:                                            ; preds = %._crit_edge.i8.i.i.i
  %i.lv = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.lc, i16 noundef %i.lh, i1 noundef zeroext %.lcssa.i.i.i.i)
          to label %.noexc146.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14226

.noexc146.i:                                      ; preds = %bb.ei
  %i.lw = zext i1 %i.lv to i8
  %i.lx = or i8 %.sroa.015.3.lcssa.i.i.i.i, %i.lw
  br label %bb.eh

bb.ej:                                            ; preds = %bb.do
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %i.hn, ptr nonnull readonly align 1 %i.gf, i64 %i.gg), !alias.scope !14299, !noalias !14226
  %i.ly = icmp eq i32 %bcmp.i.i.i, 0
  %i.lz = zext i1 %i.ly to i8
  br label %.loopexit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ea, %bb.eb, %bb.ec, %bb.ee, %bb.eg, %bb.ei, %.noexc138.i, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i, %bb.dr, %bb.dw, %bb.cp
  %lpad.loopexit.split-lp531 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i", %bb.ds, %bb.ej, %bb.eh, %.noexc139.i, %.noexc137.i, %bb.do
  %.sroa.0.0.i.i.i = phi i8 [ %i.lz, %bb.ej ], [ %i.hz, %.noexc137.i ], [ 0, %bb.ds ], [ %i.if, %.noexc139.i ], [ 0, %bb.do ], [ %.sroa.015.5.i.i.i.i, %bb.eh ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i" ]
  %i.ma = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %i.ma, label %.thread359.i, label %bb.cr

.thread359.i:                                     ; preds = %.loopexit.i, %.lr.ph.split.us.i.i.i.i.i, %bb.dl, %.split.us.i.i.i.i.i, %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14227
  invoke fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdc404a107fcc5846E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.es, i64 noundef %i.eu)
          to label %bb.em unwind label %bb.el, !noalias !14226

bb.ek:                                            ; preds = %bb.en, %bb.el
  %.pn50.pn.pn.i = phi { ptr, i32 } [ %.pn50.pn.i, %bb.en ], [ %i.mb, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14227
  br label %.loopexit.split-lp.i

bb.el:                                            ; preds = %.thread359.i
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.em:                                            ; preds = %.thread359.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14227
  invoke fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdc404a107fcc5846E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gf, i64 noundef %i.gg)
          to label %bb.ep unwind label %bb.eo, !noalias !14226

bb.en:                                            ; preds = %bb.eq, %bb.eo
  %.pn50.pn.i = phi { ptr, i32 } [ %.pn50.i, %bb.eq ], [ %i.mc, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14227
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #33
          to label %bb.ek unwind label %bb.s, !noalias !14226

bb.eo:                                            ; preds = %bb.em
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ep:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14227
  invoke fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdc404a107fcc5846E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gq, i64 noundef %i.gr)
          to label %bb.es unwind label %bb.er, !noalias !14226

bb.eq:                                            ; preds = %bb.et, %bb.er
  %.pn50.i = phi { ptr, i32 } [ %i.me, %bb.et ], [ %i.md, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14227
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #33
          to label %bb.en unwind label %bb.s, !noalias !14226

bb.er:                                            ; preds = %bb.ep
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.es:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14227
  invoke fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdc404a107fcc5846E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.9280.8.copyload.i, i64 noundef %.sroa.10283.8.copyload.i)
          to label %bb.eu unwind label %bb.et, !noalias !14226

bb.et:                                            ; preds = %bb.es
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14227
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #33
          to label %bb.eq unwind label %bb.s, !noalias !14226

bb.eu:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !14227
  %i.mf = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mf, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !14227
  %i.mg = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !14227
  %i.mh = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14227
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$anki_proto..github..GithubRelease$GT$$GT$17h02428d112baccad9E"(ptr noalias noundef align 8 dereferenceable(96) %i.s)
          to label %bb.ew unwind label %bb.ev, !noalias !14226

bb.ev:                                            ; preds = %bb.eu
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false), !noalias !14227
  br label %.loopexit.split-lp.i

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false), !noalias !14227
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98f9714e1013b8e8E.exit.thread.i"

bb.ex:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98f9714e1013b8e8E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14227
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %i.ab)
          to label %bb.fa unwind label %bb.ez, !noalias !14226

bb.ey:                                            ; preds = %bb.fq, %bb.fk, %bb.ez
  %.pn80.i = phi { ptr, i32 } [ %i.mk, %bb.ez ], [ %.pn76.pn.pn.i, %bb.fq ], [ %.pn76.pn.pn.i, %bb.fk ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.val, i64 57
  store i8 0, ptr %i.mj, align 1, !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14227
  br label %bb.ar

bb.ez:                                            ; preds = %bb.fo, %bb.ex
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.fa:                                            ; preds = %bb.ex
  %i.ml = getelementptr inbounds nuw i8, ptr %.val, i64 57
  store i8 0, ptr %i.ml, align 1, !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14227
  %i.mm = getelementptr inbounds nuw i8, ptr %.val, i64 58
  store i8 0, ptr %i.mm, align 2, !noalias !14227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14227
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit.i": ; preds = %bb.fa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit102.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false), !noalias !14300
  br label %"_ZN4anki7backend6github89_$LT$impl$u20$anki..services..BackendGithubService$u20$for$u20$anki..backend..Backend$GT$18get_latest_release28_$u7b$$u7b$closure$u7d$$u7d$17h3f51d89eb89b7fa5E.exit"

bb.fb:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98f9714e1013b8e8E.exit.thread.i"
  %i.mn = landingpad { ptr, i32 }
end_hunk_0
