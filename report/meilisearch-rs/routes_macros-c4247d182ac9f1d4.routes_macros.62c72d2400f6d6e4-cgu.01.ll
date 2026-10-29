Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-c4247d182ac9f1d4.routes_macros.62c72d2400f6d6e4-cgu.01?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0_@_ZN13routes_macros7request11try_request17h445a9431a48a053dE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i32 %1, ptr %i.by, align 4, !noalias !11
  store i64 -9223372036854775808, ptr %i.bx, align 8, !noalias !11
  %.sink105.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sink105.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sink105.sroa.gep139 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sink105.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sink105.sroa.gep142 = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %.sink105.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.bt)
          to label %bb.c unwind label %bb.b, !noalias !11

bb.b:                                             ; preds = %bb.s, %bb.e, %bb.a
  %.sroa.08.1.i = phi i1 [ false, %bb.s ], [ true, %bb.e ], [ true, %bb.a ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.bt, ptr nonnull align 1 @43, i64 15)
          to label %bb.e unwind label %bb.d, !noalias !11

bb.d:                                             ; preds = %bb.c
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.bt) #7
          to label %bb.y unwind label %bb.v, !noalias !11

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !noalias !11
  invoke void @_ZN3syn11parse_quote5parse17ha30a698d424b1bf2E(ptr nonnull sret([224 x i8]) align 8 %i.bv, ptr nonnull align 8 %i.bu, ptr nonnull align 8 @44)
          to label %bb.f unwind label %bb.b, !noalias !11

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bw, ptr noundef nonnull align 8 dereferenceable(224) %i.bv, i64 224, i1 false), !noalias !11
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.bs)
          to label %bb.h unwind label %bb.g, !noalias !11

bb.g:                                             ; preds = %bb.r, %bb.f
  %.sroa.08.3.i = phi i1 [ false, %bb.r ], [ true, %bb.f ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.br)
          to label %bb.k unwind label %bb.i, !noalias !11

bb.i:                                             ; preds = %bb.q, %bb.h
  %.sroa.08.5.i = phi i1 [ false, %bb.q ], [ true, %bb.h ]
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k
  %.sroa.08.6.i = phi i1 [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.k ]
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.br) #7
          to label %bb.w unwind label %bb.v

bb.k:                                             ; preds = %bb.h
  store i32 0, ptr %i.bq, align 4, !noalias !11
  store ptr %i.bx, ptr %i.bo, align 8, !noalias !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bw, ptr %i.dp, align 8, !noalias !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bs, ptr %i.dq, align 8, !noalias !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.br, ptr %i.dr, align 8, !noalias !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.bq, ptr %i.ds, align 8, !noalias !11
  invoke void @_ZN3syn4meta6parser17h43c53333083fea31E(ptr nonnull sret([40 x i8]) align 8 %i.bp, ptr nonnull align 8 %i.bo)
          to label %bb.l unwind label %bb.j, !noalias !11

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN3syn5parse6Parser5parse17h7152a755f22b5d94E(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr nonnull align 8 %i.bp, i32 %1)
          to label %bb.m unwind label %bb.j, !noalias !11

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h44611f307b547730E"(ptr nonnull sret([24 x i8]) align 8 %i.bn, ptr nonnull align 8 %i.bm)
          to label %bb.n unwind label %bb.j, !noalias !11

bb.n:                                             ; preds = %bb.m
  %i.dt = load i64, ptr %i.bn, align 8, !noalias !11
  %.not.i = icmp eq i64 %i.dt, -9223372036854775808
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !11
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6305ba44607e2611E"(ptr nonnull sret([328 x i8]) align 8 %i.dg, ptr nonnull align 8 %i.bl, ptr nonnull align 8 @45)
          to label %bb.q unwind label %bb.j

bb.p:                                             ; preds = %bb.n
  %.sroa.03.272..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.03.272..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i64 48, i1 false), !noalias !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.03.i, ptr noundef nonnull align 8 dereferenceable(224) %i.bw, i64 224, i1 false), !noalias !11
  %.sroa.03.224..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.224..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !11
  %.sroa.01.0.copyload.i = load i32, ptr %i.bq, align 4, !noalias !11
  %.sroa.03.248..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.248..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.dg, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.03.i, i64 320, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 320
  store i32 %.sroa.01.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.br)
          to label %bb.r unwind label %bb.i

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.bs)
          to label %bb.s unwind label %bb.g

bb.s:                                             ; preds = %bb.r
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$syn..ty..Type$GT$$GT$17h9b30ffd1bed52713E"(ptr nonnull align 8 %i.bw)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN4core3ptr63drop_in_place$LT$routes_macros..request..UnknownFieldPolicy$GT$17h56ff1047980ee832E"(ptr nonnull align 8 %i.bx)
          to label %bb.aa unwind label %.thread53

bb.u:                                             ; preds = %bb.y
  br i1 %.sroa.08.0.i, label %bb.z, label %.thread48

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.j, %bb.d
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

bb.w:                                             ; preds = %bb.j, %bb.i
  %.sroa.08.4.i = phi i1 [ %.sroa.08.5.i, %bb.i ], [ %.sroa.08.6.i, %bb.j ]
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.i ], [ %i.do, %bb.j ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.bs) #7
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w, %bb.g
  %.sroa.08.2.i = phi i1 [ %.sroa.08.3.i, %bb.g ], [ %.sroa.08.4.i, %bb.w ]
  %.pn12.i = phi { ptr, i32 } [ %i.dm, %bb.g ], [ %.pn.i, %bb.w ]
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$syn..ty..Type$GT$$GT$17h9b30ffd1bed52713E"(ptr nonnull align 8 %i.bw) #7
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x, %bb.d, %bb.b
  %.sroa.08.0.i = phi i1 [ %.sroa.08.1.i, %bb.b ], [ %.sroa.08.2.i, %bb.x ], [ true, %bb.d ]
  %.pn14.i = phi { ptr, i32 } [ %i.dk, %bb.b ], [ %.pn12.i, %bb.x ], [ %i.dl, %bb.d ] ; 2 uses
  invoke void @"_ZN4core3ptr63drop_in_place$LT$routes_macros..request..UnknownFieldPolicy$GT$17h56ff1047980ee832E"(ptr nonnull align 8 %i.bx) #7
          to label %bb.u unwind label %bb.v

bb.z:                                             ; preds = %bb.u
  invoke void @"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17h664ffa5071867ce1E"(ptr nonnull align 4 %i.by) #7
          to label %.thread48 unwind label %bb.v

.thread53:                                        ; preds = %bb.ac, %bb.aa, %bb.t
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread48

bb.aa:                                            ; preds = %bb.p, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3aaacb1c0a37e991E"(ptr nonnull sret([328 x i8]) align 8 %i.dh, ptr nonnull align 8 %i.dg)
          to label %bb.ab unwind label %.thread53

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i64, ptr %i.dh, align 8
  %i.dw = icmp eq i64 %i.dv, 18
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb1bb66e0299d1e0E"(ptr sret([80 x i8]) align 8 %0, ptr nonnull align 8 %i.df, ptr nonnull align 8 @17)
          to label %.thread58 unwind label %.thread53

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.di, ptr noundef nonnull align 8 dereferenceable(328) %i.dh, i64 328, i1 false)
  %i.dy = load i32, ptr %i.dj, align 4
  invoke void @_ZN3syn5parse17hb6a6b6cd9fe85335E(ptr nonnull sret([352 x i8]) align 8 %i.dc, i32 %i.dy)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %.body33, %bb.af
  %.sroa.012.0 = phi i8 [ %.sroa.012.1, %bb.af ], [ %.sroa.012.2, %.body33 ]
  %.pn26 = phi { ptr, i32 } [ %i.dz, %bb.af ], [ %.pn24, %.body33 ] ; 2 uses
  %3 = trunc nuw i8 %.sroa.012.0 to i1
  br i1 %3, label %bb.ig, label %.thread

