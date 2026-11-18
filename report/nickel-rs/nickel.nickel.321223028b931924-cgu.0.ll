Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel.nickel.321223028b931924-cgu.0?download=true
inline.NumInlined: 8339
inline.NumDeleted: 3956
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcaa50091d071fa5E":bb.a
  %.sroa.0.1.i.i.i.i.i501 = phi i64 [ %i.hy, %bb.ch ], [ %i.hx, %bb.ci ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [160 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i501
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h501756f344b33a0eE"(ptr noalias noundef align 8 dereferenceable(160) %i.ic) #46
          to label %bb.ch unwind label %bb.cj, !noalias !2088

bb.cj:                                            ; preds = %.lr.ph502
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !2088
  unreachable

.body.i2.i.i:                                     ; preds = %bb.ch, %bb.ci
  %.val4.i.i.i = load i64, ptr %i.aw, align 8, !range !43, !alias.scope !2087, !noalias !2028, !noundef !19 ; 2 uses
  %i.ie = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ie, label %.body.i.i, label %bb.ck

bb.ck:                                            ; preds = %.body.i2.i.i
  %i.if = mul nuw i64 %.val4.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !2088
  br label %.body.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i.i.i": ; preds = %bb.cg, %bb.cf
  %.val2.i.i.i = load i64, ptr %i.aw, align 8, !range !43, !alias.scope !2087, !noalias !2028, !noundef !19 ; 2 uses
  %i.ig = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ig, label %common.resume.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i.i.i"
  %i.ih = mul nuw i64 %.val2.i.i.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !2088
  br label %common.resume.i.i.i.i

.thread156.i.i.i.i.i:                             ; preds = %bb.ae, %bb.ab
  %.sroa.028.1.lpad-body.i.i.i.i.i = phi i1 [ %.sroa.028.1.i.i.i.i.i, %bb.ab ], [ false, %bb.ae ]
  %eh.lpad-body52.i.i.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.ab ], [ %i.dc, %bb.ae ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ag) #46
          to label %bb.cm unwind label %bb.aa, !noalias !2029

.critedge.i.i.i.i.i:                              ; preds = %bb.cm
  br i1 %.sroa.028.1.lpad-body.i.i.i.i.i, label %bb.cn, label %.critedge42.thread.i.i.i.i.i

bb.cm:                                            ; preds = %.thread156.i.i.i.i.i
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #46
          to label %.critedge.i.i.i.i.i unwind label %bb.aa, !noalias !2028

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i) #46
          to label %bb.co unwind label %bb.aa, !noalias !2029

bb.co:                                            ; preds = %bb.cn
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #46
          to label %.critedge42.thread.i.i.i.i.i unwind label %bb.aa, !noalias !2028

.noexc95.i.i.i.i.i:                               ; preds = %bb.cq, %bb.cp, %.critedge42.thread.i.i.i.i.i
  br i1 %.sroa.09.1149.i.i.i.i.i, label %.thread189.i.i.i.i.i, label %.thread199.i.i.i.i.i

