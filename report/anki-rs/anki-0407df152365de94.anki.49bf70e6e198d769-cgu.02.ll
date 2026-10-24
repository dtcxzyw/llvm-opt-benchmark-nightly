Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4anki13browser_table10RowContext8get_cell17h69575ee4c7db8505E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3867
  store i64 -9223372036854775808, ptr %i.aa, align 8, !noalias !3867
  invoke void @"_ZN9anki_i18n13I18n$LT$P$GT$9translate17hcb5691e7652668b4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.is, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.bm unwind label %bb.bl, !noalias !3869

iter.check:                                       ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3867
  %i.it = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !3867, !nonnull !14, !noundef !14 ; 3 uses
  %min.iters.check107 = icmp samesign ult i64 %i.ip, 4
  br i1 %min.iters.check107, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check108 = icmp samesign ult i64 %i.ip, 16
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph109

vector.ph109:                                     ; preds = %vector.main.loop.iter.check
  %i.iv = and i64 %i.ip, 12
  %n.vec110 = and i64 %i.ip, 4611686018427387888  ; 4 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.ph109, %vector.body111
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <8 x i16> [ zeroinitializer, %vector.ph109 ], [ %i.iy, %vector.body111 ]
  %vec.phi114 = phi <8 x i16> [ zeroinitializer, %vector.ph109 ], [ %i.iz, %vector.body111 ]
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %index112 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load115 = load <8 x i16>, ptr %i.iw, align 2, !noalias !3867
  %wide.load116 = load <8 x i16>, ptr %i.ix, align 2, !noalias !3867
  %i.iy = add <8 x i16> %wide.load115, %vec.phi113 ; 2 uses
  %i.iz = add <8 x i16> %wide.load116, %vec.phi114 ; 2 uses
  %index.next117 = add nuw i64 %index112, 16      ; 2 uses
  %i.ja = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.ja, label %middle.block118, label %vector.body111, !llvm.loop !3740

middle.block118:                                  ; preds = %vector.body111
  %bin.rdx119 = add <8 x i16> %i.iz, %i.iy
  %i.jb = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx119) ; 3 uses
  %cmp.n120 = icmp eq i64 %i.ip, %n.vec110
  br i1 %cmp.n120, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he303c3baa06d7b08E.exit.i.i", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block118
  %min.epilog.iters.check = icmp eq i64 %i.iv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3870

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec110, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx121 = phi i16 [ %i.jb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ip, 4611686018427387900  ; 3 uses
  %i.jc = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx121, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi124 = phi <4 x i16> [ %i.jc, %vec.epilog.ph ], [ %i.je, %vec.epilog.vector.body ]
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %index123
  %wide.load125 = load <4 x i16>, ptr %i.jd, align 2, !noalias !3867
  %i.je = add <4 x i16> %wide.load125, %vec.phi124 ; 2 uses
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.jf = icmp eq i64 %index.next126, %n.vec122
  br i1 %i.jf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3741

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jg = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.je) ; 2 uses
  %cmp.n127 = icmp eq i64 %i.ip, %n.vec122
  br i1 %cmp.n127, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he303c3baa06d7b08E.exit.i.i", label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec110, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ 0, %iter.check ], [ %i.jb, %vec.epilog.iter.check ], [ %i.jg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.jj, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %i.ji, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i16, ptr %i.jh, align 2, !noalias !3867, !noundef !14
  %i.ji = add i16 %.val.i.i.i, %.sroa.02.0.i.i.i  ; 2 uses
  %i.jj = add nuw nsw i64 %.sroa.04.0.i.i.i, 1    ; 2 uses
  %i.jk = icmp eq i64 %i.jj, %i.ip
  br i1 %i.jk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he303c3baa06d7b08E.exit.i.i", label %vec.epilog.scalar.ph, !llvm.loop !3742

bb.bl:                                            ; preds = %bb.bs, %bb.br, %bb.bm, %bb.bk
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE"(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #32
          to label %common.resume unwind label %bb.bv, !noalias !3869

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3867
  invoke void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.bn unwind label %bb.bl, !noalias !3808

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3867
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bu, %bb.bn
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52d6f739fdf6f61eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_ZN4anki13browser_table10RowContext8ease_str17hdc9ffceffd2bf1d8E.exit.i unwind label %bb.bp, !noalias !3869

bb.bp:                                            ; preds = %bb.bo
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.bq, !noalias !3869

bb.bq:                                            ; preds = %bb.bp
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !3869
  unreachable

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he303c3baa06d7b08E.exit.i.i": ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block118
  %.lcssa72 = phi i16 [ %i.jg, %vec.epilog.middle.block ], [ %i.jb, %middle.block118 ], [ %i.ji, %vec.epilog.scalar.ph ]
  %i.jo = trunc i64 %i.ip to i16                  ; 2 uses
  %i.jp = icmp eq i16 %i.jo, 0
  br i1 %i.jp, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he303c3baa06d7b08E.exit.i.i"
  %i.jq = udiv i16 %.lcssa72, %i.jo
  %i.jr = udiv i16 %i.jq, 10
  store i16 %i.jr, ptr %i.ac, align 2, !noalias !3867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3867
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !3867
  %.sroa.42.0..sroa_idx.i23.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h9c3ab772d7f4490aE", ptr %.sroa.42.0..sroa_idx.i23.i, align 8, !noalias !3867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3871
  store ptr @106, ptr %i.z, align 8, !noalias !3872
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i24.i, align 8, !noalias !3872
  %.sroa.5.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %.sroa.5.0..sroa_idx.i25.i, align 8, !noalias !3872
  %.sroa.6.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i26.i, align 8, !noalias !3872
  %.sroa.7.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i27.i, align 8, !noalias !3872
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.z)
          to label %bb.bu unwind label %bb.bl, !noalias !3873

bb.bs:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he303c3baa06d7b08E.exit.i.i"
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h52e672bf116813dcE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #33
          to label %bb.bt unwind label %bb.bl, !noalias !3867

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3867
  br label %bb.bo

bb.bv:                                            ; preds = %bb.bl
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !3869
  unreachable

_ZN4anki13browser_table10RowContext8ease_str17hdc9ffceffd2bf1d8E.exit.i: ; preds = %bb.bo
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae), !noalias !3869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3867
  br label %bb.eh

