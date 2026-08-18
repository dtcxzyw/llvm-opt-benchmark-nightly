inline.NumInlined: 153
inline.NumDeleted: 114
begin_hunk_0_@_RINvNtCsl1mHGn7pXMx_12convert_case8boundary5splitRNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive:bb.a
bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.048.088, i64 noundef range(i64 0, 576460752303423488) %.val18, i64 noundef range(i64 0, 576460752303423488) %.val18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %.val17 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %i.bm = sub nuw nsw i64 %.val18, %.sroa.048.088
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.val17, i64 %.sroa.048.088
  %i.bo = invoke noundef zeroext i1 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary7matches(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bn, i64 noundef %i.bm)
          to label %bb.z unwind label %.loopexit70

bb.z:                                             ; preds = %bb.y
  br i1 %i.bo, label %bb.aa, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

bb.aa:                                            ; preds = %bb.z
  %.val21 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val22 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %i.bp = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add i64 %i.bp, %.sroa.048.088           ; 2 uses
  %.not = icmp ult i64 %i.bq, %.val22
  br i1 %.not, label %.else45, label %bb.ac

.else45:                                          ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %i.bq
  %.else.val46 = load i64, ptr %i.br, align 8, !noundef !17
  br label %bb.ac

bb.ac:                                            ; preds = %.else45, %bb.ab
  %i.bs = phi i64 [ %i.al, %bb.ab ], [ %.else.val46, %.else45 ] ; 11 uses
  %.val19 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val20 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %i.bt = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %i.bu = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary3len(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.bv = add i64 %i.bt, %.sroa.048.088
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %.not69 = icmp ult i64 %i.bw, %.val20
  br i1 %.not69, label %.else, label %.cont

.else:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.bw
  %.else.val = load i64, ptr %i.bx, align 8, !noundef !17
  br label %.cont

.cont:                                            ; preds = %bb.ae, %.else
  %i.by = phi i64 [ %i.al, %bb.ae ], [ %.else.val, %.else ] ; 2 uses
  %.not.i.i.i38 = icmp ugt i64 %.sroa.0.0.ph91, %i.bs
  br i1 %.not.i.i.i38, label %.invoke, label %bb.af

bb.af:                                            ; preds = %.cont
  %i.bz = icmp eq i64 %.sroa.0.0.ph91, 0
  br i1 %i.bz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not5.i.i.i = icmp ult i64 %.sroa.0.0.ph91, %.val1.i
  br i1 %.not5.i.i.i, label %bb.ai, label %.split.i.i.i39

bb.ah:                                            ; preds = %bb.ai, %.split.i.i.i39, %bb.af
  %i.ca = icmp eq i64 %i.bs, 0
  br i1 %i.ca, label %bb.al, label %bb.aj

.split.i.i.i39:                                   ; preds = %bb.ag
  %i.cb = icmp eq i64 %.sroa.0.0.ph91, %.val1.i
  br i1 %i.cb, label %bb.ah, label %.invoke

bb.ai:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph91
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !123, !noundef !17
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.ah, label %.invoke

bb.aj:                                            ; preds = %bb.ah
  %.not6.i.i.i = icmp ult i64 %i.bs, %.val1.i
  br i1 %.not6.i.i.i, label %bb.ak, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.aj
  %i.cf = icmp eq i64 %i.bs, %.val1.i
  br i1 %i.cf, label %bb.al, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bs
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !123, !noundef !17
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.al, label %.invoke

.invoke:                                          ; preds = %.cont, %.split.i.i.i39, %bb.ai, %.split7.i.i.i, %bb.ak, %.split.i.i.i, %bb.j
  %i.cj = phi i64 [ %.sroa.0.0.ph.lcssa87, %.split.i.i.i ], [ %.sroa.0.0.ph.lcssa87, %bb.j ], [ %.sroa.0.0.ph91, %bb.ak ], [ %.sroa.0.0.ph91, %.split7.i.i.i ], [ %.sroa.0.0.ph91, %bb.ai ], [ %.sroa.0.0.ph91, %.split.i.i.i39 ], [ %.sroa.0.0.ph91, %.cont ]
  %i.ck = phi i64 [ %.val1.i, %.split.i.i.i ], [ %.val1.i, %bb.j ], [ %i.bs, %bb.ak ], [ %i.bs, %.split7.i.i.i ], [ %i.bs, %bb.ai ], [ %i.bs, %.split.i.i.i39 ], [ %i.bs, %.cont ]
  %i.cl = phi ptr [ @4, %.split.i.i.i ], [ @4, %bb.j ], [ @6, %bb.ak ], [ @6, %.split7.i.i.i ], [ @6, %bb.ai ], [ @6, %.split.i.i.i39 ], [ @6, %.cont ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %i.cj, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl) #15
          to label %.cont138 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont138:                                         ; preds = %.invoke
  unreachable

bb.al:                                            ; preds = %bb.ak, %.split7.i.i.i, %bb.ah
  %i.cm = sub nuw i64 %i.bs, %.sroa.0.0.ph91
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph91
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !130, !noalias !135, !noundef !17 ; 3 uses
  %i.cp = load i64, ptr %i.l, align 8, !range !109, !alias.scope !130, !noalias !135, !noundef !17
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.am, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42 unwind label %.loopexit.split-lp.loopexit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42: ; preds = %bb.am, %bb.al
  %i.cr = load ptr, ptr %i.p, align 8, !alias.scope !130, !noalias !135, !nonnull !17, !noundef !17
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.co ; 2 uses
  store ptr %i.cn, ptr %i.cs, align 8, !noalias !135
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cm, ptr %i.ct, align 8
  %i.cu = add i64 %i.co, 1
  store i64 %i.cu, ptr %i.q, align 8, !alias.scope !130, !noalias !135
  %i.cv = icmp ult i64 %i.bj, %.val12
  br i1 %i.cv, label %.lr.ph, label %.outer._crit_edge

bb.an:                                            ; preds = %bb.ao, %.body, %.loopexit.split-lp
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

.body31.thread:                                   ; preds = %bb.s, %bb.ao, %bb.d
  %.pn.pn56 = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %.pn.pn57, %bb.ao ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %.pn.pn56

bb.ao:                                            ; preds = %.body31.thread60, %bb.d
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.thr_comm, %.body31.thread60 ], [ %.pn, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.l) #17
          to label %.body31.thread unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [80 x i8], align 8                ; 9 uses
  %i.n = alloca [80 x i8], align 8                ; 13 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !143, !noalias !138
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.619.i.sroa.7.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.619.i.sroa.8.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.635.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.619.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !143, !noalias !138
  br label %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i