.critedge42.thread.i.i.i.i.i:                     ; preds = %bb.co, %.critedge.i.i.i.i.i, %.body69.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.pn.pn151.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ %eh.lpad-body52.i.i.i.i.i, %bb.co ], [ %eh.lpad-body52.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %eh.lpad-body70.i.i.i.i.i, %.body69.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1149.i.i.i.i.i = phi i1 [ true, %.critedge42.i.i.i.i.i ], [ false, %bb.co ], [ false, %.critedge.i.i.i.i.i ], [ false, %.body69.i.i.i.i.i ]
  %.sroa.016.2147.i.i.i.i.i = phi i8 [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ], [ 1, %bb.co ], [ 1, %.critedge.i.i.i.i.i ], [ 1, %.body69.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %i.ii = load ptr, ptr %i.ar, align 8, !alias.scope !2091, !noalias !2028, !noundef !19 ; 3 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %.noexc95.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge42.thread.i.i.i.i.i
  %i.ik = load i64, ptr %i.ii, align 8, !noalias !2092, !noundef !19
  %i.il = add i64 %i.ik, -1                       ; 2 uses
  store i64 %i.il, ptr %i.ii, align 8, !noalias !2092
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.cq, label %.noexc95.i.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.noexc95.i.i.i.i.i unwind label %bb.aa, !noalias !2028

bb.cr:                                            ; preds = %.thread189.i.i.i.i.i
  %i.in = load ptr, ptr %i.af, align 8, !noalias !2028, !noundef !19
  %.not216.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not216.i.i.i.i.i, label %.thread199.i.i.i.i.i, label %bb.cs

.thread189.i.i.i.i.i:                             ; preds = %.noexc95.i.i.i.i.i, %.critedge42.i.i.i.i.i
  %.sroa.016.2146198.i.i.i.i.i = phi i8 [ %.sroa.016.2147.i.i.i.i.i, %.noexc95.i.i.i.i.i ], [ %.sroa.016.2.i.i.i.i.i, %.critedge42.i.i.i.i.i ] ; 2 uses
  %.pn.pn150194.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn151.i.i.i.i.i, %.noexc95.i.i.i.i.i ], [ %.pn.pn.i.i.i.i.i, %.critedge42.i.i.i.i.i ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #46
          to label %bb.cr unwind label %bb.aa, !noalias !2028

.thread199.i.i.i.i.i:                             ; preds = %bb.cs, %bb.cr, %.noexc95.i.i.i.i.i
  %.pn.pn150193206.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn150194.i.i.i.i.i, %bb.cr ], [ %.pn.pn150194.i.i.i.i.i, %bb.cs ], [ %.pn.pn151.i.i.i.i.i, %.noexc95.i.i.i.i.i ] ; 2 uses
  %.sroa.09.1148195205.i.i.i.i.i = phi i1 [ true, %bb.cr ], [ true, %bb.cs ], [ false, %.noexc95.i.i.i.i.i ]
  %.sroa.016.2146197204.i.i.i.i.i = phi i8 [ %.sroa.016.2146198.i.i.i.i.i, %bb.cr ], [ %.sroa.016.2146198.i.i.i.i.i, %bb.cs ], [ %.sroa.016.2147.i.i.i.i.i, %.noexc95.i.i.i.i.i ]
  %i.io = trunc nuw i8 %.sroa.016.2146197204.i.i.i.i.i to i1
  br i1 %i.io, label %bb.ct, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit98.i.i.i.i.i"

bb.cs:                                            ; preds = %bb.cr
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #46
          to label %.thread199.i.i.i.i.i unwind label %bb.aa, !noalias !2028

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit98.i.i.i.i.i": ; preds = %bb.cv, %bb.cu, %bb.ct, %.thread199.i.i.i.i.i
  br i1 %.sroa.09.1148195205.i.i.i.i.i, label %bb.cw, label %common.resume.i.i.i.i

bb.ct:                                            ; preds = %.thread199.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  %i.ip = load ptr, ptr %i.ap, align 8, !alias.scope !2095, !noalias !2028, !noundef !19 ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit98.i.i.i.i.i", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ir = load i64, ptr %i.ip, align 8, !noalias !2096, !noundef !19
  %i.is = add i64 %i.ir, -1                       ; 2 uses
  store i64 %i.is, ptr %i.ip, align 8, !noalias !2096
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.cv, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit98.i.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit98.i.i.i.i.i" unwind label %bb.aa, !noalias !2028

bb.cw:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit98.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %i.aw) #46
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !2028

"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17h2d31e7894ec03f16E.exit.i.i.i.i": ; preds = %bb.bu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i90.i.i.i.i.i", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit82.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2028
  br i1 %.sroa.0.2.i.i.i.i, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17h2d31e7894ec03f16E.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2.i.i.i.i) ]
  %i.iu = icmp eq ptr %.sroa.6.2.i.i.i.i, null
  br i1 %i.iu, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2017, !noalias !2098, !align !26, !noundef !19 ; 4 uses
  %i.iv = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.iv, label %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h776e26dff46a744aE.exit.i.i.i.i.i", label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %.val.i.i.i.i.i)
          to label %"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17hccbf788db649f7a4E.exit.i.i.i.i.i.i" unwind label %.body.i4.i.i.i.i, !noalias !2099

