Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferencesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1z_ENtB2x_16H10DefaultParamsECskeugdADtBsi_12pingora_core:bb.a
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4302.0.copyload, i64 %i.hl ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load1139.a = load <4 x i32>, ptr %i.hn, align 4
  %wide.load1140 = load <4 x i32>, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <4 x i32> %wide.load1139.a, ptr %i.hm, align 4
  store <4 x i32> %wide.load1140, ptr %i.hp, align 4
  %index.next1141 = add nuw i64 %index1138, 8     ; 2 uses
  %i.hq = icmp eq i64 %index.next1141, %n.vec1136
  br i1 %i.hq, label %middle.block1142, label %vector.body1137, !llvm.loop !853

middle.block1142:                                 ; preds = %vector.body1137
  %cmp.n1143 = icmp eq i64 %i.hi, %n.vec1136
  br i1 %cmp.n1143, label %.thread328, label %scalar.ph1133.preheader

scalar.ph1133.preheader:                          ; preds = %.lr.ph598, %middle.block1142
  %.sroa.5304.0597.ph = phi i64 [ %.sroa.5304.0.copyload, %.lr.ph598 ], [ %i.hk, %middle.block1142 ] ; 4 uses
  %i.hr = sub i64 %.sroa.7305.0.copyload, %.sroa.5304.0597.ph
  %xtraiter1258 = and i64 %i.hr, 3                ; 2 uses
  %lcmp.mod1259.not = icmp eq i64 %xtraiter1258, 0
  br i1 %lcmp.mod1259.not, label %scalar.ph1133.prol.loopexit, label %scalar.ph1133.prol

scalar.ph1133.prol:                               ; preds = %scalar.ph1133.preheader, %scalar.ph1133.prol
  %.sroa.5304.0597.prol = phi i64 [ %i.hu, %scalar.ph1133.prol ], [ %.sroa.5304.0597.ph, %scalar.ph1133.preheader ] ; 3 uses
  %prol.iter1260 = phi i64 [ %prol.iter1260.next, %scalar.ph1133.prol ], [ 0, %scalar.ph1133.preheader ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0.copyload, i64 %.sroa.5304.0597.prol
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4302.0.copyload, i64 %.sroa.5304.0597.prol
  %i.hu = add nuw i64 %.sroa.5304.0597.prol, 1    ; 2 uses
  %i.hv = load i32, ptr %i.ht, align 4, !noundef !4
  store i32 %i.hv, ptr %i.hs, align 4
  %prol.iter1260.next = add i64 %prol.iter1260, 1 ; 2 uses
  %prol.iter1260.cmp.not = icmp eq i64 %prol.iter1260.next, %xtraiter1258
  br i1 %prol.iter1260.cmp.not, label %scalar.ph1133.prol.loopexit, label %scalar.ph1133.prol, !llvm.loop !854

scalar.ph1133.prol.loopexit:                      ; preds = %scalar.ph1133.prol, %scalar.ph1133.preheader
  %.sroa.5304.0597.unr = phi i64 [ %.sroa.5304.0597.ph, %scalar.ph1133.preheader ], [ %i.hu, %scalar.ph1133.prol ]
  %i.hw = sub i64 %.sroa.5304.0597.ph, %.sroa.7305.0.copyload
  %i.hx = icmp ugt i64 %i.hw, -4
  br i1 %i.hx, label %.thread328, label %scalar.ph1133

scalar.ph1133:                                    ; preds = %scalar.ph1133.prol.loopexit, %scalar.ph1133
  %.sroa.5304.0597 = phi i64 [ %i.im, %scalar.ph1133 ], [ %.sroa.5304.0597.unr, %scalar.ph1133.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0.copyload, i64 %.sroa.5304.0597
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4302.0.copyload, i64 %.sroa.5304.0597
  %i.ia = add nuw i64 %.sroa.5304.0597, 1         ; 2 uses
  %i.ib = load i32, ptr %i.hz, align 4, !noundef !4
  store i32 %i.ib, ptr %i.hy, align 4
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0.copyload, i64 %i.ia
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4302.0.copyload, i64 %i.ia
  %i.ie = add nuw i64 %.sroa.5304.0597, 2         ; 2 uses
  %i.if = load i32, ptr %i.id, align 4, !noundef !4
  store i32 %i.if, ptr %i.ic, align 4
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0.copyload, i64 %i.ie
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4302.0.copyload, i64 %i.ie
  %i.ii = add nuw i64 %.sroa.5304.0597, 3         ; 2 uses
  %i.ij = load i32, ptr %i.ih, align 4, !noundef !4
  store i32 %i.ij, ptr %i.ig, align 4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0300.0.copyload, i64 %i.ii
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4302.0.copyload, i64 %i.ii
  %i.im = add nuw i64 %.sroa.5304.0597, 4         ; 2 uses
  %i.in = load i32, ptr %i.il, align 4, !noundef !4
  store i32 %i.in, ptr %i.ik, align 4
  %exitcond769.not.3 = icmp eq i64 %i.im, %.sroa.7305.0.copyload
  br i1 %exitcond769.not.3, label %.thread328, label %scalar.ph1133, !llvm.loop !855

.thread328:                                       ; preds = %scalar.ph1133.prol.loopexit, %scalar.ph1133, %middle.block1142, %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECskeugdADtBsi_12pingora_core.exit171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0306) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0246.1.lcssa) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !897
  br i1 %.not.i178, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread328
  store i32 0, ptr %i.dj, align 4, !alias.scope !896, !noalias !898
  store i32 0, ptr %.sroa.045.0, align 4, !alias.scope !896, !noalias !898
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !896, !noalias !898
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i8 0, i64 264, i1 false)
  br i1 %i.az, label %.lr.ph85.i, label %._crit_edge.i179