bb.bw:                                            ; preds = %bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !3805, !nonnull !14, !noundef !14 ; 9 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !3805, !noundef !14 ; 5 uses
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3d7f8920c39af89E.exit.i", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.bw
  %min.iters.check93 = icmp ult i64 %i.jw, 8
  br i1 %min.iters.check93, label %.preheader.i.preheader136, label %vector.ph94

vector.ph94:                                      ; preds = %.preheader.i.preheader
  %n.vec95 = and i64 %i.jw, -8                    ; 3 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next100, %vector.body96 ] ; 9 uses
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph94 ], [ %i.le, %vector.body96 ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph94 ], [ %i.lf, %vector.body96 ]
  %i.jy = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.jz = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.ka = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.kb = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.kc = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.kd = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.ke = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.kf = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %index97
  %i.kg = getelementptr i8, ptr %i.jy, i64 132
  %i.kh = getelementptr i8, ptr %i.jz, i64 284
  %i.ki = getelementptr i8, ptr %i.ka, i64 436
  %i.kj = getelementptr i8, ptr %i.kb, i64 588
  %i.kk = getelementptr i8, ptr %i.kc, i64 740
  %i.kl = getelementptr i8, ptr %i.kd, i64 892
  %i.km = getelementptr i8, ptr %i.ke, i64 1044
  %i.kn = getelementptr i8, ptr %i.kf, i64 1196
  %i.ko = load i32, ptr %i.kg, align 4, !noalias !3807, !noundef !14
  %i.kp = load i32, ptr %i.kh, align 4, !noalias !3807, !noundef !14
  %i.kq = load i32, ptr %i.ki, align 4, !noalias !3807, !noundef !14
  %i.kr = load i32, ptr %i.kj, align 4, !noalias !3807, !noundef !14
  %i.ks = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %i.kt = insertelement <4 x i32> %i.ks, i32 %i.kp, i64 1
  %i.ku = insertelement <4 x i32> %i.kt, i32 %i.kq, i64 2
  %i.kv = insertelement <4 x i32> %i.ku, i32 %i.kr, i64 3
  %i.kw = load i32, ptr %i.kk, align 4, !noalias !3807, !noundef !14
  %i.kx = load i32, ptr %i.kl, align 4, !noalias !3807, !noundef !14
  %i.ky = load i32, ptr %i.km, align 4, !noalias !3807, !noundef !14
  %i.kz = load i32, ptr %i.kn, align 4, !noalias !3807, !noundef !14
  %i.la = insertelement <4 x i32> poison, i32 %i.kw, i64 0
  %i.lb = insertelement <4 x i32> %i.la, i32 %i.kx, i64 1
  %i.lc = insertelement <4 x i32> %i.lb, i32 %i.ky, i64 2
  %i.ld = insertelement <4 x i32> %i.lc, i32 %i.kz, i64 3
  %i.le = add <4 x i32> %i.kv, %vec.phi98         ; 2 uses
  %i.lf = add <4 x i32> %i.ld, %vec.phi99         ; 2 uses
  %index.next100 = add nuw i64 %index97, 8        ; 2 uses
  %i.lg = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.lg, label %middle.block101, label %vector.body96, !llvm.loop !3750

middle.block101:                                  ; preds = %vector.body96
  %bin.rdx102 = add <4 x i32> %i.lf, %i.le
  %i.lh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx102) ; 2 uses
  %cmp.n103 = icmp eq i64 %i.jw, %n.vec95
  br i1 %cmp.n103, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3d7f8920c39af89E.exit.i", label %.preheader.i.preheader136

.preheader.i.preheader136:                        ; preds = %.preheader.i.preheader, %middle.block101
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec95, %middle.block101 ]
  %.sroa.02.0.i.i.ph = phi i32 [ 0, %.preheader.i.preheader ], [ %i.lh, %middle.block101 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader136, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.ll, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader136 ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %i.lk, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader136 ]
  %i.li = getelementptr inbounds nuw [152 x i8], ptr %i.ju, i64 %.sroa.04.0.i.i
  %i.lj = getelementptr i8, ptr %i.li, i64 132
  %.val.i.i = load i32, ptr %i.lj, align 4, !noalias !3807, !noundef !14
  %i.lk = add i32 %.val.i.i, %.sroa.02.0.i.i      ; 2 uses
  %i.ll = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.lm = icmp eq i64 %i.ll, %i.jw
  br i1 %i.lm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3d7f8920c39af89E.exit.i", label %.preheader.i, !llvm.loop !3751

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3d7f8920c39af89E.exit.i": ; preds = %.preheader.i, %middle.block101, %bb.bw
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.bw ], [ %i.lh, %middle.block101 ], [ %i.lk, %.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3807
  %i.ln = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 1 %i.bm, i64 noundef 10), !noalias !3807 ; 2 uses
  %i.lo = extractvalue { ptr, i64 } %i.ln, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3874
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, i64 noundef %i.lo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3874
  %i.lp = load i64, ptr %i.y, align 8, !range !25, !noalias !3874, !noundef !14
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !20, !noalias !3874, !noundef !14 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.lq, label %bb.bx, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit30.i", !prof !18

bb.bx:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3d7f8920c39af89E.exit.i"
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !3874
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ls, i64 %i.lu) #33, !noalias !3874
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit30.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb3d7f8920c39af89E.exit.i"
  %i.lv = extractvalue { ptr, i64 } %i.ln, 0
  %i.lw = load ptr, ptr %i.lt, align 8, !noalias !3874, !nonnull !14, !noundef !14 ; 2 uses
  %i.lx = icmp ule i64 %i.lo, %i.ls
  call void @llvm.assume(i1 %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3874
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lw, ptr nonnull readonly align 1 %i.lv, i64 %i.lo, i1 false), !noalias !3875
  store i64 %i.ls, ptr %i.bn, align 8, !noalias !3807
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.lw, ptr %.sroa.475.0..sroa_idx.i, align 8, !noalias !3807
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.lo, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !3807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3807
  br label %bb.eh

bb.by:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3877)
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.lz = load i8, ptr %i.ly, align 8, !range !38, !alias.scope !3878, !noundef !14
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %._crit_edge.i.i, label %bb.bz

