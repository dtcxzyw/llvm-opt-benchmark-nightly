Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@"_ZN14pulldown_cmark5parse15Parser$LT$F$GT$19handle_inline_pass117hdc1ee6880cd182acE":bb.a
  %i.zs = icmp eq i64 %.sroa.049.0243.i.i, 1
  br i1 %i.zs, label %bb.ly, label %bb.ma

bb.ka:                                            ; preds = %bb.jy
  switch i8 %i.zp, label %bb.km [
    i8 10, label %bb.kb
    i8 13, label %bb.kb
    i8 38, label %bb.kl
  ]

bb.kb:                                            ; preds = %bb.ka, %bb.ka
  %i.zt = add nuw i64 %.sroa.021.0244.i.i, 1
  %i.zu = invoke noundef i64 @_ZN14pulldown_cmark5parse16scan_nodes_to_ix17he2d6a4231cd639f8E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(576) %0, i64 noundef %i.yp, i64 noundef %i.zt)
          to label %bb.kc unwind label %.thread160.loopexit.i.i, !noalias !1273 ; 4 uses

bb.kc:                                            ; preds = %bb.kb
  %.not101.i.i = icmp eq i64 %i.zu, 0
  br i1 %.not101.i.i, label %bb.km, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.zv = icmp ult i64 %i.zu, %i.zk
  br i1 %i.zv, label %bb.ke, label %.invoke.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.zw = getelementptr inbounds nuw [48 x i8], ptr %i.zl, i64 %i.zu
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16 ; 2 uses
  %i.zy = load i64, ptr %i.zx, align 8, !noalias !1273, !noundef !12
  %i.zz = icmp ugt i64 %i.zy, %.sroa.021.0244.i.i
  br i1 %i.zz, label %bb.kf, label %bb.km

bb.kf:                                            ; preds = %bb.ke
  %.not.i.i.i428 = icmp ugt i64 %.sroa.049.0243.i.i, %.sroa.021.0244.i.i
  br i1 %.not.i.i.i428, label %.invoke322.i.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.aaa = icmp eq i64 %.sroa.049.0243.i.i, 0
  br i1 %i.aaa, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aab = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  %i.aac = load i8, ptr %i.aab, align 1, !alias.scope !1274, !noalias !1269, !noundef !12
  %i.aad = icmp sgt i8 %i.aac, -65
  br i1 %i.aad, label %bb.ki, label %.invoke322.i.i

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %i.aae = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly %i.aae, ptr noundef nonnull readonly %i.zo)
          to label %bb.kj unwind label %.thread160.loopexit.i.i, !noalias !1273

bb.kj:                                            ; preds = %bb.ki
  %i.aaf = load i64, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !1275, !noalias !1270, !noundef !12 ; 2 uses
  %i.aag = icmp sgt i64 %i.aaf, -1
  call void @llvm.assume(i1 %i.aag)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 1)
          to label %bb.kk unwind label %.thread160.loopexit.i.i, !noalias !1273

bb.kk:                                            ; preds = %bb.kj
  %i.aah = load ptr, ptr %.sroa.4.0..sroa_idx65.i.i, align 8, !alias.scope !1275, !noalias !1270, !nonnull !12, !noundef !12
  %i.aai = load i64, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !1275, !noalias !1270, !noundef !12 ; 2 uses
  %i.aaj = icmp sgt i64 %i.aai, -1
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aai
  store i8 10, ptr %i.aak, align 1, !noalias !1273
  %i.aal = add nuw i64 %i.aaf, 1
  store i64 %i.aal, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !alias.scope !1275, !noalias !1270
  %i.aam = load i64, ptr %i.zx, align 8, !noalias !1273, !noundef !12 ; 2 uses
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.ln, %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i", %bb.kk
  %.sroa.049.0.be.i.i = phi i64 [ %.sroa.049.3.i.i, %bb.ln ], [ %i.aam, %bb.kk ], [ %i.abh, %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i" ]
  %.sroa.021.0.be.i.i = phi i64 [ %i.ach, %bb.ln ], [ %i.aam, %bb.kk ], [ %i.abh, %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i" ] ; 2 uses
  %i.aan = icmp ult i64 %.sroa.021.0.be.i.i, %i.bt
  br i1 %i.aan, label %bb.jw, label %._crit_edge.i.i

bb.kl:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1270
  %i.aao = sub nuw i64 %i.bt, %.sroa.021.0244.i.i
  invoke void @_ZN14pulldown_cmark8scanners11scan_entity17hf87669ba31985f8cE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.zo, i64 noundef %i.aao)
          to label %bb.kn unwind label %.thread160.loopexit.i.i, !noalias !1273

bb.km:                                            ; preds = %bb.kr, %bb.ke, %bb.kc, %bb.ka
  %i.aap = invoke noundef zeroext i1 @"_ZN14pulldown_cmark5parse79_$LT$impl$u20$pulldown_cmark..tree..Tree$LT$pulldown_cmark..parse..Item$GT$$GT$11is_in_table17he00459d4f5407662E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(576) %0)
          to label %bb.ld unwind label %.thread160.loopexit.i.i, !noalias !1273

bb.kn:                                            ; preds = %bb.kl
  %i.aaq = load i8, ptr %i.cw, align 8, !range !28, !noalias !1270, !noundef !12
  %.not102.i.i = icmp eq i8 %i.aaq, 3
  br i1 %.not102.i.i, label %bb.kr, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aar = load i64, ptr %i.i, align 8, !noalias !1270, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !noalias !1270
  %.not.i111.i.i = icmp ugt i64 %.sroa.049.0243.i.i, %.sroa.021.0244.i.i
  br i1 %.not.i111.i.i, label %bb.kw, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.aas = icmp eq i64 %.sroa.049.0243.i.i, 0
  br i1 %i.aas, label %bb.kv, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.aat = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  %i.aau = load i8, ptr %i.aat, align 1, !alias.scope !1276, !noalias !1269, !noundef !12
  %i.aav = icmp sgt i8 %i.aau, -65
  br i1 %i.aav, label %bb.kv, label %bb.kw

bb.kr:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1270
  br label %bb.km

.loopexit.i.i:                                    ; preds = %bb.ky, %bb.kx, %bb.kv
  %lpad.loopexit202.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.loopexit.split-lp.i.i:                           ; preds = %bb.kw
  %lpad.loopexit.split-lp203.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.ks:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi204.i.i = phi { ptr, i32 } [ %lpad.loopexit202.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp203.i.i, %.loopexit.split-lp.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.aaw = load i8, ptr %i.h, align 8, !range !29, !alias.scope !1277, !noalias !1270, !noundef !12
  %i.aax = icmp eq i8 %i.aaw, 0
  br i1 %i.aax, label %bb.kt, label %.thread.i.i

bb.kt:                                            ; preds = %bb.ks
  %.val1.i.i.i = load i64, ptr %i.cx, align 8, !alias.scope !1277, !noalias !1270, !noundef !12 ; 2 uses
  %i.aay = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.aay, label %.thread.i.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %.val.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !1277, !noalias !1270, !nonnull !12, !noundef !12
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #34, !noalias !1278
  br label %.thread.i.i

bb.kv:                                            ; preds = %bb.kq, %bb.kp
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly %i.aaz, ptr noundef nonnull readonly %i.zo)
          to label %bb.kx unwind label %.loopexit.i.i, !noalias !1273

bb.kw:                                            ; preds = %bb.kq, %bb.ko
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bt, i64 noundef %.sroa.049.0243.i.i, i64 noundef %.sroa.021.0244.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.jx unwind label %.loopexit.split-lp.i.i, !noalias !1273

bb.kx:                                            ; preds = %bb.kv
  %i.aba = invoke { ptr, i64 } @"_ZN75_$LT$pulldown_cmark..strings..CowStr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8bc51aacd5a6302aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.ky unwind label %.loopexit.i.i, !noalias !1273 ; 2 uses

bb.ky:                                            ; preds = %bb.kx
  %i.abb = extractvalue { ptr, i64 } %i.aba, 0    ; 3 uses
  %i.abc = extractvalue { ptr, i64 } %i.aba, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abb) ]
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abc
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %i.abb, ptr noundef nonnull %i.abd)
          to label %bb.kz unwind label %.loopexit.i.i, !noalias !1273

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.abe = load i8, ptr %i.h, align 8, !range !29, !alias.scope !1279, !noalias !1270, !noundef !12
  %i.abf = icmp eq i8 %i.abe, 0
  br i1 %i.abf, label %bb.la, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i"