bb.ak:                                            ; preds = %.thread328
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #29
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc183:                                        ; preds = %bb.ak
  unreachable

.lr.ph85.i:                                       ; preds = %bb.aj
  %.val.i180 = load ptr, ptr %i.dd, align 8, !alias.scope !893, !noalias !899 ; 3 uses
  %.val39.i = load i64, ptr %i.de, align 8, !alias.scope !893, !noalias !899 ; 2 uses
  br label %bb.aq

._crit_edge.i179:                                 ; preds = %.loopexit.i, %bb.aj
  br i1 %i.dn, label %.lr.ph88.i.a, label %.invoke

.lr.ph88.i.a:                                     ; preds = %._crit_edge.i179, %bb.am
  %.sroa.0.0.i86.i = phi i64 [ %i.iw, %bb.am ], [ %2, %._crit_edge.i179 ] ; 4 uses
  %i.io = getelementptr inbounds nuw [20 x i8], ptr %.sroa.045.0, i64 %.sroa.0.0.i86.i ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !900, !noalias !898, !noundef !4
  %i.ir = and i32 %i.iq, 134217727
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.lr.ph88.i.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iu = load i32, ptr %i.it, align 4, !alias.scope !900, !noalias !898, !noundef !4
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iw = add nsw i64 %.sroa.0.0.i86.i, -1        ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %.sroa.546.0
  br i1 %i.ix, label %.lr.ph88.i.a, label %.invoke

bb.an:                                            ; preds = %bb.al, %.lr.ph88.i.a
  store i32 1, ptr %i.io, align 4, !alias.scope !900, !noalias !898
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !900, !noalias !898
  %i.iy = icmp eq i64 %.sroa.0.0.i86.i, 0
  br i1 %i.iy, label %.loopexit381, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.an, %bb.ap
  %.sroa.0.1.i92.i = phi i64 [ %i.jj, %bb.ap ], [ %.sroa.0.0.i86.i, %bb.an ] ; 4 uses
  %.sroa.08.0.i91.i = phi i64 [ %i.jm, %bb.ap ], [ 0, %bb.an ]
  %i.iz = icmp ult i64 %.sroa.0.1.i92.i, %.sroa.546.0
  br i1 %i.iz, label %bb.ao, label %.invoke

bb.ao:                                            ; preds = %.lr.ph94.i
  %i.ja = getelementptr inbounds nuw [20 x i8], ptr %.sroa.045.0, i64 %.sroa.0.1.i92.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 4, !alias.scope !900, !noalias !898, !noundef !4
  %i.jd = and i32 %i.jc, 33554431
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load i32, ptr %i.je, align 4, !alias.scope !900, !noalias !898, !noundef !4
  %i.jg = and i32 %i.jf, 134217727
  %i.jh = add nuw nsw i32 %i.jg, %i.jd            ; 2 uses
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = sub nsw i64 %.sroa.0.1.i92.i, %i.ji     ; 5 uses
  %i.jk = icmp ult i64 %i.jj, %.sroa.546.0
  br i1 %i.jk, label %bb.ap, label %.invoke