bb.af:                                            ; preds = %bb.ia, %bb.gm, %bb.ai, %bb.ag, %bb.ad
  %.sroa.012.1 = phi i8 [ 1, %bb.ai ], [ %.sroa.012.5, %bb.gm ], [ 0, %bb.ia ], [ 1, %bb.ag ], [ 1, %bb.ad ]
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h41eed31ca328bb80E"(ptr nonnull sret([352 x i8]) align 8 %i.dd, ptr nonnull align 8 %i.dc)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load i64, ptr %i.dd, align 8
  %i.eb = icmp eq i64 %i.ea, 18
  br i1 %i.eb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb1bb66e0299d1e0E"(ptr sret([80 x i8]) align 8 %0, ptr nonnull align 8 %i.db, ptr nonnull align 8 @16)
          to label %.thread56 unwind label %bb.af

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.de, ptr noundef nonnull align 8 dereferenceable(352) %i.dd, i64 352, i1 false)
  %i.ed = load i64, ptr %i.de, align 8            ; 2 uses
  %i.ee = add i64 %i.ed, -2
  %i.ef = icmp ugt i64 %i.ed, 1
  %i.eg = select i1 %i.ef, i64 %i.ee, i64 3
  switch i64 %i.eg, label %bb.ak [
    i64 1, label %bb.al
    i64 9, label %bb.fk
  ]

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.de, ptr %i.cr, align 8
  %i.eh = invoke i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17hef9b778834f54a46E"(ptr nonnull align 8 %i.cr)
          to label %bb.id unwind label %bb.gh

bb.al:                                            ; preds = %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.cx, ptr noundef nonnull align 8 dereferenceable(328) %i.di, i64 328, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke fastcc void @_ZN13routes_macros7request13handle_derive17h75a60f7fe744866fE(ptr noalias align 8 %i.bj, ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.cx)
          to label %bb.ao unwind label %bb.an, !noalias !12

bb.am:                                            ; preds = %bb.ax, %bb.an
  %.pn11.i = phi { ptr, i32 } [ %i.ej, %bb.an ], [ %.pn9.i, %bb.ax ]
  invoke void @"_ZN4core3ptr60drop_in_place$LT$routes_macros..request..RequestItemAttr$GT$17h14f74f16552cda9dE"(ptr nonnull align 8 %i.cx) #7
          to label %.body33 unwind label %bb.ff

bb.an:                                            ; preds = %bb.fj, %bb.av, %.invoke.i, %bb.as, %bb.ar, %bb.ao, %bb.al
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7dac2816d1face61E"(ptr nonnull sret([80 x i8]) align 8 %i.bk, ptr nonnull align 8 %i.bj)
          to label %bb.ap unwind label %bb.an, !noalias !12

bb.ap:                                            ; preds = %bb.ao
  %i.ek = load i64, ptr %i.bk, align 8, !noalias !12
  %.not.i30 = icmp eq i64 %i.ek, -9223372036854775808
  br i1 %.not.i30, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(80) %i.bk, i64 80, i1 false), !noalias !12
  br label %.invoke.i

bb.ar:                                            ; preds = %bb.ap
  invoke fastcc void @_ZN13routes_macros7request17handle_item_attrs17h9b37ab87eda3aa3aE(ptr noalias align 8 %i.bg, ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.cx, i1 zeroext true)
          to label %bb.as unwind label %bb.an, !noalias !12

bb.as:                                            ; preds = %bb.ar
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7dac2816d1face61E"(ptr nonnull sret([80 x i8]) align 8 %i.bh, ptr nonnull align 8 %i.bg)
          to label %bb.at unwind label %bb.an, !noalias !12

bb.at:                                            ; preds = %bb.as
  %i.el = load i64, ptr %i.bh, align 8, !noalias !12
  %.not4.i = icmp eq i64 %i.el, -9223372036854775808
  br i1 %.not4.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %i.bh, i64 80, i1 false), !noalias !12
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.au, %bb.aq
  %i.em = phi ptr [ %i.bf, %bb.au ], [ %i.bi, %bb.aq ]
  %i.en = phi ptr [ @5, %bb.au ], [ @6, %bb.aq ]
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1fbec1338a0fa478E"(ptr nonnull sret([80 x i8]) align 8 %i.cy, ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.en)
          to label %bb.er unwind label %bb.an

bb.av:                                            ; preds = %bb.at
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h1d6709cb622189d9E"(ptr nonnull sret([24 x i8]) align 8 %i.be)
          to label %bb.aw unwind label %bb.an, !noalias !12

bb.aw:                                            ; preds = %bb.av
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.ep = invoke { ptr, ptr } @"_ZN114_$LT$$RF$mut$u20$syn..punctuated..Punctuated$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hc52c36f49b6b32e1E"(ptr nonnull align 8 %i.eo)
          to label %bb.az unwind label %bb.ay, !noalias !12 ; 2 uses

bb.ax:                                            ; preds = %.body.i, %bb.ay
  %.pn9.i = phi { ptr, i32 } [ %i.eq, %bb.ay ], [ %.pn.i31, %.body.i ]
  invoke void @"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hc0af4ba7d6198ad8E"(ptr nonnull align 8 %i.be) #7
          to label %bb.am unwind label %bb.ff