bb.la:                                            ; preds = %bb.kz
  %.val1.i119.i.i = load i64, ptr %i.cx, align 8, !alias.scope !1279, !noalias !1270, !noundef !12 ; 2 uses
  %i.abg = icmp eq i64 %.val1.i119.i.i, 0
  br i1 %i.abg, label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i", label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %.val.i120.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !1279, !noalias !1270, !nonnull !12, !noundef !12
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i120.i.i, i64 noundef range(i64 1, 0) %.val1.i119.i.i, i64 noundef 1) #34, !noalias !1280
  br label %"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i"

"_ZN4core3ptr52drop_in_place$LT$pulldown_cmark..strings..CowStr$GT$17hd41f98d1e7ed693aE.exit121.i.i": ; preds = %bb.lb, %bb.la, %bb.kz
  %i.abh = add i64 %i.aar, %.sroa.021.0244.i.i    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1270
  br label %.backedge.i.i

bb.lc:                                            ; preds = %.thread.i.i
  %i.abi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1273
  unreachable

bb.ld:                                            ; preds = %bb.km
  %i.abj = icmp eq i8 %i.zp, 92                   ; 2 uses
  %or.cond.i.i427 = and i1 %i.abj, %i.aap
  br i1 %or.cond.i.i427, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  br i1 %i.abj, label %.thread174.i.i, label %bb.ln

bb.lf:                                            ; preds = %bb.ld
  %i.abk = add i64 %.sroa.021.0244.i.i, 2         ; 4 uses
  %i.abl = icmp ult i64 %i.abk, %i.bt
  br i1 %i.abl, label %bb.lg, label %.thread174.i.i

bb.lg:                                            ; preds = %bb.lf
  %i.abm = add i64 %.sroa.021.0244.i.i, 1         ; 3 uses
  %i.abn = icmp ult i64 %i.abm, %i.bt
  br i1 %i.abn, label %bb.lh, label %.invoke.i.i

bb.lh:                                            ; preds = %bb.lg
  %i.abo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.abm
  %i.abp = load i8, ptr %i.abo, align 1, !alias.scope !1268, !noalias !1269, !noundef !12
  %i.abq = icmp eq i8 %i.abp, 92
  br i1 %i.abq, label %bb.li, label %.thread174.i.i

.invoke.i.i:                                      ; preds = %bb.lg, %bb.kd
  %i.abr = phi i64 [ %i.zu, %bb.kd ], [ %i.abm, %bb.lg ]
  %i.abs = phi i64 [ %i.zk, %bb.kd ], [ %i.bt, %bb.lg ]
  %i.abt = phi ptr [ @192, %bb.kd ], [ @195, %bb.lg ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.abr, i64 noundef %i.abs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abt) #39
          to label %.cont.i.i unwind label %.thread160.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !1273

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.li:                                            ; preds = %bb.lh
  %i.abu = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.abk
  %i.abv = load i8, ptr %i.abu, align 1, !alias.scope !1268, !noalias !1269, !noundef !12
  %i.abw = icmp eq i8 %i.abv, 124
  br i1 %i.abw, label %bb.lj, label %.thread174.i.i

bb.lj:                                            ; preds = %bb.li
  %.not.i122.i.i = icmp ugt i64 %.sroa.049.0243.i.i, %.sroa.021.0244.i.i
  br i1 %.not.i122.i.i, label %.invoke322.i.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.abx = icmp eq i64 %.sroa.049.0243.i.i, 0
  br i1 %i.abx, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aby = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  %i.abz = load i8, ptr %i.aby, align 1, !alias.scope !1281, !noalias !1269, !noundef !12
  %i.aca = icmp sgt i8 %i.abz, -65
  br i1 %i.aca, label %bb.lm, label %.invoke322.i.i

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %i.acb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly %i.acb, ptr noundef nonnull readonly %i.zo)
          to label %.thread174.i.i unwind label %.thread160.loopexit.i.i, !noalias !1273

.invoke322.i.i:                                   ; preds = %bb.md, %bb.mc, %bb.ma, %bb.lz, %bb.ly, %bb.lw, %.split7.i136.i.i, %bb.lu, %.split.i132.i.i, %bb.lq, %bb.ll, %bb.lj, %bb.kh, %bb.kf
  %i.acc = phi i64 [ %.sroa.049.2177.i.i, %.split.i132.i.i ], [ %.sroa.049.0243.i.i, %bb.kf ], [ %.sroa.049.0243.i.i, %bb.lj ], [ %.sroa.049.2177.i.i, %.split7.i136.i.i ], [ %.sroa.049.0243.i.i, %bb.kh ], [ %.sroa.049.0243.i.i, %bb.ll ], [ %.sroa.049.2177.i.i, %bb.lw ], [ %.sroa.049.2177.i.i, %bb.lu ], [ %.sroa.049.2177.i.i, %bb.lq ], [ %.sroa.049.0243.i.i, %bb.md ], [ %.sroa.049.0243.i.i, %bb.mc ], [ 1, %bb.ly ], [ 1, %bb.lz ], [ %.sroa.049.0243.i.i, %bb.ma ]
  %i.acd = phi i64 [ %.sroa.021.2178.i.i, %.split.i132.i.i ], [ %.sroa.021.0244.i.i, %bb.kf ], [ %.sroa.021.0244.i.i, %bb.lj ], [ %.sroa.021.2178.i.i, %.split7.i136.i.i ], [ %.sroa.021.0244.i.i, %bb.kh ], [ %.sroa.021.0244.i.i, %bb.ll ], [ %.sroa.021.2178.i.i, %bb.lw ], [ %.sroa.021.2178.i.i, %bb.lu ], [ %.sroa.021.2178.i.i, %bb.lq ], [ %.sroa.021.0244.i.i, %bb.md ], [ %.sroa.021.0244.i.i, %bb.mc ], [ 0, %bb.ly ], [ %.sroa.021.0244.i.i, %bb.lz ], [ %.sroa.021.0244.i.i, %bb.ma ]
  %i.ace = phi ptr [ @197, %.split.i132.i.i ], [ @193, %bb.kf ], [ @196, %bb.lj ], [ @197, %.split7.i136.i.i ], [ @193, %bb.kh ], [ @196, %bb.ll ], [ @197, %bb.lw ], [ @197, %bb.lu ], [ @197, %bb.lq ], [ @199, %bb.md ], [ @199, %bb.mc ], [ @198, %bb.ly ], [ @198, %bb.lz ], [ @199, %bb.ma ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bt, i64 noundef %i.acc, i64 noundef %i.acd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ace) #39
          to label %.cont323.i.i unwind label %.thread160.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !1273

.cont323.i.i:                                     ; preds = %.invoke322.i.i
  unreachable

