Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.02?download=true
inline.NumInlined: 358
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9configure3aqt19build_and_check_aqt17h5fcb78e7430b2d49E:bb.a

.lr.ph.i82.us.i:                                  ; preds = %bb.bt, %bb.by
  %i.jg = phi i64 [ %i.kh, %bb.by ], [ %i.hy, %bb.bt ]
  %i.jh = phi i64 [ %i.kg, %bb.by ], [ %.sroa.18.0.us.i, %bb.bt ] ; 9 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.jg
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !368, !noalias !365, !noundef !5
  %i.jk = and i8 %i.jj, 63
  %i.jl = zext nneg i8 %i.jk to i64
  %i.jm = shl nuw i64 1, %i.jl
  %i.jn = and i64 %i.jm, %.sroa.16.0.copyload.i
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.bx, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i82.us.i
  br i1 %exitcond.not.i.us.i632.not, label %.lr.ph634, label %.preheader.us.i.preheader

.preheader.i:                                     ; preds = %bb.bv
  %i.jp = add nuw i64 %.sroa.02.0.i.us.i633, 1    ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.jp, %umax49.i.us.i
  br i1 %exitcond.not.i.us.i, label %.preheader.us.i.preheader, label %.lr.ph634

.preheader.us.i.preheader:                        ; preds = %.preheader.i, %.preheader.i.preheader
  br i1 %.first_iter.i.fr, label %.preheader.us.i.us.preheader, label %.preheader.us.i.preheader.split

.preheader.us.i.us.preheader:                     ; preds = %.preheader.us.i.preheader
  br i1 %.not160.us.i.us635, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", label %.lr.ph637

.preheader.us.i.us:                               ; preds = %bb.bu
  %.not160.us.i.us = icmp eq i64 %i.jq, 0
  br i1 %.not160.us.i.us, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", label %.lr.ph637

.lr.ph637:                                        ; preds = %.preheader.us.i.us.preheader, %.preheader.us.i.us
  %.sroa.2.0.i.us.i.us636 = phi i64 [ %i.jq, %.preheader.us.i.us ], [ %.sroa.4117.0.copyload.i, %.preheader.us.i.us.preheader ]
  %i.jq = add i64 %.sroa.2.0.i.us.i.us636, -1     ; 4 uses
  %i.jr = add i64 %i.jq, %i.jh                    ; 3 uses
  %i.js = icmp ult i64 %i.jr, %.sroa.37.0.copyload.i
  br i1 %i.js, label %bb.bu, label %.split311.us.invoke.i

bb.bu:                                            ; preds = %.lr.ph637
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 %i.jq
  %i.ju = load i8, ptr %i.jt, align 1, !alias.scope !369, !noalias !365, !noundef !5
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.jr
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !368, !noalias !365, !noundef !5
  %.not.i83.us.i.us = icmp eq i8 %i.ju, %i.jw
  br i1 %.not.i83.us.i.us, label %.preheader.us.i.us, label %.split.us

.split.us:                                        ; preds = %bb.bu
  %i.jx = add i64 %i.jh, %.sroa.8119.0.copyload.i
  br label %bb.by

.preheader.us.i.preheader.split:                  ; preds = %.preheader.us.i.preheader
  br i1 %.not160.us.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", label %.split311.us.invoke.i

.lr.ph634:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.02.0.i.us.i633 = phi i64 [ %i.jp, %.preheader.i ], [ %.sroa.4117.0.copyload.i, %.preheader.i.preheader ] ; 4 uses
  %i.jy = add i64 %.sroa.02.0.i.us.i633, %i.jh    ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %.sroa.37.0.copyload.i
  br i1 %i.jz, label %bb.bv, label %.split306.us.i

bb.bv:                                            ; preds = %.lr.ph634
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 %.sroa.02.0.i.us.i633
  %i.kb = load i8, ptr %i.ka, align 1, !alias.scope !369, !noalias !365, !noundef !5
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.jy
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !368, !noalias !365, !noundef !5
  %.not21.i.us.i = icmp eq i8 %i.kb, %i.kd
  br i1 %.not21.i.us.i, label %.preheader.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.reass580.i.reass.reass = add i64 %i.jh, %invariant.op887
  %i.ke = add i64 %.reass580.i.reass.reass, %.sroa.02.0.i.us.i633
  br label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i82.us.i
  %i.kf = add i64 %i.jh, %.sroa.40.0.copyload.i
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.split.us, %bb.bw
  %i.kg = phi i64 [ %i.ke, %bb.bw ], [ %i.kf, %bb.bx ], [ %i.jx, %.split.us ] ; 2 uses
  %i.kh = add i64 %i.kg, %i.hu                    ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %.sroa.37.0.copyload.i
  br i1 %i.ki, label %.lr.ph.i82.us.i, label %.loopexit162.split.us.i

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i": ; preds = %.preheader161.us.i.preheader, %.preheader.us.i.us.preheader, %.preheader161.us.i, %.preheader.us.i.us, %.preheader.us.i.preheader.split
  %.sroa.7.1.us.i = phi i64 [ %i.jh, %.preheader.us.i.preheader.split ], [ %i.jh, %.preheader.us.i.us ], [ %i.ic, %.preheader161.us.i ], [ %i.jh, %.preheader.us.i.us.preheader ], [ %i.ic, %.preheader161.us.i.preheader ] ; 2 uses
  %.sroa.30123.1.us.i = phi i64 [ -1, %.preheader.us.i.preheader.split ], [ -1, %.preheader.us.i.us ], [ 0, %.preheader161.us.i ], [ -1, %.preheader.us.i.us.preheader ], [ 0, %.preheader161.us.i.preheader ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.06.0.i.us.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.7.1.us.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %i.kj, ptr noundef nonnull readonly %i.kk)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

bb.bz:                                            ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i"
  %.sroa.11.1.us.i = add i64 %.sroa.7.1.us.i, %.sroa.40.0.copyload.i ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull @29, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @29, i64 7))
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.i"
  %i.kl = and i64 %.sroa.8119.0.copyload.i, 65536
  %.not.i = icmp eq i64 %i.kl, 0
  br i1 %.not.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.i", label %.loopexit162.split.us.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.i": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35124.0.copyload.i) ]
  %i.km = trunc i64 %.sroa.8119.0.copyload.i to i1 ; 2 uses
  %i.kn = icmp eq i64 %.sroa.4117.0.copyload.i, 0
  br i1 %i.kn, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.i"
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.4117.0.copyload.i, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.cb, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.ca
  %i.ko = icmp eq i64 %.sroa.4117.0.copyload.i, %.sroa.37.0.copyload.i
  br i1 %i.ko, label %bb.cc, label %.loopexit.i

bb.cb:                                            ; preds = %bb.ca
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.copyload.i
  %i.kq = load i8, ptr %i.kp, align 1, !alias.scope !370, !noalias !371, !noundef !5
  %i.kr = icmp sgt i8 %i.kq, -65
  br i1 %i.kr, label %bb.cc, label %.loopexit.i