bb.ay:                                            ; preds = %bb.fg, %bb.ep, %bb.aw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %bb.aw
  %i.er = extractvalue { ptr, ptr } %i.ep, 0
  %i.es = extractvalue { ptr, ptr } %i.ep, 1
  store ptr %i.er, ptr %i.bd, align 8, !noalias !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.es, ptr %i.et, align 8, !noalias !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.3.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cx, i64 320
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.az
  %i.fc = invoke align 8 ptr @"_ZN92_$LT$syn..punctuated..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h70f9808ea5c08d0dE"(ptr nonnull align 8 %i.bd)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12 ; 5 uses

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fd, %.loopexit.split-lp62.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eb
  %.pn.i31 = phi { ptr, i32 } [ %i.hg, %bb.fd ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp62.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn34.i.i, %bb.eb ], [ %lpad.loopexit.split-lp135.a, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr71drop_in_place$LT$syn..punctuated..IterMut$LT$syn..data..Variant$GT$$GT$17h195d1832e8d2f54dE"(ptr nonnull align 8 %i.bd) #7
          to label %bb.ax unwind label %bb.ff

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fi, %bb.fh, %bb.fe, %bb.ez, %bb.ey, %bb.ex, %bb.es, %bb.eo, %bb.ed, %bb.bh, %.noexc.i, %bb.bg, %.backedge.i, %.invoke49.i
  %lpad.loopexit.split-lp135.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ba:                                            ; preds = %.backedge.i
  %.not5.i = icmp eq ptr %i.fc, null
  br i1 %.not5.i, label %bb.ep, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !12
  store i64 -9223372036854775807, ptr %i.av, align 8, !noalias !14
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 240 ; 5 uses
  %i.fe = invoke { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb047a7c96dbbb0e3E"(ptr nonnull align 8 %i.fd)
          to label %bb.bc unwind label %.loopexit.split-lp62.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ff = extractvalue { ptr, ptr } %i.fe, 0
  %i.fg = extractvalue { ptr, ptr } %i.fe, 1
  store ptr %i.ff, ptr %i.au, align 8, !noalias !14
  store ptr %i.fg, ptr %i.eu, align 8, !noalias !14
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.bc
  %i.fh = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78b5dd733d85fb28E"(ptr nonnull align 8 %i.au)
          to label %bb.bd unwind label %.loopexit.split-lp62.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14 ; 2 uses

bb.bd:                                            ; preds = %.backedge.i.i
  %.not.not.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.not.i.i, label %bb.bf, label %bb.be

end_hunk_0
begin_hunk_1_@_ZN13routes_macros7request11try_request17h445a9431a48a053dE:bb.a

bb.fa:                                            ; preds = %bb.ez
  %i.hd = load i64, ptr %i.ay, align 8, !noalias !12
  %.not7.i = icmp eq i64 %i.hd, -9223372036854775808
  br i1 %.not7.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.ay, i64 80, i1 false), !noalias !12
  br label %.invoke49.i

.invoke49.i:                                      ; preds = %bb.fb, %bb.eu
  %i.he = phi ptr [ %i.aw, %bb.fb ], [ %i.ba, %bb.eu ]
  %i.hf = phi ptr [ @2, %bb.fb ], [ @4, %bb.eu ]
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1fbec1338a0fa478E"(ptr nonnull sret([80 x i8]) align 8 %i.cy, ptr nonnull align 8 %i.he, ptr nonnull align 8 %i.hf)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false), !noalias !12
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17h13d4e7fb3bc30642E"(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.az, ptr nonnull align 8 @1)
          to label %bb.fe unwind label %bb.fd, !noalias !12

bb.fd:                                            ; preds = %bb.fc
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hc0af4ba7d6198ad8E"(ptr nonnull align 8 %i.az) #7
          to label %.body.i unwind label %bb.ff, !noalias !12

bb.fe:                                            ; preds = %bb.fc
  invoke void @"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hc0af4ba7d6198ad8E"(ptr nonnull align 8 %i.az)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12

bb.ff:                                            ; preds = %bb.fd, %.body.i, %bb.ax, %bb.am
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

bb.fg:                                            ; preds = %.invoke49.i
  invoke void @"_ZN4core3ptr71drop_in_place$LT$syn..punctuated..IterMut$LT$syn..data..Variant$GT$$GT$17h195d1832e8d2f54dE"(ptr nonnull align 8 %i.bd)
          to label %bb.fj unwind label %bb.ay

bb.fh:                                            ; preds = %bb.ey
  %i.hi = extractvalue { ptr, ptr } %i.hc, 0
  %i.hj = extractvalue { ptr, ptr } %i.hc, 1
  %i.hk = invoke { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3map17h9acdc40cd4e995e5E(ptr align 1 %i.hi, ptr align 8 %i.hj)
          to label %bb.fi unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12 ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %i.hl = extractvalue { ptr, ptr } %i.hk, 0
  %i.hm = extractvalue { ptr, ptr } %i.hk, 1
  invoke void @"_ZN93_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h43c76e5a50e1a88bE"(ptr nonnull align 8 %i.be, ptr align 1 %i.hl, ptr align 8 %i.hm, ptr nonnull align 8 @3)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12

.backedge.i.backedge:                             ; preds = %bb.fi, %bb.fe, %bb.ev
  br label %.backedge.i

bb.fj:                                            ; preds = %bb.fg
  invoke void @"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hc0af4ba7d6198ad8E"(ptr nonnull align 8 %i.be)
          to label %bb.er unwind label %bb.an

bb.fk:                                            ; preds = %bb.aj
  %i.hn = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ct, ptr noundef nonnull align 8 dereferenceable(328) %i.di, i64 328, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
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
  %i.ho = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 2 uses
  invoke fastcc void @_ZN13routes_macros7request13handle_derive17h75a60f7fe744866fE(ptr noalias align 8 %i.i, ptr align 8 %i.ho, ptr nonnull align 8 %i.ct)
          to label %bb.fm unwind label %bb.fl, !noalias !15

bb.fl:                                            ; preds = %bb.ge, %bb.gd, %.invoke.i36, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fq, %bb.fp, %bb.fm, %bb.fk
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr60drop_in_place$LT$routes_macros..request..RequestItemAttr$GT$17h14f74f16552cda9dE"(ptr nonnull align 8 %i.ct) #7
          to label %.body33 unwind label %bb.gg

bb.fm:                                            ; preds = %bb.fk
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7dac2816d1face61E"(ptr nonnull sret([80 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.fn unwind label %bb.fl, !noalias !15

bb.fn:                                            ; preds = %bb.fm
  %i.hq = load i64, ptr %i.j, align 8, !noalias !15
  %.not.i35 = icmp eq i64 %i.hq, -9223372036854775808
  br i1 %.not.i35, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !noalias !15
  br label %.invoke.i36

bb.fp:                                            ; preds = %bb.fn
  %i.hr = load i64, ptr %i.hn, align 8, !noalias !15
  %i.hs = icmp eq i64 %i.hr, 0
  invoke fastcc void @_ZN13routes_macros7request17handle_item_attrs17h9b37ab87eda3aa3aE(ptr noalias align 8 %i.f, ptr align 8 %i.ho, ptr nonnull align 8 %i.ct, i1 zeroext %i.hs)
          to label %bb.fq unwind label %bb.fl, !noalias !15

bb.fq:                                            ; preds = %bb.fp
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7dac2816d1face61E"(ptr nonnull sret([80 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.fr unwind label %bb.fl, !noalias !15

bb.fr:                                            ; preds = %bb.fq
  %i.ht = load i64, ptr %i.g, align 8, !noalias !15
  %.not3.i = icmp eq i64 %i.ht, -9223372036854775808
  br i1 %.not3.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !15
  br label %.invoke.i36

bb.ft:                                            ; preds = %bb.fr
  %i.hu = load i64, ptr %i.hn, align 8, !noalias !15
  switch i64 %i.hu, label %bb.fu [
    i64 0, label %bb.fv
    i64 1, label %bb.fw
    i64 2, label %bb.fx
  ]

bb.fu:                                            ; preds = %bb.ft
  unreachable

bb.fv:                                            ; preds = %bb.ft
  %i.hv = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  invoke fastcc void @_ZN13routes_macros7request19handle_named_fields17h9e6646722b5a6f04E(ptr noalias align 8 %i.b, ptr nonnull align 8 %i.hv, ptr nonnull align 8 %i.ct)
          to label %bb.fy unwind label %bb.fl, !noalias !15

bb.fw:                                            ; preds = %bb.ft
  %i.hw = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.hx = invoke { ptr, ptr } @"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$4iter17h923d391e8adb2c9bE"(ptr nonnull align 8 %i.hw)
          to label %bb.gd unwind label %bb.fl, !noalias !15 ; 2 uses

bb.fx:                                            ; preds = %bb.ft
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h1d6709cb622189d9E"(ptr nonnull sret([24 x i8]) align 8 %i.d)
          to label %bb.gc unwind label %bb.fl, !noalias !15

bb.fy:                                            ; preds = %bb.fv
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0e082ee0569c6029E"(ptr nonnull sret([80 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.fz unwind label %bb.fl, !noalias !15

bb.fz:                                            ; preds = %bb.fy
  %i.hy = load i64, ptr %i.c, align 8, !noalias !15
  %.not4.i39 = icmp eq i64 %i.hy, -9223372036854775808
  br i1 %.not4.i39, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !noalias !15
  br label %.invoke.i36

.invoke.i36:                                      ; preds = %bb.ga, %bb.fs, %bb.fo
  %i.hz = phi ptr [ %i.a, %bb.ga ], [ %i.e, %bb.fs ], [ %i.h, %bb.fo ]
  %i.ia = phi ptr [ @19, %bb.ga ], [ @20, %bb.fs ], [ @21, %bb.fo ]
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1fbec1338a0fa478E"(ptr nonnull sret([80 x i8]) align 8 %i.cu, ptr nonnull align 8 %i.hz, ptr nonnull align 8 %i.ia)
          to label %bb.gf unwind label %bb.fl

bb.gb:                                            ; preds = %bb.fz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !noalias !15
  br label %bb.gc

bb.gc:                                            ; preds = %bb.ge, %bb.gb, %bb.fx
  %i.ic = getelementptr inbounds nuw i8, ptr %i.de, i64 216
  %i.id = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  %.sroa.3.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i37, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ic, ptr %i.ie, align 8, !alias.scope !15
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.id, ptr %.sroa.2.0..sroa_idx.i38, align 8, !alias.scope !15
  store i64 -9223372036854775808, ptr %i.cu, align 8, !alias.scope !15
  br label %bb.gf

bb.gd:                                            ; preds = %bb.fw
  %i.if = extractvalue { ptr, ptr } %i.hx, 0
  %i.ig = extractvalue { ptr, ptr } %i.hx, 1
  %i.ih = invoke { ptr, ptr } @_ZN4core4iter6traits8iterator8Iterator3map17h18ca235abb9220d4E(ptr align 1 %i.if, ptr align 8 %i.ig)
          to label %bb.ge unwind label %bb.fl, !noalias !15 ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.ii = extractvalue { ptr, ptr } %i.ih, 0
  %i.ij = extractvalue { ptr, ptr } %i.ih, 1
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17hf55d59486ec28998E(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 1 %i.ii, ptr align 8 %i.ij)
          to label %bb.gc unwind label %bb.fl, !noalias !15

bb.gf:                                            ; preds = %bb.gc, %.invoke.i36
  invoke void @"_ZN4core3ptr60drop_in_place$LT$routes_macros..request..RequestItemAttr$GT$17h14f74f16552cda9dE"(ptr nonnull align 8 %i.ct)
          to label %bb.gn unwind label %bb.gh

bb.gg:                                            ; preds = %bb.fl
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

.body33:                                          ; preds = %bb.am, %bb.fl, %bb.gh, %bb.gq, %bb.gu
  %.sroa.012.2 = phi i8 [ 0, %bb.gq ], [ 0, %bb.gu ], [ 0, %bb.am ], [ %.sroa.012.3, %bb.gh ], [ 0, %bb.fl ]
  %.pn24 = phi { ptr, i32 } [ %i.iq, %bb.gq ], [ %.pn.pn.pn, %bb.gu ], [ %.pn11.i, %bb.am ], [ %i.il, %bb.gh ], [ %i.hp, %bb.fl ]
  invoke void @"_ZN4core3ptr36drop_in_place$LT$syn..item..Item$GT$17h75d320acf9d82d8bE"(ptr nonnull align 8 %i.de) #7
          to label %bb.ae unwind label %bb.ic

bb.gh:                                            ; preds = %.invoke, %bb.gf, %bb.er, %bb.id, %bb.gn, %bb.gi, %bb.ak
  %.sroa.012.3 = phi i8 [ 1, %bb.id ], [ 1, %bb.ak ], [ 0, %bb.gf ], [ 0, %bb.gi ], [ 0, %bb.er ], [ 0, %.invoke ], [ 0, %bb.gn ]
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.gi:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha34fb1b1f4353eb2E"(ptr nonnull sret([80 x i8]) align 8 %i.cz, ptr nonnull align 8 %i.cy)
          to label %bb.gj unwind label %bb.gh

bb.gj:                                            ; preds = %bb.gi
  %i.im = load i64, ptr %i.cz, align 8
  %.not18 = icmp eq i64 %i.im, -9223372036854775808
  br i1 %.not18, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %i.cz, i64 80, i1 false)
  br label %.invoke

bb.gl:                                            ; preds = %bb.gj, %bb.go
  %.sink105.sroa.phi = phi ptr [ %.sink105.sroa.gep, %bb.go ], [ %.sink105.sroa.gep137, %bb.gj ]
  %.sink105.sroa.phi138 = phi ptr [ %.sink105.sroa.gep139, %bb.go ], [ %.sink105.sroa.gep140, %bb.gj ]
  %.sink105.sroa.phi141 = phi ptr [ %.sink105.sroa.gep142, %bb.go ], [ %.sink105.sroa.gep143, %bb.gj ]
  %.sroa.07.0.copyload = load ptr, ptr %.sink105.sroa.phi, align 8
  %.sroa.28.0.copyload = load ptr, ptr %.sink105.sroa.phi138, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %.sink105.sroa.phi141, i64 24, i1 false)
  store ptr %.sroa.07.0.copyload, ptr %i.da, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2bd433b0af58e6abE"(ptr nonnull sret([32 x i8]) align 8 %i.cn, ptr nonnull align 8 %i.cm)
          to label %bb.gr unwind label %bb.gq