_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %bb.a
  %4 = phi ptr [ %.promoted.i, %bb.a ], [ %i.ad, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 4 uses
  %.sroa.8.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.75.0.i = phi ptr [ undef, %bb.a ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.5.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %i.ac = icmp eq ptr %4, %.pre.i
  br i1 %i.ac, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !alias.scope !143, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !152
  %i.ae = load ptr, ptr %4, align 8, !alias.scope !155, !noalias !156, !nonnull !17, !align !70, !noundef !17 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ag = load i8, ptr %i.af, align 8, !range !157, !noalias !152, !noundef !17
  %.not.i.i.i = icmp eq i8 %i.ag, 3
  br i1 %.not.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  store i64 0, ptr %i.c, align 8, !noalias !158
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !158
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !158
  store i32 1610612768, ptr %i.t, align 8, !noalias !158
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !158
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !158
  store ptr %i.c, ptr %i.b, align 8, !noalias !158
  store ptr @12, ptr %i.u, align 8, !noalias !158
  %i.ai = invoke noundef zeroext i1 @_RNvXsE_CsbjGuDcEILED_11proc_macro2NtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i, !noalias !162

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %common.resume.i.i unwind label %bb.g, !noalias !162

bb.e:                                             ; preds = %bb.c
  br i1 %i.ai, label %bb.f, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, !prof !122

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #19
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !162

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !162
  unreachable

common.resume.i.i:                                ; preds = %.body.i2.i.i, %bb.bm, %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i2.i.i ], [ %i.ca, %bb.bm ], [ %lpad.phi.i, %bb.d ], [ %i.bw, %bb.bh ], [ %.pn46.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !152
  store i64 19, ptr %i.o, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !152
  invoke void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter3new(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.j unwind label %bb.i, !noalias !152

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152
  call void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRRNtNtB5_4data5FieldReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 13), !noalias !156
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !152
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.69.0.copyload.i.i.i = load ptr, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !noalias !152
  %.sroa.812.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.812.0.copyload.i.i.i = load i64, ptr %.sroa.812.0..sroa_idx.i.i.i, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152
  br label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.r, %bb.q, %.body.i.i.i, %bb.l, %bb.i
  %.pn46.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.ao, %bb.l ], [ %.pn44.i.i.i, %.body.i.i.i ], [ %.pn44.i.i.i, %bb.q ], [ %.pn44.i.i.i, %bb.r ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #17
          to label %common.resume.i.i unwind label %bb.aq, !noalias !152

bb.i:                                             ; preds = %bb.j, %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  store ptr %i.r, ptr %i.v, align 8, !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !152
  invoke void @_RNvMs_Csl1mHGn7pXMx_12convert_caseINtB4_14StateConverterNtNtCs6Po7BT7Nknu_5alloc6string6StringE7to_caseCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.o)
          to label %bb.k unwind label %bb.i, !noalias !152

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !152
  %i.al = load ptr, ptr %i.w, align 8, !noalias !152, !nonnull !17, !noundef !17
  %i.am = load i64, ptr %i.x, align 8, !noalias !152, !noundef !17
  %i.an = invoke noundef i32 @_RNvMsi_CsbjGuDcEILED_11proc_macro2NtB5_4Span9call_site()
          to label %bb.m unwind label %bb.l, !noalias !152

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #17
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.aq, !noalias !152

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMsx_CsbjGuDcEILED_11proc_macro2NtB5_5Ident3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am, i32 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %bb.n unwind label %bb.l, !noalias !152

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i unwind label %bb.o, !noalias !152

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i.i.i unwind label %bb.p, !noalias !152

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.s, !noalias !152

.body.i.i.i:                                      ; preds = %bb.bl, %bb.bk, %bb.bc, %.body56.i.i.i, %bb.s, %bb.o
  %.pn44.i.i.i = phi { ptr, i32 } [ %.pn42.i.i.i, %bb.bk ], [ %eh.lpad-body57.i.i.i, %.body56.i.i.i ], [ %.pn42.i.i.i, %bb.bl ], [ %i.ap, %bb.o ], [ %i.au, %bb.s ], [ %i.br, %bb.bc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.ar = load i8, ptr %i.aa, align 8, !range !170, !alias.scope !171, !noalias !152, !noundef !17
  %i.as = icmp eq i8 %i.ar, 2
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.body.i.i.i
  %.val1.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !171, !noalias !152, !noundef !17 ; 2 uses
  %i.at = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !171, !noalias !152, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #20, !noalias !172
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.s:                                             ; preds = %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !152
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !152, !nonnull !17, !noundef !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !152, !noundef !17
  invoke void @_RNvCshbKHpCRGxgC_16deltalake_derive24extract_field_attributes(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aw, i64 noundef %i.ay)
          to label %bb.t unwind label %bb.s, !noalias !152

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.az = load i64, ptr %i.m, align 8, !range !35, !noalias !152, !noundef !17 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -9223372036854775808
  %.sroa.619.i.sroa.0.0.copyload14.i.i = load i64, ptr %i.y, align 8, !noalias !152 ; 2 uses
  %.sroa.619.i.sroa.7.0.copyload17.i.i = load ptr, ptr %.sroa.619.i.sroa.7.0..sroa_idx16.i.i, align 8, !noalias !152 ; 2 uses
  %.sroa.619.i.sroa.8.0.copyload20.i.i = load i64, ptr %.sroa.619.i.sroa.8.0..sroa_idx19.i.i, align 8, !noalias !152 ; 2 uses
  br i1 %i.ba, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !152
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.bb = load i8, ptr %i.aa, align 8, !range !170, !alias.scope !179, !noalias !152, !noundef !17
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i.i48.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !179, !noalias !152, !noundef !17 ; 2 uses
  %i.bd = icmp eq i64 %.val1.i.i48.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.i49.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !179, !noalias !152, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i49.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i48.i.i.i, i64 noundef 1) #20, !noalias !180
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.635.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !152
  store i64 %.sroa.619.i.sroa.0.0.copyload14.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !152
  store ptr %.sroa.619.i.sroa.7.0.copyload17.i.i, ptr %.sroa.619.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !152
  store i64 %.sroa.619.i.sroa.8.0.copyload20.i.i, ptr %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !152
  store i64 %i.az, ptr %i.n, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !152
  %i.be = load i64, ptr %i.z, align 8, !range !35, !noalias !152, !noundef !17
  %.not37.i.i.i = icmp eq i64 %i.be, -9223372036854775808 ; 3 uses
  br i1 %.not37.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !152
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ac unwind label %bb.ab, !noalias !152

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.ap unwind label %bb.ao, !noalias !152

bb.aa:                                            ; preds = %bb.ad, %bb.ab
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.ad ], [ %i.bf, %bb.ab ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #17
          to label %.body53.i.i.i unwind label %bb.aq, !noalias !152

bb.ab:                                            ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.y
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_pound(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.af unwind label %bb.ae, !noalias !152

bb.ad:                                            ; preds = %bb.ah, %bb.ae
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.ae ], [ %i.bh, %bb.ah ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.j) #17
          to label %bb.aa unwind label %bb.aq, !noalias !152

bb.ae:                                            ; preds = %bb.ak, %bb.af, %bb.ac
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !152
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ag unwind label %bb.ae, !noalias !152

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 3)
          to label %bb.ai unwind label %bb.ah, !noalias !152