bb.cc:                                            ; preds = %bb.cb, %.split.i.i.i.peel.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.split.i"
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.copyload.i ; 4 uses
  %i.kt = icmp samesign eq i64 %.sroa.4117.0.copyload.i, %.sroa.37.0.copyload.i
  br i1 %i.kt, label %.loopexit447.i.peel, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ku = load i8, ptr %i.ks, align 1, !noalias !372, !noundef !5 ; 5 uses
  %i.kv = icmp sgt i8 %i.ku, -1
  br i1 %i.kv, label %bb.ce, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.peel": ; preds = %bb.cd
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.kx = and i8 %i.ku, 31
  %i.ky = zext nneg i8 %i.kx to i32               ; 3 uses
  %i.kz = add nuw nsw i64 %.sroa.4117.0.copyload.i, 1
  %i.la = icmp samesign ne i64 %i.kz, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.la), !noalias !373
  %i.lb = load i8, ptr %i.kw, align 1, !noalias !372, !noundef !5
  %i.lc = shl nuw nsw i32 %i.ky, 6
  %i.ld = and i8 %i.lb, 63
  %i.le = zext nneg i8 %i.ld to i32               ; 2 uses
  %i.lf = or disjoint i32 %i.lc, %i.le
  %i.lg = icmp samesign ugt i8 %i.ku, -33
  br i1 %i.lg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.peel", label %bb.cf

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.peel"
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.li = add nuw nsw i64 %.sroa.4117.0.copyload.i, 2
  %i.lj = icmp samesign ne i64 %i.li, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.lj), !noalias !373
  %i.lk = load i8, ptr %i.lh, align 1, !noalias !372, !noundef !5
  %i.ll = shl nuw nsw i32 %i.le, 6
  %i.lm = and i8 %i.lk, 63
  %i.ln = zext nneg i8 %i.lm to i32
  %i.lo = or disjoint i32 %i.ll, %i.ln            ; 2 uses
  %i.lp = shl nuw nsw i32 %i.ky, 12
  %i.lq = or disjoint i32 %i.lo, %i.lp
  %i.lr = icmp samesign ugt i8 %i.ku, -17
  br i1 %i.lr, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.peel", label %bb.cf

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.peel"
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %i.lt = add nuw nsw i64 %.sroa.4117.0.copyload.i, 3
  %i.lu = icmp samesign ne i64 %i.lt, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.lu), !noalias !373
  %i.lv = load i8, ptr %i.ls, align 1, !noalias !372, !noundef !5
  %i.lw = shl nuw nsw i32 %i.ky, 18
  %i.lx = and i32 %i.lw, 1835008
  %i.ly = shl nuw nsw i32 %i.lo, 6
  %i.lz = and i8 %i.lv, 63
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.ly, %i.ma
  %i.mc = or disjoint i32 %i.mb, %i.lx
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.md = zext nneg i8 %i.ku to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.lq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.peel" ], [ %i.mc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.peel" ], [ %i.lf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.peel" ], [ %i.md, %bb.ce ] ; 4 uses
  %i.me = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  call void @llvm.assume(i1 %i.me), !noalias !373
  br i1 %i.km, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.mf, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.mg, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.mh, i64 3, i64 4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.ch ], [ %..i.i.peel.i.peel, %bb.ci ], [ 1, %bb.cg ]
  %i.mi = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.4117.0.copyload.i ; 12 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not.i.i.i.i.peel = icmp ult i64 %i.mi, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.cl, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.ck
  %i.mk = icmp eq i64 %i.mi, %.sroa.37.0.copyload.i
  br i1 %i.mk, label %bb.cm, label %.loopexit.i

bb.cl:                                            ; preds = %bb.ck
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.mi
  %i.mm = load i8, ptr %i.ml, align 1, !alias.scope !370, !noalias !371, !noundef !5
  %i.mn = icmp sgt i8 %i.mm, -65
  br i1 %i.mn, label %bb.cm, label %.loopexit.i

bb.cm:                                            ; preds = %bb.cl, %.split.i.i.i.i.peel, %bb.cj
  %1 = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.mi ; 4 uses
  %i.mo = icmp samesign eq i64 %i.mi, %.sroa.37.0.copyload.i
  br i1 %i.mo, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mp = load i8, ptr %1, align 1, !noalias !372, !noundef !5 ; 5 uses
  %i.mq = icmp sgt i8 %i.mp, -1
  br i1 %i.mq, label %27, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.peel": ; preds = %bb.cn
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = and i8 %i.mp, 31
  %4 = zext nneg i8 %3 to i32                     ; 3 uses
  %i.mr = add nuw nsw i64 %i.mi, 1
  %i.ms = icmp samesign ne i64 %i.mr, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.ms), !noalias !373
  %5 = load i8, ptr %2, align 1, !noalias !372, !noundef !5
  %6 = shl nuw nsw i32 %4, 6
  %7 = and i8 %5, 63
  %8 = zext nneg i8 %7 to i32                     ; 2 uses
  %9 = or disjoint i32 %6, %8
  %i.mt = icmp samesign ugt i8 %i.mp, -33
  br i1 %i.mt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.peel", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.peel"
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.mu = add nuw nsw i64 %i.mi, 2
  %i.mv = icmp samesign ne i64 %i.mu, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.mv), !noalias !373
  %11 = load i8, ptr %10, align 1, !noalias !372, !noundef !5
  %12 = shl nuw nsw i32 %8, 6
  %13 = and i8 %11, 63
  %14 = zext nneg i8 %13 to i32
  %15 = or disjoint i32 %12, %14                  ; 2 uses
  %16 = shl nuw nsw i32 %4, 12
  %17 = or disjoint i32 %15, %16
  %i.mw = icmp samesign ugt i8 %i.mp, -17
  br i1 %i.mw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.peel", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.peel"
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.mx = add nuw nsw i64 %i.mi, 3
  %i.my = icmp samesign ne i64 %i.mx, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.my), !noalias !373
  %19 = load i8, ptr %18, align 1, !noalias !372, !noundef !5
  %20 = shl nuw nsw i32 %4, 18
  %21 = and i32 %20, 1835008
  %22 = shl nuw nsw i32 %15, 6
  %23 = and i8 %19, 63
  %24 = zext nneg i8 %23 to i32
  %25 = or disjoint i32 %22, %24
  %26 = or disjoint i32 %25, %21
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel"

27:                                               ; preds = %bb.cn
  %28 = zext nneg i8 %i.mp to i32
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel": ; preds = %27, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.peel" ], [ %26, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.peel" ], [ %9, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.peel" ], [ %28, %27 ]
  %29 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %29), !noalias !373
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel"

.loopexit447.i.peel:                              ; preds = %bb.cc
  br i1 %i.km, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel", label %.loopexit162.split.us.i

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel": ; preds = %.loopexit447.i.peel, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel", %bb.cm, %bb.cf
  %.sroa.4117.1345.i.peel = phi i64 [ %.sroa.4117.0.copyload.i, %.loopexit447.i.peel ], [ %i.mi, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.loopexit.loopexit.i.peel" ], [ %.sroa.4117.0.copyload.i, %bb.cf ], [ %.sroa.37.0.copyload.i, %bb.cm ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.4117.1345.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %i.hl, ptr noundef nonnull readonly %i.mz)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

bb.co:                                            ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel"
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull @29, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @29, i64 7))
          to label %.preheader.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