.thread174.i.i:                                   ; preds = %bb.lm, %bb.li, %bb.lh, %bb.lf, %bb.le
  %.sroa.021.2178.i.i = phi i64 [ %.sroa.021.0244.i.i, %bb.le ], [ %i.abk, %bb.lm ], [ %.sroa.021.0244.i.i, %bb.lf ], [ %.sroa.021.0244.i.i, %bb.lh ], [ %.sroa.021.0244.i.i, %bb.li ] ; 14 uses
  %.sroa.049.2177.i.i = phi i64 [ %.sroa.049.0243.i.i, %bb.le ], [ %i.abk, %bb.lm ], [ %.sroa.049.0243.i.i, %bb.lf ], [ %.sroa.049.0243.i.i, %bb.lh ], [ %.sroa.049.0243.i.i, %bb.li ] ; 13 uses
  %i.acf = add i64 %.sroa.021.2178.i.i, 1         ; 4 uses
  %i.acg = icmp ult i64 %i.acf, %i.bt
  br i1 %i.acg, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lx, %bb.lp, %.thread174.i.i, %bb.le
  %.sroa.049.3.i.i = phi i64 [ %.sroa.049.0243.i.i, %bb.le ], [ %.sroa.049.2177.i.i, %bb.lp ], [ %.sroa.049.2177.i.i, %.thread174.i.i ], [ %i.acf, %bb.lx ]
  %.sroa.021.3.i.i = phi i64 [ %.sroa.021.0244.i.i, %bb.le ], [ %.sroa.021.2178.i.i, %bb.lp ], [ %.sroa.021.2178.i.i, %.thread174.i.i ], [ %i.acf, %bb.lx ]
  %i.ach = add i64 %.sroa.021.3.i.i, 1
  br label %.backedge.i.i

bb.lo:                                            ; preds = %.thread174.i.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.acf
  %i.acj = load i8, ptr %i.aci, align 1, !alias.scope !1268, !noalias !1269, !noundef !12
  %i.ack = invoke noundef zeroext i1 @_ZN14pulldown_cmark10puncttable20is_ascii_punctuation17h90ac80e5219c6ca7E(i8 noundef %i.acj)
          to label %bb.lp unwind label %.thread160.loopexit.i.i, !noalias !1273

bb.lp:                                            ; preds = %bb.lo
  br i1 %i.ack, label %bb.lq, label %bb.ln

bb.lq:                                            ; preds = %bb.lp
  %.not.i130.i.i = icmp ugt i64 %.sroa.049.2177.i.i, %.sroa.021.2178.i.i
  br i1 %.not.i130.i.i, label %.invoke322.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.acl = icmp eq i64 %.sroa.049.2177.i.i, 0
  br i1 %i.acl, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %.not5.i131.i.i = icmp ult i64 %.sroa.049.2177.i.i, %i.bt
  br i1 %.not5.i131.i.i, label %bb.lu, label %.split.i132.i.i

bb.lt:                                            ; preds = %bb.lu, %.split.i132.i.i, %bb.lr
  %i.acm = icmp eq i64 %.sroa.021.2178.i.i, 0
  br i1 %i.acm, label %bb.lx, label %bb.lv

.split.i132.i.i:                                  ; preds = %bb.ls
  %i.acn = icmp eq i64 %.sroa.049.2177.i.i, %i.bt
  br i1 %i.acn, label %bb.lt, label %.invoke322.i.i

bb.lu:                                            ; preds = %bb.ls
  %i.aco = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.2177.i.i
  %i.acp = load i8, ptr %i.aco, align 1, !alias.scope !1282, !noalias !1269, !noundef !12
  %i.acq = icmp sgt i8 %i.acp, -65
  br i1 %i.acq, label %bb.lt, label %.invoke322.i.i

bb.lv:                                            ; preds = %bb.lt
  %.not6.i135.i.i = icmp ult i64 %.sroa.021.2178.i.i, %i.bt
  br i1 %.not6.i135.i.i, label %bb.lw, label %.split7.i136.i.i

.split7.i136.i.i:                                 ; preds = %bb.lv
  %i.acr = icmp eq i64 %.sroa.021.2178.i.i, %i.bt
  br i1 %i.acr, label %bb.lx, label %.invoke322.i.i

bb.lw:                                            ; preds = %bb.lv
  %i.acs = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.021.2178.i.i
  %i.act = load i8, ptr %i.acs, align 1, !alias.scope !1282, !noalias !1269, !noundef !12
  %i.acu = icmp sgt i8 %i.act, -65
  br i1 %i.acu, label %bb.lx, label %.invoke322.i.i

bb.lx:                                            ; preds = %bb.lw, %.split7.i136.i.i, %bb.lt
  %i.acv = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.2177.i.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.021.2178.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly %i.acv, ptr noundef nonnull readonly %i.acw)
          to label %bb.ln unwind label %.thread160.loopexit.i.i, !noalias !1273

bb.ly:                                            ; preds = %bb.jz
  %reass.sub2003 = sub i64 %.sroa.021.0244.i.i, %i.ze
  %i.acx = add i64 %reass.sub2003, 1
  %.not.i138.i.i = icmp eq i64 %.sroa.021.0244.i.i, 0
  br i1 %.not.i138.i.i, label %.invoke322.i.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.acy = load i8, ptr %i.cz, align 1, !alias.scope !1283, !noalias !1269, !noundef !12
  %i.acz = icmp sgt i8 %i.acy, -65
  %i.ada = icmp sgt i8 %..i.i, -65
  %or.cond199.i.i = and i1 %i.ada, %i.acz
  br i1 %or.cond199.i.i, label %bb.me, label %.invoke322.i.i

bb.ma:                                            ; preds = %bb.jz
  %.not.i146.i.i = icmp ugt i64 %.sroa.049.0243.i.i, %.sroa.021.0244.i.i
  br i1 %.not.i146.i.i, label %.invoke322.i.i, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.adb = icmp eq i64 %.sroa.049.0243.i.i, 0
  br i1 %i.adb, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.md, %bb.mb
  %i.adc = icmp eq i64 %.sroa.021.0244.i.i, 0
  %i.add = icmp sgt i8 %..i.i, -65
  %or.cond201.i.i = or i1 %i.add, %i.adc
  br i1 %or.cond201.i.i, label %bb.mh, label %.invoke322.i.i

bb.md:                                            ; preds = %bb.mb
  %i.ade = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  %i.adf = load i8, ptr %i.ade, align 1, !alias.scope !1284, !noalias !1269, !noundef !12
  %i.adg = icmp sgt i8 %i.adf, -65
  br i1 %i.adg, label %bb.mc, label %.invoke322.i.i

bb.me:                                            ; preds = %bb.lz
  %i.adh = add i64 %.sroa.021.0244.i.i, -1
  br label %.loopexit.i429

.loopexit.i429:                                   ; preds = %bb.jy, %bb.me
  %.sroa.15.0.i = phi i64 [ %i.adh, %bb.me ], [ undef, %bb.jy ]
  %.sroa.13.0.i = phi ptr [ %i.cz, %bb.me ], [ undef, %bb.jy ]
  %.sroa.5.0.i = phi i8 [ 1, %bb.me ], [ 3, %bb.jy ]
  %.sroa.034.0.i = phi i64 [ %i.acx, %bb.me ], [ undef, %bb.jy ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit155.i.i" unwind label %bb.mf, !noalias !1273

bb.mf:                                            ; preds = %.loopexit.i429
  %i.adi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i unwind label %bb.mg, !noalias !1273

bb.mg:                                            ; preds = %bb.mf
  %i.adj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1273
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit155.i.i": ; preds = %.loopexit.i429
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.mj unwind label %bb.jr, !noalias !1263

bb.mh:                                            ; preds = %bb.mc
  %i.adk = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.049.0243.i.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly %i.adk, ptr noundef nonnull readonly %i.zo)
          to label %bb.mi unwind label %.thread160.loopexit.split-lp.i.i.loopexit, !noalias !1273

bb.mi:                                            ; preds = %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1270
  invoke void @"_ZN100_$LT$pulldown_cmark..strings..CowStr$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h4a89009f3e4df088E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc17.i unwind label %bb.jr, !noalias !1263

.noexc17.i:                                       ; preds = %bb.mi
  %reass.sub = sub i64 %.sroa.021.0244.i.i, %i.ze
  %i.adl = add i64 %reass.sub, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1270
  %.sroa.4.sroa.0.0.copyload14.i.i = load i8, ptr %i.k, align 8, !noalias !1270
  %.sroa.4.sroa.5.0.copyload16.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1270