bb.ah:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.h) #17
          to label %bb.ad unwind label %bb.aq, !noalias !152

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private7push_eq(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.aj unwind label %bb.ah, !noalias !152

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXs6_NtCsBGNUbrdbJ0_5quote9to_tokensNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.ak unwind label %bb.ah, !noalias !152

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !152
  invoke void @_RNvNtCsBGNUbrdbJ0_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, i8 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.al unwind label %bb.ae, !noalias !152

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i unwind label %bb.am, !noalias !152

bb.am:                                            ; preds = %bb.al
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body53.i.i.i unwind label %bb.an, !noalias !152

bb.an:                                            ; preds = %bb.am
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit55.i.i.i unwind label %bb.ao, !noalias !152

.body53.i.i.i:                                    ; preds = %bb.ar, %bb.ao, %bb.am, %bb.aa
  %.not37.i.i.i470 = phi i1 [ false, %bb.aa ], [ %.not37.i.i.i, %bb.ar ], [ %.not37.i.i.i.lcssa461, %bb.ao ], [ false, %bb.am ]
  %.pn42.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.aa ], [ %.pn40.i.i.i, %bb.ar ], [ %i.bk, %bb.ao ], [ %i.bi, %bb.am ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.n) #17
          to label %bb.bj unwind label %bb.aq, !noalias !152