._crit_edge.i.i:                                  ; preds = %bb.by
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3878
  %.phi.trans.insert4.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre5.i.i = load i64, ptr %.phi.trans.insert4.i.i, align 8, !alias.scope !3878
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !3878, !noundef !14 ; 3 uses
  %.not.i31.i = icmp eq i64 %i.mc, 0
  br i1 %.not.i31.i, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %bb.cb, %bb.cb, %._crit_edge.i.i
  %i.md = phi i64 [ %.pre5.i.i, %._crit_edge.i.i ], [ %i.mc, %bb.cb ], [ %i.mc, %bb.cb ]
  %i.me = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ml, %bb.cb ], [ %i.ml, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3879
  %i.mf = getelementptr inbounds nuw [152 x i8], ptr %i.me, i64 %i.md
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h66ccb6fdf85a71d5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef nonnull %i.me, ptr noundef nonnull %i.mf), !noalias !3879
  %i.mg = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !3879, !noundef !14 ; 7 uses
  %i.mi = icmp ult i64 %i.mh, 2305843009213693952
  call void @llvm.assume(i1 %i.mi)
  %i.mj = icmp eq i64 %i.mh, 0
  br i1 %i.mj, label %bb.cf, label %bb.ch

bb.cb:                                            ; preds = %bb.bz
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !alias.scope !3878, !nonnull !14, !noundef !14 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 148
  %i.mn = load i8, ptr %i.mm, align 4, !range !46, !noalias !3879, !noundef !14
  switch i8 %i.mn, label %default.unreachable [
    i8 0, label %bb.cd
    i8 1, label %bb.ce
    i8 2, label %bb.ca
    i8 3, label %bb.ca
  ]

bb.cc:                                            ; preds = %bb.bz
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #33, !noalias !3879
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3879
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3879
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !3879
  call void @"_ZN9anki_i18n13I18n$LT$P$GT$9translate17hcb5691e7652668b4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !3880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3879
  call void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.x), !noalias !3808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3879
  br label %bb.eh

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3879
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3879
  store i64 -9223372036854775808, ptr %i.u, align 8, !noalias !3879
  call void @"_ZN9anki_i18n13I18n$LT$P$GT$9translate17hcb5691e7652668b4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @98, i64 noundef 17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u), !noalias !3880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3879
  call void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.w), !noalias !3808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3879
  br label %bb.eh

bb.cf:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3881
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.ci, !noalias !3879

.noexc.i.i:                                       ; preds = %bb.cf
  %i.mq = load i64, ptr %i.s, align 8, !range !25, !noalias !3881, !noundef !14
  %i.mr = trunc nuw i64 %i.mq to i1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !range !20, !noalias !3881, !noundef !14 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.mr, label %bb.cg, label %bb.cj, !prof !18

bb.cg:                                            ; preds = %.noexc.i.i
  %i.mv = load i64, ptr %i.mu, align 8, !noalias !3881
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.mt, i64 %i.mv) #33
          to label %.noexc3.i.i unwind label %bb.ci, !noalias !3879

.noexc3.i.i:                                      ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.ca
  %i.mw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !3879, !nonnull !14, !noundef !14 ; 2 uses
  %min.iters.check78 = icmp samesign ult i64 %i.mh, 8
  br i1 %min.iters.check78, label %scalar.ph77.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %bb.ch
  %n.vec80 = and i64 %i.mh, 2305843009213693944   ; 3 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next86, %vector.body81 ] ; 2 uses
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.na, %vector.body81 ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.nb, %vector.body81 ]
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index82 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load = load <4 x i32>, ptr %i.my, align 4, !noalias !3879
  %wide.load85 = load <4 x i32>, ptr %i.mz, align 4, !noalias !3879
  %i.na = add <4 x i32> %wide.load, %vec.phi83    ; 2 uses
  %i.nb = add <4 x i32> %wide.load85, %vec.phi84  ; 2 uses
  %index.next86 = add nuw i64 %index82, 8         ; 2 uses
  %i.nc = icmp eq i64 %index.next86, %n.vec80
  br i1 %i.nc, label %middle.block87, label %vector.body81, !llvm.loop !3761

middle.block87:                                   ; preds = %vector.body81
  %bin.rdx88 = add <4 x i32> %i.nb, %i.na
  %i.nd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx88) ; 2 uses
  %cmp.n89 = icmp eq i64 %i.mh, %n.vec80
  br i1 %cmp.n89, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hce9b3dc44e05bf0fE.exit.i.i", label %scalar.ph77.preheader

scalar.ph77.preheader:                            ; preds = %bb.ch, %middle.block87
  %.sroa.04.0.i.i32.i.ph = phi i64 [ 0, %bb.ch ], [ %n.vec80, %middle.block87 ]
  %.sroa.02.0.i.i33.i.ph = phi i32 [ 0, %bb.ch ], [ %i.nd, %middle.block87 ]
  br label %scalar.ph77

scalar.ph77:                                      ; preds = %scalar.ph77.preheader, %scalar.ph77
  %.sroa.04.0.i.i32.i = phi i64 [ %i.ng, %scalar.ph77 ], [ %.sroa.04.0.i.i32.i.ph, %scalar.ph77.preheader ] ; 2 uses
  %.sroa.02.0.i.i33.i = phi i32 [ %i.nf, %scalar.ph77 ], [ %.sroa.02.0.i.i33.i.ph, %scalar.ph77.preheader ]
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.sroa.04.0.i.i32.i
  %.val.i.i34.i = load i32, ptr %i.ne, align 4, !noalias !3879, !noundef !14
  %i.nf = add i32 %.val.i.i34.i, %.sroa.02.0.i.i33.i ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4anki13browser_table10RowContext8get_cell17h69575ee4c7db8505E:bb.a
  br i1 %i.oe, label %bb.cx, label %bb.cz

bb.cw:                                            ; preds = %bb.cu
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #33, !noalias !3883
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.of = getelementptr inbounds nuw i8, ptr %.val14.i, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3883
  %i.og = load i32, ptr %i.of, align 4, !noalias !3883, !noundef !14
  %i.oh = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %i.og, ptr noalias noundef nonnull align 1 %i.r, i64 noundef 10), !noalias !3883 ; 2 uses
  %i.oi = extractvalue { ptr, i64 } %i.oh, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3884
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, i64 noundef %i.oi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3884
  %i.oj = load i64, ptr %i.q, align 8, !range !25, !noalias !3884, !noundef !14
  %i.ok = trunc nuw i64 %i.oj to i1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !range !20, !noalias !3884, !noundef !14 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.ok, label %bb.cy, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i44.i", !prof !18