end_hunk_0
begin_hunk_1_@"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3eeced1669e1669fE":bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  store i64 %i.af, ptr %0, align 8
  br label %bb.j

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit": ; preds = %bb.h, %.lr.ph.i, %bb.g, %bb.b
  store i8 1, ptr %i.a, align 1, !alias.scope !8871
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !26, !alias.scope !8871, !noundef !12
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2 = load i64, ptr %0, align 8, !alias.scope !8871 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !8871 ; 2 uses
  %.not.i3 = icmp ne i64 %.pre2.i, %.pre.i2
  %or.cond.not.i = select i1 %i.ap, i1 true, i1 %.not.i3 ; 2 uses
  %i.aq = sub nuw i64 %.pre2.i, %.pre.i2
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre.i2
  %.sroa.3.0.i = select i1 %or.cond.not.i, i64 %i.aq, i64 undef
  %.sroa.0.0.i = select i1 %or.cond.not.i, ptr %i.ar, ptr null
  br label %bb.j

bb.j:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit", %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.al, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit" ], [ %.sroa.3.0.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit" ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.am, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E.exit" ], [ %.sroa.0.0.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h89ec98866062a98cE.exit" ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17hb91b52284ba8e882E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !26, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !26, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17hb91b52284ba8e882E"(ptr noalias noundef align 8 dereferenceable(72) %0) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !12, !align !21, !noundef !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8875)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8875, !noalias !8876, !noundef !12 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !8875, !noalias !8876 ; 3 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  %.not26.i = icmp ugt i64 %.promoted.i, %.val6
  %or.cond27.i = or i1 %i.p, %.not26.i
  br i1 %or.cond27.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !8875, !noalias !8876, !noundef !12 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.z = sub nuw i64 %i.y, %i.n
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !8875, !noalias !8876, !noundef !12
  %i.ab = tail call { i64, i64 } @_ZN4core5slice6memchr7memrchr17h70598d55cb08d087E(i8 noundef %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.z), !noalias !8877 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, i64 } %i.ab, 1
  %i.af = add i64 %i.ae, %i.n                     ; 6 uses
  %.not16.i = icmp ult i64 %i.af, %i.v
  br i1 %.not16.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !8875, !noalias !8876
  br label %.loopexit

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !8875, !noalias !8876
  %i.ag = icmp ult i64 %i.af, %i.n
  %.not.i = icmp ugt i64 %i.af, %.val6
  %or.cond.i = or i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.v                 ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not17.i = icmp ugt i64 %i.ai, %.val6
  %or.cond18.i = or i1 %i.aj, %.not17.i
  br i1 %or.cond18.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !8876
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !26, !noundef !12
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.n ], [ undef, %bb.a ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.n ], [ null, %bb.a ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !8875, !noalias !8876
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !12
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.as, %bb.m ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.m ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.l
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !21, !noundef !12
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !12, !align !21, !noundef !12 ; 3 uses
  %i.h = icmp ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us
  %.sroa.0.015.us = phi i16 [ %i.w, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.015.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8881)
  call void @llvm.experimental.noalias.scope.decl(metadata !8882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hd8f13022d2dcb684E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly align 1 %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !8883 ; 2 uses
  %.sroa.515.0.copyload.i.us = load ptr, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !8883 ; 2 uses
  %.sroa.616.0.copyload.i.us = load i64, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !8883 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8883 ; 2 uses
  %umax.i.us = call i64 @llvm.umax.i64(i64 %.sroa.616.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us24.not = icmp ult i64 %.sroa.616.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us24.not, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us.preheader", label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us.preheader": ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload.i.us) ]
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us"

bb.b:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us"
  %i.p = add i64 %.sroa.616.0.i.us25, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us.preheader", %bb.b
  %.sroa.616.0.i.us25 = phi i64 [ %i.p, %bb.b ], [ %.sroa.616.0.copyload.i.us, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us.preheader" ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.616.0.i.us25
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.515.0.copyload.i.us, i64 %.sroa.616.0.i.us25
  %i.s = load i8, ptr %i.q, align 1, !noundef !12
  %i.t = load i8, ptr %i.r, align 1, !noundef !12
  %.not13.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us: ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h4b77c0ead2b38d38E.exit.i.us"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.015.us, %i.v            ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.015 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.015, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.023.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.022.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.023.i, align 1, !alias.scope !8881, !noalias !8882
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.022.i, align 1, !alias.scope !8882, !noalias !8881
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.023.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit: ; preds = %bb.c, %.preheader.split
  %.val14.i = load i32, ptr %i.ad, align 1, !alias.scope !8881, !noalias !8882
  %.val.i = load i32, ptr %i.j, align 1, !alias.scope !8882, !noalias !8881
  %i.ai = icmp eq i32 %.val14.i, %.val.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12 ], [ false, %bb.a ], [ false, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.015, %i.ak             ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !12
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted35 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !12
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %i.n, %5                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 4 uses
  %umax49 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not86.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not86.not, label %.lr.ph89, label %._crit_edge90

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph71 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph71, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax49
  br i1 %exitcond.not, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph93, label %._crit_edge94

.lr.ph89:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.087 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.087, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.ae = icmp ult i64 %.sroa.05.0, %i.ag
  br i1 %i.ae, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge90, %bb.h
  %i.af = add i64 %i.n, %5                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph93:                                         ; preds = %._crit_edge90, %bb.h
  %.sroa.2.091 = phi i64 [ %i.ag, %bb.h ], [ %i.g, %._crit_edge90 ]
  %i.ag = add i64 %.sroa.2.091, -1                ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge94
  store i64 0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge94
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ai, align 8, !alias.scope !8886
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.aj, align 8, !alias.scope !8886
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph93
  %i.ak = add i64 %i.ag, %i.n                     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph93
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ag, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759) #39
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !12
  %.not = icmp eq i8 %i.an, %i.ap
end_hunk_1
begin_hunk_2_@_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17hf03894819d8c54c0E
define hidden noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17hf03894819d8c54c0E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17hfd7bc8f75f795f2eE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17h975a8b0f08172a52E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..error..Error$GT$6source17h26f7a35434573f51E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN4core5slice4iter16IterMut$LT$T$GT$12as_mut_slice17h1d4383228beee816E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN4core5slice4iter16IterMut$LT$T$GT$12as_mut_slice17ha56d47d77b59b239E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN4core5slice4iter16IterMut$LT$T$GT$12as_mut_slice17hed026a7b1a86dff7E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !12
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217h167e215492b853d4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = invoke noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.aj

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.aj      ; 6 uses

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8978)
  %i.i = load ptr, ptr %3, align 8, !alias.scope !8979, !nonnull !12, !align !13, !noundef !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !8979, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !8979, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !8979, !noundef !12
  invoke void %i.k(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n, i64 noundef %i.p)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread" unwind label %bb.ah, !inline_history !5

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load i16, ptr %i.q, align 8, !noundef !12 ; 3 uses
  %i.s = and i16 %i.r, %i.g
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !12 ; 2 uses
  %i.x = zext i16 %i.r to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not148 = icmp eq i64 %i.w, 0
  %i.ac = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  br label %.outer130