.body.i4.i.i.i.i:                                 ; preds = %bb.cz
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 392, i64 noundef 8) #44, !noalias !2099
  store ptr %.sroa.9.2.i.i.i.i, ptr %i.y, align 8, !alias.scope !2017, !noalias !2098
  br label %common.resume.i.i.i.i

"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17hccbf788db649f7a4E.exit.i.i.i.i.i.i": ; preds = %bb.cz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 392, i64 noundef 8) #44, !noalias !2099
  br label %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h776e26dff46a744aE.exit.i.i.i.i.i"

bb.da:                                            ; preds = %bb.cx
  store ptr %.sroa.6.2.i.i.i.i, ptr %.sroa.4.i.i.i, align 8, !alias.scope !2100, !noalias !2024
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hbe04c6259fc9945cE.exit"

"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h776e26dff46a744aE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr140drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$17hccbf788db649f7a4E.exit.i.i.i.i.i.i", %bb.cy
  store ptr %.sroa.9.2.i.i.i.i, ptr %i.y, align 8, !alias.scope !2017, !noalias !2098
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hbe04c6259fc9945cE.exit"

bb.db:                                            ; preds = %"_ZN16nickel_lang_core4eval9operation2eq28_$u7b$$u7b$closure$u7d$$u7d$17h2d31e7894ec03f16E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i)
  %i.ix = icmp eq ptr %i.bc, %i.ac
  br i1 %i.ix, label %"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hdbf3fef14a6917acE.exit", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hbe04c6259fc9945cE.exit": ; preds = %bb.da, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h776e26dff46a744aE.exit.i.i.i.i.i"
  %.sink4.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.75.i.i.i, %bb.da ], [ %.sroa.4.i.i.i, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h776e26dff46a744aE.exit.i.i.i.i.i" ]
  %.8.val1.sink.i.i.i.i.i = phi ptr [ %.sroa.9.2.i.i.i.i, %bb.da ], [ null, %"_ZN4core3ptr168drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$$GT$$GT$17h776e26dff46a744aE.exit.i.i.i.i.i" ]
  store ptr %.8.val1.sink.i.i.i.i.i, ptr %.sink4.i.i.sroa.phi.i.i.i, align 8, !alias.scope !2100, !noalias !2024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2024
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i = load ptr, ptr %.sroa.4.i.i.i, align 8, !alias.scope !2101, !noalias !2024, !noundef !19
  %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i = load ptr, ptr %.sroa.75.i.i.i, align 8, !alias.scope !2101, !noalias !2024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i.i.i)
  %i.iy = insertvalue { ptr, ptr } poison, ptr %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i.i, 0
  br label %"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hdbf3fef14a6917acE.exit"

"_ZN4core3ptr160drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17hdbf3fef14a6917acE.exit": ; preds = %bb.db, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hbe04c6259fc9945cE.exit", %bb.a
  %.7 = phi ptr [ %.sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.i.0..sroa.75.i.i.0..sroa.75.i.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hbe04c6259fc9945cE.exit" ], [ undef, %bb.a ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i" ], [ undef, %bb.db ]
  %i.iz = phi { ptr, ptr } [ %i.iy, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hbe04c6259fc9945cE.exit" ], [ { ptr null, ptr poison }, %bb.a ], [ { ptr null, ptr poison }, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i" ], [ { ptr null, ptr poison }, %bb.db ]
  %i.ja = insertvalue { ptr, ptr } %i.iz, ptr %.7, 1
  ret { ptr, ptr } %i.ja
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08b48178ce7e95d3E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2165 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.845 = alloca [264 x i8], align 8         ; 4 uses
  %.sroa.8 = alloca [264 x i8], align 8           ; 4 uses
  %i.c = alloca [272 x i8], align 8               ; 5 uses
  %i.d = alloca [280 x i8], align 8               ; 10 uses
  %i.e = alloca [272 x i8], align 8               ; 4 uses
  %i.f = alloca [272 x i8], align 8               ; 9 uses
  %i.g = alloca [280 x i8], align 8               ; 9 uses
  %i.h = alloca [280 x i8], align 8               ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !19 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !19
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit"

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit": ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2166, !nonnull !19, !noundef !19
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !2166
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !19 ; 5 uses
  %i.u = icmp ult i64 %i.t, 33909456017848441
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not87 = icmp eq i64 %i.t, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  br label %bb.d