bb.cy:                                            ; preds = %bb.cx
  %i.oo = load i64, ptr %i.on, align 8, !noalias !3884
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.om, i64 %i.oo) #33, !noalias !3884
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i44.i": ; preds = %bb.cx
  %i.op = extractvalue { ptr, i64 } %i.oh, 0
  %i.oq = load ptr, ptr %i.on, align 8, !noalias !3884, !nonnull !14, !noundef !14 ; 2 uses
  %i.or = icmp ule i64 %i.oi, %i.om
  call void @llvm.assume(i1 %i.or)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3884
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oq, ptr nonnull readonly align 1 %i.op, i64 %i.oi, i1 false), !noalias !3885
  store i64 %i.om, ptr %i.bn, align 8, !alias.scope !3882, !noalias !3807
  %.sroa.4.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.oq, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !alias.scope !3882, !noalias !3807
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.oi, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !3882, !noalias !3807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3883
  br label %bb.eh

bb.cz:                                            ; preds = %bb.cv
  %i.os = getelementptr inbounds nuw i8, ptr %.val14.i, i64 148
  %i.ot = load i8, ptr %i.os, align 4, !range !46, !noalias !3883, !noundef !14
  %i.ou = icmp eq i8 %i.ot, 0
  br i1 %i.ou, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %bb.cz
  %i.ov = getelementptr inbounds nuw i8, ptr %.val14.i, i64 120
  %.val.i42.i = load i32, ptr %i.ov, align 8, !noalias !3883, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3886
  %i.ow = icmp slt i32 %.val.i42.i, 0
  br i1 %i.ow, label %.noexc15.i.i.i, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3886
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3886
  %i.ox = load i64, ptr %i.n, align 8, !range !25, !noalias !3886, !noundef !14
  %i.oy = trunc nuw i64 %i.ox to i1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !range !20, !noalias !3886, !noundef !14 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.oy, label %.noexc14.i.i.i, label %bb.db, !prof !18

.noexc14.i.i.i:                                   ; preds = %.noexc.i.i.i
  %i.pc = load i64, ptr %i.pb, align 8, !noalias !3886
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.pa, i64 %i.pc) #33, !noalias !3886
  unreachable

.noexc15.i.i.i:                                   ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3886
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3886
  %i.pd = load i64, ptr %i.m, align 8, !range !25, !noalias !3886, !noundef !14
  %i.pe = trunc nuw i64 %i.pd to i1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !range !20, !noalias !3886, !noundef !14 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.pe, label %.noexc16.i.i.i, label %bb.dd, !prof !18

.noexc16.i.i.i:                                   ; preds = %.noexc15.i.i.i
  %i.pi = load i64, ptr %i.ph, align 8, !noalias !3886
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.pg, i64 %i.pi) #33, !noalias !3886
  unreachable

bb.db:                                            ; preds = %.noexc.i.i.i
  %i.pj = load ptr, ptr %i.pb, align 8, !noalias !3886, !nonnull !14, !noundef !14
  %i.pk = icmp ugt i64 %i.pa, 9
  call void @llvm.assume(i1 %i.pk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3886
  store i64 %i.pa, ptr %i.o, align 8, !noalias !3886
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.pj, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !3886
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !noalias !3886
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i.i.i, %bb.db
  %.sroa.011.0.i.i.i = call i32 @llvm.abs.i32(i32 %.val.i42.i, i1 false)
  %i.pl = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.011.0.i.i.i, ptr noalias noundef nonnull align 1 %i.p, i64 noundef 10)
          to label %bb.de unwind label %bb.df, !noalias !3886 ; 2 uses

bb.dd:                                            ; preds = %.noexc15.i.i.i
  %i.pm = load ptr, ptr %i.ph, align 8, !noalias !3886, !nonnull !14, !noundef !14
  %i.pn = icmp ugt i64 %i.pg, 10
  call void @llvm.assume(i1 %i.pn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3886
  store i64 %i.pg, ptr %i.o, align 8, !noalias !3886
  %.sroa.43.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.pm, ptr %.sroa.43.0..sroa_idx.i.i43.i, align 8, !noalias !3886
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !3886
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i.i.i unwind label %bb.df, !noalias !3886

_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit.i.i.i: ; preds = %bb.dd
  %i.po = load ptr, ptr %.sroa.43.0..sroa_idx.i.i43.i, align 8, !alias.scope !3887, !noalias !3886, !nonnull !14, !noundef !14
  %i.pp = load i64, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !alias.scope !3887, !noalias !3886, !noundef !14 ; 2 uses
  %i.pq = icmp sgt i64 %i.pp, -1
  call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pp
  store i8 45, ptr %i.pr, align 1, !noalias !3886
  store i64 1, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !alias.scope !3887, !noalias !3886
  br label %bb.dc

bb.de:                                            ; preds = %bb.dc
  %i.ps = extractvalue { ptr, i64 } %i.pl, 0      ; 3 uses
  %i.pt = extractvalue { ptr, i64 } %i.pl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ps) ]
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pt
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull %i.ps, ptr noundef nonnull %i.pu)
          to label %"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he9a0037cf8346c86E.exit.i.i" unwind label %bb.df, !noalias !3886

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #32
          to label %common.resume unwind label %bb.dg, !noalias !3886

bb.dg:                                            ; preds = %bb.df
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !3886
  unreachable

"_ZN51_$LT$i32$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he9a0037cf8346c86E.exit.i.i": ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !3807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3886
  br label %bb.eh

bb.dh:                                            ; preds = %bb.cz
  store i64 0, ptr %i.bn, align 8, !alias.scope !3882, !noalias !3807
  %.sroa.4.0..sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i40.i, align 8, !alias.scope !3882, !noalias !3807
  %.sroa.5.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i41.i, align 8, !alias.scope !3882, !noalias !3807
  br label %bb.eh

bb.di:                                            ; preds = %bb.a
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 160
  call fastcc void @_ZN4anki13browser_table13RenderContext8side_str17hedead69adb26c0fbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pw, i1 noundef zeroext false), !noalias !3808
  br label %bb.eh