.preheader.i.i:                                   ; preds = %bb.co, %bb.da
  %.sroa.4117.0.i = phi i64 [ %.sroa.4117.1345.i, %bb.da ], [ %.sroa.4117.1345.i.peel, %bb.co ] ; 13 uses
  %i.na = icmp eq i64 %.sroa.4117.0.i, 0
  br i1 %i.na, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.4117.0.i, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.cq, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.cp
  %i.nb = icmp eq i64 %.sroa.4117.0.i, %.sroa.37.0.copyload.i
  br i1 %i.nb, label %bb.cr, label %.loopexit.i

bb.cq:                                            ; preds = %bb.cp
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.i
  %i.nd = load i8, ptr %i.nc, align 1, !alias.scope !370, !noalias !371, !noundef !5
  %i.ne = icmp sgt i8 %i.nd, -65
  br i1 %i.ne, label %bb.cr, label %.loopexit.i

bb.cr:                                            ; preds = %bb.cq, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %.sroa.4117.0.i ; 4 uses
  %i.ng = icmp samesign eq i64 %.sroa.4117.0.i, %.sroa.37.0.copyload.i
  br i1 %i.ng, label %.loopexit162.split.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nh = load i8, ptr %i.nf, align 1, !noalias !372, !noundef !5 ; 4 uses
  %i.ni = icmp sgt i8 %i.nh, -1
  br i1 %i.ni, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i": ; preds = %bb.cs
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  %i.nk = and i8 %i.nh, 31
  %i.nl = zext nneg i8 %i.nk to i32               ; 3 uses
  %i.nm = add nuw nsw i64 %.sroa.4117.0.i, 1
  %i.nn = icmp samesign ne i64 %i.nm, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.nn), !noalias !373
  %i.no = load i8, ptr %i.nj, align 1, !noalias !372, !noundef !5
  %i.np = shl nuw nsw i32 %i.nl, 6
  %i.nq = and i8 %i.no, 63
  %i.nr = zext nneg i8 %i.nq to i32               ; 2 uses
  %i.ns = or disjoint i32 %i.np, %i.nr
  %i.nt = icmp samesign ugt i8 %i.nh, -33
  br i1 %i.nt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i", label %bb.ct

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i"
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nf, i64 2
  %i.nv = add nuw nsw i64 %.sroa.4117.0.i, 2
  %i.nw = icmp samesign ne i64 %i.nv, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.nw), !noalias !373
  %i.nx = load i8, ptr %i.nu, align 1, !noalias !372, !noundef !5
  %i.ny = shl nuw nsw i32 %i.nr, 6
  %i.nz = and i8 %i.nx, 63
  %i.oa = zext nneg i8 %i.nz to i32
  %i.ob = or disjoint i32 %i.ny, %i.oa            ; 2 uses
  %i.oc = shl nuw nsw i32 %i.nl, 12
  %i.od = or disjoint i32 %i.ob, %i.oc
  %i.oe = icmp samesign ugt i8 %i.nh, -17
  br i1 %i.oe, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i", label %bb.ct

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i"
  %i.of = getelementptr inbounds nuw i8, ptr %i.nf, i64 3
  %i.og = add nuw nsw i64 %.sroa.4117.0.i, 3
  %i.oh = icmp samesign ne i64 %i.og, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.oh), !noalias !373
  %i.oi = load i8, ptr %i.of, align 1, !noalias !372, !noundef !5
  %i.oj = shl nuw nsw i32 %i.nl, 18
  %i.ok = and i32 %i.oj, 1835008
  %i.ol = shl nuw nsw i32 %i.ob, 6
  %i.om = and i8 %i.oi, 63
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = or disjoint i32 %i.ol, %i.on
  %i.op = or disjoint i32 %i.oo, %i.ok
  br label %bb.ct

bb.ct:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i"
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.od, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i" ], [ %i.op, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i" ], [ %i.ns, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i" ] ; 4 uses
  %i.oq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.oq), !noalias !373
  %i.or = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.or, label %.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.os = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.os, label %.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ot = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ot, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.cs, %bb.cv, %bb.cu, %bb.ct
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.cu ], [ %..i.i.peel.i, %bb.cv ], [ 1, %bb.ct ], [ 1, %bb.cs ]
  %i.ou = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.4117.0.i ; 15 uses
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %.thread
  %.not.i.i.i.i = icmp ult i64 %i.ou, %.sroa.37.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.cx, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.cw
  %i.ow = icmp eq i64 %i.ou, %.sroa.37.0.copyload.i
  br i1 %i.ow, label %bb.cy, label %.loopexit.i

bb.cx:                                            ; preds = %bb.cw
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.ou
  %i.oy = load i8, ptr %i.ox, align 1, !alias.scope !370, !noalias !371, !noundef !5
  %i.oz = icmp sgt i8 %i.oy, -65
  br i1 %i.oz, label %bb.cy, label %.loopexit.i

bb.cy:                                            ; preds = %bb.cx, %.split.i.i.i.i, %.thread
  %i.pa = icmp samesign eq i64 %i.ou, %.sroa.37.0.copyload.i
  br i1 %i.pa, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i", label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.35124.0.copyload.i, i64 %i.ou
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !372, !noundef !5 ; 3 uses
  %i.pd = icmp sgt i8 %i.pc, -1
  br i1 %i.pd, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i": ; preds = %bb.cz
  %i.pe = add nuw nsw i64 %i.ou, 1
  %i.pf = icmp samesign ne i64 %i.pe, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.pf), !noalias !373
  %i.pg = icmp samesign ugt i8 %i.pc, -33
  br i1 %i.pg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i"
  %i.ph = add nuw nsw i64 %i.ou, 2
  %i.pi = icmp samesign ne i64 %i.ph, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.pi), !noalias !373
  %i.pj = icmp samesign ugt i8 %i.pc, -17
  br i1 %i.pj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i"
  %i.pk = add nuw nsw i64 %i.ou, 3
  %i.pl = icmp samesign ne i64 %i.pk, %.sroa.37.0.copyload.i
  call void @llvm.assume(i1 %i.pl), !noalias !373
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

.loopexit.i:                                      ; preds = %bb.cl, %.split.i.i.i.i.peel, %bb.cb, %.split.i.i.i.peel.i.peel, %bb.cx, %.split.i.i.i.i, %bb.cq, %.split.i.i.i.peel.i
  %.sroa.4117.1.lcssa.i = phi i64 [ %i.ou, %bb.cx ], [ %i.ou, %.split.i.i.i.i ], [ %.sroa.4117.0.i, %.split.i.i.i.peel.i ], [ %.sroa.4117.0.i, %bb.cq ], [ %.sroa.4117.0.copyload.i, %.split.i.i.i.peel.i.peel ], [ %.sroa.4117.0.copyload.i, %bb.cb ], [ %i.mi, %.split.i.i.i.i.peel ], [ %i.mi, %bb.cl ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.35124.0.copyload.i, i64 noundef %.sroa.37.0.copyload.i, i64 noundef %.sroa.4117.1.lcssa.i, i64 noundef %.sroa.37.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !371

.noexc77.i:                                       ; preds = %.loopexit.i
  unreachable

.split.us.i:                                      ; preds = %.lr.ph
  %i.pm = add i64 %i.ic, %.sroa.0.0.i.i92.us.i
  %umax.i96.i = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload.i, i64 %i.pm)
  br label %.split311.us.invoke.i

