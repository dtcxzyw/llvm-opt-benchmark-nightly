Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.1?download=true
inline.NumInlined: 62
inline.NumDeleted: 49
begin_hunk_0_@_RNvCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry:bb.a
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [40 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [32 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [352 x i8], align 8              ; 9 uses
  %i.av = alloca [96 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 4 uses
  %i.ax = alloca [352 x i8], align 8              ; 14 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [96 x i8], align 8               ; 6 uses
  %i.bd = alloca [96 x i8], align 8               ; 6 uses
  %i.be = alloca [4 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store i32 %1, ptr %i.be, align 4
  invoke void @_RINvCs6bAnw1I7Lci_3syn5parseNtNtCsaC8UfsfJL0H_18foundations_macros19with_test_telemetry4ArgsEBu_(ptr nonnull sret([96 x i8]) align 8 %i.bc, i32 %0)
          to label %bb.b unwind label %.thread18.i

.thread18.i:                                      ; preds = %bb.gg, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread13.i

bb.b:                                             ; preds = %bb.a
  %i.bf = load i64, ptr %i.bc, align 8
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  invoke void @_RNvMNtCs6bAnw1I7Lci_3syn5errorNtB2_5Error16to_compile_error(ptr nonnull sret([32 x i8]) align 8 %i.ba, ptr nonnull align 8 %i.bb)
          to label %bb.gf unwind label %bb.ge

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bd, ptr noundef nonnull align 8 dereferenceable(96) %i.bc, i64 96, i1 false)
  %i.bi = load i32, ptr %i.be, align 4
  invoke void @_RINvCs6bAnw1I7Lci_3syn5parseNtNtB2_4item6ItemFnECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([352 x i8]) align 8 %i.ax, i32 %i.bi)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtCse4VeaA6Ikg_11proc_macro211TokenStreamINtB5_4IntoNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4intoCsaC8UfsfJL0H_18foundations_macros.exit9.i, %bb.fy, %bb.fx, %bb.fw, %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.f:                                             ; preds = %bb.d
  %i.bk = load i64, ptr %i.ax, align 8
  %i.bl = icmp eq i64 %i.bk, 2
  br i1 %i.bl, label %bb.fw, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.au, ptr noundef nonnull align 8 dereferenceable(352) %i.ax, i64 352, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %i.bd, i64 96, i1 false)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.br = load <2 x i32>, ptr %i.bq, align 8, !noalias !31
  store <2 x i32> %i.br, ptr %i.ap, align 8, !noalias !31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.bt = load <2 x i32>, ptr %i.bs, align 8, !noalias !31
  store <2 x i32> %i.bt, ptr %i.ao, align 8, !noalias !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.bv = load <2 x i32>, ptr %i.bu, align 8, !noalias !31
  store <2 x i32> %i.bv, ptr %i.an, align 8, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 344
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !31
  store ptr %i.ca, ptr %i.ai, align 8, !noalias !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  invoke void @_RNvXs21_NtNtCs6bAnw1I7Lci_3syn3gen5cloneNtNtBa_4path4PathNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.cb)
          to label %bb.j unwind label %bb.i, !noalias !31

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn12.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.pn.i.i, %bb.k ], [ %i.cc, %bb.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockEEB1e_(ptr nonnull align 8 %i.ai) #27
          to label %bb.er unwind label %bb.bn, !noalias !31

bb.i:                                             ; preds = %bb.ep, %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvXs21_NtNtCs6bAnw1I7Lci_3syn3gen5cloneNtNtBa_4path4PathNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr nonnull sret([48 x i8]) align 8 %i.ag, ptr nonnull align 8 %i.av)
          to label %bb.m unwind label %bb.l, !noalias !31

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn12.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn.i.i, %bb.n ], [ %i.cd, %bb.l ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.ah) #27
          to label %bb.h unwind label %bb.bn, !noalias !31