bb.ap:                                            ; preds = %bb.ao
  %i.jl = getelementptr inbounds nuw [20 x i8], ptr %.sroa.045.0, i64 %i.jj ; 2 uses
  store i32 1, ptr %i.jl, align 4, !alias.scope !900, !noalias !898
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i32 %i.jh, ptr %.sroa.412.0..sroa_idx.i.i, align 4, !alias.scope !900, !noalias !898
  %i.jm = add i64 %.sroa.08.0.i91.i, 1            ; 2 uses
  %i.jn = icmp eq i64 %i.jj, 0
  br i1 %i.jn, label %.loopexit381, label %.lr.ph94.i

bb.aq:                                            ; preds = %.loopexit.i, %.lr.ph85.i
  %.sroa.0.084.i = phi i64 [ 0, %.lr.ph85.i ], [ %.sroa.0.1.i, %.loopexit.i ] ; 5 uses
  %.sroa.05.083.i = phi i64 [ 0, %.lr.ph85.i ], [ %i.ke, %.loopexit.i ] ; 6 uses
  %i.jo = icmp ult i64 %.sroa.05.083.i, %.sroa.10.0
  br i1 %i.jo, label %bb.ar, label %.invoke

bb.ar:                                            ; preds = %bb.aq
  %i.jp = icmp ugt i64 %.sroa.0.084.i, %.sroa.17.1.lcssa
  br i1 %i.jp, label %bb.at, label %bb.as, !prof !6

bb.as:                                            ; preds = %bb.ar
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0306, i64 %.sroa.05.083.i
  %i.jr = load i32, ptr %i.jq, align 4, !alias.scope !894, !noalias !901, !noundef !4 ; 2 uses
  %i.js = zext i32 %i.jr to i64                   ; 2 uses
  %i.jt = sub nuw nsw i64 %.sroa.17.1.lcssa, %.sroa.0.084.i
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.1.lcssa, i64 %.sroa.0.084.i
  %i.jv = invoke fastcc noundef i64 @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq11UpdateNodesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(i64 noundef %2, i64 noundef %3, i64 noundef %.sroa.05.083.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, i64 noundef range(i64 -15, 9223372036854775793) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef %i.js, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ju, i64 noundef %i.jt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2864) %i.s, ptr noalias nofree noundef align 8 dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull align 4 %.sroa.045.0, i64 noundef range(i64 0, 461168601842738791) %.sroa.546.0)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc188:                                        ; preds = %bb.as
  %i.jw = icmp ult i64 %i.jv, 16384
  %spec.store.select.i181 = select i1 %i.jw, i64 0, i64 %i.jv ; 3 uses
  %i.jx = add nuw nsw i64 %.sroa.0.084.i, %i.js   ; 3 uses
  %i.jy = icmp eq i32 %i.jr, 1
  br i1 %i.jy, label %bb.au, label %bb.aw

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.084.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.17.1.lcssa, i64 noundef range(i64 0, 1152921504606846976) %.sroa.17.1.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #29
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc189:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %.noexc188
  %i.jz = add nsw i64 %i.jx, -1                   ; 3 uses
  %i.ka = icmp ult i64 %i.jz, %.sroa.17.1.lcssa
  br i1 %i.ka, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.1.lcssa, i64 %i.jz
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !895, !noalias !902, !noundef !4
  %sum.shift.i = lshr i64 %i.kc, 37               ; 2 uses
  %i.kd = icmp samesign ugt i64 %sum.shift.i, %..i177
  br i1 %i.kd, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av, %.noexc188
  %.sroa.018.0.i = phi i64 [ %..i.i, %bb.ax ], [ %spec.store.select.i181, %bb.av ], [ %spec.store.select.i181, %.noexc188 ] ; 2 uses
  %16 = icmp ugt i64 %.sroa.018.0.i, 1
  br i1 %16, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %.sroa.018.175.i = add i64 %.sroa.018.0.i, -1
  br label %.lr.ph.i182

bb.ax:                                            ; preds = %bb.av
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %spec.store.select.i181, i64 %sum.shift.i)
  br label %bb.aw

.loopexit.i:                                      ; preds = %bb.bh, %.lr.ph.i182, %bb.aw
  %.sroa.05.1.i = phi i64 [ %.sroa.05.083.i, %bb.aw ], [ %i.kh, %.lr.ph.i182 ], [ %i.kh, %bb.bh ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.jx, %bb.aw ], [ %i.mb, %bb.bh ], [ %.sroa.0.277.i, %.lr.ph.i182 ]
  %i.ke = add i64 %.sroa.05.1.i, 1
  %i.kf = add i64 %.sroa.05.1.i, 4
  %i.kg = icmp ult i64 %i.kf, %2
  br i1 %i.kg, label %bb.aq, label %._crit_edge.i179

