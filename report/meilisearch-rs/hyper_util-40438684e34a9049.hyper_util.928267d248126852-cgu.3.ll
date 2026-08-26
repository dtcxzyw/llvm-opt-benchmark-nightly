Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/hyper_util-40438684e34a9049.hyper_util.928267d248126852-cgu.3?download=true
inline.NumInlined: 122
inline.NumDeleted: 22
begin_hunk_0_@_ZN10hyper_util6client5proxy7matcher7Builder5build17hd226f8d9420efe55E:bb.a
  %i.as = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5811e0d39ba2c29aE"(ptr nonnull align 8 %i.ar)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.u, %bb.s
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.at, %bb.s ], [ %.pn.i, %bb.u ]
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$hyper_util..client..proxy..matcher..Intercept$GT$$GT$17hf4f1581345636a25E"(ptr nonnull align 8 %i.r) #22
          to label %bb.n unwind label %bb.aq

bb.t:                                             ; preds = %bb.r
  %i.au = extractvalue { ptr, i64 } %i.as, 0
  %i.av = extractvalue { ptr, i64 } %i.as, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hc6b201802f1e5f4aE"(ptr nonnull sret([24 x i8]) align 8 %i.k)
          to label %.noexc6 unwind label %bb.s

.noexc6:                                          ; preds = %bb.t
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hb9ce05029f913c12E"(ptr nonnull sret([24 x i8]) align 8 %i.j)
          to label %bb.w unwind label %bb.v, !noalias !9

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.x ], [ %i.aw, %bb.v ]
  invoke void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$hyper_util..client..proxy..matcher..Ip$GT$$GT$17hfdb010d7d239c2aaE"(ptr nonnull align 8 %i.k) #22
          to label %.body7 unwind label %bb.an, !noalias !9

bb.v:                                             ; preds = %.noexc6
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %.noexc6
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$5split17h63257e302d4d6b8bE"(ptr nonnull sret([72 x i8]) align 8 %i.h, ptr align 1 %i.au, i64 %i.av, i32 44)
          to label %bb.y unwind label %.loopexit.split-lp.i, !noalias !9

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %bb.aj, %bb.ah, %.invoke.i, %bb.ae, %bb.ac, %.backedge.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.z, %bb.y, %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h147adb724aee899cE"(ptr nonnull align 8 %i.j) #22
          to label %bb.u unwind label %bb.an, !noalias !9