bb.dj:                                            ; preds = %bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !alias.scope !3805, !nonnull !14, !noundef !14 ; 9 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !3805, !noundef !14 ; 5 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8b3699fa49428447E.exit.i", label %.preheader88.i.preheader

.preheader88.i.preheader:                         ; preds = %bb.dj
  %min.iters.check = icmp ult i64 %i.qa, 8
  br i1 %min.iters.check, label %.preheader88.i.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.preheader88.i.preheader
  %n.vec = and i64 %i.qa, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ri, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.rj, %vector.body ]
  %i.qc = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qd = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qe = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qf = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qg = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qh = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qi = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qj = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %index
  %i.qk = getelementptr i8, ptr %i.qc, i64 128
  %i.ql = getelementptr i8, ptr %i.qd, i64 280
  %i.qm = getelementptr i8, ptr %i.qe, i64 432
  %i.qn = getelementptr i8, ptr %i.qf, i64 584
  %i.qo = getelementptr i8, ptr %i.qg, i64 736
  %i.qp = getelementptr i8, ptr %i.qh, i64 888
  %i.qq = getelementptr i8, ptr %i.qi, i64 1040
  %i.qr = getelementptr i8, ptr %i.qj, i64 1192
  %i.qs = load i32, ptr %i.qk, align 8, !noalias !3807, !noundef !14
  %i.qt = load i32, ptr %i.ql, align 8, !noalias !3807, !noundef !14
  %i.qu = load i32, ptr %i.qm, align 8, !noalias !3807, !noundef !14
  %i.qv = load i32, ptr %i.qn, align 8, !noalias !3807, !noundef !14
  %i.qw = insertelement <4 x i32> poison, i32 %i.qs, i64 0
  %i.qx = insertelement <4 x i32> %i.qw, i32 %i.qt, i64 1
  %i.qy = insertelement <4 x i32> %i.qx, i32 %i.qu, i64 2
  %i.qz = insertelement <4 x i32> %i.qy, i32 %i.qv, i64 3
  %i.ra = load i32, ptr %i.qo, align 8, !noalias !3807, !noundef !14
  %i.rb = load i32, ptr %i.qp, align 8, !noalias !3807, !noundef !14
  %i.rc = load i32, ptr %i.qq, align 8, !noalias !3807, !noundef !14
  %i.rd = load i32, ptr %i.qr, align 8, !noalias !3807, !noundef !14
  %i.re = insertelement <4 x i32> poison, i32 %i.ra, i64 0
  %i.rf = insertelement <4 x i32> %i.re, i32 %i.rb, i64 1
  %i.rg = insertelement <4 x i32> %i.rf, i32 %i.rc, i64 2
  %i.rh = insertelement <4 x i32> %i.rg, i32 %i.rd, i64 3
  %i.ri = add <4 x i32> %i.qz, %vec.phi           ; 2 uses
  %i.rj = add <4 x i32> %i.rh, %vec.phi76         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rk = icmp eq i64 %index.next, %n.vec
  br i1 %i.rk, label %middle.block, label %vector.body, !llvm.loop !3772

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.rj, %i.ri
  %i.rl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.qa, %n.vec
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8b3699fa49428447E.exit.i", label %.preheader88.i.preheader143

.preheader88.i.preheader143:                      ; preds = %.preheader88.i.preheader, %middle.block
  %.sroa.04.0.i45.i.ph = phi i64 [ 0, %.preheader88.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i46.i.ph = phi i32 [ 0, %.preheader88.i.preheader ], [ %i.rl, %middle.block ]
  br label %.preheader88.i

.preheader88.i:                                   ; preds = %.preheader88.i.preheader143, %.preheader88.i
  %.sroa.04.0.i45.i = phi i64 [ %i.rp, %.preheader88.i ], [ %.sroa.04.0.i45.i.ph, %.preheader88.i.preheader143 ] ; 2 uses
  %.sroa.02.0.i46.i = phi i32 [ %i.ro, %.preheader88.i ], [ %.sroa.02.0.i46.i.ph, %.preheader88.i.preheader143 ]
  %i.rm = getelementptr inbounds nuw [152 x i8], ptr %i.py, i64 %.sroa.04.0.i45.i
  %i.rn = getelementptr i8, ptr %i.rm, i64 128
  %.val.i47.i = load i32, ptr %i.rn, align 8, !noalias !3807, !noundef !14
  %i.ro = add i32 %.val.i47.i, %.sroa.02.0.i46.i  ; 2 uses
  %i.rp = add nuw i64 %.sroa.04.0.i45.i, 1        ; 2 uses
  %i.rq = icmp eq i64 %i.rp, %i.qa
  br i1 %i.rq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8b3699fa49428447E.exit.i", label %.preheader88.i, !llvm.loop !3773

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8b3699fa49428447E.exit.i": ; preds = %.preheader88.i, %middle.block, %bb.dj
  %.sroa.0.0.i48.i = phi i32 [ 0, %bb.dj ], [ %i.rl, %middle.block ], [ %i.ro, %.preheader88.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3807
  %i.rr = call { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0f70d812c187c805E"(i32 noundef %.sroa.0.0.i48.i, ptr noalias noundef nonnull align 1 %i.bl, i64 noundef 10), !noalias !3807 ; 2 uses
  %i.rs = extractvalue { ptr, i64 } %i.rr, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3888
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %i.rs, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3888
  %i.rt = load i64, ptr %i.l, align 8, !range !25, !noalias !3888, !noundef !14
  %i.ru = trunc nuw i64 %i.rt to i1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.rw = load i64, ptr %i.rv, align 8, !range !20, !noalias !3888, !noundef !14 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.ru, label %bb.dk, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit49.i", !prof !18

bb.dk:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8b3699fa49428447E.exit.i"
  %i.ry = load i64, ptr %i.rx, align 8, !noalias !3888
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.rw, i64 %i.ry) #33, !noalias !3888
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit49.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8b3699fa49428447E.exit.i"
  %i.rz = extractvalue { ptr, i64 } %i.rr, 0
  %i.sa = load ptr, ptr %i.rx, align 8, !noalias !3888, !nonnull !14, !noundef !14 ; 2 uses
  %i.sb = icmp ule i64 %i.rs, %i.rw
  call void @llvm.assume(i1 %i.sb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3888
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sa, ptr nonnull readonly align 1 %i.rz, i64 %i.rs, i1 false), !noalias !3889
  store i64 %i.rw, ptr %i.bn, align 8, !noalias !3807
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.sa, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !3807
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.rs, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !3807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3807
  br label %bb.eh

bb.dl:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890)
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !3891, !nonnull !14, !noundef !14
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 164
  %i.sf = load i32, ptr %i.se, align 4, !noalias !3892, !noundef !14
  %i.sg = zext i32 %i.sf to i64                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3892
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.si = load i64, ptr %i.sh, align 8, !alias.scope !3891, !noundef !14 ; 2 uses
  %i.sj = icmp ugt i64 %i.si, %i.sg
  br i1 %i.sj, label %_ZN4anki13browser_table10RowContext14note_field_str17had9865cbf2f1d9a0E.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.sg, i64 noundef %i.si, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #33, !noalias !3892
  unreachable

_ZN4anki13browser_table10RowContext14note_field_str17had9865cbf2f1d9a0E.exit.i: ; preds = %bb.dl
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.sl = load ptr, ptr %i.sk, align 8, !alias.scope !3891, !nonnull !14, !noundef !14
  %i.sm = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %i.sg ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !noalias !3892, !nonnull !14, !noundef !14
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.sq = load i64, ptr %i.sp, align 8, !noalias !3892, !noundef !14
  call void @_ZN4anki4text17html_to_text_line17he90180383edb1484E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.so, i64 noundef %i.sq, i1 noundef zeroext true), !noalias !3892
  call void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k), !noalias !3893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3892
  br label %bb.eh