bb.l:                                             ; preds = %bb.eo, %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtCse4VeaA6Ikg_11proc_macro25IdentECs6bAnw1I7Lci_3syn(ptr nonnull sret([16 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.al)
          to label %bb.p unwind label %bb.o, !noalias !31

bb.n:                                             ; preds = %bb.v, %bb.r, %bb.o
  %.pn12.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.pn.i.i, %bb.v ], [ %i.ce, %bb.o ], [ %i.cl, %bb.r ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn4path4PathEBF_(ptr nonnull align 8 %i.ag) #27
          to label %bb.k unwind label %bb.bn, !noalias !31

bb.o:                                             ; preds = %bb.en, %bb.q, %bb.p, %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !31
  %i.cf = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj5_Kj1_ECse4VeaA6Ikg_11proc_macro2(ptr nonnull @8, ptr nonnull align 8 %i.ac)
          to label %bb.q unwind label %bb.o, !noalias !31 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  store ptr %i.cg, ptr %i.a, align 8, !noalias !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !noalias !31
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  %2 = trunc i64 %i.cj to i1
  %i.ck = lshr i64 %i.cj, 1
  %.sroa.0.0.i.i.i = select i1 %2, ptr %i.cg, ptr null
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECse4VeaA6Ikg_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.ad, ptr %.sroa.0.0.i.i.i, i64 %i.ck, ptr nonnull align 8 %i.a) #26
          to label %bb.s unwind label %bb.o, !noalias !31

bb.r:                                             ; preds = %bb.t, %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.ae) #27
          to label %bb.n unwind label %bb.bn, !noalias !31

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noalias !31
  %i.cq = invoke i32 @_RNvMsx_Cse4VeaA6Ikg_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.al)
          to label %bb.t unwind label %bb.r, !noalias !31

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMsx_Cse4VeaA6Ikg_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr %i.cn, i64 %i.cp, i32 %i.cq, ptr nonnull align 8 @9)
          to label %bb.u unwind label %bb.r, !noalias !31

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.ae)
          to label %bb.x unwind label %bb.w, !noalias !31

bb.v:                                             ; preds = %bb.at, %bb.z, %bb.w
  %.pn12.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.pn.i.i, %bb.at ], [ %i.cr, %bb.w ], [ %.pn.i.i, %bb.z ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.af) #27
          to label %bb.n unwind label %bb.bn, !noalias !31

bb.w:                                             ; preds = %bb.em, %bb.x, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.z)
          to label %bb.y unwind label %bb.w, !noalias !31

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXNtNtCs6bAnw1I7Lci_3syn11restriction8printingNtB4_10VisibilityNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.z)
          to label %bb.ab unwind label %bb.aa, !noalias !31

bb.z:                                             ; preds = %bb.am, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.cs, %bb.aa ], [ %i.ct, %bb.am ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.z) #27
          to label %bb.v unwind label %bb.bn, !noalias !31

bb.aa:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  invoke void @_RNvXs4_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn5token5ConstENtB5_8ToTokens9to_tokensB1h_(ptr nonnull align 4 %i.an, ptr nonnull align 8 %i.z)
          to label %bb.ac unwind label %bb.aa, !noalias !31

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXs4_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn5token6UnsafeENtB5_8ToTokens9to_tokensB1h_(ptr nonnull align 4 %i.ap, ptr nonnull align 8 %i.z)
          to label %bb.ad unwind label %bb.aa, !noalias !31

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXs4_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn5token5AsyncENtB5_8ToTokens9to_tokensB1h_(ptr nonnull align 4 %i.ao, ptr nonnull align 8 %i.z)
          to label %bb.ae unwind label %bb.aa, !noalias !31

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXs4_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty3AbiENtB5_8ToTokens9to_tokensB1h_(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.z)
          to label %bb.af unwind label %bb.aa, !noalias !31

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.z, ptr nonnull @10, i64 2)
          to label %bb.ag unwind label %bb.aa, !noalias !31

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsq_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.z)
          to label %bb.ah unwind label %bb.aa, !noalias !31

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private7push_lt(ptr nonnull align 8 %i.z)
          to label %bb.ai unwind label %bb.aa, !noalias !31

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXNtNtCs6bAnw1I7Lci_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics12GenericParamNtNtB6_5token5CommaENtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokensB6_(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.z)
          to label %bb.aj unwind label %bb.aa, !noalias !31

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private7push_gt(ptr nonnull align 8 %i.z)
          to label %bb.ak unwind label %bb.aa, !noalias !31

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.x)
          to label %bb.al unwind label %bb.aa, !noalias !31

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXNtNtCs6bAnw1I7Lci_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_4item5FnArgNtNtB6_5token5CommaENtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokensB6_(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.x)
          to label %bb.an unwind label %bb.am, !noalias !31

bb.am:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.x) #27
          to label %bb.z unwind label %bb.bn, !noalias !31

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !31
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.z, i8 0, ptr nonnull align 8 %i.y)
          to label %bb.ao unwind label %bb.aa, !noalias !31

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXsc_NtNtCs6bAnw1I7Lci_3syn2ty8printingNtB7_10ReturnTypeNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.z)
          to label %bb.ap unwind label %bb.aa, !noalias !31

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXs4_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs6bAnw1I7Lci_3syn8generics11WhereClauseENtB5_8ToTokens9to_tokensB1h_(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.z)
          to label %bb.aq unwind label %bb.aa, !noalias !31