bb.gm:                                            ; preds = %.invoke, %bb.ie
  %.sroa.012.5 = phi i8 [ 1, %bb.ie ], [ 0, %.invoke ] ; 2 uses
  invoke void @"_ZN4core3ptr36drop_in_place$LT$syn..item..Item$GT$17h75d320acf9d82d8bE"(ptr nonnull align 8 %i.de)
          to label %bb.if unwind label %bb.af

bb.gn:                                            ; preds = %bb.gf
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
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha34fb1b1f4353eb2E"(ptr nonnull sret([80 x i8]) align 8 %i.cv, ptr nonnull align 8 %i.cu)
          to label %bb.go unwind label %bb.gh

bb.go:                                            ; preds = %bb.gn
  %i.in = load i64, ptr %i.cv, align 8
  %.not = icmp eq i64 %i.in, -9223372036854775808
  br i1 %.not, label %bb.gl, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cs, ptr noundef nonnull align 8 dereferenceable(80) %i.cv, i64 80, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.gk, %bb.gp
  %i.io = phi ptr [ %i.cs, %bb.gp ], [ %i.cw, %bb.gk ]
  %i.ip = phi ptr [ @14, %bb.gp ], [ @7, %bb.gk ]
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17he34281dc922f3c32E"(ptr sret([80 x i8]) align 8 %0, ptr nonnull align 8 %i.io, ptr nonnull align 8 %i.ip)
          to label %bb.gm unwind label %bb.gh

bb.gq:                                            ; preds = %bb.hz, %bb.gs, %bb.gr, %bb.gl
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.gr:                                            ; preds = %bb.gl
  invoke void @_ZN4core4iter6traits8iterator8Iterator3map17hb0850fd347a0ecacE(ptr nonnull sret([32 x i8]) align 8 %i.co, ptr nonnull align 8 %i.cn)
          to label %bb.gs unwind label %bb.gq

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17h394b269902c99de9E(ptr nonnull sret([24 x i8]) align 8 %i.cp, ptr nonnull align 8 %i.co)
          to label %bb.gt unwind label %bb.gq

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN3syn8generics8Generics14split_for_impl17hfd9691c894e7ca36E(ptr nonnull sret([24 x i8]) align 8 %i.ci, ptr align 8 %.sroa.28.0.copyload)
          to label %bb.gw unwind label %bb.gv

bb.gu:                                            ; preds = %bb.gy, %bb.gv
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gy ], [ %i.ir, %bb.gv ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.cp) #7
          to label %.body33 unwind label %bb.ic

bb.gv:                                            ; preds = %bb.hy, %bb.gw, %bb.gt
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gw:                                            ; preds = %bb.gt
  %i.is = load ptr, ptr %i.ci, align 8
  store ptr %i.is, ptr %i.cl, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  store ptr %i.iu, ptr %i.ck, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  store ptr %i.iw, ptr %i.cj, align 8
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.cg)
          to label %bb.gx unwind label %bb.gv

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.cg, ptr nonnull align 1 @8, i64 4)
          to label %bb.ha unwind label %bb.gz

bb.gy:                                            ; preds = %bb.hk, %bb.gz
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.hk ], [ %i.ix, %bb.gz ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.cg) #7
          to label %bb.gu unwind label %bb.ic

bb.gz:                                            ; preds = %bb.hx, %bb.hw, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gx
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ha:                                            ; preds = %bb.gx
  invoke void @"_ZN3syn8generics8printing84_$LT$impl$u20$quote..to_tokens..ToTokens$u20$for$u20$syn..generics..ImplGenerics$GT$9to_tokens17h92829b679eea5f79E"(ptr nonnull align 8 %i.cl, ptr nonnull align 8 %i.cg)
          to label %bb.hb unwind label %bb.gz

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.cg, ptr nonnull align 1 @9, i64 6)
          to label %bb.hc unwind label %bb.gz

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN5quote9__private11push_colon217h272f513f52b92060E(ptr nonnull align 8 %i.cg)
          to label %bb.hd unwind label %bb.gz

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.cg, ptr nonnull align 1 @10, i64 11)
          to label %bb.he unwind label %bb.gz

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.cg, ptr nonnull align 1 @11, i64 3)
          to label %bb.hf unwind label %bb.gz