.split311.us.invoke.i:                            ; preds = %.preheader.us.i.preheader.split, %bb.bp, %.lr.ph630, %.lr.ph637, %.split306.us.i, %.split.us.i
  %i.pn = phi i64 [ %umax.i96.i, %.split.us.i ], [ %i.jr, %.lr.ph637 ], [ %umax.i.i, %.split306.us.i ], [ %i.iw, %bb.bp ], [ %i.iu, %.lr.ph630 ], [ %i.hw, %.preheader.us.i.preheader.split ]
  %i.po = phi i64 [ %.sroa.37.0.copyload.i, %.split.us.i ], [ %.sroa.37.0.copyload.i, %.lr.ph637 ], [ %.sroa.37.0.copyload.i, %.split306.us.i ], [ %.sroa.37.0.copyload.i, %bb.bp ], [ %.sroa.40.0.copyload.i, %.lr.ph630 ], [ %.sroa.40.0.copyload.i, %.preheader.us.i.preheader.split ]
  %i.pp = phi ptr [ @3, %.split.us.i ], [ @2, %.lr.ph637 ], [ @3, %.split306.us.i ], [ @2, %bb.bp ], [ @1, %.lr.ph630 ], [ @1, %.preheader.us.i.preheader.split ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.pn, i64 noundef %i.po, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pp) #19
          to label %.split311.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !374

.split311.us.cont.i:                              ; preds = %.split311.us.invoke.i
  unreachable

.split306.us.i:                                   ; preds = %.lr.ph634
  %i.pq = add i64 %i.jh, %.sroa.4117.0.copyload.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload.i, i64 %i.pq)
  br label %.split311.us.invoke.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.da, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i", %bb.bz, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.us.i", %.loopexit162.split.us.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit.i.i", %bb.co, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i.peel", %.split311.us.invoke.i, %.loopexit.i
  %lpad.loopexit.split-lp677 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.cl) #16
          to label %.body63.i unwind label %bb.db, !noalias !365

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i", %bb.cz, %bb.cy
  %.sroa.4117.1345.i = phi i64 [ %.sroa.37.0.copyload.i, %bb.cy ], [ %i.ou, %bb.cz ], [ %i.ou, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i" ], [ %i.ou, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i" ], [ %i.ou, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i" ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.4117.0.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.4117.1345.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %i.pr, ptr noundef nonnull readonly %i.ps)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

.loopexit162.split.us.i:                          ; preds = %bb.cr, %bb.bt, %bb.bk, %.sink.split.i.us.i, %bb.by, %.loopexit447.i.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i"
  %.sroa.06.0.i221.i = phi i64 [ %.sroa.06.0.i.us.i, %.sink.split.i.us.i ], [ 0, %.loopexit447.i.peel ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.i.split.i" ], [ %.sroa.06.0.i.us.i, %bb.by ], [ %.sroa.06.0.i.us.i, %bb.bt ], [ %.sroa.06.0.i.us.i, %bb.bk ], [ %.sroa.37.0.copyload.i, %bb.cr ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.06.0.i221.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull readonly %i.pt, ptr noundef nonnull readonly %i.pu)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365

bb.da:                                            ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull @29, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @29, i64 7))
          to label %.preheader.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !365, !llvm.loop !282

end_hunk_0
begin_hunk_1_@_ZN9configure3aqt19build_and_check_aqt17h5fcb78e7430b2d49E:bb.a
  %i.zt = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 22, ptr %i.zt, align 8, !noalias !415
  %i.zu = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17had08439720f41efbE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @44, i64 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !415
  %.not22.i35 = icmp eq ptr %i.zu, null
  br i1 %.not22.i35, label %bb.ju, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.ju:                                            ; preds = %_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i
  %i.zv = call fastcc noundef ptr @_ZN9configure3aqt11build_icons17h94c10d842ccebf96E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not23.i = icmp eq ptr %i.zv, null
  br i1 %.not23.i, label %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit: ; preds = %bb.ju
  %i.zw = call fastcc noundef ptr @_ZN9configure3aqt14copy_sveltekit17h4add919bd7e1234aE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) ; 2 uses
  %.not17 = icmp eq ptr %i.zw, null
  br i1 %.not17, label %bb.jv, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.jv:                                            ; preds = %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !417
  call void @_ZN9configure12anki_version17h0cc5eff0917c3307E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f), !noalias !417
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !417
  %i.zx = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef 8) #18, !noalias !417 ; 7 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.jy, label %bb.jz, !prof !11

bb.jw:                                            ; preds = %bb.ka, %bb.jx
  %.pn14.i = phi { ptr, i32 } [ %i.zz, %bb.jx ], [ %.pn.pn.pn.i, %bb.ka ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #16
          to label %common.resume unwind label %bb.kl, !noalias !417

bb.jx:                                            ; preds = %bb.jy
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.jy:                                            ; preds = %bb.jv
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 192) #19
          to label %bb.km unwind label %bb.jx, !noalias !417

bb.jz:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !417
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.kc unwind label %bb.kb, !noalias !417

bb.ka:                                            ; preds = %bb.ke, %bb.kb
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i36, %bb.ke ], [ %i.aaa, %bb.kb ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zx, i64 noundef 192, i64 noundef 8) #18, !noalias !417
  br label %bb.jw

bb.kb:                                            ; preds = %bb.jz
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

bb.kc:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !418
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i37 unwind label %bb.kf, !noalias !418

.noexc.i37:                                       ; preds = %bb.kc
  %i.aab = load i64, ptr %i.a, align 8, !range !12, !noalias !418, !noundef !5
  %i.aac = trunc nuw i64 %i.aab to i1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aae = load i64, ptr %i.aad, align 8, !range !7, !noalias !418, !noundef !5 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aac, label %bb.kd, label %bb.kg, !prof !11

bb.kd:                                            ; preds = %.noexc.i37
  %i.aag = load i64, ptr %i.aaf, align 8, !noalias !418
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aae, i64 %i.aag) #19
          to label %.noexc16.i unwind label %bb.kf, !noalias !418

.noexc16.i:                                       ; preds = %bb.kd
  unreachable

bb.ke:                                            ; preds = %bb.kh, %bb.kf
  %.pn.pn.i36 = phi { ptr, i32 } [ %.pn.i39, %bb.kh ], [ %i.aah, %bb.kf ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #16
          to label %bb.ka unwind label %bb.kl, !noalias !417

bb.kf:                                            ; preds = %bb.kd, %bb.kc
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

bb.kg:                                            ; preds = %.noexc.i37
  %i.aai = load ptr, ptr %i.aaf, align 8, !noalias !418, !nonnull !5, !noundef !5 ; 2 uses
  %i.aaj = icmp ugt i64 %i.aae, 8
  call void @llvm.assume(i1 %i.aaj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aai, ptr noundef nonnull align 1 dereferenceable(9) @46, i64 9, i1 false), !noalias !419
  store i64 %i.aae, ptr %i.d, align 8, !noalias !417
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.aai, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !417
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 9, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !417
  %.sroa.44.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 -9223372036854775808, ptr %.sroa.44.0..sroa_idx.i38, align 8, !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !417
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @47, i64 noundef 17)
          to label %bb.kj unwind label %bb.ki, !noalias !417