bb.c:                                             ; preds = %bb.u, %._crit_edge, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.u ], [ null, %._crit_edge ], [ %i.q, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit" ]
  ret ptr %.sroa.0.0

._crit_edge:                                      ; preds = %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.d:                                             ; preds = %.lr.ph, %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit"
  %i.z = phi i64 [ %i.t, %.lr.ph ], [ %.pr, %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit" ] ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.ab = getelementptr [272 x i8], ptr %i.aa, i64 %i.z ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !19 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 -8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !19
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.ap, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17he533bad8d227d15eE.exit"

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17he533bad8d227d15eE.exit": ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %i.ab, i64 -16
  %i.ai = getelementptr i8, ptr %i.ab, i64 -272
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ad
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !2167, !nonnull !19, !noundef !19 ; 3 uses
  %i.al = add i64 %i.ad, 1
  store i64 %i.al, ptr %i.ah, align 8, !alias.scope !2167
  store ptr %i.ak, ptr %i.i, align 8
  %i.am = load i64, ptr %i.s, align 8, !noundef !19 ; 3 uses
  %i.an = icmp ult i64 %i.am, 33909456017848441
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ult i64 %i.am, %i.t
  br i1 %i.ao, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17he533bad8d227d15eE.exit"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  br label %bb.h

._crit_edge90:                                    ; preds = %bb.al, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17he533bad8d227d15eE.exit"
  %i.ar = phi ptr [ %i.ak, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17he533bad8d227d15eE.exit" ], [ %i.cy, %bb.al ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.845)
  %i.as = load i64, ptr %i.ar, align 8, !noalias !2168, !noundef !19
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.e, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit.thread"

bb.e:                                             ; preds = %._crit_edge90
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.040.0.copyload41 = load i64, ptr %i.au, align 8 ; 3 uses
  %.sroa.642.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.642.0.copyload44 = load ptr, ptr %.sroa.642.0..sroa_idx43, align 8 ; 2 uses
  %.sroa.845.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.845, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.845.0..sroa_idx46, i64 264, i1 false)
  store i64 0, ptr %i.ar, align 8, !noalias !2168
  %i.av = icmp eq ptr %i.ar, inttoptr (i64 -1 to ptr)
  br i1 %i.av, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !2168, !noundef !19
  %i.ay = add i64 %i.ax, -1                       ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8, !noalias !2168
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.g, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit"

bb.g:                                             ; preds = %bb.f
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef 296, i64 noundef 8) #44, !noalias !2168
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit"

bb.h:                                             ; preds = %.lr.ph89, %bb.al
  %1 = phi ptr [ %i.ak, %.lr.ph89 ], [ %i.cy, %bb.al ] ; 9 uses
  %.sroa.011.088 = phi i64 [ %i.am, %.lr.ph89 ], [ %i.ba, %bb.al ]
  %i.ba = add nuw nsw i64 %.sroa.011.088, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.bb = load i64, ptr %1, align 8, !noalias !2169, !noundef !19
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.i, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20.thread"

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload35 = load i64, ptr %i.bd, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload37 = load ptr, ptr %.sroa.6.0..sroa_idx36, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.8.0..sroa_idx38, i64 264, i1 false)
  store i64 0, ptr %1, align 8, !noalias !2169
  %i.be = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %i.be, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !2169, !noundef !19
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8, !noalias !2169
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20"