bb.hf:                                            ; preds = %bb.he
  invoke void @"_ZN52_$LT$$RF$T$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hc1b4bc790b1daf6aE"(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.cg)
          to label %bb.hg unwind label %bb.gz

bb.hg:                                            ; preds = %bb.hf
  invoke void @"_ZN3syn8generics8printing84_$LT$impl$u20$quote..to_tokens..ToTokens$u20$for$u20$syn..generics..TypeGenerics$GT$9to_tokens17h71f933553fe79458E"(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %i.cg)
          to label %bb.hh unwind label %bb.gz

bb.hh:                                            ; preds = %bb.hg
  invoke void @"_ZN76_$LT$core..option..Option$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h62c0da93b2c0afc8E"(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.cg)
          to label %bb.hi unwind label %bb.gz

bb.hi:                                            ; preds = %bb.hh
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.ce)
          to label %bb.hj unwind label %bb.gz

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.ce, ptr nonnull align 1 @12, i64 2)
          to label %bb.hm unwind label %bb.hl

bb.hk:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hl
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp122, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.iy, %bb.hl ]
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.ce) #7
          to label %bb.gy unwind label %bb.ic

bb.hl:                                            ; preds = %bb.hv, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hm:                                            ; preds = %bb.hj
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.ce, ptr nonnull align 1 @13, i64 11)
          to label %bb.hn unwind label %bb.hl

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.cd)
          to label %bb.ho unwind label %bb.hl

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZN5quote9__private10push_group17h629c0221a683a5d4E(ptr nonnull align 8 %i.ce, i8 0, ptr nonnull align 8 %i.cd)
          to label %bb.hp unwind label %bb.hl

bb.hp:                                            ; preds = %bb.ho
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.cb)
          to label %bb.hq unwind label %bb.hl

bb.hq:                                            ; preds = %bb.hp
  %i.iz = invoke { ptr, ptr } @"_ZN84_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$quote..__private..ext..RepAsIteratorExt$GT$15quote_into_iter17h34b89259162cd6ecE"(ptr nonnull align 8 %i.cp)
          to label %bb.hr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hu, %.preheader, %bb.hs, %bb.hr, %bb.hq
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.cb) #7
          to label %bb.hk unwind label %bb.ic

bb.hr:                                            ; preds = %bb.hq
  %i.ja = extractvalue { ptr, ptr } %i.iz, 0
  %i.jb = extractvalue { ptr, ptr } %i.iz, 1
  store ptr %i.ja, ptr %i.ca, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.jb, ptr %i.jc, align 8
  invoke void @"_ZN126_$LT$quote..__private..HasIterator$LT$_$GT$$u20$as$u20$core..ops..bit..BitOr$LT$quote..__private..HasIterator$LT$_$GT$$GT$$GT$5bitor17h74af7bcffa0ab249E"()
          to label %bb.hs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN5quote9__private16CheckHasIterator5check17hdeca538ad6e435f0E()
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.hs, %bb.hu
  %i.jd = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2dba4f8010a1a02E"(ptr nonnull align 8 %i.ca)
          to label %bb.ht unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ht:                                            ; preds = %.preheader
  %.not19 = icmp eq ptr %i.jd, null
  br i1 %.not19, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store ptr %i.jd, ptr %i.bz, align 8
  invoke void @"_ZN83_$LT$quote..__private..RepInterp$LT$T$GT$$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17h1bf702039f751b05E"(ptr nonnull align 8 %i.bz, ptr nonnull align 8 %i.cb)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false)
  invoke void @_ZN5quote9__private10push_group17h629c0221a683a5d4E(ptr nonnull align 8 %i.ce, i8 1, ptr nonnull align 8 %i.cc)
          to label %bb.hw unwind label %bb.hl

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false)
  invoke void @_ZN5quote9__private10push_group17h629c0221a683a5d4E(ptr nonnull align 8 %i.cg, i8 1, ptr nonnull align 8 %i.cf)
          to label %bb.hx unwind label %bb.gz

bb.hx:                                            ; preds = %bb.hw
  invoke void @"_ZN62_$LT$syn..item..Item$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hdc3c34f36729f4d9E"(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.cg)
          to label %bb.hy unwind label %bb.gz

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false)
  %i.je = invoke i32 @"_ZN11proc_macro2105_$LT$impl$u20$core..convert..From$LT$proc_macro2..TokenStream$GT$$u20$for$u20$proc_macro..TokenStream$GT$4from17h1ec701276b775e22E"(ptr nonnull align 8 %i.ch)
          to label %bb.hz unwind label %bb.gv

bb.hz:                                            ; preds = %bb.hy
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.je, ptr %i.jf, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.cp)
          to label %bb.ia unwind label %bb.gq

bb.ia:                                            ; preds = %bb.hz
  invoke void @"_ZN4core3ptr36drop_in_place$LT$syn..item..Item$GT$17h75d320acf9d82d8bE"(ptr nonnull align 8 %i.de)
          to label %bb.ib unwind label %bb.af

bb.ib:                                            ; preds = %bb.if, %.thread56, %bb.ia, %.thread58
  ret void

bb.ic:                                            ; preds = %.thread48, %bb.ig, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hk, %bb.gy, %bb.gu, %.body33
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

bb.id:                                            ; preds = %bb.ak
  invoke void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr nonnull sret([80 x i8]) align 8 %i.cq, i32 %i.eh, ptr nonnull align 1 @15, i64 57)
          to label %bb.ie unwind label %bb.gh

bb.ie:                                            ; preds = %bb.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.cq, i64 80, i1 false)
  br label %bb.gm

bb.if:                                            ; preds = %bb.gm
  %4 = trunc nuw i8 %.sroa.012.5 to i1
  br i1 %4, label %.thread56, label %bb.ib

.thread56:                                        ; preds = %bb.ai, %bb.if
  call void @"_ZN4core3ptr60drop_in_place$LT$routes_macros..request..RequestItemAttr$GT$17h14f74f16552cda9dE"(ptr nonnull align 8 %i.di)
  br label %bb.ib

bb.ig:                                            ; preds = %bb.ae
  invoke void @"_ZN4core3ptr60drop_in_place$LT$routes_macros..request..RequestItemAttr$GT$17h14f74f16552cda9dE"(ptr nonnull align 8 %i.di) #7
          to label %.thread unwind label %bb.ic

.thread58:                                        ; preds = %bb.ac
  call void @"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17h664ffa5071867ce1E"(ptr nonnull align 4 %i.dj)
  br label %bb.ib

.thread:                                          ; preds = %bb.ae, %bb.ig, %.thread48
  %.pn2846 = phi { ptr, i32 } [ %.pn26, %bb.ae ], [ %eh.lpad-body51, %.thread48 ], [ %.pn26, %bb.ig ]
  resume { ptr, i32 } %.pn2846

.thread48:                                        ; preds = %bb.u, %bb.z, %.thread53
  %eh.lpad-body51 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread53 ], [ %.pn14.i, %bb.z ], [ %.pn14.i, %bb.u ]
  invoke void @"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17h664ffa5071867ce1E"(ptr nonnull align 4 %i.dj) #7
          to label %.thread unwind label %bb.ic
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN13routes_macros7request11try_request28_$u7b$$u7b$closure$u7d$$u7d$17hbb72344b57ea7b0eE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readnone align 1 captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.c ]
  invoke void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h6d263a0827217537E"(ptr align 8 %2) #7
          to label %bb.s unwind label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN5quote9__private7push_lt17h869c2322f937d9e7E(ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.b) #7
          to label %bb.b unwind label %bb.r