.outer130:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread", %bb.e
  %.sroa.012.0.ph = phi i64 [ %i.ba, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread" ], [ 0, %bb.e ] ; 3 uses
  %.sroa.04.0.ph = phi i64 [ %i.bb, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread" ], [ %i.t, %bb.e ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.04.0.ph, %i.w       ; 2 uses
  %.not148.not = xor i1 %.not148, true
  %brmerge = or i1 %i.ad, %.not148.not
  %.sroa.04.0.ph.mux = select i1 %i.ad, i64 %.sroa.04.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer130
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.sroa.04.0.ph.mux ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noundef !12 ; 2 uses
  %.not = icmp eq i16 %i.af, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.s
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.ag = zext i16 %i.af to i64                   ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !12 ; 2 uses
  %i.aj = and i16 %i.ai, %i.r
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub i64 %.sroa.04.0.ph.mux, %i.ak
  %i.am = and i64 %i.al, %i.x
  %i.an = icmp samesign ult i64 %i.am, %.sroa.012.0.ph
  br i1 %i.an, label %bb.n, label %bb.m

bb.h:                                             ; preds = %.loopexit
  %i.ao = load i64, ptr %i.y, align 8, !noundef !12 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 88686269585142076
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.aq = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef align 8 dereferenceable(96) %1, i16 noundef %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.ar, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.j:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.v, align 8, !noundef !12 ; 2 uses
  %i.at = icmp ult i64 %.sroa.04.0.ph.mux, %i.as
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12
  %i.av = trunc i64 %i.ao to i16
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.sroa.04.0.ph.mux ; 2 uses
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.g, ptr %i.ax, align 2
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.04.0.ph.mux, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @779) #39
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.ay = icmp eq i16 %i.ai, %i.g
  br i1 %i.ay, label %bb.o, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.n:                                             ; preds = %bb.g
  %i.az = icmp samesign ugt i64 %.sroa.012.0.ph, 511
  br i1 %i.az, label %bb.aa, label %.noexc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread": ; preds = %bb.r, %bb.p, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit", %bb.m
  %i.ba = add nuw nsw i64 %.sroa.012.0.ph, 1
  %i.bb = add i64 %.sroa.04.0.ph.mux, 1
  br label %.outer130

bb.o:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.y, align 8, !noundef !12 ; 3 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ag
  br i1 %i.bd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %i.ag ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !12
  %i.bi = icmp ne ptr %i.bh, null                 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !noundef !12 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  %i.bl = xor i1 %i.bi, %i.bk
  br i1 %i.bl, label %bb.q, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.q:                                             ; preds = %bb.p
  br i1 %i.bi, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit"

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !12 ; 2 uses
  %i.bo = load i64, ptr %i.ab, align 8, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.bn, %i.bo
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

.split:                                           ; preds = %bb.r
  %i.bp = load ptr, ptr %i.aa, align 8, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !12
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bp, i64 %i.bn)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bs, label %bb.t, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.s:                                             ; preds = %bb.o
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ag, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @778) #39
          to label %bb.f unwind label %bb.aj

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit": ; preds = %bb.q
  tail call void @llvm.assume(i1 %i.bk)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bu = load i8, ptr %i.bt, align 8, !range !62, !noundef !12
  %i.bv = load i8, ptr %i.aa, align 8, !range !62, !noundef !12
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.t, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.t:                                             ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit", %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8981)
  %i.bx = load i64, ptr %i.bf, align 8, !range !14, !noalias !8982, !noundef !12
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.v, label %bb.w

bb.u:                                             ; preds = %.invoke.i, %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8985)
  %i.ca = load ptr, ptr %i.c, align 8, !alias.scope !8986, !noalias !8987, !nonnull !12, !align !13, !noundef !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !8988, !nonnull !12, !noundef !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !8986, !noalias !8987, !noundef !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !8986, !noalias !8987, !noundef !12
  invoke void %i.cc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.cf, i64 noundef %i.ch)
          to label %bb.al unwind label %bb.x, !noalias !8989, !inline_history !5

bb.v:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !8982, !noundef !12
  invoke void @"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h2015c0f1bfe9603cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cj)
          to label %._crit_edge.i unwind label %bb.u, !noalias !8990

._crit_edge.i:                                    ; preds = %bb.v
  %.pre.i = load i64, ptr %i.y, align 8, !alias.scope !8980, !noalias !8990
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i, %bb.t
  %i.ck = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bc, %bb.t ] ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %i.ag
  br i1 %i.cl, label %bb.y, label %.invoke.i

.invoke.i:                                        ; preds = %bb.w
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef range(i64 0, 65536) %i.ag, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @780) #39
          to label %.cont.i unwind label %bb.u, !noalias !8990

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !8989
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cn = load ptr, ptr %i.z, align 8, !alias.scope !8980, !noalias !8990, !nonnull !12, !noundef !12
  %i.co = getelementptr inbounds nuw [104 x i8], ptr %i.cn, i64 %i.ag ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %.sroa.445.0.copyload = load i8, ptr %.sroa.445.0..sroa_idx, align 8, !noalias !8981
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 57
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !8989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.445.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8992)
  %i.cq = load ptr, ptr %2, align 8, !alias.scope !8993, !noundef !12 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8997)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !8998, !nonnull !12, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load ptr, ptr %i.aa, align 8, !alias.scope !8998, !noundef !12
  %i.cw = load i64, ptr %i.ab, align 8, !alias.scope !8998, !noundef !12
  tail call void %i.ct(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cv, i64 noundef %i.cw), !inline_history !6
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.aa:                                            ; preds = %bb.n
  %i.cx = load i64, ptr %1, align 8, !range !20, !noundef !12
  %i.cy = icmp ne i64 %i.cx, 2
  br label %.noexc

.noexc:                                           ; preds = %bb.aa, %bb.n
  %.sroa.017.0 = phi i1 [ %i.cy, %bb.aa ], [ false, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.cz = load i64, ptr %i.y, align 8, !alias.scope !8999, !noalias !9000, !noundef !12 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 88686269585142076
  tail call void @llvm.assume(i1 %i.da)
  %i.db = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  br i1 %i.db, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.noexc
  %i.dc = load ptr, ptr %i.u, align 8, !alias.scope !8999, !noalias !9000, !nonnull !12, !noundef !12
  %i.dd = load i64, ptr %i.v, align 8, !alias.scope !8999, !noalias !9000, !noundef !12 ; 2 uses
  %i.de = trunc i64 %i.cz to i16
  %.not149 = icmp eq i64 %i.dd, 0
  br label %.outer

.outer:                                           ; preds = %bb.ad, %bb.ab
  %.sroa.6.0.i.ph = phi i16 [ %i.dm, %bb.ad ], [ %i.g, %bb.ab ] ; 2 uses
  %.sroa.07.0.i.ph = phi i16 [ %i.dh, %bb.ad ], [ %i.de, %bb.ab ] ; 2 uses
  %.sroa.05.0.i.ph = phi i64 [ %i.dl, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.dn, %bb.ad ], [ %.sroa.04.0.ph.mux, %bb.ab ] ; 2 uses
  %i.df = icmp ult i64 %.sroa.0.0.i.ph, %i.dd     ; 2 uses
  %.not149.not = xor i1 %.not149, true
  %brmerge164 = or i1 %i.df, %.not149.not
  %.sroa.0.0.i.ph.mux = select i1 %i.df, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge164, label %.loopexit147, label %infloop163

.loopexit147:                                     ; preds = %.outer
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !9000, !noundef !12 ; 2 uses
  %i.di = icmp eq i16 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 2 ; 3 uses
  br i1 %i.di, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit147
  store i16 %.sroa.07.0.i.ph, ptr %i.dg, align 2, !noalias !9000
  store i16 %.sroa.6.0.i.ph, ptr %i.dj, align 2, !noalias !9000
  %i.dk = icmp ugt i64 %.sroa.05.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.017.0, i1 true, i1 %i.dk
  br i1 %or.cond.i, label %bb.ae, label %.thread

bb.ad:                                            ; preds = %.loopexit147
  %i.dl = add i64 %.sroa.05.0.i.ph, 1
  %i.dm = load i16, ptr %i.dj, align 2, !noalias !9000, !noundef !12
  store i16 %.sroa.07.0.i.ph, ptr %i.dg, align 2, !noalias !9000
  store i16 %.sroa.6.0.i.ph, ptr %i.dj, align 2, !noalias !9000
  %i.dn = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ae:                                            ; preds = %bb.ac
  %i.do = load i64, ptr %1, align 8, !range !20, !alias.scope !8999, !noalias !9000, !noundef !12
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  store i64 1, ptr %1, align 8, !alias.scope !8999, !noalias !9000
end_hunk_2
begin_hunk_3_@"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE":bb.a
  %i.j = load i64, ptr %i.f, align 8, !range !27, !alias.scope !9054, !noalias !9055, !noundef !12
  %i.k = icmp eq i64 %i.c, %i.j
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1f3254876a96a156E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.d, !noalias !9055

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$17h69ef5a4f5bec7b46E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #40
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9058)
  %i.n = load ptr, ptr %3, align 8, !alias.scope !9059, !nonnull !12, !align !13, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !9059, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !9059, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !9059, !noundef !12
  invoke void %i.p(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit" unwind label %bb.i, !inline_history !5

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !9054, !noalias !9055, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.y = add nuw nsw i64 %i.c, 1
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !9054, !noalias !9055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.h, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit", %bb.g
  ret i1 %i.e

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit": ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9061)
  %i.z = load ptr, ptr %2, align 8, !alias.scope !9062, !noundef !12 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9066)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !9067, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !9067, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !9067, !noundef !12
  tail call void %i.ac(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah), !inline_history !6
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