bb.k:                                             ; preds = %bb.j
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 296, i64 noundef 8) #44, !noalias !2169
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20"

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit": ; preds = %bb.g, %bb.f, %bb.e
  %i.bj = icmp eq i64 %.sroa.040.0.copyload41, 2
  br i1 %i.bj, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit.thread", label %bb.q

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit.thread": ; preds = %._crit_edge90, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit"
  %.sroa.642.056 = phi ptr [ %.sroa.642.0.copyload44, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit" ], [ %i.ar, %._crit_edge90 ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.642.056) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.642.056, ptr %i.b, align 8, !noalias !2170
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.642.056, i64 16
  invoke fastcc void @"_ZN84_$LT$nickel_lang_vector..vector..Node$LT$T$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd6027b8a6f47caedE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.bk)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit.thread"
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load i64, ptr %.sroa.642.056, align 8, !noalias !2171, !noundef !19
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  store i64 %i.bn, ptr %.sroa.642.056, align 8, !noalias !2171
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.p, !noalias !2170

bb.n:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit.thread"
  %i.bp = load i64, ptr %.sroa.642.056, align 8, !noalias !2172, !noundef !19
  %i.bq = add i64 %i.bp, -1                       ; 2 uses
  store i64 %i.bq, ptr %.sroa.642.056, align 8, !noalias !2172
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.o, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit"

bb.o:                                             ; preds = %bb.n
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit"

bb.p:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !2170
  unreachable

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit": ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre99 = load i64, ptr %i.d, align 8, !range !18
  br label %bb.r

bb.q:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit"
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.549.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.845, i64 264, i1 false)
  store i64 %.sroa.040.0.copyload41, ptr %i.d, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.642.0.copyload44, ptr %.sroa.448.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit", %bb.q
  %i.bt = phi i64 [ %.pre99, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit" ], [ %.sroa.040.0.copyload41, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.845)
  %i.bu = trunc nuw i64 %i.bt to i1
  br i1 %i.bu, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.c, ptr noundef nonnull align 8 dereferenceable(272) %i.bv, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bw = load i64, ptr %i.k, align 8, !alias.scope !2173, !noundef !19 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bw
  %i.by = load i64, ptr %i.m, align 8, !alias.scope !2173, !noundef !19
  %i.bz = sub i64 %i.by, %i.bw
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hbbaa9bee1438b8e6E"(ptr noalias noundef nonnull readonly align 8 %i.bx, i64 noundef %i.bz)
          to label %"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit" unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false)
  br label %common.resume

"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit": ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.j, ptr noundef nonnull align 8 dereferenceable(272) %i.c, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cb = load i64, ptr %i.k, align 8, !noundef !19 ; 3 uses
  %i.cc = load i64, ptr %i.m, align 8, !noundef !19
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.u, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit23"

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit23": ; preds = %"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit"
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cb
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !2174, !nonnull !19, !noundef !19
  %i.cg = add i64 %i.cb, 1
  store i64 %i.cg, ptr %i.k, align 8, !alias.scope !2174
  br label %bb.u