bb.dn:                                            ; preds = %bb.a
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ss = load ptr, ptr %i.sr, align 8, !alias.scope !3805, !nonnull !14, !noundef !14
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.su = load i64, ptr %i.st, align 8, !alias.scope !3805, !noundef !14
  call void @_ZN5alloc3str17join_generic_copy17hbee8c4e6e1b59520E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ss, i64 noundef %i.su, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @100, i64 noundef 1), !noalias !3807
  br label %bb.eh

bb.do:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3896
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sw = load i64, ptr %i.sv, align 8, !alias.scope !3897, !noundef !14
  %.not.i50.i = icmp eq i64 %i.sw, 0
  br i1 %.not.i50.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !3897, !nonnull !14, !noundef !14 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 104
  %i.ta = load i32, ptr %i.sz, align 8, !range !32, !noalias !3896, !noundef !14
  %i.tb = trunc nuw i32 %i.ta to i1
  br i1 %i.tb, label %bb.dr, label %bb.ds

bb.dq:                                            ; preds = %bb.do
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #33, !noalias !3896
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 108
  %i.td = load float, ptr %i.tc, align 4, !noalias !3896, !noundef !14
  %i.te = fmul float %i.td, 8.640000e+04
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @_ZN4anki9scheduler8timespan9time_span17h3dfe6ff699a4924bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, float noundef %i.te, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.tf, i1 noundef zeroext false), !noalias !3898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !3899
  br label %_ZN4anki13browser_table10RowContext18fsrs_stability_str17h9b16d608df5386a7E.exit.i

bb.ds:                                            ; preds = %bb.dp
  store i64 0, ptr %i.bn, align 8, !alias.scope !3894, !noalias !3807
  %.sroa.4.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i51.i, align 8, !alias.scope !3894, !noalias !3807
  %.sroa.5.0..sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i52.i, align 8, !alias.scope !3894, !noalias !3807
  br label %_ZN4anki13browser_table10RowContext18fsrs_stability_str17h9b16d608df5386a7E.exit.i

_ZN4anki13browser_table10RowContext18fsrs_stability_str17h9b16d608df5386a7E.exit.i: ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3896
  br label %bb.eh

bb.dt:                                            ; preds = %bb.a
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16.i = load ptr, ptr %i.tg, align 8, !alias.scope !3805 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val17.i = load i64, ptr %i.th, align 8, !alias.scope !3805, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3901
  %.not.i53.i = icmp eq i64 %.val17.i, 0
  br i1 %.not.i53.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.ti = getelementptr inbounds nuw i8, ptr %.val16.i, i64 104
  %i.tj = load i32, ptr %i.ti, align 8, !range !32, !noalias !3901, !noundef !14
  %i.tk = trunc nuw i32 %i.tj to i1
  br i1 %i.tk, label %bb.dw, label %bb.dx

bb.dv:                                            ; preds = %bb.dt
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #33, !noalias !3901
  unreachable

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3901
  %i.tl = getelementptr inbounds nuw i8, ptr %.val16.i, i64 112
  %i.tm = load float, ptr %i.tl, align 8, !noalias !3901, !noundef !14
  %i.tn = fadd float %i.tm, -1.000000e+00
  %i.to = fdiv float %i.tn, 9.000000e+00
  %i.tp = fmul float %i.to, 1.000000e+02
  store float %i.tp, ptr %i.h, align 4, !noalias !3901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3901
  store ptr %i.h, ptr %i.g, align 8, !noalias !3901
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17hb35e8898df474edaE", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3902
  store ptr @106, ptr %i.f, align 8, !noalias !3903
  %.sroa.4.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i55.i, align 8, !noalias !3903
  %.sroa.5.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx1.i.i, align 8, !noalias !3903
  %.sroa.6.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i56.i, align 8, !noalias !3903
  %.sroa.7.0..sroa_idx.i57.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr @107, ptr %.sroa.7.0..sroa_idx.i57.i, align 8, !noalias !3903
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !3903
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !3901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3807
  br label %_ZN4anki13browser_table10RowContext19fsrs_difficulty_str17h0ef010c3cc8eed74E.exit.i

bb.dx:                                            ; preds = %bb.du
  store i64 0, ptr %i.bn, align 8, !alias.scope !3900, !noalias !3807