bb.f:                                             ; preds = %bb.d
  invoke void @"_ZN60_$LT$syn..ty..Type$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hecacac996600b8b2E"(ptr align 8 %2, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.b, ptr nonnull align 1 @18, i64 2)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.b, ptr nonnull align 1 @9, i64 6)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5quote9__private11push_colon217h272f513f52b92060E(ptr nonnull align 8 %i.b)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.b, ptr nonnull align 1 @10, i64 11)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5quote9__private7push_gt17h3a5f9b4cfec0e5c5E(ptr nonnull align 8 %i.b)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5quote9__private11push_colon217h272f513f52b92060E(ptr nonnull align 8 %i.b)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.b, ptr nonnull align 1 @13, i64 11)
          to label %bb.n unwind label %bb.e

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5quote9__private10push_group17h629c0221a683a5d4E(ptr nonnull align 8 %i.b, i8 0, ptr nonnull align 8 %i.a)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5quote9__private9push_semi17ha9718f15c7e049a0E(ptr nonnull align 8 %i.b)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h6d263a0827217537E"(ptr align 8 %2)
  ret void

bb.r:                                             ; preds = %bb.e, %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

bb.s:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN13routes_macros7request12parse_struct28_$u7b$$u7b$closure$u7d$$u7d$17h3bc61c3c19ae736cE"(ptr sret([224 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN3syn3gen5clone62_$LT$impl$u20$core..clone..Clone$u20$for$u20$syn..ty..Type$GT$5clone17hc6d06565ea7cf750E"(ptr sret([224 x i8]) align 8 %0, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN13routes_macros7request13handle_derive17h75a60f7fe744866fE(ptr noalias nonnull align 8 %0, ptr nonnull align 8 %1, ptr nofree nonnull readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [256 x i8], align 8               ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [256 x i8], align 8               ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 2 uses
  %i.x = alloca [48 x i8], align 8                ; 2 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 2 uses
  %i.aa = alloca [48 x i8], align 8               ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 2 uses
  %i.ad = alloca [48 x i8], align 8               ; 2 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 2 uses
  %i.ag = alloca [48 x i8], align 8               ; 2 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [16 x i8], align 8               ; 3 uses
  %i.aj = tail call { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hacb2ae2ad6ef9e8fE"(ptr nonnull align 8 %1) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = tail call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17hcb061a85d58a13e8E"(ptr align 8 %i.ak, i64 %i.al) ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.am, 0
  %i.ao = extractvalue { ptr, ptr } %i.am, 1
  store ptr %i.an, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = call align 8 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h99b53d3449d9164eE"(ptr nonnull align 8 %i.ai) ; 5 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcea7df9b2008165aE"(ptr nonnull sret([24 x i8]) align 8 %i.ah)
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.ae)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.bl, %bb.be, %bb.ao, %bb.ac, %bb.v, %bb.l, %bb.e, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.ar, %bb.c ], [ %.pn14.pn, %bb.ao ], [ %i.bv, %bb.be ], [ %.pn.pn, %bb.bl ], [ %i.bl, %bb.ac ], [ %i.bh, %bb.v ], [ %i.at, %bb.l ], [ %i.as, %bb.e ]
  invoke void @"_ZN4core3ptr59drop_in_place$LT$alloc..vec..Vec$LT$syn..path..Path$GT$$GT$17h4906732ac820a6d9E"(ptr nonnull align 8 %i.ah) #7
          to label %bb.cc unwind label %bb.bi

bb.c:                                             ; preds = %bb.ca, %bb.bz, %bb.bc, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %_ZN13routes_macros7request4Uses17needs_deserialize17hd81d8932cdddfc9cE.exit.thread, %bb.z, %bb.y, %_ZN13routes_macros7request4Uses15needs_serialize17h838e62e51294b562E.exit.thread, %bb.p, %bb.o, %bb.j, %bb.i, %bb.h, %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.ae, ptr nonnull align 1 @22, i64 6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17hc254bf997e176bedE"(ptr nonnull align 8 %i.ae) #7
          to label %bb.b unwind label %bb.bi

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN5quote9__private11push_colon217h272f513f52b92060E(ptr nonnull align 8 %i.ae)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.ae, ptr nonnull align 1 @23, i64 6)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  invoke void @_ZN3syn11parse_quote5parse17h9f271c68ad9b1c5cE(ptr nonnull sret([48 x i8]) align 8 %i.ag, ptr nonnull align 8 %i.af, ptr nonnull align 8 @24)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3de9f8fc2e535c4dE"(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ag, ptr nonnull align 8 @25)
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr nonnull sret([32 x i8]) align 8 %i.ab)
          to label %bb.k unwind label %bb.c

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5quote9__private10push_ident17h8c0ebbdb8d9fef65E(ptr nonnull align 8 %i.ab, ptr nonnull align 1 @26, i64 6)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
end_hunk_1
begin_hunk_2_@_ZN13routes_macros7request19handle_named_fields17h9e6646722b5a6f04E:bb.a
          to label %bb.fa unwind label %.loopexit103

bb.fa:                                            ; preds = %bb.ez
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h4db3298e1b52f696E"(ptr nonnull align 8 %i.fb, ptr nonnull align 8 %i.i, ptr nonnull align 8 @174)
          to label %bb.eh unwind label %.loopexit103

bb.fb:                                            ; preds = %bb.ex
  store ptr %i.fi, ptr %i.a, align 8
  invoke void @_ZN5quote9__private10push_comma17hab11e583d58d9e45E(ptr nonnull align 8 %i.c)
          to label %.invoke432 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.fc:                                            ; preds = %bb.eh
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.bi)
          to label %bb.fd unwind label %.loopexit.split-lp124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fd:                                            ; preds = %bb.fc
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.bj)
          to label %bb.e unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread71:                                        ; preds = %bb.am, %bb.bz, %bb.cb, %bb.cg, %bb.ck, %bb.co, %bb.cu, %bb.dq, %bb.el, %bb.bb, %.loopexit.split-lp104, %.loopexit103
  %.sroa.026.0 = phi i8 [ 0, %bb.bb ], [ 0, %bb.bz ], [ 0, %bb.am ], [ %.sroa.026.2, %bb.el ], [ %.sroa.026.2, %bb.dq ], [ %.sroa.026.2, %bb.cu ], [ 1, %bb.cb ], [ 1, %bb.co ], [ 1, %bb.ck ], [ 1, %bb.cg ], [ %.sroa.026.1.ph, %.loopexit103 ], [ 0, %.loopexit.split-lp104 ]
  %.pn49 = phi { ptr, i32 } [ %.pn, %bb.bb ], [ %.pn47, %bb.bz ], [ %.pn47, %bb.am ], [ %.pn42.pn, %bb.el ], [ %.pn38.pn, %bb.dq ], [ %.pn34.pn, %bb.cu ], [ %i.dr, %bb.cb ], [ %i.dx, %bb.co ], [ %i.dw, %bb.ck ], [ %i.dv, %bb.cg ], [ %lpad.loopexit105, %.loopexit103 ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp104 ]
  %i.fj = load i64, ptr %i.bg, align 8
  %i.fk = icmp ugt i64 %i.fj, 40
  %cond = icmp eq i8 %.sroa.026.0, 0
  %or.cond62 = or i1 %cond, %i.fk
  br i1 %or.cond62, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fg, %.thread71
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.bh) #7
          to label %.loopexit.split-lp119 unwind label %bb.ao

bb.ff:                                            ; preds = %.thread71
  invoke void @"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h13cdf2dee538cff4E"(ptr nonnull align 8 %i.bg) #7
          to label %bb.fg unwind label %bb.ao

bb.fg:                                            ; preds = %bb.ff
  invoke void @"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$syn..expr..Expr$GT$$GT$17h13cdf2dee538cff4E"(ptr nonnull align 8 %i.bx) #7
          to label %bb.fe unwind label %bb.ao

bb.fh:                                            ; preds = %bb.m
  %i.fl = invoke align 8 ptr @_ZN3syn4path4Path9get_ident17h065765bfde55475fE(ptr align 8 %i.cq)
          to label %bb.fi unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %.not55 = icmp eq ptr %i.fl, null
  br i1 %.not55, label %.backedge.backedge, label %bb.fj