bb.aq:                                            ; preds = %bb.ap
  %i.cu = load ptr, ptr %i.ai, align 8, !noalias !31
  invoke void @_RNvXNtNtCs6bAnw1I7Lci_3syn4stmt8printingNtB4_5BlockNtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.cu, ptr nonnull align 8 %i.z)
          to label %_RNvXs1_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockENtB5_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros.exit.i.i unwind label %bb.aa, !noalias !31

_RNvXs1_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockENtB5_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros.exit.i.i: ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !31
  %i.cv = load i32, ptr %i.ao, align 8, !noalias !31
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_RNvXs1_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockENtB5_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros.exit.i.i
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.v)
          to label %bb.bo unwind label %bb.au, !noalias !31

bb.as:                                            ; preds = %_RNvXs1_NtCsk5uxfcyCLQt_5quote9to_tokensINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn4stmt5BlockENtB5_8ToTokens9to_tokensCsaC8UfsfJL0H_18foundations_macros.exit.i.i
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %bb.av unwind label %bb.au, !noalias !31

bb.at:                                            ; preds = %bb.cs, %bb.bp, %bb.aw, %bb.au
  %.pn12.pn.pn.i.i = phi { ptr, i32 } [ %.pn12.pn.i.i, %bb.cs ], [ %i.cx, %bb.au ], [ %.pn10.i.i, %bb.bp ], [ %.pn4.i.i, %bb.aw ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.aa) #27
          to label %bb.v unwind label %bb.bn, !noalias !31

bb.au:                                            ; preds = %bb.el, %bb.as, %bb.ar
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.n, ptr nonnull @11, i64 3)
          to label %bb.ay unwind label %bb.ax, !noalias !31

bb.aw:                                            ; preds = %bb.bj, %bb.ax
  %.pn4.i.i = phi { ptr, i32 } [ %i.cy, %bb.ax ], [ %i.cz, %bb.bj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.n) #27
          to label %bb.at unwind label %bb.bn, !noalias !31

bb.ax:                                            ; preds = %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.av
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %bb.av
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.n, ptr nonnull @12, i64 7)
          to label %bb.az unwind label %bb.ax, !noalias !31

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private7push_eq(ptr nonnull align 8 %i.n)
          to label %bb.ba unwind label %bb.ax, !noalias !31

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.n, ptr nonnull @13, i64 5)
          to label %bb.bb unwind label %bb.ax, !noalias !31

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private8push_dot(ptr nonnull align 8 %i.n)
          to label %bb.bc unwind label %bb.ax, !noalias !31

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.n, ptr nonnull @14, i64 5)
          to label %bb.bd unwind label %bb.ax, !noalias !31

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.m)
          to label %bb.be unwind label %bb.ax, !noalias !31

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_group(ptr nonnull align 8 %i.n, i8 0, ptr nonnull align 8 %i.m)
          to label %bb.bf unwind label %bb.ax, !noalias !31

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private9push_semi(ptr nonnull align 8 %i.n)
          to label %bb.bg unwind label %bb.ax, !noalias !31

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvXsq_NtCsk5uxfcyCLQt_5quote9to_tokensNtCse4VeaA6Ikg_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.n)
          to label %bb.bh unwind label %bb.ax, !noalias !31

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.k)
          to label %bb.bi unwind label %bb.ax, !noalias !31