bb.ao:                                            ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i, %bb.z
  %.not37.i.i.i.lcssa461 = phi i1 [ %.not37.i.i.i, %bb.aw ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i ], [ true, %bb.z ]
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body53.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit55.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit.i52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !152
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit55.i.i.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !152
  invoke void @_RNvMCsbjGuDcEILED_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.at unwind label %bb.as, !noalias !152

bb.aq:                                            ; preds = %bb.bl, %bb.bj, %.body56.i.i.i, %bb.au, %bb.ar, %.body53.i.i.i, %bb.ah, %bb.ad, %bb.aa, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

bb.ar:                                            ; preds = %bb.au, %bb.as
  %.pn40.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.au ], [ %i.bm, %bb.as ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.l) #17
          to label %.body53.i.i.i unwind label %bb.aq, !noalias !152

bb.as:                                            ; preds = %bb.ap
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.ap
  invoke void @_RNvXsu_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.av unwind label %bb.au, !noalias !152

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.g) #17
          to label %bb.ar unwind label %bb.aq, !noalias !152

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXsq_NtCsBGNUbrdbJ0_5quote9to_tokensNtCsbjGuDcEILED_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.aw unwind label %bb.au, !noalias !152

bb.aw:                                            ; preds = %bb.av
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !181 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.ax unwind label %bb.ao, !noalias !152

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.az unwind label %bb.ay, !noalias !152

bb.ay:                                            ; preds = %bb.ax
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body56.i.i.i unwind label %bb.ba, !noalias !152

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.bb, !noalias !152

bb.ba:                                            ; preds = %bb.ay
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i.i