.backedge.backedge:                               ; preds = %bb.fi, %bb.fp
  br label %.backedge

bb.fj:                                            ; preds = %bb.fi
  store ptr %i.fl, ptr %i.bl, align 8
  %i.fm = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc755cea90726b1baE"(ptr nonnull align 8 %i.bl, ptr nonnull align 8 @144)
          to label %bb.fk unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.fm, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.fn = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc755cea90726b1baE"(ptr nonnull align 8 %i.bl, ptr nonnull align 8 @145)
          to label %bb.fn unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fm:                                            ; preds = %bb.fp, %bb.fn, %bb.fk
  %i.fo = load ptr, ptr %i.bl, align 8
  %i.fp = invoke i32 @_ZN11proc_macro25Ident4span17h745b1de6685fbc24E(ptr align 8 %i.fo)
          to label %bb.fq unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fn:                                            ; preds = %bb.fl
  br i1 %i.fn, label %bb.fm, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.fq = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc755cea90726b1baE"(ptr nonnull align 8 %i.bl, ptr nonnull align 8 @146)
          to label %bb.fp unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.fq, label %bb.fm, label %.backedge.backedge

bb.fq:                                            ; preds = %bb.fm
  invoke void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr nonnull sret([80 x i8]) align 8 %i.bk, i32 %i.fp, ptr nonnull align 1 @147, i64 72)
          to label %bb.fr unwind label %.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread76:                                        ; preds = %bb.au, %bb.v, %bb.r, %bb.fr
  invoke void @"_ZN4core3ptr69drop_in_place$LT$syn..punctuated..IterMut$LT$syn..data..Field$GT$$GT$17h4cdd7bee8c1e9b2fE"(ptr nonnull align 8 %i.bp)
          to label %bb.fs unwind label %bb.c

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.bk, i64 80, i1 false)
  invoke void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17h669f85d560821e03E"(ptr nonnull align 8 %i.bn)
          to label %.thread76 unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %.thread76
  call void @"_ZN4core3ptr57drop_in_place$LT$alloc..vec..Vec$LT$syn..ty..Type$GT$$GT$17hc0af4ba7d6198ad8E"(ptr nonnull align 8 %i.bq)
  br label %bb.j

.loopexit.split-lp91.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.backedge, %bb.m, %bb.fh, %bb.fj, %bb.fl, %bb.fo, %bb.n, %bb.g, %bb.fq, %bb.fm
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17h669f85d560821e03E"(ptr nonnull align 8 %i.bn) #7
          to label %.thread unwind label %bb.ao

bb.ft:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn60
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN13routes_macros7request19handle_named_fields28_$u7b$$u7b$closure$u7d$$u7d$17h271e83dc04028420E"(ptr sret([80 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17h23639df71d8c9d72E"(ptr align 8 %1)
  tail call void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr sret([80 x i8]) align 8 %0, i32 %i.a, ptr nonnull align 1 @176, i64 37)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN13routes_macros7request19handle_named_fields28_$u7b$$u7b$closure$u7d$$u7d$17h88a703b7a63a7fc1E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [648 x i8], align 8               ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [352 x i8], align 8               ; 4 uses
  %i.d = alloca [352 x i8], align 8               ; 4 uses
  %i.e = alloca [352 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [224 x i8], align 8               ; 4 uses
  %i.k = alloca [224 x i8], align 8               ; 7 uses
  %i.l = alloca [352 x i8], align 8               ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 2 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.34 = alloca [24 x i8], align 8           ; 3 uses
  %i.t = alloca [648 x i8], align 8               ; 4 uses
  %i.u = alloca [648 x i8], align 8               ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.v, align 8
  %i.w = tail call align 8 ptr @_ZN3syn4attr9Attribute4path17h8785c3561ec924ebE(ptr align 8 %1)
  %i.x = tail call zeroext i1 @_ZN3syn4path4Path8is_ident17hdfba19244cf3e6f6E(ptr align 8 %i.w, ptr nonnull align 1 @177, i64 7) ; 2 uses
  br i1 %i.x, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.y = call i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17h4d6a2a37bea3ae5aE"(ptr nonnull align 8 %i.v)
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8             ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ac, ptr %i.q, align 8, !noalias !21
  store ptr %i.ab, ptr %i.p, align 8, !noalias !21
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.o), !noalias !21
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.n)
          to label %bb.e unwind label %bb.d, !noalias !21

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn8.i = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn6.i, %bb.f ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.o) #7
          to label %common.resume unwind label %bb.ac

bb.d:                                             ; preds = %bb.aa, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.m)
          to label %bb.h unwind label %bb.g, !noalias !21

bb.f:                                             ; preds = %bb.y, %bb.g
  %.pn6.i = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn4.i, %bb.y ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.n) #7
          to label %bb.c unwind label %bb.ac

bb.g:                                             ; preds = %bb.w, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  store i64 43, ptr %i.l, align 8, !noalias !21
  invoke void @"_ZN3syn3gen5clone62_$LT$impl$u20$core..clone..Clone$u20$for$u20$syn..ty..Type$GT$5clone17hc6d06565ea7cf750E"(ptr nonnull sret([224 x i8]) align 8 %i.j, ptr align 8 %i.ab)
          to label %bb.k unwind label %bb.j, !noalias !21

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.al, %bb.l ] ; 2 uses
  %.sroa.0.0.i = phi i8 [ %.sroa.0.1.i, %bb.j ], [ %.sroa.0.2.i, %bb.l ]
  %2 = trunc nuw i8 %.sroa.0.0.i to i1
  br i1 %2, label %bb.ad, label %bb.y

bb.j:                                             ; preds = %bb.u, %bb.h
  %.sroa.0.1.i = phi i8 [ %.sroa.0.3.i, %bb.u ], [ 1, %bb.h ]
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.k, ptr noundef nonnull align 8 dereferenceable(224) %i.j, i64 224, i1 false), !noalias !21
  store ptr %i.l, ptr %i.g, align 8, !noalias !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.ag, align 8, !noalias !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.ah, align 8, !noalias !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.o, ptr %i.ai, align 8, !noalias !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.m, ptr %i.aj, align 8, !noalias !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.p, ptr %i.ak, align 8, !noalias !21
  invoke void @_ZN3syn4attr9Attribute17parse_nested_meta17h7911194d4e143176E(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr align 8 %i.ac, ptr nonnull align 8 %i.g)
          to label %bb.m unwind label %bb.l, !noalias !21

bb.l:                                             ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.k
  %.sroa.0.2.i = phi i8 [ 1, %bb.o ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.p ], [ 1, %bb.m ], [ 1, %bb.k ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$syn..ty..Type$GT$$GT$17h9b30ffd1bed52713E"(ptr nonnull align 8 %i.k) #7
          to label %bb.i unwind label %bb.ac

bb.m:                                             ; preds = %bb.k
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h44611f307b547730E"(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.n unwind label %bb.l, !noalias !21

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.i, align 8, !noalias !21
  %.not.i = icmp eq i64 %i.am, -9223372036854775808
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !21
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc2079ae87f30d807E"(ptr nonnull sret([648 x i8]) align 8 %i.t, ptr nonnull align 8 %i.f, ptr nonnull align 8 @47)
          to label %bb.u unwind label %bb.l

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.c, ptr noundef nonnull align 8 dereferenceable(352) %i.l, i64 352, i1 false), !noalias !21
  invoke void @"_ZN4core6option15Option$LT$T$GT$10ok_or_else17h4cab5e1a170755dfE"(ptr nonnull sret([352 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.q)
          to label %bb.q unwind label %bb.l, !noalias !21

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hcbc1588830b3e322E"(ptr nonnull sret([352 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.r unwind label %bb.l, !noalias !21

bb.r:                                             ; preds = %bb.q
  %i.an = load i64, ptr %i.e, align 8, !noalias !21
  %i.ao = icmp eq i64 %i.an, 43
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i64 80, i1 false), !noalias !21
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h16d1b59123587965E"(ptr nonnull sret([648 x i8]) align 8 %i.t, ptr nonnull align 8 %i.b, ptr nonnull align 8 @46)
          to label %bb.u unwind label %bb.l

bb.t:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.aq, ptr noundef nonnull align 8 dereferenceable(352) %i.e, i64 352, i1 false), !noalias !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(224) %i.k, i64 224, i1 false), !noalias !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %i.t, ptr noundef nonnull align 8 dereferenceable(648) %i.a, i64 648, i1 false)
  br label %_ZN13routes_macros7request16RequestFieldAttr9from_attr17h65fa446e1dcb490aE.exit