bb.kh:                                            ; preds = %bb.kk, %bb.ki
  %.pn.i39 = phi { ptr, i32 } [ %i.aal, %bb.kk ], [ %i.aak, %bb.ki ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #16
          to label %bb.ke unwind label %bb.kl, !noalias !417

bb.ki:                                            ; preds = %bb.kg
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.kj:                                            ; preds = %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !417
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 17)
          to label %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit unwind label %bb.kk, !noalias !417

bb.kk:                                            ; preds = %bb.kj
  %i.aal = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #16
          to label %bb.kh unwind label %bb.kl, !noalias !417

bb.kl:                                            ; preds = %bb.kk, %bb.kh, %bb.ke, %bb.jw
  %i.aam = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !417
  unreachable

bb.km:                                            ; preds = %bb.jy
  unreachable

_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit: ; preds = %bb.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !417
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zx, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aan, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !417
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zx, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aao, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !417
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zx, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aap, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !417
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr @49, ptr %i.aaq, align 8, !noalias !417
  %i.aar = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 3, ptr %i.aar, align 8, !noalias !417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !417
  %i.aas = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i8 6, ptr %i.aas, align 8, !noalias !417
  %i.aat = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 -9223372036854775805, ptr %i.aat, align 8, !noalias !417
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 4, ptr %.sroa.4.0..sroa_idx.i40, align 8, !noalias !417
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.zx, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !417
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 4, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !417
  %i.aau = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr @50, ptr %i.aau, align 8, !noalias !417
  %i.aav = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 2, ptr %i.aav, align 8, !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !417
  %i.aaw = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17hcdfb22b909a3a781E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !417
  %.not18 = icmp eq ptr %i.aaw, null
  br i1 %.not18, label %bb.kn, label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

bb.kn:                                            ; preds = %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit
  %i.aax = call fastcc noundef ptr @_ZN9configure3aqt12check_python17hf683dd98dfe43dedE(ptr noalias noundef align 8 dereferenceable(248) %0)
  br label %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread

_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit.thread: ; preds = %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread46.i, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread.i, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.thread.i, %bb.ju, %_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.i, %_ZN9configure3aqt10build_imgs17hdefb8903ff95c7b7E.exit.i, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.i, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit78.i", %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i26", %bb.kn, %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit, %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit, %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit, %_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit
  %.sroa.0.0 = phi ptr [ %i.aaw, %_ZN9configure3aqt11build_wheel17hd8c5f9761a57a607E.exit ], [ %i.gz, %_ZN9configure3aqt11build_forms17hda932fd8c0c9422eE.exit ], [ %i.tk, %_ZN9configure3aqt23build_generated_sources17h4bba6898dc16cc3aE.exit ], [ %i.zw, %_ZN9configure3aqt17build_data_folder17h48c493a90b06261fE.exit ], [ %i.aax, %bb.kn ], [ %i.ru, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit.i26" ], [ %i.tg, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$$GT$17h605c3cff841a528bE.exit78.i" ], [ %i.yf, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread46.i ], [ %.sroa.0.0.i34.ph.i, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.thread.i ], [ %i.vt, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.thread.i ], [ %i.zv, %bb.ju ], [ %i.zu, %_ZN9configure3aqt11build_pages17hbddd40b6beee126eE.exit.i ], [ %i.zo, %_ZN9configure3aqt8build_js17h2edf5509ceabe4d7E.exit.i ], [ %i.wv, %_ZN9configure3aqt10build_imgs17hdefb8903ff95c7b7E.exit.i ], [ %i.wh, %_ZN9configure3aqt9build_css17hb44c0644d4367f0dE.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h399d5e92061c30f7E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !456 {
.lr.ph.i:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @137, i64 noundef 35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @138, i64 noundef 2)
  %.sroa.07.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.sroa.4.0.copyload = load i64, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8 ; 26 uses
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.07.sroa.6.0.copyload = load i64, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.07.sroa.7.0.copyload = load i64, ptr %.sroa.07.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.07.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.07.sroa.8.0.copyload = load i64, ptr %.sroa.07.sroa.8.0..sroa_idx, align 8
  %.sroa.07.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.07.sroa.10.0.copyload = load i64, ptr %.sroa.07.sroa.10.0..sroa_idx, align 8
  %.sroa.07.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.07.sroa.12.0.copyload = load ptr, ptr %.sroa.07.sroa.12.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 16 uses
  %.sroa.07.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.07.sroa.13.0.copyload = load i64, ptr %.sroa.07.sroa.13.0..sroa_idx, align 8 ; 41 uses
  %.sroa.07.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.07.sroa.14.0.copyload = load ptr, ptr %.sroa.07.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.07.sroa.15.0.copyload = load i64, ptr %.sroa.07.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.b = trunc nuw i64 %.sroa.07.sroa.0.0.copyload to i1
  %i.c = add i64 %.sroa.07.sroa.15.0.copyload, -1 ; 3 uses
  br i1 %i.b, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.sroa.14.0.copyload) ]
  %i.d = sub i64 %.sroa.07.sroa.15.0.copyload, %.sroa.07.sroa.6.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.4.0.copyload, i64 %.sroa.07.sroa.15.0.copyload)
  %i.e = add i64 %.sroa.07.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.e, %.sroa.07.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %exitcond.not.i.us319.not = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.15.0.copyload
  %invariant.op423 = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %.not82.us322 = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br label %bb.a

bb.a:                                             ; preds = %.loopexit19.thread.i.i.i.us, %.lr.ph.i.split.us
  %.sroa.39.0.us = phi i64 [ 0, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 4 uses
  %.sroa.2937.0.us = phi i64 [ %.sroa.07.sroa.10.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.2937.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 2 uses
  %.sroa.17.0.us = phi i64 [ %.sroa.07.sroa.8.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 3 uses
  %i.f = icmp eq i64 %.sroa.2937.0.us, -1
  %i.g = add i64 %.sroa.17.0.us, %i.c             ; 3 uses
  %i.h = icmp ult i64 %i.g, %.sroa.07.sroa.13.0.copyload ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  br i1 %i.h, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

.lr.ph.i21.us:                                    ; preds = %bb.b, %.sink.split.i.us
  %i.i = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.2937.0.us, %bb.b ] ; 3 uses
  %i.j = phi i64 [ %i.am, %.sink.split.i.us ], [ %i.g, %bb.b ]
  %i.k = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.17.0.us, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !457, !noundef !5
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.p, %.sroa.07.sroa.7.0.copyload
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i21.us
  %.sroa.0.0.i.i23.us = call i64 @llvm.umax.i64(i64 %i.i, i64 %.sroa.07.sroa.4.0.copyload) ; 4 uses
  %umax49.i24.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i23.us, i64 %.sroa.07.sroa.15.0.copyload)
  %exitcond.not.i26.us314.not = icmp ult i64 %.sroa.0.0.i.i23.us, %.sroa.07.sroa.15.0.copyload
  br i1 %exitcond.not.i26.us314.not, label %.lr.ph, label %.preheader83.us.preheader

bb.d:                                             ; preds = %bb.e
  %i.s = add nuw i64 %.sroa.02.0.i25.us315, 1     ; 2 uses
  %exitcond.not.i26.us = icmp eq i64 %i.s, %umax49.i24.us
  br i1 %exitcond.not.i26.us, label %.preheader83.us.preheader, label %.lr.ph

.preheader83.us.preheader:                        ; preds = %bb.d, %bb.c
  %i.t = icmp ult i64 %i.i, %.sroa.07.sroa.4.0.copyload
  br i1 %i.t, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.02.0.i25.us315 = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i.i23.us, %bb.c ] ; 4 uses
  %i.u = add i64 %.sroa.02.0.i25.us315, %i.k      ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.07.sroa.13.0.copyload
  br i1 %i.v, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i25.us315
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !458, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !457, !noundef !5
  %.not21.i28.us = icmp eq i8 %i.x, %i.z
  br i1 %.not21.i28.us, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.reass = add i64 %i.k, %invariant.op
  %i.aa = add i64 %.reass.reass, %.sroa.02.0.i25.us315
  br label %.sink.split.i.us