.body56.i.i.i:                                    ; preds = %bb.bb, %bb.ay
  %eh.lpad-body57.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.bb ], [ %i.bo, %bb.ay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i) #17
          to label %.body.i.i.i unwind label %bb.aq, !noalias !152

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.az
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i)
          to label %bb.bd unwind label %bb.bc, !noalias !152

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i)
          to label %.body.i.i.i unwind label %bb.be, !noalias !152

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i unwind label %bb.s, !noalias !152

bb.be:                                            ; preds = %bb.bc
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !152
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.bt = load i8, ptr %i.aa, align 8, !range !170, !alias.scope !188, !noalias !152, !noundef !17
  %i.bu = icmp eq i8 %i.bt, 2
  br i1 %i.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i
  %.val1.i.i62.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !188, !noalias !152, !noundef !17 ; 2 uses
  %i.bv = icmp eq i64 %.val1.i.i62.i.i.i, 0
  br i1 %i.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i63.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !188, !noalias !152, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i63.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i62.i.i.i, i64 noundef 1) #20, !noalias !189
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i: ; preds = %bb.bg, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i unwind label %bb.bh, !noalias !152

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i.i unwind label %bb.bi, !noalias !152

bb.bi:                                            ; preds = %bb.bh
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

bb.bj:                                            ; preds = %.body53.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i) #17
          to label %bb.bk unwind label %bb.aq, !noalias !152

bb.bk:                                            ; preds = %bb.bj
  %i.by = load i64, ptr %i.z, align 8, !range !35, !noalias !152, !noundef !17
  %i.bz = icmp ne i64 %i.by, -9223372036854775808
  %or.cond.i.i.i = and i1 %.not37.i.i.i470, %i.bz
  br i1 %or.cond.i.i.i, label %bb.bl, label %.body.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #17
          to label %.body.i.i.i unwind label %bb.aq, !noalias !152

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i unwind label %bb.bm, !noalias !152

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i.i unwind label %bb.bn, !noalias !152

bb.bn:                                            ; preds = %bb.bm
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !152
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit50.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !152
  br label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i