bb.u:                                             ; preds = %bb.s, %bb.o
  %.sroa.0.3.i = phi i8 [ 1, %bb.o ], [ 0, %bb.s ] ; 2 uses
  invoke void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$syn..ty..Type$GT$$GT$17h9b30ffd1bed52713E"(ptr nonnull align 8 %i.k)
          to label %bb.v unwind label %bb.j

bb.v:                                             ; preds = %bb.u
  %3 = trunc nuw i8 %.sroa.0.3.i to i1
  br i1 %3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.m)
          to label %bb.aa unwind label %bb.g

bb.x:                                             ; preds = %bb.v
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$routes_macros..request..DefaultOrRequired$GT$$GT$17hf71178b0a32ff0f9E"(ptr nonnull align 8 %i.l)
          to label %bb.w unwind label %bb.z

bb.y:                                             ; preds = %bb.ad, %bb.z, %bb.i
  %.pn4.i = phi { ptr, i32 } [ %i.au, %bb.z ], [ %.pn.i, %bb.ad ], [ %.pn.i, %bb.i ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.m) #7
          to label %bb.f unwind label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.w
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.n)
          to label %bb.ab unwind label %bb.d

bb.ab:                                            ; preds = %bb.aa
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.o)
  br label %_ZN13routes_macros7request16RequestFieldAttr9from_attr17h65fa446e1dcb490aE.exit

bb.ac:                                            ; preds = %bb.ad, %bb.y, %bb.l, %bb.f, %bb.c
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

bb.ad:                                            ; preds = %bb.i
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$routes_macros..request..DefaultOrRequired$GT$$GT$17hf71178b0a32ff0f9E"(ptr nonnull align 8 %i.l) #7
          to label %bb.y unwind label %bb.ac

common.resume:                                    ; preds = %bb.af, %bb.ai, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %.pn8.i, %bb.c ], [ %i.az, %bb.ai ], [ %i.ax, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_ZN13routes_macros7request16RequestFieldAttr9from_attr17h65fa446e1dcb490aE.exit: ; preds = %bb.t, %bb.ab
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @"_ZN4core6option15Option$LT$T$GT$7replace17hab9d4d06eb2fafe2E"(ptr nonnull sret([648 x i8]) align 8 %i.u, ptr align 8 %i.z, ptr nonnull align 8 %i.t)
  %i.aw = invoke zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17h7f5fc590dbb7b90bE"(ptr nonnull align 8 %i.u)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.ag, %bb.aj, %bb.a
  %.sroa.0.0 = xor i1 %i.x, true
  ret i1 %.sroa.0.0

bb.af:                                            ; preds = %_ZN13routes_macros7request16RequestFieldAttr9from_attr17h65fa446e1dcb490aE.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17h669f85d560821e03E"(ptr nonnull align 8 %i.u) #7
          to label %common.resume unwind label %bb.ak

bb.ag:                                            ; preds = %_ZN13routes_macros7request16RequestFieldAttr9from_attr17h65fa446e1dcb490aE.exit
  call void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17h669f85d560821e03E"(ptr nonnull align 8 %i.u)
  br i1 %i.aw, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  call void @"_ZN85_$LT$proc_macro2..Span$u20$as$u20$proc_macro2_diagnostics..ext..SpanDiagnosticExt$GT$5error17h4a8e935edf27bce0E"(ptr nonnull sret([80 x i8]) align 8 %i.r, i32 %i.y, ptr nonnull align 1 @178, i64 30)
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2b4d91e26ab2a7b1E"(ptr nonnull sret([24 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r, ptr nonnull align 8 @179)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ay = load ptr, ptr %0, align 8
  invoke void @"_ZN4core3ptr137drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$routes_macros..request..RequestFieldAttr$C$syn..error..Error$GT$$GT$$GT$17h669f85d560821e03E"(ptr align 8 %i.ay)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  store i64 18, ptr %i.ba, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, i64 24, i1 false)
  br label %common.resume

bb.aj:                                            ; preds = %bb.ah
  %i.bb = load ptr, ptr %0, align 8               ; 2 uses
  store i64 18, ptr %i.bb, align 8
  %.sroa.34.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, i64 24, i1 false)
  br label %bb.ae

bb.ak:                                            ; preds = %bb.af
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN13routes_macros7request20handle_variant_attrs28_$u7b$$u7b$closure$u7d$$u7d$17h1f4bd763dae938bbE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [80 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.34 = alloca [24 x i8], align 8           ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 3 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.m, align 8
  %i.n = tail call align 8 ptr @_ZN3syn4attr9Attribute4path17h8785c3561ec924ebE(ptr align 8 %1)
  %i.o = tail call zeroext i1 @_ZN3syn4path4Path8is_ident17hdfba19244cf3e6f6E(ptr align 8 %i.n, ptr nonnull align 1 @177, i64 7) ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.p = call i32 @"_ZN43_$LT$T$u20$as$u20$syn..spanned..Spanned$GT$4span17h4d6a2a37bea3ae5aE"(ptr nonnull align 8 %i.m)
  %i.q = load ptr, ptr %0, align 8
  %i.r = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.h), !noalias !24
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.g)
          to label %bb.e unwind label %bb.d, !noalias !24

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn2.i = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn.i, %bb.f ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.h) #7
          to label %common.resume unwind label %bb.q

bb.d:                                             ; preds = %bb.o, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hcaf4e5b818f14287E"(ptr nonnull sret([24 x i8]) align 8 %i.f)
          to label %bb.h unwind label %bb.g, !noalias !24

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.w, %bb.i ]
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.g) #7
          to label %bb.c unwind label %bb.q

bb.g:                                             ; preds = %bb.n, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  store ptr %i.g, ptr %i.c, align 8, !noalias !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.u, align 8, !noalias !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.v, align 8, !noalias !24
  invoke void @_ZN3syn4attr9Attribute17parse_nested_meta17h924938f5bd0ee91cE(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 8 %i.r, ptr nonnull align 8 %i.c)
          to label %bb.j unwind label %bb.i, !noalias !24

bb.i:                                             ; preds = %bb.l, %bb.j, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.f) #7
          to label %bb.f unwind label %bb.q

bb.j:                                             ; preds = %bb.h
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h44611f307b547730E"(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.k unwind label %bb.i, !noalias !24

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %i.e, align 8, !noalias !24
  %.not.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !24
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hd737f8567d68a4cdE"(ptr nonnull sret([72 x i8]) align 8 %i.k, ptr nonnull align 8 %i.b, ptr nonnull align 8 @148)
          to label %bb.n unwind label %bb.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %_ZN13routes_macros7request18RequestVariantAttr9from_attr17hc225413b40df83f0E.exit

bb.n:                                             ; preds = %bb.l
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.f)
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.g)
          to label %bb.p unwind label %bb.d

bb.p:                                             ; preds = %bb.o
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17ha04ccdda687da560E"(ptr nonnull align 8 %i.h)
  br label %_ZN13routes_macros7request18RequestVariantAttr9from_attr17hc225413b40df83f0E.exit

bb.q:                                             ; preds = %bb.i, %bb.f, %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #8
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %.pn2.i, %bb.c ], [ %i.ae, %bb.v ], [ %i.ac, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_ZN13routes_macros7request18RequestVariantAttr9from_attr17hc225413b40df83f0E.exit: ; preds = %bb.m, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_2