.body:                                            ; preds = %bb.i, %bb.j, %bb.d
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body7

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9069)
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !9070, !noundef !12 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9074)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !9075, !nonnull !12, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !9075, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !9075, !noundef !12
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %.body unwind label %bb.k, !inline_history !4

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4http6header4name7HdrName10from_bytes17hf1124aa44f30c6c3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4http6header4name9parse_hdr17hcf769feb0ea9a780E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 1 dereferenceable(64) %i.d, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) @782)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !28, !noundef !12
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 2, ptr %0, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  call void @llvm.experimental.noalias.scope.decl(metadata !9096)
  call void @llvm.experimental.noalias.scope.decl(metadata !9097)
  call void @llvm.experimental.noalias.scope.decl(metadata !9098)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9099, !noalias !9100, !noundef !12 ; 4 uses
  %i.j = icmp ult i64 %i.i, 88686269585142076
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef i16 @_ZN4http6header3map15hash_elem_using17h8a971a513bcf1cc9E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !9101 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = load i16, ptr %i.m, align 8, !alias.scope !9099, !noalias !9100, !noundef !12 ; 3 uses
  %i.o = and i16 %i.n, %i.l
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !9099, !noalias !9100, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9099, !noalias !9100, !nonnull !12
  %i.u = zext i16 %i.n to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !9099, !noalias !9100, !nonnull !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !29, !alias.scope !9102, !noalias !9103 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !9102, !noalias !9103 ; 5 uses
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !9102, !noalias !9103 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not3.i.i.i = icmp eq i8 %i.y, 2
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %.not = icmp eq i64 %i.r, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i", %bb.d
  %.sroa.05.0.i.i.ph = phi i64 [ %i.au, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i" ], [ 0, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.av, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i" ], [ %i.p, %bb.d ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.ph, %i.r    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ai, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.i.i.ph, i64 0 ; 9 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !9101, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ak, -1
  br i1 %.not.i.i, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noalias !9101, !noundef !12 ; 2 uses
  %i.ao = and i16 %i.an, %i.n
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.u
  %i.as = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ar
  br i1 %i.as, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i16 %i.an, %i.l
  br i1 %i.at, label %bb.g, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i": ; preds = %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i", %bb.n, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i, %bb.k, %.split.i.i, %bb.j, %bb.i, %bb.f
  %i.au = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.av = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %i.i, %i.al
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.al ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !9104, !noundef !12
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.y, label %bb.n [
    i8 2, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"
    i8 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.h
  br i1 %.not3.i.i.i, label %.split.i.i, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

.split.i.i:                                       ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !62, !noalias !9104, !noundef !12
  %i.bc = icmp eq i8 %i.bb, %i.ag
  br i1 %i.bc, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noalias !9104, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.be, %i.aa
  br i1 %.not.i.i.i.i, label %bb.l, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !9104, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aa
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hd8f13022d2dcb684E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 %i.bg, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull readonly align 1 %i.ab, ptr noundef nonnull readonly %i.ah), !noalias !9104
  call void @llvm.experimental.noalias.scope.decl(metadata !9106)
  %i.bi = load i64, ptr %i.ad, align 8, !alias.scope !9107, !noalias !9105, !noundef !12 ; 3 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !9107, !noalias !9105 ; 3 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !9106, !noalias !9105, !nonnull !12
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !9106, !noalias !9105, !nonnull !12
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i.i, i64 %i.bi)
  %exitcond.not.i3.not.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.bi
  br i1 %exitcond.not.i3.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.sink.split.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = add i64 %i.bk, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bj, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.sink.split.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %i.bk = phi i64 [ %i.bj, %bb.m ], [ %.promoted.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.bk
  %.val.i.i.i.i.i = load i8, ptr %i.bl, align 1, !noalias !9108, !noundef !12
  %.val7.i.i.i.i.i = load i8, ptr %i.bm, align 1, !noalias !9108, !noundef !12
  %i.bn = zext i8 %.val7.i.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @782, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !9109, !noundef !12
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i.i = icmp ult i64 %i.bk, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9105
  br i1 %.not14.i.i, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i", label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit"

bb.n:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !9104, !noundef !12
  %.not5.i.i.i = icmp eq i64 %i.br, %i.aa
  br i1 %.not5.i.i.i, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i", label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i": ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !9104, !noundef !12
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.bt, ptr nonnull %i.ab, i64 %i.aa), !noalias !9104
  %i.bu = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bu, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

bb.o:                                             ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.al, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781) #39, !noalias !9101
  unreachable

.loopexit.sink.split.i.i:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9105
  br label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit"

"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit": ; preds = %.split.i.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i", %.loopexit, %bb.e, %.loopexit.sink.split.i.i, %bb.c
  %.sroa.5.0 = phi i64 [ undef, %bb.c ], [ %i.al, %.loopexit.sink.split.i.i ], [ %i.al, %.split.i.i ], [ %i.al, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i ], [ %i.al, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i" ], [ undef, %bb.e ], [ undef, %.loopexit ]
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit.sink.split.i.i ], [ %.sroa.0.0.i.i.ph.mux, %bb.e ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit ], [ %.sroa.0.0.i.i.ph.mux, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i" ], [ %.sroa.0.0.i.i.ph.mux, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i ], [ %.sroa.0.0.i.i.ph.mux, %.split.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.c ], [ 1, %.loopexit.sink.split.i.i ], [ 1, %.split.i.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i ], [ 1, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i" ], [ 0, %bb.e ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_ZN4rand3rng3Rng12random_range17h1e03cfde3267e85eE(ptr noalias noundef align 16 dereferenceable(320) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.not = icmp ult i32 %1, %2
  br i1 %.not, label %bb.b, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i32 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.d = load i64, ptr %i.c, align 16, !alias.scope !9128, !noundef !12 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 63
  br i1 %i.e, label %bb.c, label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.f, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0)
  br label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i

_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ]    ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !9129, !noundef !12
  %i.j = add nuw nsw i64 %i.g, 1                  ; 2 uses
  store i64 %i.j, ptr %i.c, align 16, !alias.scope !9129
  %i.k = zext i32 %i.i to i64
  %i.l = zext i32 %i.b to i64                     ; 2 uses
  %i.m = mul nuw i64 %i.k, %i.l                   ; 2 uses
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32                ; 2 uses
  %i.p = trunc i64 %i.m to i32                    ; 2 uses
  %i.q = sub i32 %1, %2
  %i.r = icmp ult i32 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit"

bb.d:                                             ; preds = %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i
  %i.s = icmp eq i64 %i.g, 63
  br i1 %i.s, label %bb.e, label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.t, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0)
  br label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i