end_hunk_1
begin_hunk_2_@"_ZN4anki5decks8schema11110_$LT$impl$u20$core..convert..From$LT$anki..decks..schema11..DeckSchema11$GT$$u20$for$u20$anki..decks..Deck$GT$4from17hffc1427d8e1f2f60E":bb.a
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.s = load i64, ptr %i.r, align 8, !noundef !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.u = load i32, ptr %i.t, align 8, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN4anki5decks8schema11134_$LT$impl$u20$core..convert..From$LT$$RF$anki..decks..schema11..DeckCommonSchema11$GT$$u20$for$u20$anki_proto..decks..deck..Common$GT$4from17ha06f63513136fd37E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.j)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.02.1 = phi i1 [ false, %bb.i ], [ true, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #32
          to label %bb.d unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.f, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 216, i1 false)
  invoke void @"_ZN4anki5decks8schema11130_$LT$impl$u20$core..convert..From$LT$anki..decks..schema11..NormalDeckSchema11$GT$$u20$for$u20$anki_proto..decks..deck..Normal$GT$4from17h5bc3798f198d3d34E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(216) %i.f)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #32
          to label %bb.f unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.p, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.s, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.u, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

bb.k:                                             ; preds = %bb.t, %bb.j
  ret void

bb.l:                                             ; preds = %bb.m, %bb.u, %bb.s, %bb.p, %bb.i, %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr62drop_in_place$LT$anki..decks..schema11..NormalDeckSchema11$GT$17hc7481ee736e92c10E.exit": ; preds = %bb.m, %bb.u, %bb.n, %bb.d
  %.pn6.pn.pn = phi { ptr, i32 } [ %.pn6.pn16, %bb.u ], [ %.pn6, %bb.n ], [ %.pn, %bb.d ], [ %.pn.pn12, %bb.m ]
  resume { ptr, i32 } %.pn6.pn.pn