bb.y:                                             ; preds = %bb.w
  invoke void @_ZN4core4iter6traits8iterator8Iterator3map17h4b631581bcfbb760E(ptr nonnull sret([72 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.z unwind label %.loopexit.split-lp.i, !noalias !9

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h7a0775c0b3fac41eE"(ptr nonnull sret([72 x i8]) align 8 %i.g, ptr nonnull align 8 %i.i)
          to label %bb.aa unwind label %.loopexit.split-lp.i, !noalias !9

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.aa
  %i.ay = invoke { ptr, i64 } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he1889520143b39ecE"(ptr nonnull align 8 %i.f)
          to label %bb.ab unwind label %.loopexit.i, !noalias !9 ; 2 uses

bb.ab:                                            ; preds = %.backedge.i
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 5 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h79ca9634a8839745E"(ptr nonnull sret([18 x i8]) align 1 %i.e, ptr nonnull align 1 %i.az, i64 %i.ba)
          to label %bb.ad unwind label %.loopexit.i, !noalias !9

bb.ad:                                            ; preds = %bb.ac
  %i.bb = load i8, ptr %i.e, align 1, !noalias !9
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17hfff18432e25299bcE"(ptr nonnull sret([17 x i8]) align 1 %i.c, ptr nonnull align 1 %i.az, i64 %i.ba)
          to label %bb.ag unwind label %.loopexit.i, !noalias !9

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.d, ptr noundef nonnull align 1 dereferenceable(18) %i.e, i64 18, i1 false), !noalias !9
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ai, %bb.af
  %i.bd = phi ptr [ %i.d, %bb.af ], [ %i.b, %bb.ai ]
  %i.be = phi ptr [ @40, %bb.af ], [ @41, %bb.ai ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h6eeff76c8b380e2eE"(ptr nonnull align 8 %i.k, ptr nonnull align 1 %i.bd, ptr nonnull align 8 %i.be)
          to label %.backedge.i.backedge unwind label %.loopexit.i, !noalias !9

bb.ag:                                            ; preds = %bb.ae
  %i.bf = load i8, ptr %i.c, align 1, !noalias !9
  %i.bg = icmp eq i8 %i.bf, 2
  br i1 %i.bg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bh = invoke { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$4trim17h6ac95d71df424859E"(ptr nonnull align 1 %i.az, i64 %i.ba)
          to label %bb.aj unwind label %.loopexit.i, !noalias !9 ; 2 uses

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ax, ptr noundef nonnull align 1 dereferenceable(17) %i.c, i64 17, i1 false), !noalias !9
  store i8 2, ptr %i.b, align 1, !noalias !9
  br label %.invoke.i

bb.aj:                                            ; preds = %bb.ah
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  %i.bk = invoke zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$8is_empty17hc8a8ffaf80a44922E"(ptr align 1 %i.bi, i64 %i.bj)
          to label %bb.ak unwind label %.loopexit.i, !noalias !9

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bk, label %.backedge.i.backedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8f11f5870d32b566E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 1 %i.az, i64 %i.ba)
          to label %bb.am unwind label %.loopexit.i, !noalias !9

bb.am:                                            ; preds = %bb.al
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h73b71baee976d96aE"(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.a, ptr nonnull align 8 @42)
          to label %.backedge.i.backedge unwind label %.loopexit.i, !noalias !9

.backedge.i.backedge:                             ; preds = %bb.am, %bb.ak, %.invoke.i
  br label %.backedge.i

bb.an:                                            ; preds = %bb.x, %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23, !noalias !9
  unreachable

bb.ao:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao
  %.sink15 = phi ptr [ %i.x, %bb.at ], [ %i.t, %bb.ao ]
  %.sink13 = phi ptr [ %i.w, %bb.at ], [ %i.r, %bb.ao ]
  %.sink = phi ptr [ %i.v, %bb.at ], [ %i.o, %bb.ao ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(136) %.sink15, i64 136, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bo, ptr noundef nonnull align 8 dereferenceable(136) %.sink13, i64 136, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  call void @"_ZN4core3ptr64drop_in_place$LT$hyper_util..client..proxy..matcher..Builder$GT$17h1eb3caae1c7f7552E"(ptr align 8 %1)
  ret void

bb.aq:                                            ; preds = %bb.au, %.body, %bb.ar, %.body7, %bb.n, %bb.f
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.ar:                                            ; preds = %.thread, %bb.j
  %.pn.pn11 = phi { ptr, i32 } [ %i.aj, %.thread ], [ %.pn, %bb.j ]
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$hyper_util..client..proxy..matcher..Intercept$GT$$GT$17hf4f1581345636a25E"(ptr nonnull align 8 %i.u) #22
          to label %bb.f unwind label %bb.aq

bb.as:                                            ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.as ], [ %i.ac, %bb.d ]
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$hyper_util..client..proxy..matcher..Intercept$GT$$GT$17hf4f1581345636a25E"(ptr nonnull align 8 %i.w) #22
          to label %bb.au unwind label %bb.aq

bb.at:                                            ; preds = %.noexc
  %2 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ap

bb.au:                                            ; preds = %.body
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$hyper_util..client..proxy..matcher..Intercept$GT$$GT$17hf4f1581345636a25E"(ptr nonnull align 8 %i.x) #22
          to label %bb.f unwind label %bb.aq

bb.av:                                            ; preds = %bb.f
  resume { ptr, i32 } %.pn4
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN10hyper_util6client5proxy7matcher7Builder5build28_$u7b$$u7b$closure$u7d$$u7d$17hf73473fbdc8c9bf6E"(ptr sret([136 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h91faec83bd33508cE"(ptr sret([136 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10hyper_util6client5proxy7matcher7Builder8from_env17h8a51adfeb4372784E(ptr noalias nofree nonnull writeonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  call void @_ZN3std3env6var_os17h41423285fe25bef5E(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 1 @25, i64 14)
  %i.n = invoke zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hceb7198c4dfd8803E"(ptr nonnull align 8 %i.m)
          to label %bb.c unwind label %.loopexit.split-lp53

bb.b:                                             ; preds = %.loopexit52, %.loopexit.split-lp53, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.i ], [ %lpad.loopexit54, %.loopexit52 ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp53 ]
  invoke void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$17h68abeb45ba4477a3E"(ptr nonnull align 8 %i.m) #22
          to label %bb.t unwind label %bb.s

.loopexit52:                                      ; preds = %.lr.ph.i, %bb.e, %.noexc7
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp53:                             ; preds = %bb.a, %bb.c, %.noexc, %._crit_edge.i
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = invoke { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h287b495e226df2a4E"(ptr nonnull align 8 @28, i64 2)
          to label %.noexc unwind label %.loopexit.split-lp53 ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %i.q = extractvalue { ptr, ptr } %i.o, 1
  store ptr %i.p, ptr %i.h, align 8, !noalias !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.q, ptr %i.r, align 8, !noalias !12
  %i.s = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d38a7ba3ec14bf8E"(ptr nonnull align 8 %i.h)
          to label %.noexc4 unwind label %.loopexit.split-lp53 ; 2 uses

.noexc4:                                          ; preds = %.noexc
  %.not2.i = icmp eq ptr %i.s, null
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc4, %.noexc8
  %i.t = phi ptr [ %i.x, %.noexc8 ], [ %i.s, %.noexc4 ]
  invoke void @_ZN3std3env3var17h1c69f83d4debe615E(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.t)
          to label %.noexc5 unwind label %.loopexit52

.noexc5:                                          ; preds = %.lr.ph.i
  %i.u = load i64, ptr %i.g, align 8, !noalias !12
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.d

._crit_edge.i:                                    ; preds = %.noexc8, %.noexc4
  invoke void @_ZN5alloc6string6String3new17h592baf7af623517aE(ptr nonnull sret([24 x i8]) align 8 %i.l)
          to label %bb.f unwind label %.loopexit.split-lp53

bb.d:                                             ; preds = %.noexc5
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.noexc5
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h9e7725288f72de76E"(ptr nonnull align 8 %i.g)
          to label %.noexc7 unwind label %.loopexit52

.noexc7:                                          ; preds = %bb.e
  %i.x = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d38a7ba3ec14bf8E"(ptr nonnull align 8 %i.h)
          to label %.noexc8 unwind label %.loopexit52 ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = invoke { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h287b495e226df2a4E"(ptr nonnull align 8 @31, i64 2)
          to label %.noexc13 unwind label %.loopexit.split-lp48 ; 2 uses

.noexc13:                                         ; preds = %bb.f
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  store ptr %i.z, ptr %i.f, align 8, !noalias !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !15
  %i.ac = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d38a7ba3ec14bf8E"(ptr nonnull align 8 %i.f)
          to label %.noexc14 unwind label %.loopexit.split-lp48 ; 2 uses

.noexc14:                                         ; preds = %.noexc13
  %.not2.i9 = icmp eq ptr %i.ac, null
  br i1 %.not2.i9, label %._crit_edge.i12, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.noexc14, %.noexc18
  %i.ad = phi ptr [ %i.ah, %.noexc18 ], [ %i.ac, %.noexc14 ]
  invoke void @_ZN3std3env3var17h1c69f83d4debe615E(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.ad)
          to label %.noexc15 unwind label %.loopexit47

.noexc15:                                         ; preds = %.lr.ph.i10
  %i.ae = load i64, ptr %i.e, align 8, !noalias !15
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.g

._crit_edge.i12:                                  ; preds = %.noexc18, %.noexc14
  invoke void @_ZN5alloc6string6String3new17h592baf7af623517aE(ptr nonnull sret([24 x i8]) align 8 %i.k)
          to label %bb.j unwind label %.loopexit.split-lp48

bb.g:                                             ; preds = %.noexc15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc15
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h9e7725288f72de76E"(ptr nonnull align 8 %i.e)
          to label %.noexc17 unwind label %.loopexit47

.noexc17:                                         ; preds = %bb.h
  %i.ah = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d38a7ba3ec14bf8E"(ptr nonnull align 8 %i.f)
          to label %.noexc18 unwind label %.loopexit47 ; 2 uses

.noexc18:                                         ; preds = %.noexc17
  %.not.i11 = icmp eq ptr %i.ah, null
  br i1 %.not.i11, label %._crit_edge.i12, label %.lr.ph.i10

bb.i:                                             ; preds = %.loopexit47, %.loopexit.split-lp48, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %lpad.loopexit49, %.loopexit47 ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp48 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc905d705dd1ca26cE"(ptr nonnull align 8 %i.l) #22
          to label %bb.b unwind label %bb.s

.loopexit47:                                      ; preds = %.lr.ph.i10, %bb.h, %.noexc17
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp48:                             ; preds = %bb.f, %.noexc13, %._crit_edge.i12
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.j:                                             ; preds = %bb.g, %._crit_edge.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ai = invoke { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17h287b495e226df2a4E"(ptr nonnull align 8 @34, i64 2)
          to label %.noexc24 unwind label %.loopexit.split-lp43 ; 2 uses

.noexc24:                                         ; preds = %bb.j
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  store ptr %i.aj, ptr %i.d, align 8, !noalias !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !noalias !18
  %i.am = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d38a7ba3ec14bf8E"(ptr nonnull align 8 %i.d)
          to label %.noexc25 unwind label %.loopexit.split-lp43 ; 2 uses

.noexc25:                                         ; preds = %.noexc24
  %.not2.i20 = icmp eq ptr %i.am, null
  br i1 %.not2.i20, label %._crit_edge.i23, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.noexc25, %.noexc29
  %i.an = phi ptr [ %i.ar, %.noexc29 ], [ %i.am, %.noexc25 ]
  invoke void @_ZN3std3env3var17h1c69f83d4debe615E(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.an)
          to label %.noexc26 unwind label %.loopexit42

.noexc26:                                         ; preds = %.lr.ph.i21
  %i.ao = load i64, ptr %i.c, align 8, !noalias !18
end_hunk_0
begin_hunk_1_@_ZN10hyper_util6client5proxy7matcher7Matcher9intercept17h0cb3a17d5ad650a3E:bb.a
  %i.aw = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17hd2e99d61f913dc3bE"(ptr align 1 %i.at, i64 %i.au, i1 zeroext false, ptr align 8 %i.av)
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h39e37a99e8fb01a5E"(ptr nonnull align 8 %i.e, ptr nonnull align 8 @5)
  br i1 %i.ax, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.k, %bb.i
  %i.ay = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e0e44663606963E"(ptr nonnull align 8 %i.f) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.not.i.i, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.e, align 8
  %i.ba = call { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5811e0d39ba2c29aE"(ptr align 8 %i.az) ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1
  %i.bd = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h6091355c4b7d6c32E"(ptr align 1 %i.bb, i64 %i.bc, i32 46)
  br i1 %i.bd, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.e, align 8
  %i.bf = call i64 @_ZN5alloc6string6String3len17hfcf845044c564ec7E(ptr align 8 %i.be)
  %i.bg = xor i64 %i.bf, -1
  %i.bh = add i64 %i.w, %i.bg
  %i.bi = call align 1 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6d17ea3d9ce7b245E"(ptr align 1 %.sroa.01.0.i, i64 %.sroa.4.0.i, i64 %i.bh)
  store ptr %i.bi, ptr %i.d, align 8
  %i.bj = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49f802d1e1997043E"(ptr nonnull align 8 %i.d, ptr nonnull align 8 @7)
  br i1 %i.bj, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %.backedge.i.i

_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread: ; preds = %bb.g, %.lr.ph.i.i, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i: ; preds = %.backedge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.g, ptr noundef nonnull align 1 dereferenceable(17) %i.h, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bk = call { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdfe7f399e0e5472dE"(ptr align 8 %1) ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  store ptr %i.bl, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb641920785fe6feaE"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not4.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not4.not.i.i, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.l, %.backedge.i5.i
  %i.bp = phi ptr [ %i.bs, %.backedge.i5.i ], [ %i.bo, %bb.l ] ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %.not3.i.i = icmp eq i8 %i.bq, 2
  br i1 %.not3.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i4.i
  %i.br = call zeroext i1 @_ZN5ipnet5ipnet5IpNet8contains17h70329a6fb405b353E(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.g)
  br i1 %i.br, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread, label %.backedge.i5.i

.backedge.i5.i:                                   ; preds = %bb.n, %bb.m
  %i.bs = call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb641920785fe6feaE"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not.not.i6.i = icmp eq ptr %i.bs, null
  br i1 %.not.not.i6.i, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit, label %.lr.ph.i4.i

bb.n:                                             ; preds = %.lr.ph.i4.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bt, ptr %i.b, align 8
  store ptr %i.g, ptr %i.a, align 8
  %i.bu = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc05d80aa0f7fe998E"(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
  br i1 %i.bu, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread, label %.backedge.i5.i

_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit: ; preds = %.backedge.i5.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i, %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bv = call { ptr, i64 } @_ZN4http3uri3Uri10scheme_str17h117a4574748fe2cdE(ptr align 8 %2) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 3 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.by = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17hb0839278e162dde6E"(ptr nonnull align 1 %i.bw, i64 %i.bx, ptr nonnull align 1 @38, i64 4)
  br i1 %i.by, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.o
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bz = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17hb0839278e162dde6E"(ptr nonnull align 1 %i.bw, i64 %i.bx, ptr nonnull align 1 @39, i64 5)
  br i1 %i.bz, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h91faec83bd33508cE"(ptr sret([136 x i8]) align 8 %0, ptr nonnull align 8 %i.ca)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h91faec83bd33508cE"(ptr sret([136 x i8]) align 8 %0, ptr nonnull align 8 %i.cb)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_ZN10hyper_util6client5proxy7matcher9Intercept10basic_auth17h6901d02130f356b7E(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define nonnull align 8 ptr @_ZN10hyper_util6client5proxy7matcher9Intercept3uri17h8eb9a7026525b642E(ptr nofree readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10hyper_util6client5proxy7matcher9Intercept8raw_auth17h5d6a908f1ee08e41E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  %i.c = icmp eq i64 %i.a, -9223372036854775806
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = tail call { ptr, i64 } @_ZN5alloc6string6String6as_str17h0ac3830c0b1d2095E(ptr nonnull align 8 %1) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = tail call { ptr, i64 } @_ZN5alloc6string6String6as_str17h0ac3830c0b1d2095E(ptr nonnull align 8 %i.e) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN10hyper_util6client6legacy7connect3dns11GaiResolver3new17h83c65f0ac24cbdcbE() unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs19split_by_preference17h80af25247df08524E(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0, ptr align 8 %1, i40 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [32 x i8], align 8                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [48 x i8], align 8                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 3 uses
  %i.q = alloca [1 x i8], align 1                 ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [32 x i8], align 8                ; 3 uses
  %.sroa.23.5.copyload = load i8, ptr %3, align 1
  %i.v = trunc i40 %2 to i1
  %i.w = trunc nuw i8 %.sroa.23.5.copyload to i1  ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.w, label %bb.d, label %.noexc15

bb.c:                                             ; preds = %bb.a
  br i1 %i.w, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_ZN4core4iter6traits8iterator8Iterator6filter17h54cad04f052fe502E(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17hce1cf98a1a32a414E(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h7d3a52818df0e9dbE"(ptr nonnull sret([24 x i8]) align 8 %i.r)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = invoke { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17h85f7c29156cff025E"(ptr align 8 %1)
          to label %bb.m unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %bb.f, %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$GT$17h8542ada629d895c9E"(ptr nonnull align 8 %i.s) #22
          to label %.thread unwind label %bb.i

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.r)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %bb.l, %bb.g
  %.sink = phi ptr [ %i.m, %bb.s ], [ %i.u, %bb.l ], [ %i.s, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  ret void

bb.i:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.j, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

.noexc15:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN4core4iter6traits8iterator8Iterator6filter17hf32e4ba568390d7fE(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17hf2227660bd7209efE(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr nonnull align 8 %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h7d3a52818df0e9dbE"(ptr nonnull sret([24 x i8]) align 8 %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %.noexc15
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$GT$17h8542ada629d895c9E"(ptr nonnull align 8 %i.u) #22
          to label %.thread unwind label %bb.i

bb.k:                                             ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.t)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.m:                                             ; preds = %bb.d
  %i.ab = extractvalue { ptr, i64 } %i.x, 0
  %i.ac = extractvalue { ptr, i64 } %i.x, 1
  %i.ad = invoke align 4 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17he35b71f3ecec7afaE"(ptr align 4 %i.ab, i64 %i.ac)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke i8 @"_ZN4core6option15Option$LT$T$GT$3map17h8a72ffcd7aab37ceE"(ptr align 4 %i.ad)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.af = invoke zeroext i1 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h9863cd0cdb69ec40E"(i8 %i.ae, i1 zeroext false)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.q, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN4core4iter6traits8iterator8Iterator9partition17hc97479c5aa4d76aaE(ptr nonnull sret([48 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n, ptr nonnull align 1 %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.l)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.k)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$GT$17h8542ada629d895c9E"(ptr nonnull align 8 %i.m) #22
          to label %.thread unwind label %bb.i

bb.s:                                             ; preds = %bb.q
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.t:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$core..net..socket_addr..SocketAddr$GT$$GT$17h9946693769340ff0E"(ptr nonnull align 8 %i.p) #22
          to label %.thread unwind label %bb.i

.thread:                                          ; preds = %bb.r, %bb.t, %bb.j, %bb.e, %bb.u
  %.pn1026 = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %lpad.thr_comm.split-lp, %bb.u ], [ %i.y, %bb.e ], [ %i.aj, %bb.t ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %.pn1026

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$core..net..socket_addr..SocketAddr$GT$$GT$17h45adcacb4a46207dE"(ptr align 8 %1) #22
          to label %.thread unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs19split_by_preference28_$u7b$$u7b$closure$u7d$$u7d$17hdea6e34bc7c1e34fE"(ptr nofree readonly align 8 captures(none) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3net11socket_addr10SocketAddr7is_ipv617h93ae3c935e0ac6b9E(ptr align 4 %1)
  %i.b = load ptr, ptr %0, align 8
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.a, %i.d
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs3len17hdf3c503d45426fd5E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17h85f7c29156cff025E"(ptr align 8 %0)
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs3new17h971f6992ed41169bE(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs8is_empty17h361461eb9f2ef5a1E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17h85f7c29156cff025E"(ptr align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17h87807777d42f4470E"(ptr align 4 %i.b, i64 %i.c)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs9try_parse17h700f9b0d9c29b555E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 1 %1, i64 %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 2 uses
  %.sroa.25 = alloca [30 x i8], align 2           ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [28 x i8], align 4                ; 2 uses
  %i.e = alloca [17 x i8], align 1                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = tail call i40 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h22477cb5453b8bd0E"(ptr align 1 %1, i64 %2) ; 2 uses
  %i.i = trunc i40 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h5a83bdca58b0376aE"(ptr nonnull sret([17 x i8]) align 1 %i.e, ptr align 1 %1, i64 %2)
  %i.j = load i8, ptr %i.e, align 1
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.27.0.extract.shift = lshr i40 %i.h, 8
  %.sroa.27.0.extract.trunc = trunc nuw i40 %.sroa.27.0.extract.shift to i32
  %i.l = tail call i48 @_ZN4core3net11socket_addr12SocketAddrV43new17hf7f79d40bc3fcfbaE(i32 %.sroa.27.0.extract.trunc, i16 %3)
  %i.m = tail call ptr @_ZN5alloc5alloc15exchange_malloc17hac2497cc5ca96c3cE(i64 32, i64 4) ; 3 uses
  store i16 0, ptr %i.m, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i48 %i.l, ptr %.sroa.23.0..sroa_idx, align 2
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h5db1e3b16d98d134E"(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 4 %i.m, i64 1)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_ZN4core3net11socket_addr12SocketAddrV63new17h8b6973056b36a76cE(ptr nonnull sret([28 x i8]) align 4 %i.d, ptr nonnull align 1 %i.a, i16 %3, i32 0, i32 0)
  %i.o = call ptr @_ZN5alloc5alloc15exchange_malloc17hac2497cc5ca96c3cE(i64 32, i64 4) ; 3 uses
  %.sroa.25.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.25, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.25.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %i.d, i64 28, i1 false)
  store i16 1, ptr %i.o, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.25, i64 30, i1 false)
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8into_vec17h5db1e3b16d98d134E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 4 %i.o, i64 1)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_ZN10hyper_util6client6legacy7connect3dns4Name3new17hc67ac1ce49038cffE(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZN10hyper_util6client6legacy7connect3dns4Name6as_str17h934bc9829016021fE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN133_$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h139e0ae249283093E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$21drop_future_or_output17h51240ed022ef6cbaE"(ptr align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN133_$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hff5326d4beea59e6E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$21drop_future_or_output17hdc3db9d705d008b2E"(ptr align 8 %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, ptr } @"_ZN150_$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$10poll_ready17h97c275934b3ace05E"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN150_$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$4call17ha74fff762670d7a0E"(ptr nofree readnone align 1 captures(none) %0, ptr align 1 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_ZN5tokio4task8blocking14spawn_blocking17h8a7c4bf7a59f8912E(ptr align 1 %1, i64 %2, ptr nonnull align 8 @44)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN150_$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$4call28_$u7b$$u7b$closure$u7d$$u7d$17h68d2f77a8ba5a51aE"(ptr sret([32 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  store ptr %1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 0, ptr %i.f, align 8
  invoke void @"_ZN78_$LT$$LP$$RF$str$C$u16$RP$$u20$as$u20$std..net..socket_addr..ToSocketAddrs$GT$15to_socket_addrs17h49056ec303e51ec9E"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr205drop_in_place$LT$$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$GT$17h83da56f22d8ca839E"(ptr nonnull align 8 %i.c) #22
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h8684dfc665f105b8E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @"_ZN4core3ptr205drop_in_place$LT$$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$GT$17h83da56f22d8ca839E"(ptr nonnull align 8 %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable
end_hunk_1