_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi i64 [ %i.j, %bb.d ], [ 0, %bb.e ]    ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !9130, !noundef !12
  %i.x = add nuw nsw i64 %i.u, 1
  store i64 %i.x, ptr %i.c, align 16, !alias.scope !9130
  %i.y = zext i32 %i.w to i64
  %i.z = mul nuw i64 %i.y, %i.l
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = xor i32 %i.p, -1
  %.not11.i.i.i = icmp ult i32 %i.ac, %i.ab
  %i.ad = zext i1 %.not11.i.i.i to i32
  %i.ae = add nuw i32 %i.ad, %i.o
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit": ; preds = %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i, %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i
  %.sroa.04.0.i.i.i = phi i32 [ %i.ae, %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i ], [ %i.o, %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i ]
  %i.af = add i32 %.sroa.04.0.i.i.i, %1
  ret i32 %i.af

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @784, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.aj, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_ZN4rand3rng3Rng12random_range17ha87417ecab203941E(ptr noalias noundef align 16 dereferenceable(320) %0, float noundef %1, float noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = fcmp uge float %1, %2
  br i1 %i.c, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = fsub float %2, %1                        ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp ueq float %i.e, +inf
  br i1 %i.f, label %"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16, !alias.scope !9145, !noundef !12 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 63
  br i1 %i.i, label %bb.d, label %"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.j, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0)
  br label %"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit"

"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit": ; preds = %bb.c, %bb.d
  %i.k = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ]    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !9145, !noundef !12
  %i.n = add nuw nsw i64 %i.k, 1
  store i64 %i.n, ptr %i.g, align 16, !alias.scope !9145
  %i.o = lshr i32 %i.m, 9
  %i.p = or disjoint i32 %i.o, 1065353216
  %i.q = bitcast i32 %i.p to float
  %i.r = fadd nnan float %i.q, -1.000000e+00
  %i.s = fmul float %i.d, %i.r
  %i.t = fadd float %1, %i.s
  ret float %i.t

"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit.thread": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9146
  store i8 1, ptr %i.a, align 1, !noalias !9146
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @768, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @772, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #39
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @784, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.x, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #39
  unreachable
}
end_hunk_3
begin_hunk_4_@_ZN6zopfli7squeeze12lz77_optimal17h4a7a4f9a3d6a950bE:bb.a
  %i.ad = alloca [144 x i8], align 8              ; 8 uses
  %i.ae = alloca [144 x i8], align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136 ; 2 uses
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @"_ZN62_$LT$zopfli..lz77..Lz77Store$u20$as$u20$core..clone..Clone$GT$5clone17h49aec94e0482abaaE"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.y, %.thread74, %.thread, %bb.c
  %.pn49.pn = phi { ptr, i32 } [ %.pn4970, %.thread ], [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.af, %bb.c ], [ %i.me, %.thread74 ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.ae) #40
          to label %bb.dp unwind label %bb.do

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12321)
  %i.ag = icmp eq i64 %4, %5                      ; 2 uses
  br i1 %i.ag, label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %.noexc unwind label %bb.z     ; 8 uses

.noexc:                                           ; preds = %bb.e
  %.not.i = icmp ugt i64 %5, %3
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !17

bb.f:                                             ; preds = %.noexc
  %i.ai = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.ai, i64 noundef %5)
          to label %.preheader82.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i.preheader:                         ; preds = %bb.f
  %.not449 = icmp eq i64 %4, 0
  br i1 %.not449, label %.preheader75.i, label %.lr.ph

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %5, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @891) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i:                                   ; preds = %.lr.ph
  %i.aj = add nuw i64 %.sroa.052.0.i436, 1        ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %4
  br i1 %i.ak, label %.lr.ph, label %.preheader75.i

.preheader75.i:                                   ; preds = %.preheader82.i, %.preheader82.i.preheader
  %i.al = icmp ult i64 %4, %5
  br i1 %i.al, label %.lr.ph.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader75.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.preheader82.i.preheader, %.preheader82.i
  %.sroa.052.0.i436 = phi i64 [ %i.aj, %.preheader82.i ], [ %i.ai, %.preheader82.i.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.052.0.i436)
          to label %.preheader82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %._crit_edge, %.preheader75.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit

bb.h:                                             ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.07.0103.i = phi i64 [ %.sroa.07.0.ph107.i, %.lr.ph.i ], [ %i.cd, %._crit_edge ] ; 16 uses
  %.sroa.024.0102.i = phi i1 [ %.sroa.024.0.ph106.i, %.lr.ph.i ], [ false, %._crit_edge ]
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12322
  store ptr null, ptr %i.k, align 8, !noalias !12322
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$7try_get17hcbb6d17ff25d9fddE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef 258, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

.noexc.i:                                         ; preds = %bb.i
  %i.ap = load i8, ptr %i.am, align 4, !range !26, !alias.scope !12323, !noalias !12324, !noundef !12
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i, label %bb.j

.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i: ; preds = %.noexc.i
  %.pre.i = load i16, ptr %i.an, align 8, !noalias !12322
  %.pre128.i = load i16, ptr %i.ao, align 2, !noalias !12322
  br label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i

bb.j:                                             ; preds = %.noexc.i
  %i.ar = sub nuw i64 %5, %.sroa.07.0103.i        ; 2 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.l, align 8, !alias.scope !12323, !noalias !12324, !noundef !12 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.07.0103.i
  %i.av = icmp ugt i64 %i.au, %5
  %spec.store.select.i.i = select i1 %i.av, i64 %i.ar, i64 %i.at ; 2 uses
  %i.aw = invoke { i16, i16 } @_ZN6zopfli4lz7723find_longest_match_loop17h5ff85276e6e5d364E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i, i64 noundef %5, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ; 2 uses

.noexc65.i:                                       ; preds = %bb.k
  %i.ax = extractvalue { i16, i16 } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { i16, i16 } %i.aw, 1      ; 2 uses
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$5store17h8b54cb83f0d87357E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i16 noundef %i.ax, i16 noundef %i.ay, i64 noundef %4)
          to label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i: ; preds = %.noexc65.i, %bb.j, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i
  %i.az = phi i16 [ %.pre128.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.ay, %.noexc65.i ], [ 0, %bb.j ] ; 5 uses
  %i.ba = phi i16 [ %.pre.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.ax, %.noexc65.i ], [ 0, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12322
  %i.bb = zext i16 %i.az to i32                   ; 2 uses
  %i.bc = icmp ugt i16 %i.ba, 1024
  %i.bd = sext i1 %i.bc to i32
  %.sroa.039.0.i = add nsw i32 %i.bd, %i.bb       ; 4 uses
  br i1 %.sroa.024.0102.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.be = icmp ugt i32 %.sroa.039.0.i, 2
  %i.bf = icmp ult i16 %i.az, 258
  %or.cond.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i, label %.loopexit81.i, label %bb.n

bb.m:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.bg = icmp sgt i32 %.sroa.039.0.i, %.sroa.043.0.i
  br i1 %i.bg, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.t, %bb.l
  %i.bh = icmp ugt i32 %.sroa.039.0.i, 2
  br i1 %i.bh, label %bb.u, label %bb.v

.loopexit81.i:                                    ; preds = %bb.t, %bb.l
  %i.bi = zext i16 %i.ba to i32
  br label %.outer.i

.outer.i:                                         ; preds = %.preheader.i, %.preheader.preheader.i, %.loopexit81.i
  %.sroa.048.1.i = phi i32 [ %i.bi, %.loopexit81.i ], [ %.sroa.048.0.ph104.i, %.preheader.preheader.i ], [ %.sroa.048.0.ph104.i, %.preheader.i ]
  %.sroa.046.1.i = phi i32 [ %i.bb, %.loopexit81.i ], [ %.sroa.046.0.ph105.i, %.preheader.preheader.i ], [ %.sroa.046.0.ph105.i, %.preheader.i ]
  %.sroa.024.2.i = phi i1 [ true, %.loopexit81.i ], [ false, %.preheader.preheader.i ], [ false, %.preheader.i ]
  %.sroa.07.1.in.i = phi i64 [ %.sroa.07.0103.i, %.loopexit81.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ], [ %i.bs, %.preheader.i ]
  %.sroa.07.1.i = add i64 %.sroa.07.1.in.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12322
  %i.bj = icmp ult i64 %.sroa.07.1.i, %5
  br i1 %i.bj, label %.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.07.0.ph107.i = phi i64 [ %4, %.lr.ph.lr.ph.i ], [ %.sroa.07.1.i, %.outer.i ]
  %.sroa.024.0.ph106.i = phi i1 [ false, %.lr.ph.lr.ph.i ], [ %.sroa.024.2.i, %.outer.i ]
  %.sroa.046.0.ph105.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.046.1.i, %.outer.i ] ; 5 uses
  %.sroa.048.0.ph104.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.048.1.i, %.outer.i ] ; 4 uses
  %i.bk = icmp samesign ult i32 %.sroa.048.0.ph104.i, 1025
  %i.bl = zext i1 %i.bk to i32
  %.sroa.043.0.i = add nuw nsw i32 %.sroa.046.0.ph105.i, %i.bl
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.bm = trunc nuw i32 %.sroa.046.0.ph105.i to i16 ; 2 uses
  %i.bn = trunc nuw i32 %.sroa.048.0.ph104.i to i16
  %i.bo = add i64 %.sroa.07.0103.i, -1
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bm, i16 noundef %i.bn, i64 noundef %i.bo)
          to label %.preheader.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i