bb.m:                                             ; preds = %.thread, %bb.d
  %.pn.pn12 = phi { ptr, i32 } [ %i.q, %.thread ], [ %.pn, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki..decks..schema11..DeckCommonSchema11$GT$17h8fe3acbb3bdb1ebbE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$anki..decks..schema11..NormalDeckSchema11$GT$17hc7481ee736e92c10E.exit" unwind label %bb.l

bb.n:                                             ; preds = %bb.p
  br i1 %.sroa.01.1, label %bb.u, label %"_ZN4core3ptr62drop_in_place$LT$anki..decks..schema11..NormalDeckSchema11$GT$17hc7481ee736e92c10E.exit"

.thread13:                                        ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN4anki5decks8schema11134_$LT$impl$u20$core..convert..From$LT$$RF$anki..decks..schema11..DeckCommonSchema11$GT$$u20$for$u20$anki_proto..decks..deck..Common$GT$4from17ha06f63513136fd37E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.e)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn6 = phi { ptr, i32 } [ %i.aj, %bb.s ], [ %i.ai, %bb.q ] ; 2 uses
  %.sroa.01.1 = phi i1 [ false, %bb.s ], [ true, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %bb.n unwind label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(224) %i.e, i64 224, i1 false)
  invoke void @"_ZN4anki5decks8schema11134_$LT$impl$u20$core..convert..From$LT$anki..decks..schema11..FilteredDeckSchema11$GT$$u20$for$u20$anki_proto..decks..deck..Filtered$GT$4from17h3487187fab1b8a6dE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.a)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #32
          to label %bb.p unwind label %bb.l

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.m, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.af, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.ah, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -9223372036854775808, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.u:                                             ; preds = %.thread13, %bb.n
  %.pn6.pn16 = phi { ptr, i32 } [ %i.ad, %.thread13 ], [ %.pn6, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$anki..decks..schema11..FilteredDeckSchema11$GT$17h29bb69ce454e9094E"(ptr noalias noundef align 8 dereferenceable(224) %i.e) #32
          to label %"_ZN4core3ptr62drop_in_place$LT$anki..decks..schema11..NormalDeckSchema11$GT$17hc7481ee736e92c10E.exit" unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5stats4card18stats_revlog_entry17haa170d8cd3017962E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 12), (20, 44)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i64, ptr %1, align 8, !noundef !14
  %i.b = sdiv i64 %i.a, 1000
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load <2 x i8>, ptr %i.c, align 4
  %i.h = tail call noundef i32 @_ZN4anki6revlog11RevlogEntry13interval_secs17hcaf2331a7b19f4dbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.i = load i32, ptr %i.d, align 4, !noundef !14
  %i.j = load i32, ptr %i.e, align 8, !noundef !14
  %i.k = uitofp i32 %i.j to float
  %i.l = fdiv float %i.k, 1.000000e+03
  %i.m = tail call noundef i32 @_ZN4anki6revlog11RevlogEntry18last_interval_secs17headc2698cc325546E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  store i64 %i.b, ptr %0, align 8
  %i.n = shufflevector <2 x i8> %i.g, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %i.o = zext <2 x i8> %i.n to <2 x i32>
  store <2 x i32> %i.o, ptr %i.f, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.h, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.l, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.m, ptr %i.t, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden { float, float } @_ZN4anki5stats4card30average_and_total_secs_strings17h04ac25b0f055fa9eE(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.preheader.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi12 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.f = getelementptr i8, ptr %i.b, i64 36
  %i.g = getelementptr i8, ptr %i.c, i64 76
  %i.h = getelementptr i8, ptr %i.d, i64 116
  %i.i = getelementptr i8, ptr %i.e, i64 156
  %i.j = load i8, ptr %i.f, align 4, !alias.scope !4990, !noundef !14
  %i.k = load i8, ptr %i.g, align 4, !alias.scope !4990, !noundef !14
  %i.l = insertelement <2 x i8> poison, i8 %i.j, i64 0
  %i.m = insertelement <2 x i8> %i.l, i8 %i.k, i64 1
  %i.n = load i8, ptr %i.h, align 4, !alias.scope !4990, !noundef !14
  %i.o = load i8, ptr %i.i, align 4, !alias.scope !4990, !noundef !14
  %i.p = insertelement <2 x i8> poison, i8 %i.n, i64 0
  %i.q = insertelement <2 x i8> %i.p, i8 %i.o, i64 1
  %i.r = icmp ne <2 x i8> %i.m, zeroinitializer
  %i.s = icmp ne <2 x i8> %i.q, zeroinitializer
  %i.t = zext <2 x i1> %i.r to <2 x i64>
  %i.u = zext <2 x i1> %i.s to <2 x i64>
  %i.v = add <2 x i64> %vec.phi, %i.t             ; 2 uses
  %i.w = add <2 x i64> %vec.phi12, %i.u           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4987

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.w, %i.v
  %i.y = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader", label %.preheader.preheader13

.preheader.preheader13:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.y, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader13, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.ae, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader13 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.ad, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader13 ]
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.aa = getelementptr i8, ptr %i.z, i64 36
  %.val.i = load i8, ptr %i.aa, align 4, !alias.scope !4990, !noundef !14
  %i.ab = icmp ne i8 %.val.i, 0
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add i64 %.sroa.02.0.i, %i.ac            ; 2 uses
  %i.ae = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %1
  br i1 %i.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader", label %.preheader, !llvm.loop !4988

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader": ; preds = %.preheader, %middle.block
  %.lcssa11 = phi i64 [ %i.y, %middle.block ], [ %i.ad, %.preheader ] ; 2 uses
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.ag = icmp ult i64 %1, 4
  br i1 %i.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader.new"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader.new": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader"
  %unroll_iter = and i64 %1, -4
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader.new"
  %.sroa.04.0.i2 = phi i64 [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader.new" ], [ %i.bb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit" ] ; 5 uses
  %.sroa.02.0.i3 = phi float [ -0.000000e+00, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader.new" ], [ %i.ba, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit" ]
  %niter = phi i64 [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader.new" ], [ %niter.next.3, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit" ]
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i2
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %.val.i4 = load i32, ptr %i.ai, align 8, !noundef !14
  %i.aj = uitofp i32 %.val.i4 to float
  %i.ak = fdiv float %i.aj, 1.000000e+03
  %i.al = fadd float %.sroa.02.0.i3, %i.ak
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i2
  %i.an = getelementptr i8, ptr %i.am, i64 72
  %.val.i4.1 = load i32, ptr %i.an, align 8, !noundef !14
  %i.ao = uitofp i32 %.val.i4.1 to float
  %i.ap = fdiv float %i.ao, 1.000000e+03
  %i.aq = fadd float %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i2
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  %.val.i4.2 = load i32, ptr %i.as, align 8, !noundef !14
  %i.at = uitofp i32 %.val.i4.2 to float
  %i.au = fdiv float %i.at, 1.000000e+03
  %i.av = fadd float %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i2
  %i.ax = getelementptr i8, ptr %i.aw, i64 152
  %.val.i4.3 = load i32, ptr %i.ax, align 8, !noundef !14
  %i.ay = uitofp i32 %.val.i4.3 to float
  %i.az = fdiv float %i.ay, 1.000000e+03
  %i.ba = fadd float %i.av, %i.az                 ; 3 uses
  %i.bb = add nuw i64 %.sroa.04.0.i2, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader"
  %.sroa.04.0.i2.epil.init = phi i64 [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader" ], [ %i.bb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa" ]
  %.sroa.02.0.i3.epil.init = phi float [ -0.000000e+00, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.preheader" ], [ %i.ba, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader"
  %.sroa.04.0.i2.epil = phi i64 [ %i.bh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil" ], [ %.sroa.04.0.i2.epil.init, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader" ] ; 2 uses
  %.sroa.02.0.i3.epil = phi float [ %i.bg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil" ], [ %.sroa.02.0.i3.epil.init, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader" ]
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil" ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil.preheader" ]
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i2.epil
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
  %.val.i4.epil = load i32, ptr %i.bd, align 8, !noundef !14
  %i.be = uitofp i32 %.val.i4.epil to float
  %i.bf = fdiv float %i.be, 1.000000e+03
  %i.bg = fadd float %.sroa.02.0.i3.epil, %i.bf   ; 2 uses
  %i.bh = add nuw i64 %.sroa.04.0.i2.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil", !llvm.loop !4989

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil", %bb.a
  %.sroa.0.0.i7 = phi i64 [ 0, %bb.a ], [ %.lcssa11, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil" ], [ %.lcssa11, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.0.0.i5 = phi float [ -0.000000e+00, %bb.a ], [ %i.ba, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h58204cfa65ee528dE.exit.loopexit.unr-lcssa" ], [ %i.bg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf434d6ff8a01f050E.exit.epil" ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i7, 0
  %i.bj = fcmp oeq float %.sroa.0.0.i5, 0.000000e+00
  %or.cond = or i1 %i.bi, %i.bj                   ; 2 uses
  %i.bk = uitofp i64 %.sroa.0.0.i7 to float
  %i.bl = fdiv float %.sroa.0.0.i5, %i.bk
  %.sroa.3.0 = select i1 %or.cond, float 0.000000e+00, float %.sroa.0.0.i5
  %.sroa.0.0 = select i1 %or.cond, float 0.000000e+00, float %i.bl
  %i.bm = insertvalue { float, float } poison, float %.sroa.0.0, 0
  %i.bn = insertvalue { float, float } %i.bm, float %.sroa.3.0, 1
  ret { float, float } %i.bn
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6search7service13browser_table45_$LT$impl$u20$anki..browser_table..Column$GT$12to_pb_column17hf8cd0aebc13d38f6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, i8 noundef range(i8 0, 20) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4997
  store i64 0, ptr %i.e, align 8, !noalias !4997
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4997
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4997
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -536870880, ptr %i.l, align 8, !noalias !4997
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !4997
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !4997
  store ptr %i.e, ptr %i.d, align 8, !noalias !4997
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @32, ptr %i.m, align 8, !noalias !4997
  %i.n = invoke noundef zeroext i1 @"_ZN66_$LT$anki..browser_table..Column$u20$as$u20$core..fmt..Display$GT$3fmt17hcf5d823382cf4c89E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b, !noalias !4998

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #32
          to label %common.resume unwind label %bb.e, !noalias !4997

bb.c:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.d, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hedb9481a91f96f94E.exit", !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @258, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #33
          to label %.noexc.i unwind label %bb.b, !noalias !4997

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !4997
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.b ], [ %.pn.pn.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hedb9481a91f96f94E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN4anki13browser_table6Column16cards_mode_label17h7630b52596da80b5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i8 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.i ], [ %i.q, %bb.g ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #32
          to label %common.resume unwind label %bb.t

bb.g:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hedb9481a91f96f94E.exit"
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hedb9481a91f96f94E.exit"
end_hunk_2