.lr.ph.i182:                                      ; preds = %bb.bh, %.lr.ph.preheader.i
  %.sroa.018.178.i = phi i64 [ %.sroa.018.175.i, %.lr.ph.preheader.i ], [ %.sroa.018.1.i, %bb.bh ]
  %.sroa.0.277.i = phi i64 [ %i.jx, %.lr.ph.preheader.i ], [ %i.mb, %bb.bh ] ; 2 uses
  %.sroa.05.276.i = phi i64 [ %.sroa.05.083.i, %.lr.ph.preheader.i ], [ %i.kh, %bb.bh ] ; 2 uses
  %i.kh = add nuw nsw i64 %.sroa.05.276.i, 1      ; 17 uses
  %i.ki = add nuw nsw i64 %.sroa.05.276.i, 4
  %.not38.i = icmp ult i64 %i.ki, %2
  br i1 %.not38.i, label %bb.ay, label %.loopexit.i

bb.ay:                                            ; preds = %.lr.ph.i182
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.kj = icmp ult i64 %i.kh, %.sroa.546.0
  br i1 %i.kj, label %bb.az, label %.invoke

bb.az:                                            ; preds = %bb.ay
  %i.kk = getelementptr inbounds nuw [20 x i8], ptr %.sroa.045.0, i64 %i.kh ; 7 uses
  %i.kl = load i32, ptr %i.kk, align 4, !range !11, !alias.scope !904, !noalias !905, !noundef !4
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ko = load float, ptr %i.kn, align 4, !alias.scope !904, !noalias !905, !noundef !4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i40.i = phi float [ %i.ko, %bb.ba ], [ 0.000000e+00, %bb.az ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kq = load i32, ptr %i.kp, align 4, !alias.scope !906, !noalias !905, !noundef !4
  %i.kr = and i32 %i.kq, 33554431                 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kt = load i32, ptr %i.ks, align 4, !alias.scope !906, !noalias !905, !noundef !4 ; 2 uses
  %i.ku = and i32 %i.kt, 134217727
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !alias.scope !906, !noalias !905, !noundef !4 ; 2 uses
  %i.kx = zext nneg i32 %i.kr to i64
  %i.ky = zext i32 %i.kw to i64                   ; 2 uses
  %i.kz = add nuw nsw i64 %i.ky, %i.kx
  %i.la = add i64 %i.kh, %3
  %i.lb = icmp ule i64 %i.kz, %i.la
  %i.lc = icmp uge i64 %i.z, %i.ky
  %or.cond.i.i.i = and i1 %i.lc, %i.lb
  br i1 %or.cond.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %narrow.i.i.i = add nuw nsw i32 %i.ku, %i.kr
  %i.ld = zext nneg i32 %narrow.i.i.i to i64
  %i.le = sub nsw i64 %i.kh, %i.ld                ; 3 uses
  %i.lf = icmp ult i64 %i.le, %.sroa.546.0
  br i1 %i.lf, label %bb.bf, label %.invoke

bb.bd:                                            ; preds = %bb.bb
  %i.lg = lshr i32 %i.kt, 27                      ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 0
  %i.li = add i32 %i.kw, 15
  %i.lj = add nsw i32 %i.lg, -1
  %.sroa.02.0.i.i.i = select i1 %i.lh, i32 %i.li, i32 %i.lj
  %.not.i.i.i = icmp eq i32 %.sroa.02.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.bc, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lk = trunc i64 %i.kh to i32
  br label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.ll = getelementptr inbounds nuw [20 x i8], ptr %.sroa.045.0, i64 %i.le ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !range !11, !alias.scope !906, !noalias !905, !noundef !4
  %i.ln = icmp eq i32 %i.lm, 2
  br i1 %i.ln, label %bb.bg, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !alias.scope !906, !noalias !905, !noundef !4
  br label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i

_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.bf ], [ %i.lk, %bb.be ], [ %i.lp, %bb.bg ]
  store i32 2, ptr %i.kk, align 4, !alias.scope !904, !noalias !905
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store i32 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i41.i, align 4, !alias.scope !904, !noalias !905
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i180) ]
  %i.lq = icmp ult i64 %i.kh, %.val39.i
  br i1 %i.lq, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6.i.i, label %.invoke

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6.i.i: ; preds = %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.val.i180, i64 %i.kh
  %i.ls = load float, ptr %i.lr, align 4, !noalias !907, !noundef !4
  %i.lt = load float, ptr %.val.i180, align 4, !noalias !907, !noundef !4
  %i.lu = fsub float %i.ls, %i.lt                 ; 2 uses
  %i.lv = fcmp ugt float %.sroa.0.0.i40.i, %i.lu
  br i1 %i.lv, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i, label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i.i

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !908
  %i.lw = fsub float %.sroa.0.0.i40.i, %i.lu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !908
  store i64 %i.kh, ptr %i.dk, align 8, !noalias !908
  store float %i.lw, ptr %i.dl, align 8, !noalias !908
  store float %.sroa.0.0.i40.i, ptr %i.dm, align 4, !noalias !908
  invoke void @_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq20ComputeDistanceCache(i64 noundef %i.kh, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.045.0, i64 noundef range(i64 1, 461168601842738791) %.sroa.546.0, ptr noalias nofree noundef nonnull align 4 %i.e, i64 noundef 4)
          to label %.noexc194 unwind label %.loopexit