.preheader83.us:                                  ; preds = %bb.h
  %i.ab = icmp ult i64 %i.i, %i.ac
  br i1 %i.ab, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph317:                                        ; preds = %.preheader83.us.preheader, %.preheader83.us
  %.sroa.2.0.i29.us316 = phi i64 [ %i.ac, %.preheader83.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader83.us.preheader ]
  %i.ac = add i64 %.sroa.2.0.i29.us316, -1        ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %.sroa.07.sroa.15.0.copyload
  br i1 %i.ad, label %bb.g, label %.split137.us

bb.g:                                             ; preds = %.lr.ph317
  %i.ae = add i64 %i.ac, %i.k                     ; 3 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.07.sroa.13.0.copyload
  br i1 %i.af, label %bb.h, label %.split140.us

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !458, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !457, !noundef !5
  %.not.i30.us = icmp eq i8 %i.ah, %i.aj
  br i1 %.not.i30.us, label %.preheader83.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %i.k, %.sroa.07.sroa.6.0.copyload
  br label %.sink.split.i.us

bb.j:                                             ; preds = %.lr.ph.i21.us
  %i.al = add i64 %i.k, %.sroa.07.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.j, %bb.i, %bb.f
  %.sink.i.us = phi i64 [ %i.d, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ]
  %.ph71.i.us = phi i64 [ %i.ak, %bb.i ], [ %i.aa, %bb.f ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = add i64 %.ph71.i.us, %i.c               ; 2 uses
  %i.an = icmp ult i64 %i.am, %.sroa.07.sroa.13.0.copyload
  br i1 %i.an, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

bb.k:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  br i1 %i.h, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.lr.ph.i16.us:                                    ; preds = %bb.k, %bb.r
  %i.ao = phi i64 [ %i.bp, %bb.r ], [ %i.g, %bb.k ]
  %i.ap = phi i64 [ %i.bo, %bb.r ], [ %.sroa.17.0.us, %bb.k ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !459, !noundef !5
  %i.as = and i8 %i.ar, 63
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.au, %.sroa.07.sroa.7.0.copyload
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i16.us
  br i1 %exitcond.not.i.us319.not, label %.lr.ph321, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.l
  %i.ax = add nuw i64 %.sroa.02.0.i.us320, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ax, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph321

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not82.us322, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph321:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us320 = phi i64 [ %i.ax, %.preheader ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ay = add i64 %.sroa.02.0.i.us320, %i.ap      ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.07.sroa.13.0.copyload
  br i1 %i.az, label %bb.l, label %.split144.us

bb.l:                                             ; preds = %.lr.ph321
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i.us320
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !460, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !459, !noundef !5
  %.not21.i.us = icmp eq i8 %i.bb, %i.bd
  br i1 %.not21.i.us, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.reass273.reass = add i64 %i.ap, %invariant.op423
  %i.be = add i64 %.reass273.reass, %.sroa.02.0.i.us320
  br label %bb.r

.preheader.us:                                    ; preds = %bb.o
  %.not82.us = icmp eq i64 %i.bf, 0
  br i1 %.not82.us, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us323 = phi i64 [ %i.bf, %.preheader.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.bf = add i64 %.sroa.2.0.i.us323, -1          ; 5 uses
  br i1 %.first_iter, label %bb.n, label %.split148.us

bb.n:                                             ; preds = %.lr.ph324
  %i.bg = add i64 %i.bf, %i.ap                    ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bh, label %bb.o, label %.split151.us

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !460, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !459, !noundef !5
  %.not.i.us = icmp eq i8 %i.bj, %i.bl
  br i1 %.not.i.us, label %.preheader.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add i64 %.sroa.07.sroa.6.0.copyload, %i.ap
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i16.us
  %i.bn = add i64 %i.ap, %.sroa.07.sroa.15.0.copyload
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %i.bo = phi i64 [ %i.be, %bb.m ], [ %i.bn, %bb.q ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bp = add i64 %i.bo, %i.c                     ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bq, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.loopexit19.thread.i.i.i.us:                      ; preds = %.preheader83.us.preheader, %.preheader.us.preheader, %.preheader83.us, %.preheader.us
  %.pn = phi i64 [ %i.ap, %.preheader.us ], [ %i.k, %.preheader83.us ], [ %i.ap, %.preheader.us.preheader ], [ %i.k, %.preheader83.us.preheader ]
  %.sroa.2937.1.ph.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader83.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader83.us.preheader ]
  %.sroa.11.1.ph.us = add i64 %.pn, %.sroa.07.sroa.15.0.copyload ; 2 uses
  br label %bb.a

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.br = and i64 %.sroa.07.sroa.6.0.copyload, 65536
  %.not81 = icmp eq i64 %i.br, 0
  br i1 %.not81, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.split
  %i.bs = trunc i64 %.sroa.07.sroa.6.0.copyload to i1 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br i1 %i.bt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.preheader
  %.not.i.i.i.peel.i.i.i.peel = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel.i.i.i.peel

.split.i.i.i.peel.i.i.i.peel:                     ; preds = %bb.s
  %i.bu = icmp eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bu, label %bb.u, label %.loopexit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !461, !noalias !462, !noundef !5
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %bb.u, label %.loopexit.i.i.i

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel.i.i.i.peel, %.lr.ph.i.i.i.i.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload ; 4 uses
  %i.bz = icmp samesign eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bz, label %.loopexit19.i.i.i.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load i8, ptr %i.by, align 1, !noalias !463, !noundef !5 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel": ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = and i8 %i.ca, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cg)
  %i.ch = load i8, ptr %i.cc, align 1, !noalias !463, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32               ; 2 uses
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = icmp samesign ugt i8 %i.ca, -33
  br i1 %i.cm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.co = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 2
  %i.cp = icmp samesign ne i64 %i.co, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i8, ptr %i.cn, align 1, !noalias !463, !noundef !5
  %i.cr = shl nuw nsw i32 %i.ck, 6
  %i.cs = and i8 %i.cq, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct            ; 2 uses
  %i.cv = shl nuw nsw i32 %i.ce, 12
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = icmp samesign ugt i8 %i.ca, -17
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.cz = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 3
  %i.da = icmp samesign ne i64 %i.cz, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.da)
  %i.db = load i8, ptr %i.cy, align 1, !noalias !463, !noundef !5
  %i.dc = shl nuw nsw i32 %i.ce, 18
  %i.dd = and i32 %i.dc, 1835008
  %i.de = shl nuw nsw i32 %i.cu, 6
  %i.df = and i8 %i.db, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg
  %i.di = or disjoint i32 %i.dh, %i.dd
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = zext nneg i8 %i.ca to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel = phi i32 [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i.peel" ], [ %i.di, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i.peel" ], [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i.peel" ], [ %i.dj, %bb.w ] ; 4 uses
  %i.dk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.dk)
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 128
  br i1 %i.dl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 2048
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 65536
  %..i.i.peel.i.i.i.peel = select i1 %i.dn, i64 3, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.01.0.i.i.peel.i.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel.i.i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.do = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel, %.sroa.07.sroa.4.0.copyload ; 12 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.i.i.peel = icmp ult i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i.peel, label %bb.ad, label %.split.i.i.i.i.i.i.peel

.split.i.i.i.i.i.i.peel:                          ; preds = %bb.ac
  %i.dq = icmp eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.dq, label %bb.ae, label %.loopexit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !461, !noalias !464, !noundef !5
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %bb.ae, label %.loopexit.i.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.ab
  %1 = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do ; 4 uses
  %i.du = icmp samesign eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.du, label %.lr.ph.i.i.i.i.preheader373, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i8, ptr %1, align 1, !noalias !465, !noundef !5 ; 5 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %27, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel": ; preds = %bb.af
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = and i8 %i.dv, 31
  %4 = zext nneg i8 %3 to i32                     ; 3 uses
  %i.dx = add nuw nsw i64 %i.do, 1
  %i.dy = icmp samesign ne i64 %i.dx, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.dy)
  %5 = load i8, ptr %2, align 1, !noalias !465, !noundef !5
  %6 = shl nuw nsw i32 %4, 6
  %7 = and i8 %5, 63
  %8 = zext nneg i8 %7 to i32                     ; 2 uses
  %9 = or disjoint i32 %6, %8
  %i.dz = icmp samesign ugt i8 %i.dv, -33
  br i1 %i.dz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ea = add nuw nsw i64 %i.do, 2
  %i.eb = icmp samesign ne i64 %i.ea, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.eb)
  %11 = load i8, ptr %10, align 1, !noalias !465, !noundef !5
  %12 = shl nuw nsw i32 %8, 6
  %13 = and i8 %11, 63
  %14 = zext nneg i8 %13 to i32
  %15 = or disjoint i32 %12, %14                  ; 2 uses
  %16 = shl nuw nsw i32 %4, 12
  %17 = or disjoint i32 %15, %16
  %i.ec = icmp samesign ugt i8 %i.dv, -17
  br i1 %i.ec, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel"
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ed = add nuw nsw i64 %i.do, 3
  %i.ee = icmp samesign ne i64 %i.ed, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ee)
  %19 = load i8, ptr %18, align 1, !noalias !465, !noundef !5
  %20 = shl nuw nsw i32 %4, 18
  %21 = and i32 %20, 1835008
  %22 = shl nuw nsw i32 %15, 6
  %23 = and i8 %19, 63
  %24 = zext nneg i8 %23 to i32
  %25 = or disjoint i32 %22, %24
  %26 = or disjoint i32 %25, %21
  br label %.loopexit.i.loopexit.i.i.i.peel