bb.u:                                             ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit23", %"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit"
  %.sroa.0.1 = phi ptr [ null, %"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit" ], [ %i.cf, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9pop_front17h0c7e4596c6c3aa78E.exit23" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.v:                                             ; preds = %bb.ao, %bb.am
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.w:                                             ; preds = %bb.r
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h73f9256d6a0b4975E"(ptr noalias noundef align 8 dereferenceable(280) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #45
  unreachable

bb.x:                                             ; preds = %bb.ak
  unreachable

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20": ; preds = %bb.k, %bb.j, %bb.i
  %i.ci = icmp eq i64 %.sroa.0.0.copyload35, 2
  br i1 %i.ci, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20.thread", label %bb.ad

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20.thread": ; preds = %bb.h, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20"
  %.sroa.6.059 = phi ptr [ %.sroa.6.0.copyload37, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20" ], [ %1, %bb.h ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.059) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.6.059, ptr %i.a, align 8, !noalias !2175
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.6.059, i64 16
  invoke fastcc void @"_ZN84_$LT$nickel_lang_vector..vector..Node$LT$T$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd6027b8a6f47caedE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.cj)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20.thread"
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load i64, ptr %.sroa.6.059, align 8, !noalias !2176, !noundef !19
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  store i64 %i.cm, ptr %.sroa.6.059, align 8, !noalias !2176
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.ac, !noalias !2175

bb.aa:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20.thread"
  %i.co = load i64, ptr %.sroa.6.059, align 8, !noalias !2177, !noundef !19
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr %.sroa.6.059, align 8, !noalias !2177
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ab, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit29"

bb.ab:                                            ; preds = %bb.aa
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit29"

bb.ac:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !2175
  unreachable

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit29": ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.g, align 8, !range !18
  br label %bb.ae

bb.ad:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17h6da4497eac282c68E.exit20"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.8, i64 264, i1 false)
  store i64 %.sroa.0.0.copyload35, ptr %i.g, align 8
  store ptr %.sroa.6.0.copyload37, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit29", %bb.ad
  %i.cs = phi i64 [ %.pre, %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hc7ac5170d5cfe122E.exit29" ], [ %.sroa.0.0.copyload35, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.ct = trunc nuw i64 %i.cs to i1
  br i1 %i.ct, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.f, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4.0..sroa_idx, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cu = load i64, ptr %i.ap, align 8, !noundef !19 ; 3 uses
  %i.cv = load i64, ptr %i.aq, align 8, !noundef !19
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cu
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !2178, !nonnull !19, !noundef !19 ; 5 uses
  %i.cz = add nuw nsw i64 %i.cu, 1
  store i64 %i.cz, ptr %i.ap, align 8, !alias.scope !2178
  store ptr %i.cy, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.e, ptr noundef nonnull align 8 dereferenceable(272) %i.f, i64 272, i1 false)
  %i.da = load i64, ptr %i.s, align 8, !alias.scope !2179, !noundef !19 ; 3 uses
  %i.db = load i64, ptr %0, align 8, !range !43, !alias.scope !2179, !noundef !19
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd0f4719c2ff8ad35E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.al unwind label %bb.ai, !noalias !2180

bb.ai:                                            ; preds = %bb.ah
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h0bf08aee072fd60cE"(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.e) #46
          to label %.thread75 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.ak:                                            ; preds = %bb.af
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #45
          to label %bb.x unwind label %bb.am

bb.al:                                            ; preds = %bb.ah, %bb.ag
  %i.df = load ptr, ptr %i.v, align 8, !alias.scope !2179, !nonnull !19, !noundef !19
  %i.dg = getelementptr inbounds nuw [272 x i8], ptr %i.df, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.dg, ptr noundef nonnull align 8 dereferenceable(272) %i.f, i64 272, i1 false)
  %i.dh = add i64 %i.da, 1
  store i64 %i.dh, ptr %i.s, align 8, !alias.scope !2179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond.not = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not, label %._crit_edge90, label %bb.h

bb.am:                                            ; preds = %bb.ak
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h0bf08aee072fd60cE"(ptr noalias noundef align 8 dereferenceable(272) %i.f) #46
          to label %common.resume unwind label %bb.v

bb.an:                                            ; preds = %bb.ae
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h73f9256d6a0b4975E"(ptr noalias noundef align 8 dereferenceable(280) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #45
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i", %bb.ar, %bb.ao, %.thread75, %bb.m, %bb.l, %bb.z, %bb.y, %bb.am, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ed, %bb.ar ], [ %i.dd, %.thread75 ], [ %i.ck, %bb.y ], [ %i.dd, %bb.ao ], [ %i.di, %bb.am ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.ca, %bb.t ], [ %i.ck, %bb.z ], [ %i.ed, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i" ]
  resume { ptr, i32 } %common.resume.op

.thread75:                                        ; preds = %bb.ai
  %i.dj = load i64, ptr %i.cy, align 8, !noalias !2181, !noundef !19
  %i.dk = add i64 %i.dj, -1                       ; 2 uses
  store i64 %i.dk, ptr %i.cy, align 8, !noalias !2181
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.ao, label %common.resume

bb.ao:                                            ; preds = %.thread75
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %common.resume unwind label %bb.v