.preheader.preheader.i:                           ; preds = %bb.o
  %umax126.i = call i16 @llvm.umax.i16(i16 %i.bm, i16 2)
  %exitcond127.not.i441 = icmp ult i32 %.sroa.046.0.ph105.i, 3
  br i1 %exitcond127.not.i441, label %.outer.i, label %.lr.ph444

bb.p:                                             ; preds = %bb.m
  %i.bp = add i64 %.sroa.07.0103.i, -1            ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %5
  br i1 %i.bq, label %bb.q, label %bb.r

.preheader.i:                                     ; preds = %.lr.ph444
  %i.br = add i16 %.sroa.055.0.i442, 1            ; 2 uses
  %exitcond127.not.i = icmp eq i16 %i.br, %umax126.i
  br i1 %exitcond127.not.i, label %.outer.i, label %.lr.ph444

.lr.ph444:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %.sroa.07.2.i443 = phi i64 [ %i.bs, %.preheader.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ]
  %.sroa.055.0.i442 = phi i16 [ %i.br, %.preheader.i ], [ 2, %.preheader.preheader.i ]
  %i.bs = add i64 %.sroa.07.2.i443, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.bs)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !12321, !noalias !12325, !noundef !12
  %i.bv = zext i8 %i.bu to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bv, i16 noundef 0, i64 noundef %i.bp)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bp, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @890) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.r, %bb.g
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bw = icmp ugt i32 %.sroa.039.0.i, 2
  %i.bx = icmp ult i16 %i.az, 258
  %or.cond5.i = and i1 %i.bx, %i.bw
  br i1 %or.cond5.i, label %.loopexit81.i, label %bb.n

bb.u:                                             ; preds = %bb.n
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.az, i16 noundef %i.ba, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.v:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0103.i
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !12321, !noalias !12325, !noundef !12
  %i.ca = zext i8 %i.bz to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.ca, i16 noundef 0, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.030.0.i = phi i16 [ %i.az, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %umax.i = call i16 @llvm.umax.i16(i16 %.sroa.030.0.i, i16 1)
  %exitcond.not.i437 = icmp ult i16 %.sroa.030.0.i, 2
  br i1 %exitcond.not.i437, label %._crit_edge, label %.lr.ph440

bb.x:                                             ; preds = %.lr.ph440
  %i.cb = add i16 %.sroa.057.0.i438, 1            ; 2 uses
  %exitcond.not.i = icmp eq i16 %i.cb, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph440

.lr.ph440:                                        ; preds = %bb.w, %bb.x
  %.sroa.07.3.i439 = phi i64 [ %i.cc, %bb.x ], [ %.sroa.07.0103.i, %bb.w ]
  %.sroa.057.0.i438 = phi i16 [ %i.cb, %bb.x ], [ 1, %bb.w ]
  %i.cc = add i64 %.sroa.07.3.i439, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.cc)
          to label %bb.x unwind label %.loopexit.i

._crit_edge:                                      ; preds = %bb.x, %bb.w
  %.sroa.07.3.i.lcssa = phi i64 [ %.sroa.07.0103.i, %bb.w ], [ %i.cc, %bb.x ]
  %i.cd = add i64 %.sroa.07.3.i.lcssa, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12322
  %i.ce = icmp ult i64 %i.cd, %5
  br i1 %i.ce, label %bb.h, label %.outer._crit_edge.i

.loopexit.i:                                      ; preds = %.lr.ph440
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph444
  %lpad.loopexit72.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i: ; preds = %bb.v, %bb.u, %bb.q, %.noexc65.i, %bb.k, %bb.i, %bb.h
  %lpad.loopexit78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i: ; preds = %bb.o
  %lpad.loopexit.split-lp79.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.r, %bb.g, %bb.f
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit72.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp79.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit78.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit83.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp84.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

.thread77:                                        ; preds = %bb.ac, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

bb.y:                                             ; preds = %bb.cw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 720900, i64 noundef 2) #34
  br label %bb.b

bb.z:                                             ; preds = %bb.e, %bb.aa, %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit: ; preds = %.outer._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2304) %i.n, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, i8 0, i64 256, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 2304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, i8 0, i64 5120, i1 false)
  invoke void @_ZN6zopfli7squeeze11SymbolStats14get_statistics17h29395d5ef7d2221cE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.aa unwind label %bb.z

bb.aa:                                            ; preds = %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.ch = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %bb.ab unwind label %bb.z      ; 12 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ci = sub i64 %5, %4                          ; 5 uses
  %i.cj = add i64 %i.ci, 1                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.cj, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc53 unwind label %.thread77

.noexc53:                                         ; preds = %bb.ab
  %i.ck = load i64, ptr %i.j, align 8, !range !14, !noundef !12
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !31, !noundef !12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.ac, label %bb.ad, !prof !17

bb.ac:                                            ; preds = %.noexc53
  %i.cp = load i64, ptr %i.co, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cn, i64 %i.cp) #39
          to label %.noexc54 unwind label %.thread77

.noexc54:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.noexc53
  %i.cq = load ptr, ptr %i.co, align 8, !nonnull !12, !noundef !12
  %i.cr = icmp ule i64 %i.cj, %i.cn
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.cn, ptr %i.ab, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 9 uses
  store ptr %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 10 uses
  store i64 0, ptr %i.ct, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.w, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 1, ptr %i.aa, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 2, ptr %i.cu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cz = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 2 uses
  %.not.i.i = icmp ugt i64 %5, %3
  %i.da = icmp ugt i64 %i.cj, 1
  %.sroa.13.0.i13.i = add i64 %i.ci, -1           ; 3 uses
  %i.db = icmp eq i64 %.sroa.13.0.i13.i, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.dg = icmp ult i64 %4, %5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 655364 ; 2 uses
  %i.di = add i64 %4, 259
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.not450 = icmp eq i64 %4, 0
  %i.eg = add i64 %5, -2
  %i.eh = sub i64 %i.eg, %4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.dj, %bb.ad
  %.sroa.04.0 = phi i64 [ -1, %bb.ad ], [ %.sroa.04.1, %bb.dj ] ; 3 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.ad ], [ %.sroa.02.1, %bb.dj ]
  %.sroa.01.0 = phi double [ 0.000000e+00, %bb.ad ], [ %i.mq, %bb.dj ]
  %.sroa.0.0 = phi double [ +inf, %bb.ad ], [ %.sroa.0.1, %bb.dj ] ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12326)
  call void @llvm.experimental.noalias.scope.decl(metadata !12327)
  call void @llvm.experimental.noalias.scope.decl(metadata !12328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12329)
  call void @llvm.experimental.noalias.scope.decl(metadata !12330)
  call void @llvm.experimental.noalias.scope.decl(metadata !12331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12332
  call void @llvm.experimental.noalias.scope.decl(metadata !12333)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12334
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.cj, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %bb.ae
  %i.ei = load i64, ptr %i.c, align 8, !range !14, !noalias !12334, !noundef !12
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = load i64, ptr %i.cv, align 8, !range !31, !noalias !12334, !noundef !12 ; 2 uses
end_hunk_4