.noexc194:                                        ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i.i
  invoke void @_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq17StartPosQueuePush(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %.noexc195 unwind label %.loopexit

.noexc195:                                        ; preds = %.noexc194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !908
  br label %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i

_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i: ; preds = %.noexc195, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq30ZopfliCostModelGetLiteralCostsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit6.i.i
  %i.lx = icmp ult i64 %i.kh, %.sroa.10.0
  br i1 %i.lx, label %bb.bh, label %.invoke

bb.bh:                                            ; preds = %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0306, i64 %i.kh
  %i.lz = load i32, ptr %i.ly, align 4, !alias.scope !894, !noalias !901, !noundef !4
  %i.ma = zext i32 %i.lz to i64
  %i.mb = add i64 %.sroa.0.277.i, %i.ma           ; 2 uses
  %.sroa.018.1.i = add i64 %.sroa.018.178.i, -1   ; 2 uses
  %i.mc = icmp eq i64 %.sroa.018.1.i, 0
  br i1 %i.mc, label %.loopexit.i, label %.lr.ph.i182

.invoke:                                          ; preds = %._crit_edge.i179, %bb.y, %bb.af, %bb.ac, %.lr.ph61.i, %bb.aa, %.lr.ph68.i, %bb.au, %bb.aq, %bb.am, %bb.ao, %.lr.ph94.i, %.lr.ph.i, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i, %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i, %bb.bc, %bb.ay
  %i.md = phi i64 [ %i.jz, %bb.au ], [ %i.kh, %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i ], [ %i.gk, %bb.ac ], [ %i.jj, %bb.ao ], [ %i.iw, %bb.am ], [ %i.gy, %.lr.ph.i ], [ %i.eu, %.lr.ph68.i ], [ %i.le, %bb.bc ], [ %i.kh, %bb.ay ], [ %i.kh, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.0.1.i92.i, %.lr.ph94.i ], [ %.sroa.05.083.i, %bb.aq ], [ %.val41.i, %bb.aa ], [ %13, %.lr.ph61.i ], [ %i.gh, %bb.af ], [ 0, %bb.y ], [ %2, %._crit_edge.i179 ]
  %i.me = phi i64 [ %.sroa.17.1.lcssa, %bb.au ], [ %.val39.i, %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i ], [ 704, %bb.ac ], [ %.sroa.546.0, %bb.ao ], [ %.sroa.546.0, %bb.am ], [ %5, %.lr.ph.i ], [ %5, %.lr.ph68.i ], [ %.sroa.546.0, %bb.bc ], [ %.sroa.546.0, %bb.ay ], [ %.sroa.10.0, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.546.0, %.lr.ph94.i ], [ %.sroa.10.0, %bb.aq ], [ %.val41.i, %bb.aa ], [ %13, %.lr.ph61.i ], [ 140, %bb.af ], [ 0, %bb.y ], [ %.sroa.546.0, %._crit_edge.i179 ]
  %i.mf = phi ptr [ @138, %bb.au ], [ @151, %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i ], [ @157, %bb.ac ], [ @221, %bb.ao ], [ @219, %bb.am ], [ @159, %.lr.ph.i ], [ @154, %.lr.ph68.i ], [ @217, %bb.bc ], [ @135, %bb.ay ], [ @139, %_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.i ], [ @220, %.lr.ph94.i ], [ @137, %bb.aq ], [ @155, %bb.aa ], [ @156, %.lr.ph61.i ], [ @158, %bb.af ], [ @153, %bb.y ], [ @219, %._crit_edge.i179 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.md, i64 noundef %i.me, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mf) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit381:                                     ; preds = %bb.ap, %bb.an
  %.sroa.08.0.i.lcssa.i = phi i64 [ 0, %bb.an ], [ %i.jm, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !897
  %i.mg = add i64 %.sroa.08.0.i.lcssa.i, %i.ct    ; 2 uses
  store i64 %i.mg, ptr %14, align 8
  invoke void @_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands(i64 noundef %2, i64 noundef %3, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.045.0, i64 noundef %.sroa.546.0, ptr noalias nofree noundef nonnull align 4 %9, i64 noundef %10, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias nofree noundef nonnull align 4 %12, i64 noundef %13, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bi:                                            ; preds = %.loopexit381
  br i1 %i.do, label %.preheader, label %bb.p

bb.bj:                                            ; preds = %.lr.ph595
  %i.mh = getelementptr inbounds nuw [20 x i8], ptr %.sroa.045.0, i64 %.sroa.060.0594 ; 4 uses
  store i64 9151254648282152960, ptr %i.mh, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 0, ptr %.sroa.558.0..sroa_idx, align 4
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i32 0, ptr %.sroa.659.0..sroa_idx, align 4
  %i.mi = add nuw i64 %.sroa.060.0594, 1
  %exitcond767.not = icmp eq i64 %.sroa.060.0594, %2
  br i1 %exitcond767.not, label %._crit_edge596, label %.lr.ph595

bb.bk:                                            ; preds = %.lr.ph595
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.546.0, i64 noundef %.sroa.546.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #32
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.cb, %bb.bk
  unreachable

bb.bm:                                            ; preds = %.lr.ph589, %bb.ce
  %.sroa.0.0587 = phi i64 [ %i.al, %.lr.ph589 ], [ %.sroa.0.1, %bb.ce ] ; 8 uses
  %.sroa.09.0586 = phi i64 [ 0, %.lr.ph589 ], [ %.sroa.09.1, %bb.ce ] ; 10 uses
  %.sroa.017.0585 = phi i64 [ 0, %.lr.ph589 ], [ %i.ou, %bb.ce ] ; 9 uses
  %.sroa.0246.1584 = phi ptr [ %.sroa.0246.0, %.lr.ph589 ], [ %.sroa.0246.4, %bb.ce ] ; 10 uses
  %.sroa.17.1583 = phi i64 [ %.sroa.17.0, %.lr.ph589 ], [ %.sroa.17.4, %bb.ce ] ; 8 uses
  %i.mj = add i64 %.sroa.017.0585, %3             ; 6 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.mj)
  %i.mk = sub i64 %2, %.sroa.017.0585
  %i.ml = add i64 %.sroa.09.0586, 128             ; 3 uses
  %i.mm = icmp ult i64 %.sroa.0.0587, %i.ml
  br i1 %i.mm, label %bb.bn, label %bb.bz

bb.bn:                                            ; preds = %bb.bm
  %i.mn = icmp eq i64 %.sroa.0.0587, 0            ; 2 uses
  %..sroa.0.0 = select i1 %i.mn, i64 %i.ml, i64 %.sroa.0.0587
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.028.1 = phi i64 [ %..sroa.0.0, %bb.bn ], [ %i.mp, %bb.bo ] ; 6 uses
  %i.mo = icmp ult i64 %.sroa.028.1, %i.ml
  %i.mp = shl i64 %.sroa.028.1, 1
  br i1 %i.mo, label %bb.bo, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !909
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 1, 0) %.sroa.028.1, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc198 unwind label %.loopexit394

.noexc198:                                        ; preds = %bb.bp
  %i.mq = load i64, ptr %i.c, align 8, !range !15, !noalias !909, !noundef !4
  %i.mr = trunc nuw i64 %i.mq to i1
  %i.ms = load i64, ptr %i.ba, align 8, !range !16, !noalias !909, !noundef !4 ; 2 uses
  br i1 %i.mr, label %bb.bq, label %_RINvXs_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit.i197, !prof !6

bb.bq:                                            ; preds = %.noexc198
  %i.mt = load i64, ptr %i.bb, align 8, !noalias !909
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ms, i64 %i.mt) #32
end_hunk_0