bb.ap:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dm = add nsw i64 %i.z, -1                    ; 4 uses
  store i64 %i.dm, ptr %i.s, align 8
  %i.dn = load i64, ptr %0, align 8, !range !43, !noundef !19
  %i.do = icmp samesign ult i64 %i.dm, %i.dn
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp ult i64 %i.z, 33909456017848442
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [272 x i8], ptr %i.aa, i64 %i.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.w, ptr noundef nonnull align 8 dereferenceable(272) %i.dq, i64 272, i1 false)
  store i64 1, ptr %i.h, align 8
  %i.dr = load i64, ptr %i.x, align 8, !alias.scope !2182, !noundef !19 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dr ; 2 uses
  %i.dt = load i64, ptr %i.y, align 8, !alias.scope !2182, !noundef !19 ; 2 uses
  %i.du = sub i64 %i.dt, %i.dr                    ; 3 uses
  %i.dv = icmp eq i64 %i.dt, %i.dr
  br i1 %i.dv, label %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ap, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i = phi i64 [ %i.dx, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i.i.i" ], [ 0, %bb.ap ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.0.09.i.i.i.i.i ; 2 uses
  %i.dx = add nuw i64 %.sroa.0.09.i.i.i.i.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  %i.dy = load ptr, ptr %i.dw, align 8, !alias.scope !2185, !nonnull !19, !noundef !19 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !2186, !noundef !19
  %i.ea = add i64 %i.dz, -1                       ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !noalias !2186
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.aq, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i.i.i"

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i.i.i" unwind label %bb.ar

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i.i.i": ; preds = %bb.aq, %.lr.ph.i.i.i.i.i
  %i.ec = icmp eq i64 %i.dx, %i.du
  br i1 %i.ec, label %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit.loopexit", label %.lr.ph.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = icmp eq i64 %i.dx, %i.du
  br i1 %i.ee, label %common.resume, label %.lr.ph12.i.i.i.i.i

.lr.ph12.i.i.i.i.i:                               ; preds = %bb.ar, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i"
  %.sroa.0.110.i.i.i.i.i = phi i64 [ %i.eg, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i" ], [ %i.dx, %bb.ar ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.0.110.i.i.i.i.i ; 2 uses
  %i.eg = add nuw i64 %.sroa.0.110.i.i.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %i.eh = load ptr, ptr %i.ef, align 8, !alias.scope !2189, !nonnull !19, !noundef !19 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !2190, !noundef !19
  %i.ej = add i64 %i.ei, -1                       ; 2 uses
  store i64 %i.ej, ptr %i.eh, align 8, !noalias !2190
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.as, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i"

bb.as:                                            ; preds = %.lr.ph12.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i" unwind label %bb.at

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i.i.i": ; preds = %bb.as, %.lr.ph12.i.i.i.i.i
  %i.el = icmp eq i64 %i.eg, %i.du
  br i1 %i.el, label %common.resume, label %.lr.ph12.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit.loopexit": ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i.i.i"
  %.pr.pre = load i64, ptr %i.s, align 8
  br label %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit"

"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit": ; preds = %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit.loopexit", %bb.ap
  %.pr = phi i64 [ %.pr.pre, %"_ZN4core3ptr224drop_in_place$LT$core..option..Option$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h173a4e74b86af6e9E.exit.loopexit" ], [ %i.dm, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN109_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..eval..merge..RevertClosurize$GT$16revert_closurize17h10f3931d800c6be1E"(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2197 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = invoke noundef align 8 dereferenceable_or_null(8) ptr @_ZN16nickel_lang_core4eval5value11NickelValue8as_thunk17h8ff4254c86419aa3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #46
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData6revert17h3a0328eed90338e1E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.e unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %0 to i64
  %i.i = and i64 %i.h, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.i, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !24

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !2198
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2198
  store ptr %0, ptr %i.c, align 8, !noalias !2198
  %i.j = load i64, ptr %0, align 8, !noalias !2199, !noundef !19 ; 3 uses
  %i.k = and i64 %i.j, 72057594037927935
  %i.l = add nsw i64 %i.k, -1                     ; 3 uses
  %i.m = and i64 %i.j, 1080863910568919040
  %i.n = icmp ult i64 %i.j, 864691128455135232
  call void @llvm.assume(i1 %i.n)
  %i.o = or i64 %i.l, %i.m
  store i64 %i.o, ptr %0, align 8, !noalias !2199
  %i.p = icmp ugt i64 %i.l, 72057594037927935
  br i1 %i.p, label %bb.i, label %bb.h, !prof !25

bb.h:                                             ; preds = %bb.g
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %bb.j, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i"

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2199
  store ptr @604, ptr %i.b, align 8, !noalias !2199
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8, !noalias !2199
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.s, align 8, !noalias !2199
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !2199
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.u, align 8, !noalias !2199
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !2199
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !2198
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i": ; preds = %bb.j, %bb.h
end_hunk_0