_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i, %bb.h
  %.sroa.10.0.ph.i.i = phi i64 [ %.sroa.619.i.sroa.8.0.copyload20.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i ], [ %.sroa.812.0.copyload.i.i.i, %bb.h ]
  %.sroa.9.0.ph.i.i = phi ptr [ %.sroa.619.i.sroa.7.0.copyload17.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i ], [ %.sroa.69.0.copyload.i.i.i, %bb.h ]
  %.sroa.6.0.ph.i.i = phi i64 [ %.sroa.619.i.sroa.0.0.copyload14.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive.exit70.i.i.i ], [ %.sroa.07.0.copyload.i.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !152
  br label %.loopexit34.i

_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit64.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !152
  switch i64 %.sroa.01.0.copyload.i.i, label %.loopexit33.i [
    i64 -9223372036854775807, label %.loopexit34.i
    i64 -9223372036854775806, label %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  ]

.loopexit34.i:                                    ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i
  %.sroa.6.027.i.i = phi i64 [ %.sroa.6.0.ph.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 2 uses
  %.sroa.9.026.i.i = phi ptr [ %.sroa.9.0.ph.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 2 uses
  %.sroa.10.025.i.i = phi i64 [ %.sroa.10.0.ph.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 2 uses
  %i.cc = load i64, ptr %3, align 8, !range !35, !alias.scope !190, !noalias !193, !noundef !17
  %i.cd = icmp eq i64 %i.cc, -9223372036854775808
  br i1 %i.cd, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i, label %bb.bo

bb.bo:                                            ; preds = %.loopexit34.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i unwind label %bb.bp, !noalias !197

bb.bp:                                            ; preds = %bb.bo
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body.i2.i.i unwind label %bb.bq, !noalias !197

bb.bq:                                            ; preds = %bb.bp
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i unwind label %bb.br, !noalias !197

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2.i.i

.body.i2.i.i:                                     ; preds = %bb.br, %bb.bp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cg, %bb.br ], [ %i.ce, %bb.bp ]
  store i64 %.sroa.6.027.i.i, ptr %3, align 8, !noalias !198
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.9.026.i.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx.i.i, align 8, !noalias !198
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.10.025.i.i, ptr %.sroa.4.sroa.7.0..8.val.sroa_idx.i.i, align 8, !noalias !198
  br label %common.resume.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i, %.loopexit34.i
  store i64 %.sroa.6.027.i.i, ptr %3, align 8, !noalias !198
  %.sroa.4.sroa.6.0..8.val.sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.9.026.i.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx8.i.i, align 8, !noalias !198
  %.sroa.4.sroa.7.0..8.val.sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.10.025.i.i, ptr %.sroa.4.sroa.7.0..8.val.sroa_idx11.i.i, align 8, !noalias !198
  br label %.loopexit33.i

bb.bs:                                            ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !199, !noalias !141
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit

.loopexit33.i:                                    ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i
  %.sroa.7.sroa.5.1.ph.i = phi ptr [ %.sroa.75.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.7.sroa.0.1.ph.i = phi i64 [ %.sroa.5.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.7.sroa.6.1.ph.i = phi i64 [ %.sroa.8.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.0.0.ph.i = phi i64 [ -9223372036854775807, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.01.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8, !alias.scope !202, !noalias !141
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.1.ph.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.5.1.ph.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.6.1.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit: ; preds = %bb.bs, %.loopexit33.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB4_6client11TokenStreamEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.not = icmp eq i32 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !206, !noundef !17 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !206, !noundef !17
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !206
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !206
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !206
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !206
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !206, !nonnull !17, !noundef !17
  call void %i.k(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #20, !noalias !206, !inline_history !209
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.3.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !206
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !206
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !210, !noundef !17 ; 2 uses
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !210, !noundef !17
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !210
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !210
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i4, align 8, !alias.scope !210
  %.sroa.7.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i5, align 8, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !210
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !210, !nonnull !17, !noundef !17
  call void %i.p(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 1) #20, !noalias !210, !inline_history !209
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.311.0.copyload = load ptr, ptr %.sroa.311.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.311.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !210
  %.pre.i6 = load i64, ptr %i.e, align 8, !alias.scope !210
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7: ; preds = %bb.d, %bb.e
  %i.q = phi i64 [ %i.l, %bb.d ], [ %.pre.i6, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !alias.scope !210, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 1, ptr %i.s, align 1, !noalias !210
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.e, align 8, !alias.scope !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !alias.scope !206, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !noalias !206
  %i.x = add i64 %i.u, 1
  store i64 %i.x, ptr %i.e, align 8, !alias.scope !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamINtNtB7_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(i32 noundef %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges3_1__INtNtCsbvkFyIu7lgC_4core6option6OptionReEINtNtB4_3rpc6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly captures(address, read_provenance) %0, i64 %1, ptr noalias noundef align 8 dereferenceable(40) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.not = icmp eq ptr %0, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !213, !noundef !17 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !213, !noundef !17
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !alias.scope !213
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !213
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !213
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !213
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !213, !nonnull !17, !noundef !17
  call void %i.k(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #20, !noalias !213, !inline_history !209
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.3.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !213
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !213
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !alias.scope !213, !noundef !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !noalias !213
  %i.o = add i64 %i.l, 1
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge3rpcReINtB5_6EncodeuE6encodeCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %2, ptr noalias noundef nonnull %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !216, !noundef !17 ; 2 uses
  %i.q = load i64, ptr %i.f, align 8, !alias.scope !216, !noundef !17
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !alias.scope !216
  %.sroa.6.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !216
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i5, align 8, !alias.scope !216
  %.sroa.7.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_RNvNvXs6_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB7_6BufferINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i6, align 8, !alias.scope !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !216, !nonnull !17, !noundef !17
  call void %i.t(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 1) #20, !noalias !216, !inline_history !209
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.312.0.copyload = load ptr, ptr %.sroa.312.0..sroa_idx, align 8, !nonnull !17, !noundef !17
  call void %.sroa.312.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !216
  %.pre.i7 = load i64, ptr %i.e, align 8, !alias.scope !216
  br label %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8

_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8: ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %i.p, %bb.d ], [ %.pre.i7, %bb.e ] ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !alias.scope !216, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 1, ptr %i.w, align 1, !noalias !216
  %i.x = add i64 %i.u, 1
  store i64 %i.x, ptr %i.e, align 8, !alias.scope !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit, %_RNvMs3_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
