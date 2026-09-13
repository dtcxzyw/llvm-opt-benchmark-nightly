Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6cookie5parse11parse_inner17he18e37d26665742fE:.lr.ph.split.i.i
  %i.km = zext i1 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.bi, label %bb.ch

bb.bi:                                            ; preds = %bb.bh
  store i8 1, ptr %i.fp, align 8
  br label %.backedge.sink.split

bb.bj:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.ko = load i64, ptr %i.iu, align 1
  %i.kp = icmp ne i64 %i.ko, 8749489600981136488
  %i.kq = zext i1 %i.kp to i32
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.bk, label %bb.cp

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.fq, align 1
  br label %.backedge.sink.split

bb.bl:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.ks = load i32, ptr %i.iu, align 1
  %i.kt = xor i32 %i.ks, 762863981
  %i.ku = getelementptr i8, ptr %i.iu, i64 3
  %i.kv = load i32, ptr %i.ku, align 1
  %i.kw = xor i32 %i.kv, 1701273901
  %i.kx = or i32 %i.kt, %i.kw
  %i.ky = icmp ne i32 %i.kx, 0
  %i.kz = zext i1 %i.ky to i32
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.bm, label %bb.cr

bb.bm:                                            ; preds = %bb.bl
  %.not210 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not210, label %.backedge.sink.split, label %bb.bn

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338": ; preds = %.loopexit617, %.loopexit.split-lp618, %bb.dn, %bb.de, %bb.cv
  %.pn227559 = phi { ptr, i32 } [ %i.uh, %bb.dn ], [ %i.ty, %bb.de ], [ %i.to, %bb.cv ], [ %lpad.loopexit619, %.loopexit617 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp618 ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %.sroa.5182.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit339"

.loopexit617:                                     ; preds = %bb.cs, %bb.cx, %bb.dg, %bb.dp, %bb.dw
  %lpad.loopexit619 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338"

.loopexit.split-lp618:                            ; preds = %.invoke1071, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i338"

bb.bn:                                            ; preds = %bb.bm
  %.not.i340 = icmp eq i64 %.sroa.5184.0, 0
  br i1 %.not.i340, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit": ; preds = %bb.bn
  %rhsc.i = load i8, ptr %.sroa.0183.0, align 1, !alias.scope !2168, !noalias !2169
  %i.lb = icmp eq i8 %rhsc.i, 45
  br i1 %i.lb, label %bb.br, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread": ; preds = %bb.bn, %.split.i344, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit"
  %.sroa.03.0.i562 = phi i1 [ true, %.split.i344 ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit" ], [ false, %bb.bn ]
  %.sroa.976.0 = phi i64 [ %i.ms, %.split.i344 ], [ %.sroa.5184.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit" ], [ 0, %bb.bn ] ; 9 uses
  %.sroa.072.0 = phi ptr [ %i.mt, %.split.i344 ], [ %.sroa.0183.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit" ], [ %.sroa.0183.0, %bb.bn ] ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 %.sroa.976.0 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.072.0) ]
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread"
  %i.ld = phi ptr [ %i.mm, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i" ], [ %.sroa.072.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread" ] ; 6 uses
  %.not.i.i342 = icmp eq ptr %i.ld, %i.lc
  br i1 %.not.i.i342, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 1 ; 3 uses
  %i.lf = load i8, ptr %i.ld, align 1, !noalias !2170, !noundef !5 ; 5 uses
  %i.lg = icmp sgt i8 %i.lf, -1
  br i1 %i.lg, label %bb.bq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i": ; preds = %bb.bp
  %i.lh = and i8 %i.lf, 31
  %i.li = zext nneg i8 %i.lh to i32               ; 3 uses
  %i.lj = icmp ne ptr %i.le, %i.lc
  call void @llvm.assume(i1 %i.lj)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 2 ; 3 uses
  %i.ll = load i8, ptr %i.le, align 1, !noalias !2170, !noundef !5
  %i.lm = shl nuw nsw i32 %i.li, 6
  %i.ln = and i8 %i.ll, 63
  %i.lo = zext nneg i8 %i.ln to i32               ; 2 uses
  %i.lp = or disjoint i32 %i.lm, %i.lo
  %i.lq = icmp samesign ugt i8 %i.lf, -33
  br i1 %i.lq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

bb.bq:                                            ; preds = %bb.bp
  %i.lr = zext nneg i8 %i.lf to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i"
  %i.ls = icmp ne ptr %i.lk, %i.lc
  call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 3 ; 3 uses
  %i.lu = load i8, ptr %i.lk, align 1, !noalias !2170, !noundef !5
  %i.lv = shl nuw nsw i32 %i.lo, 6
  %i.lw = and i8 %i.lu, 63
  %i.lx = zext nneg i8 %i.lw to i32
  %i.ly = or disjoint i32 %i.lv, %i.lx            ; 2 uses
  %i.lz = shl nuw nsw i32 %i.li, 12
  %i.ma = or disjoint i32 %i.ly, %i.lz
  %i.mb = icmp samesign ugt i8 %i.lf, -17
  br i1 %i.mb, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i"
  %i.mc = icmp ne ptr %i.lt, %i.lc
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.me = load i8, ptr %i.lt, align 1, !noalias !2170, !noundef !5
  %i.mf = shl nuw nsw i32 %i.li, 18
  %i.mg = and i32 %i.mf, 1835008
  %i.mh = shl nuw nsw i32 %i.ly, 6
  %i.mi = and i8 %i.me, 63
  %i.mj = zext nneg i8 %i.mi to i32
  %i.mk = or disjoint i32 %i.mh, %i.mj
  %i.ml = or disjoint i32 %i.mk, %i.mg            ; 2 uses
  %.not.not.i = icmp eq i32 %i.ml, 1114112
  br i1 %.not.not.i, label %bb.bt, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i", %bb.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i"
  %i.mm = phi ptr [ %i.md, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i" ], [ %i.lt, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i" ], [ %i.lk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i" ], [ %i.le, %bb.bq ]
  %spec.select.i8.i = phi i32 [ %i.ml, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i" ], [ %i.ma, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit14.i.i.i" ], [ %i.lp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h692c2e14b54a04c9E.exit12.i.i.i" ], [ %i.lr, %bb.bq ]
  %i.mn = add nsw i32 %spec.select.i8.i, -58
  %i.mo = icmp ult i32 %i.mn, -10
  br i1 %i.mo, label %.backedge.sink.split, label %bb.bo

bb.br:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit"
  %.not.i343.not = icmp eq i64 %.sroa.5184.0, 1
  br i1 %.not.i343.not, label %.split.i344, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !2171, !noundef !5
  %i.mr = icmp sgt i8 %i.mq, -65
  br i1 %i.mr, label %.split.i344, label %.invoke

.split.i344:                                      ; preds = %bb.br, %bb.bs
  %i.ms = add i64 %.sroa.5184.0, -1
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h8fb318824aa15b7cE.exit.thread"

.invoke:                                          ; preds = %bb.cl, %bb.bs
  %i.mu = phi ptr [ @50, %bb.bs ], [ @51, %bb.cl ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0183.0, i64 noundef %.sroa.5184.0, i64 noundef 1, i64 noundef %.sroa.5184.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mu) #31
          to label %.cont unwind label %.loopexit.split-lp618

.cont:                                            ; preds = %.invoke
  unreachable

.backedge.sink.split:                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i", %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", %bb.cr, %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit366", %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit", %bb.ci, %bb.bm, %bb.bk, %bb.bi, %bb.ch, %bb.cn, %bb.cp, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit", %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit395", %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit383", %.loopexit887, %.preheader.i387.3, %.preheader.i387.2, %.preheader.i387.1, %.preheader.i387.preheader, %.preheader.i375.preheader, %.preheader.i375.1, %.preheader.i375.2, %.preheader.i370.preheader, %.preheader.i370.1, %.preheader.i370.2, %.preheader.i370.3, %.preheader.i370.4, %.preheader.i370.5, %bb.cq, %bb.dz, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418", %bb.dx, %bb.dv, %.thread592, %bb.dw
  %.sroa.5182.0.sink = phi i64 [ %.sroa.5182.0, %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit" ], [ %.sroa.5182.0, %bb.dw ], [ %.sroa.5182.0, %.thread592 ], [ %.sroa.5182.0, %bb.dv ], [ %.sroa.5182.0, %bb.dx ], [ %.sroa.5182.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit.sink.split.i.i.i418" ], [ %.sroa.5182.0, %bb.dy ], [ %.sroa.5182.0, %bb.dz ], [ %.sroa.5182.0, %bb.cq ], [ %.sroa.5182.0, %.preheader.i370.5 ], [ %.sroa.5182.0, %.preheader.i370.4 ], [ %.sroa.5182.0, %.preheader.i370.3 ], [ %.sroa.5182.0, %.preheader.i370.2 ], [ %.sroa.5182.0, %.preheader.i370.1 ], [ %.sroa.5182.0, %.preheader.i370.preheader ], [ %.sroa.5182.0, %.preheader.i375.2 ], [ %.sroa.5182.0, %.preheader.i375.1 ], [ %.sroa.5182.0, %.preheader.i375.preheader ], [ %.sroa.5182.0, %.preheader.i387.preheader ], [ %.sroa.5182.0, %.preheader.i387.1 ], [ %.sroa.5182.0, %.preheader.i387.2 ], [ %.sroa.5182.0, %.preheader.i387.3 ], [ %.sroa.5182.0, %.loopexit887 ], [ %.sroa.5182.0, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit383" ], [ %.sroa.5182.0, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit395" ], [ %.sroa.5182.0, %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit" ], [ %.sroa.5182.0, %bb.cp ], [ %.sroa.5182.0, %bb.cn ], [ %.sroa.5182.0, %bb.ch ], [ %.sroa.5182.0, %bb.bi ], [ %.sroa.5182.0, %bb.bk ], [ %.sroa.5182.0, %bb.bm ], [ %.sroa.5182.0, %bb.ci ], [ %.sroa.5182.0, %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit" ], [ %.sroa.5182.0, %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit366" ], [ %.sroa.5182.0, %bb.cr ], [ 7, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %.sroa.5182.0.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  br i1 %i.hz, label %._crit_edge, label %bb.as

bb.bt:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i", %bb.bo
  br i1 %.sroa.03.0.i562, label %.loopexit887, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  switch i64 %.sroa.976.0, label %thread-pre-split.i [
    i64 0, label %.loopexit887
    i64 1, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.mv = load i8, ptr %.sroa.072.0, align 1, !alias.scope !2172, !noalias !2173, !noundef !5 ; 2 uses
  switch i8 %i.mv, label %bb.bw [
    i8 43, label %.loopexit887
    i8 45, label %.loopexit887
  ]

thread-pre-split.i:                               ; preds = %bb.bu
  %.pr.i = load i8, ptr %.sroa.072.0, align 1, !alias.scope !2172, !noalias !2173
  br label %bb.bw

bb.bw:                                            ; preds = %thread-pre-split.i, %bb.bv
  %i.mw = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.mv, %bb.bv ]
  switch i8 %i.mw, label %bb.cd [
    i8 43, label %bb.bx
    i8 45, label %bb.by
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 1 ; 2 uses
  %i.my = add i64 %.sroa.976.0, -1                ; 3 uses
  %i.mz = icmp ult i64 %.sroa.976.0, 17
  br i1 %i.mz, label %.preheader.i, label %.preheader95.i

bb.by:                                            ; preds = %bb.bw
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 1 ; 2 uses
  %i.nb = add i64 %.sroa.976.0, -1                ; 3 uses
  %i.nc = icmp ult i64 %.sroa.976.0, 17
  br i1 %i.nc, label %.preheader97.i, label %.lr.ph1057

.preheader97.i:                                   ; preds = %bb.by
  %.not89109.i = icmp eq i64 %i.nb, 0
  br i1 %.not89109.i, label %.loopexit887, label %.lr.ph.i

bb.bz:                                            ; preds = %bb.cf
  %i.nd = extractvalue { i64, i1 } %i.ol, 0       ; 2 uses
  %.not90.i.not = icmp eq i64 %i.oc, 0
  br i1 %.not90.i.not, label %.loopexit887, label %.lr.ph1062

.preheader99.i:                                   ; preds = %bb.cb
  %i.ne = extractvalue { i64, i1 } %i.np, 0       ; 2 uses
  %.not.i350.not = icmp eq i64 %i.ng, 0
  br i1 %.not.i350.not, label %.loopexit887, label %.lr.ph1057

.lr.ph1057:                                       ; preds = %bb.by, %.preheader99.i
  %.sroa.01.2.i1056 = phi ptr [ %i.nf, %.preheader99.i ], [ %i.na, %bb.by ] ; 2 uses
  %.sroa.27.2.i1055 = phi i64 [ %i.ng, %.preheader99.i ], [ %i.nb, %bb.by ]
  %.sroa.031.2.i1054 = phi i64 [ %i.ne, %.preheader99.i ], [ 0, %bb.by ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.01.2.i1056, i64 1
  %i.ng = add i64 %.sroa.27.2.i1055, -1           ; 2 uses
  %i.nh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2.i1054, i64 10) ; 2 uses
  %i.ni = extractvalue { i64, i1 } %i.nh, 0
  %i.nj = load i8, ptr %.sroa.01.2.i1056, align 1, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.ca, label %.loopexit887

bb.ca:                                            ; preds = %.lr.ph1057
  %i.nn = extractvalue { i64, i1 } %i.nh, 1
  br i1 %i.nn, label %.loopexit887, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.no = zext nneg i32 %i.nl to i64
  %i.np = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ni, i64 %i.no) ; 2 uses
  %i.nq = extractvalue { i64, i1 } %i.np, 1
  br i1 %i.nq, label %.loopexit887, label %.preheader99.i

.lr.ph.i:                                         ; preds = %.preheader97.i, %bb.cc
  %.sroa.01.3112.i = phi ptr [ %i.nx, %bb.cc ], [ %i.na, %.preheader97.i ] ; 2 uses
  %.sroa.27.3111.i = phi i64 [ %i.nw, %bb.cc ], [ %i.nb, %.preheader97.i ]
  %.sroa.031.4110.i = phi i64 [ %i.nz, %bb.cc ], [ 0, %.preheader97.i ]
  %i.nr = load i8, ptr %.sroa.01.3112.i, align 1, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add nsw i32 %i.ns, -48                  ; 2 uses
  %i.nu = icmp ugt i32 %i.nt, 9
  br i1 %i.nu, label %.loopexit887, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i
  %i.nv = mul i64 %.sroa.031.4110.i, 10
  %i.nw = add nsw i64 %.sroa.27.3111.i, -1        ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.01.3112.i, i64 1
  %i.ny = zext nneg i32 %i.nt to i64
  %i.nz = sub i64 %i.nv, %i.ny                    ; 2 uses
  %.not89.i = icmp eq i64 %i.nw, 0
  br i1 %.not89.i, label %.loopexit887, label %.lr.ph.i

bb.cd:                                            ; preds = %bb.bw
  %i.oa = icmp ult i64 %.sroa.976.0, 16
  br i1 %i.oa, label %.lr.ph117.i.preheader, label %.preheader95.i

.lr.ph117.i.preheader:                            ; preds = %.preheader.i, %bb.cd
  %.sroa.01.1116.i.ph = phi ptr [ %.sroa.072.0, %bb.cd ], [ %i.mx, %.preheader.i ]
  %.sroa.27.1115.i.ph = phi i64 [ %.sroa.976.0, %bb.cd ], [ %i.my, %.preheader.i ]
  br label %.lr.ph117.i

.preheader95.i:                                   ; preds = %bb.cd, %bb.bx
  %.sroa.27.0.ph.i = phi i64 [ %.sroa.976.0, %bb.cd ], [ %i.my, %bb.bx ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %.sroa.072.0, %bb.cd ], [ %i.mx, %bb.bx ]
  %.not90.i.not1058 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not90.i.not1058, label %.loopexit887, label %.lr.ph1062

.preheader.i:                                     ; preds = %bb.bx
  %.not91113.i = icmp eq i64 %i.my, 0
  br i1 %.not91113.i, label %.loopexit887, label %.lr.ph117.i.preheader

.lr.ph1062:                                       ; preds = %.preheader95.i, %bb.bz
  %.sroa.01.0.i1061 = phi ptr [ %i.ob, %bb.bz ], [ %.sroa.01.0.ph.i, %.preheader95.i ] ; 2 uses
  %.sroa.27.0.i1060 = phi i64 [ %i.oc, %bb.bz ], [ %.sroa.27.0.ph.i, %.preheader95.i ]
  %.sroa.031.0.i1059 = phi i64 [ %i.nd, %bb.bz ], [ 0, %.preheader95.i ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1061, i64 1
  %i.oc = add i64 %.sroa.27.0.i1060, -1           ; 2 uses
  %i.od = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0.i1059, i64 10) ; 2 uses
  %i.oe = extractvalue { i64, i1 } %i.od, 0
  %i.of = load i8, ptr %.sroa.01.0.i1061, align 1, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.og = zext i8 %i.of to i32
  %i.oh = add nsw i32 %i.og, -48                  ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 10
  br i1 %i.oi, label %bb.ce, label %.loopexit887

bb.ce:                                            ; preds = %.lr.ph1062
  %i.oj = extractvalue { i64, i1 } %i.od, 1
  br i1 %i.oj, label %.loopexit887, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ok = zext nneg i32 %i.oh to i64
  %i.ol = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.oe, i64 %i.ok) ; 2 uses
  %i.om = extractvalue { i64, i1 } %i.ol, 1
  br i1 %i.om, label %.loopexit887, label %bb.bz

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %bb.cg
  %.sroa.01.1116.i = phi ptr [ %i.ot, %bb.cg ], [ %.sroa.01.1116.i.ph, %.lr.ph117.i.preheader ] ; 2 uses
  %.sroa.27.1115.i = phi i64 [ %i.os, %bb.cg ], [ %.sroa.27.1115.i.ph, %.lr.ph117.i.preheader ]
  %.sroa.031.1114.i = phi i64 [ %i.ov, %bb.cg ], [ 0, %.lr.ph117.i.preheader ]
  %i.on = load i8, ptr %.sroa.01.1116.i, align 1, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.oo = zext i8 %i.on to i32
  %i.op = add nsw i32 %i.oo, -48                  ; 2 uses
  %i.oq = icmp ugt i32 %i.op, 9
  br i1 %i.oq, label %.loopexit887, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph117.i
  %i.or = mul i64 %.sroa.031.1114.i, 10
  %i.os = add nsw i64 %.sroa.27.1115.i, -1        ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.01.1116.i, i64 1
  %i.ou = zext nneg i32 %i.op to i64
  %i.ov = add i64 %i.or, %i.ou                    ; 2 uses
  %.not91.i = icmp eq i64 %i.os, 0
  br i1 %.not91.i, label %.loopexit887, label %.lr.ph117.i

.loopexit887:                                     ; preds = %.lr.ph1057, %bb.ca, %bb.cb, %.preheader99.i, %.lr.ph.i, %bb.cc, %.lr.ph1062, %bb.ce, %bb.cf, %bb.bz, %.lr.ph117.i, %bb.cg, %.preheader.i, %.preheader97.i, %.preheader95.i, %bb.bv, %bb.bv, %bb.bu, %bb.bt
  %.sroa.088.0 = phi i64 [ 0, %bb.bt ], [ 0, %.preheader95.i ], [ 0, %.preheader97.i ], [ 9223372036854775807, %bb.bu ], [ 0, %.preheader.i ], [ 9223372036854775807, %.lr.ph1062 ], [ 9223372036854775807, %bb.bv ], [ 9223372036854775807, %bb.bv ], [ 9223372036854775807, %.lr.ph117.i ], [ 9223372036854775807, %.lr.ph.i ], [ %i.ov, %bb.cg ], [ 9223372036854775807, %bb.ce ], [ 9223372036854775807, %bb.cf ], [ %i.nd, %bb.bz ], [ %i.nz, %bb.cc ], [ 9223372036854775807, %.lr.ph1057 ], [ %i.ne, %.preheader99.i ], [ 9223372036854775807, %bb.cb ], [ 9223372036854775807, %bb.ca ]
  store i64 %.sroa.088.0, ptr %i.fm, align 8
  store i32 0, ptr %.sroa.690.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.334.0..sroa_idx, align 4
  br label %.backedge.sink.split

bb.ch:                                            ; preds = %bb.bh
  %i.ow = load i32, ptr %i.iu, align 1
  %i.ox = xor i32 %i.ow, 1634561892
  %i.oy = getelementptr i8, ptr %i.iu, i64 4
  %i.oz = load i16, ptr %i.oy, align 1
  %i.pa = zext i16 %i.oz to i32
  %i.pb = xor i32 %i.pa, 28265
  %i.pc = or i32 %i.ox, %i.pb
  %i.pd = icmp ne i32 %i.pc, 0
  %i.pe = zext i1 %i.pd to i32
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ci, label %.backedge.sink.split

bb.ci:                                            ; preds = %bb.ch
  %.not225 = icmp eq ptr %.sroa.0183.0, null
  %i.pg = icmp eq i64 %.sroa.5184.0, 0
  %or.cond = select i1 %.not225, i1 true, i1 %i.pg
  br i1 %or.cond, label %.backedge.sink.split, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %rhsc.i353 = load i8, ptr %.sroa.0183.0, align 1, !alias.scope !2174, !noalias !2175
  %i.ph = icmp eq i8 %rhsc.i353, 46
  br i1 %i.ph, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.not.i356 = icmp ugt i64 %.sroa.5184.0, 1
  br i1 %.not.i356, label %bb.cl, label %.split.i357

bb.cl:                                            ; preds = %bb.ck
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !alias.scope !2176, !noundef !5
  %i.pk = icmp sgt i8 %i.pj, -65
  br i1 %i.pk, label %.split.i357, label %.invoke

bb.cm:                                            ; preds = %bb.cj, %.split.i357
  %.sroa.7104.0 = phi i64 [ %i.pp, %.split.i357 ], [ %.sroa.5184.0, %bb.cj ] ; 2 uses
  %.sroa.0101.0 = phi ptr [ %i.pq, %.split.i357 ], [ %.sroa.0183.0, %bb.cj ] ; 2 uses
  %i.pl = ptrtoint ptr %.sroa.0101.0 to i64       ; 2 uses
  %i.pm = icmp ult ptr %.sroa.0101.0, %1
  %i.pn = add i64 %.sroa.7104.0, %i.pl
  %i.po = icmp ugt i64 %i.pn, %i.gc
  %or.cond728 = select i1 %i.pm, i1 true, i1 %i.po
  br i1 %or.cond728, label %.invoke1071, label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

.split.i357:                                      ; preds = %bb.ck, %bb.cl
  %i.pp = add i64 %.sroa.5184.0, -1
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  br label %bb.cm

.invoke1071:                                      ; preds = %bb.co, %bb.cm
  %i.pr = phi ptr [ @52, %bb.cm ], [ @54, %bb.co ]
  %i.ps = phi i64 [ 10, %bb.cm ], [ 8, %bb.co ]
  %i.pt = phi ptr [ @53, %bb.cm ], [ @55, %bb.co ]
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pr, i64 noundef %i.ps, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pt) #31
          to label %.cont1072 unwind label %.loopexit.split-lp618

.cont1072:                                        ; preds = %.invoke1071
  unreachable

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit": ; preds = %bb.cm
  %i.pu = sub i64 %i.pl, %i.gb                    ; 2 uses
  %i.pv = add i64 %i.pu, %.sroa.7104.0
  store i64 -9223372036854775807, ptr %i.fn, align 8
  store i64 %i.pu, ptr %.sroa.337.0..sroa_idx, align 8
  store i64 %i.pv, ptr %.sroa.6115.0..sroa_idx116, align 8
  br label %.backedge.sink.split

bb.cn:                                            ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.pw = load i32, ptr %i.iu, align 1
  %i.px = icmp ne i32 %i.pw, 1752457584           ; 2 uses
  %i.py = zext i1 %i.px to i32                    ; 0 uses
  %.not224 = icmp eq ptr %.sroa.0183.0, null
  %or.cond594 = select i1 %i.px, i1 true, i1 %.not224
  br i1 %or.cond594, label %.backedge.sink.split, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pz = ptrtoint ptr %.sroa.0183.0 to i64       ; 2 uses
  %i.qa = icmp ult ptr %.sroa.0183.0, %1
  %i.qb = add i64 %.sroa.5184.0, %i.pz
  %i.qc = icmp ugt i64 %i.qb, %i.gc
  %or.cond730 = select i1 %i.qa, i1 true, i1 %i.qc
  br i1 %or.cond730, label %.invoke1071, label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit366"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit366": ; preds = %bb.co
  %i.qd = sub i64 %i.pz, %i.gb                    ; 2 uses
  %i.qe = add i64 %i.qd, %.sroa.5184.0
  store i64 -9223372036854775807, ptr %i.fo, align 8
  store i64 %i.qd, ptr %.sroa.337.0..sroa_idx38, align 8
  store i64 %i.qe, ptr %.sroa.6126.0..sroa_idx127, align 8
  br label %.backedge.sink.split

bb.cp:                                            ; preds = %bb.bj
  %i.qf = load i64, ptr %i.iu, align 1
  %i.qg = icmp ne i64 %i.qf, 7310584039472980339  ; 2 uses
  %i.qh = zext i1 %i.qg to i32                    ; 0 uses
  %.not223 = icmp eq ptr %.sroa.0183.0, null
  %or.cond596 = select i1 %i.qg, i1 true, i1 %.not223
  br i1 %or.cond596, label %.backedge.sink.split, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  switch i64 %.sroa.5184.0, label %.backedge.sink.split [
    i64 6, label %.preheader.i370.preheader
    i64 3, label %.preheader.i375.preheader
    i64 4, label %.preheader.i387.preheader
  ]

.preheader.i370.preheader:                        ; preds = %bb.cq
  %i.qi = load i8, ptr %.sroa.0183.0, align 1, !alias.scope !2177, !noalias !2178, !noundef !5 ; 2 uses
  %i.qj = add i8 %i.qi, -65
  %i.qk = icmp ult i8 %i.qj, 26
  %i.ql = select i1 %i.qk, i8 32, i8 0
  %.sroa.04.0.i = or i8 %i.ql, %i.qi
  %i.qm = icmp eq i8 %.sroa.04.0.i, 115
  br i1 %i.qm, label %.preheader.i370.1, label %.backedge.sink.split

.preheader.i370.1:                                ; preds = %.preheader.i370.preheader
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  %i.qo = load i8, ptr %i.qn, align 1, !alias.scope !2177, !noalias !2178, !noundef !5 ; 2 uses
  %i.qp = add i8 %i.qo, -65
  %i.qq = icmp ult i8 %i.qp, 26
  %i.qr = select i1 %i.qq, i8 32, i8 0
  %.sroa.04.0.i.1 = or i8 %i.qr, %i.qo
  %i.qs = icmp eq i8 %.sroa.04.0.i.1, 116
  br i1 %i.qs, label %.preheader.i370.2, label %.backedge.sink.split

.preheader.i370.2:                                ; preds = %.preheader.i370.1
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 2
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !2177, !noalias !2178, !noundef !5 ; 2 uses
  %i.qv = add i8 %i.qu, -65
  %i.qw = icmp ult i8 %i.qv, 26
  %i.qx = select i1 %i.qw, i8 32, i8 0
  %.sroa.04.0.i.2 = or i8 %i.qx, %i.qu
  %i.qy = icmp eq i8 %.sroa.04.0.i.2, 114
  br i1 %i.qy, label %.preheader.i370.3, label %.backedge.sink.split

.preheader.i370.3:                                ; preds = %.preheader.i370.2
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 3
  %i.ra = load i8, ptr %i.qz, align 1, !alias.scope !2177, !noalias !2178, !noundef !5 ; 2 uses
  %i.rb = add i8 %i.ra, -65
  %i.rc = icmp ult i8 %i.rb, 26
  %i.rd = select i1 %i.rc, i8 32, i8 0
  %.sroa.04.0.i.3 = or i8 %i.rd, %i.ra
  %i.re = icmp eq i8 %.sroa.04.0.i.3, 105
  br i1 %i.re, label %.preheader.i370.4, label %.backedge.sink.split

.preheader.i370.4:                                ; preds = %.preheader.i370.3
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 4
  %i.rg = load i8, ptr %i.rf, align 1, !alias.scope !2177, !noalias !2178, !noundef !5 ; 2 uses
  %i.rh = add i8 %i.rg, -65
  %i.ri = icmp ult i8 %i.rh, 26
  %i.rj = select i1 %i.ri, i8 32, i8 0
  %.sroa.04.0.i.4 = or i8 %i.rj, %i.rg
  %i.rk = icmp eq i8 %.sroa.04.0.i.4, 99
  br i1 %i.rk, label %.preheader.i370.5, label %.backedge.sink.split

.preheader.i370.5:                                ; preds = %.preheader.i370.4
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 5
  %i.rm = load i8, ptr %i.rl, align 1, !alias.scope !2177, !noalias !2178, !noundef !5 ; 2 uses
  %i.rn = add i8 %i.rm, -65
  %i.ro = icmp ult i8 %i.rn, 26
  %i.rp = select i1 %i.ro, i8 32, i8 0
  %.sroa.04.0.i.5 = or i8 %i.rp, %i.rm
  %i.rq = icmp eq i8 %.sroa.04.0.i.5, 116
  br i1 %i.rq, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit", label %.backedge.sink.split

.preheader.i375.preheader:                        ; preds = %bb.cq
  %i.rr = load i8, ptr %.sroa.0183.0, align 1, !alias.scope !2179, !noalias !2180, !noundef !5 ; 2 uses
  %i.rs = add i8 %i.rr, -65
  %i.rt = icmp ult i8 %i.rs, 26
  %i.ru = select i1 %i.rt, i8 32, i8 0
  %.sroa.04.0.i381 = or i8 %i.ru, %i.rr
  %i.rv = icmp eq i8 %.sroa.04.0.i381, 108
  br i1 %i.rv, label %.preheader.i375.1, label %.backedge.sink.split

.preheader.i375.1:                                ; preds = %.preheader.i375.preheader
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 1
  %i.rx = load i8, ptr %i.rw, align 1, !alias.scope !2179, !noalias !2180, !noundef !5 ; 2 uses
  %i.ry = add i8 %i.rx, -65
  %i.rz = icmp ult i8 %i.ry, 26
  %i.sa = select i1 %i.rz, i8 32, i8 0
  %.sroa.04.0.i381.1 = or i8 %i.sa, %i.rx
  %i.sb = icmp eq i8 %.sroa.04.0.i381.1, 97
  br i1 %i.sb, label %.preheader.i375.2, label %.backedge.sink.split

.preheader.i375.2:                                ; preds = %.preheader.i375.1
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 2
  %i.sd = load i8, ptr %i.sc, align 1, !alias.scope !2179, !noalias !2180, !noundef !5 ; 2 uses
  %i.se = add i8 %i.sd, -65
  %i.sf = icmp ult i8 %i.se, 26
  %i.sg = select i1 %i.sf, i8 32, i8 0
  %.sroa.04.0.i381.2 = or i8 %i.sg, %i.sd
  %i.sh = icmp eq i8 %.sroa.04.0.i381.2, 120
  br i1 %i.sh, label %"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit383", label %.backedge.sink.split

"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E.exit": ; preds = %.preheader.i370.5
end_hunk_0