end_hunk_0
begin_hunk_1_@_RNvMNtCs3oUPovFnLWP_4core5sliceSTdNtCse4VeaA6Ikg_11proc_macro24SpanE4iterCsaC8UfsfJL0H_18foundations_macros:bb.a
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTdNtCse4VeaA6Ikg_11proc_macro24SpanEE3newCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0, i64 %1) #26
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionIBv_INtNtNtCsje5z0uo7eGy_12darling_core4util9over_ride8OverrideNtNtCs6bAnw1I7Lci_3syn4path4PathEEE6expectCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE4takeB1k_(ptr nofree align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE7is_noneB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldEE7is_someB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE4takeB1k_(ptr nofree align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE6as_refB1k_(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE7is_noneB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgEE7is_someB1k_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs6bAnw1I7Lci_3syn4attr9AttributeE7is_someCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs6bAnw1I7Lci_3syn4expr10ExprStructE7is_someCsaC8UfsfJL0H_18foundations_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ne i64 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsje5z0uo7eGy_12darling_core4util4flag4FlagE6expectCsaC8UfsfJL0H_18foundations_macros(i32 %0, i32 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtCse4VeaA6Ikg_11proc_macro25IdentE6expectCsaC8UfsfJL0H_18foundations_macros(ptr nofree readnone returned align 8 captures(address_is_null, ret: address, provenance) %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %1, i64 %2, ptr align 8 %3) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionbE9unwrap_orCsaC8UfsfJL0H_18foundations_macros(i8 %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i8 %0, 2
  %i.a = trunc nuw i8 %0 to i1
  %.sroa.02.0 = select i1 %.not, i1 %1, i1 %i.a
  ret i1 %.sroa.02.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs6bAnw1I7Lci_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtB4_4expr10FieldValueNtNtB4_5token5CommaEE3newCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs6bAnw1I7Lci_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtB4_5token5CommaEE3newB1g_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs6bAnw1I7Lci_3syn5dropsINtB2_6NoDropINtNtB4_10punctuated11PrivateIterNtNtCsaC8UfsfJL0H_18foundations_macros7metrics5FnArgNtNtB4_5token5CommaEE3newB1g_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtCsje5z0uo7eGy_12darling_core4util9over_rideINtB2_8OverrideNtNtCs6bAnw1I7Lci_3syn4path4PathE8explicitCsaC8UfsfJL0H_18foundations_macros(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaC8UfsfJL0H_18foundations_macros(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp uge i64 %i.a, %0
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %., 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %i.a, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsaC8UfsfJL0H_18foundations_macros(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = trunc i64 %i.c to i1
  %i.d = lshr i64 %i.c, 1
  %.sroa.0.0 = select i1 %3, ptr %1, ptr null
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECse4VeaA6Ikg_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %i.d, ptr nonnull align 8 %i.a) #26
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninitCsaC8UfsfJL0H_18foundations_macros(i64 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsaC8UfsfJL0H_18foundations_macros(i64 %0, i64 %1, i1 zeroext false) #26
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %0, i64 %1) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs3oUPovFnLWP_4core10intrinsics9cold_pathCsaC8UfsfJL0H_18foundations_macros() unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = load ptr, ptr %1, align 8
  call void @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtB4_5token5CommaE16parse_terminatedBY_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 8 %i.g)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1D_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c) #26
  %i.h = load i64, ptr %i.d, align 8
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2q_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @24) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @_RNvXs8_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterB11_(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.b)
  call void @_RINvYINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBL_EEBT_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common33parse_optional_trailing_meta_list(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call zeroext i1 @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %i.k)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsq_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs3oUPovFnLWP_4core7default7Default7defaultCsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([24 x i8]) align 8 %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr align 8 %i.n)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i) #26
  %i.o = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list.exit, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2q_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @25) #26
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = load ptr, ptr %1, align 8
  call void @_RNvMNtCs6bAnw1I7Lci_3syn10punctuatedINtB2_10PunctuatedNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtB4_5token5CommaE16parse_terminatedBY_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 8 %i.p)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtBP_5token5CommaENtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1D_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c) #26
  %i.q = load i64, ptr %i.d, align 8
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2q_EE13from_residualCsaC8UfsfJL0H_18foundations_macros(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @24) #26
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @_RNvXs8_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_10PunctuatedNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterB11_(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.b)
  call void @_RINvYINtNtCs6bAnw1I7Lci_3syn10punctuated8IntoIterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBL_EEBT_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list.exit

_RNvNtCsaC8UfsfJL0H_18foundations_macros6common15parse_meta_list.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookupCsaC8UfsfJL0H_18foundations_macros(i32 %0) unnamed_addr #9 {
bb.a:
  %i.a = lshr i32 %0, 8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.d
    i32 22, label %bb.b
    i32 32, label %bb.f
    i32 48, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5760
  %i.c = zext i1 %i.b to i8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %0, 12288
  %i.e = zext i1 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %0, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.c ], [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.o, %bb.f ], [ 0, %bb.a ]
  %i.j = trunc i8 %.sroa.0.0 to i1
  ret i1 %i.j

bb.f:                                             ; preds = %bb.a
  %i.k = and i32 %0, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = lshr i8 %i.n, 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCs6bAnw1I7Lci_3syn7spannedRNtNtB4_4attr4MetaNtB2_7Spanned4spanCsaC8UfsfJL0H_18foundations_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  call void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !37
  invoke void @_RNvXNtCsk5uxfcyCLQt_5quote9to_tokensRNtNtCs6bAnw1I7Lci_3syn4attr4MetaNtB2_8ToTokens9to_tokensCsje5z0uo7eGy_12darling_core(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCsk5uxfcyCLQt_5quote7spannedRNtNtCs6bAnw1I7Lci_3syn4attr4MetaNtB5_7Spanned6___spanCsaC8UfsfJL0H_18foundations_macros.exit unwind label %bb.b, !noalias !37

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.a) #27
          to label %bb.d unwind label %bb.c, !noalias !37

bb.c:                                             ; preds = %bb.b
end_hunk_1