27:                                               ; preds = %bb.af
  %28 = zext nneg i8 %i.dv to i32
  br label %.loopexit.i.loopexit.i.i.i.peel

.loopexit.i.loopexit.i.i.i.peel:                  ; preds = %27, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.i.i.peel = phi i32 [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i.peel" ], [ %26, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i.peel" ], [ %9, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i.peel" ], [ %28, %27 ]
  %29 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.peel, 1114112
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit19.i.i.i.peel:                           ; preds = %bb.u
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.sink.split:                        ; preds = %.loopexit.i.loopexit.i.i.i.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i"
  %.sink = phi i1 [ %31, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %29, %.loopexit.i.loopexit.i.i.i.peel ]
  %.sroa.4.0157.ph = phi i64 [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i" ], [ %i.do, %.loopexit.i.loopexit.i.i.i.peel ]
  call void @llvm.assume(i1 %.sink)
  br label %.lr.ph.i.i.i.i.preheader373

.lr.ph.i.i.i.i.preheader373:                      ; preds = %bb.x, %bb.ae, %.loopexit19.i.i.i.peel, %.lr.ph.i.i.i.i.sink.split
  %.sroa.4.0157.ph374 = phi i64 [ %.sroa.4.0157.ph, %.lr.ph.i.i.i.i.sink.split ], [ %.sroa.07.sroa.4.0.copyload, %.loopexit19.i.i.i.peel ], [ %.sroa.07.sroa.13.0.copyload, %bb.ae ], [ %.sroa.07.sroa.4.0.copyload, %bb.x ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.backedge, %.lr.ph.i.i.i.i.preheader373
  %.sroa.4.0157 = phi i64 [ %.sroa.4.0157.ph374, %.lr.ph.i.i.i.i.preheader373 ], [ %.sroa.4.0157.be, %.lr.ph.i.i.i.i.backedge ] ; 13 uses
  %i.ef = icmp eq i64 %.sroa.4.0157, 0
  br i1 %i.ef, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.ah, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.ag
  %i.eg = icmp eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.eg, label %bb.ai, label %.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !461, !noalias !462, !noundef !5
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %bb.ai, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157 ; 4 uses
  %i.el = icmp samesign eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.el, label %.lr.ph.split.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = load i8, ptr %i.ek, align 1, !noalias !463, !noundef !5 ; 4 uses
  %i.en = icmp sgt i8 %i.em, -1
  br i1 %i.en, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i": ; preds = %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.ep = and i8 %i.em, 31
  %i.eq = zext nneg i8 %i.ep to i32               ; 3 uses
  %i.er = add nuw nsw i64 %.sroa.4.0157, 1
  %i.es = icmp samesign ne i64 %i.er, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.es)
  %i.et = load i8, ptr %i.eo, align 1, !noalias !463, !noundef !5
  %i.eu = shl nuw nsw i32 %i.eq, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32               ; 2 uses
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = icmp samesign ugt i8 %i.em, -33
  br i1 %i.ey, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i"
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.fa = add nuw nsw i64 %.sroa.4.0157, 2
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !463, !noundef !5
  %i.fd = shl nuw nsw i32 %i.ew, 6
  %i.fe = and i8 %i.fc, 63
  %i.ff = zext nneg i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fd, %i.ff            ; 2 uses
  %i.fh = shl nuw nsw i32 %i.eq, 12
  %i.fi = or disjoint i32 %i.fg, %i.fh
  %i.fj = icmp samesign ugt i8 %i.em, -17
  br i1 %i.fj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.fl = add nuw nsw i64 %.sroa.4.0157, 3
  %i.fm = icmp samesign ne i64 %i.fl, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fm)
  %i.fn = load i8, ptr %i.fk, align 1, !noalias !463, !noundef !5
  %i.fo = shl nuw nsw i32 %i.eq, 18
  %i.fp = and i32 %i.fo, 1835008
  %i.fq = shl nuw nsw i32 %i.fg, 6
  %i.fr = and i8 %i.fn, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = or disjoint i32 %i.ft, %i.fp
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.fi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.i.i.i" ], [ %i.fu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.i.i.i" ], [ %i.ex, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.i.i.i" ] ; 4 uses
  %i.fv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.fw, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.fx, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.fy, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.aj, %bb.am, %bb.al, %bb.ak
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.al ], [ %..i.i.peel.i.i.i, %bb.am ], [ 1, %bb.ak ], [ 1, %bb.aj ]
  %i.fz = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.sroa.4.0157 ; 15 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.thread
  %.not.i.i.i.i.i.i = icmp ult i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.an
  %i.gb = icmp eq i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %i.gb, label %bb.ap, label %.loopexit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !461, !noalias !464, !noundef !5
  %i.ge = icmp sgt i8 %i.gd, -65
  br i1 %i.ge, label %bb.ap, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %bb.ao, %.split.i.i.i.i.i.i, %.thread
  %i.gf = icmp samesign eq i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %i.gf, label %.lr.ph.i.i.i.i.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.fz
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !465, !noundef !5 ; 3 uses
  %i.gi = icmp sgt i8 %i.gh, -1
  br i1 %i.gi, label %.lr.ph.i.i.i.i.backedge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i": ; preds = %bb.aq
  %i.gj = add nuw nsw i64 %i.fz, 1
  %i.gk = icmp samesign ne i64 %i.gj, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i8 %i.gh, -33
  br i1 %i.gl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i.backedge:                          ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i", %bb.aq, %bb.ap
  %.sroa.4.0157.be = phi i64 [ %.sroa.07.sroa.13.0.copyload, %bb.ap ], [ %i.fz, %bb.aq ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i" ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.i.i.i"
  %i.gm = add nuw nsw i64 %i.fz, 2
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ugt i8 %i.gh, -17
  br i1 %i.go, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.i.i.i"
  %30 = add nuw nsw i64 %i.fz, 3
  %31 = icmp samesign ne i64 %30, %.sroa.07.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit.i.i.i:                                  ; preds = %bb.ao, %.split.i.i.i.i.i.i, %bb.ah, %.split.i.i.i.peel.i.i.i, %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.t, %.split.i.i.i.peel.i.i.i.peel
  %.lcssa12.i.i.i = phi i64 [ %.sroa.07.sroa.4.0.copyload, %.split.i.i.i.peel.i.i.i.peel ], [ %.sroa.07.sroa.4.0.copyload, %bb.t ], [ %i.do, %.split.i.i.i.i.i.i.peel ], [ %i.do, %bb.ad ], [ %.sroa.4.0157, %.split.i.i.i.peel.i.i.i ], [ %.sroa.4.0157, %bb.ah ], [ %i.fz, %.split.i.i.i.i.i.i ], [ %i.fz, %bb.ao ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.07.sroa.12.0.copyload, i64 noundef %.sroa.07.sroa.13.0.copyload, i64 noundef %.lcssa12.i.i.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19, !noalias !464
  unreachable

.split137.us:                                     ; preds = %.lr.ph317
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ac, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !466
  unreachable

.split140.us:                                     ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ae, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !noalias !466
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.gp = add i64 %i.k, %.sroa.0.0.i.i23.us
  %umax.i27 = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.gp)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i27, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !noalias !466
  unreachable

.split148.us:                                     ; preds = %.lr.ph324
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bf, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !467
  unreachable

.split151.us:                                     ; preds = %bb.n
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bg, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !noalias !467
  unreachable

.split144.us:                                     ; preds = %.lr.ph321
  %i.gq = add i64 %i.ap, %.sroa.07.sroa.4.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.gq)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !noalias !467
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.ai, %bb.k, %bb.b, %.sink.split.i.us, %bb.r, %.loopexit19.i.i.i.peel, %.lr.ph.i.split
  %.sroa.39.0133 = phi i64 [ 0, %.loopexit19.i.i.i.peel ], [ 0, %.lr.ph.i.split ], [ %.sroa.39.0.us, %.sink.split.i.us ], [ %.sroa.39.0.us, %bb.r ], [ %.sroa.39.0.us, %bb.k ], [ %.sroa.39.0.us, %bb.b ], [ %.sroa.4.0157, %bb.ai ] ; 2 uses
  %i.gr = sub nuw i64 35, %.sroa.39.0133          ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.39.0133 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.gt = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.hi, %.backedge.backedge ] ; 5 uses
  %i.gu = sub nuw nsw i64 %i.gr, %i.gt            ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 2 uses
  %i.gw = icmp samesign ult i64 %i.gu, 16
  br i1 %i.gw, label %.preheader.i.i.i, label %bb.ar

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %.backedge
  %i.gx = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gv, i64 noundef %i.gu), !noalias !468
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.as, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.gu, %bb.as ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.as ], [ 1, %.lr.ph.i.i.i ]
  %i.gy = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.gz = insertvalue { i64, i64 } %i.gy, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.as
  %.sroa.01.05.i.i.i = phi i64 [ %i.hd, %bb.as ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.01.05.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !469, !noalias !468, !noundef !5
  %i.hc = icmp eq i8 %i.hb, 60
  br i1 %i.hc, label %._crit_edge.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.hd = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hd, %i.gu
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.ar
  %.merged.i.i.i = phi { i64, i64 } [ %i.gz, %._crit_edge.i.i.i ], [ %i.gx, %bb.ar ] ; 2 uses
  %i.he = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.hf = trunc nuw i64 %i.he to i1
  br i1 %i.hf, label %bb.at, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.at:                                            ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.hg = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.hh = add nuw nsw i64 %i.gt, 1
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.hi, %i.gr         ; 2 uses
  %i.hj = add i64 %i.gt, %i.hg
  %or.cond.i.i.not = icmp ult i64 %i.hj, %i.gr
  br i1 %or.cond.i.i.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.au, %bb.av
  br label %.backedge

bb.av:                                            ; preds = %bb.at
  %i.hk = add i64 %i.gt, %i.hg                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hk
  %lhsc = load i8, ptr %i.hl, align 1
  %i.hm = icmp eq i8 %lhsc, 60                    ; 2 uses
  %brmerge = select i1 %i.hm, i1 true, i1 %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit": ; preds = %bb.av
  %.mux.le = select i1 %i.hm, i64 %i.hk, i64 %i.gr
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit": ; preds = %bb.au, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit" ], [ %i.gr, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.gr, %bb.au ]
  %i.hn = insertvalue { ptr, i64 } poison, ptr %i.gs, 0
  %i.ho = insertvalue { ptr, i64 } %i.hn, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.ho
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hcae45cf2b18d3a5cE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3eeda5b08ada749aE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hacf87f6daaa1781eE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8555fa4eb1b4d4dE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58dd519c895d8049E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcfd8ed4231926af8E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h250495e46417481dE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ffe18c38cc07863E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h452891d7a9090ae6E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha837511b77035433E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h040d78a81c75c243E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b87d9d24edef06cE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2af8237e9b78b53E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b78abe370e97a15E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4f9b600e0434f438E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h033c9ce35d6b13e0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c72d244e62c00ecE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1cba19ea4a74dad8E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb28bc7450a5beb1E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_1
