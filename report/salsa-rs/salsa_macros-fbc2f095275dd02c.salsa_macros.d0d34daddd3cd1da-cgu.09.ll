Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.09?download=true
inline.NumInlined: 104
inline.NumDeleted: 95
begin_hunk_0_@_RNvMs0_NtCshVzvyy7iigg_12salsa_macros14tracked_structNtB5_5Macro9try_macro:bb.a
  store ptr %i.mq, ptr %i.aa, align 8
  store ptr %i.mr, ptr %i.lt, align 8
  invoke void @_RNvXs0_NtCs66Sk1bwUSDc_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCs4NRVxsYgnAr_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %bb.qf unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qf:                                            ; preds = %bb.qe
  invoke void @_RNvYINtNtCs66Sk1bwUSDc_5quote9___private11HasIteratorKb1_EINtB5_16CheckHasIteratorKBQ_E5checkCshVzvyy7iigg_12salsa_macros()
          to label %.preheader191.preheader unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader191.preheader:                          ; preds = %bb.qf
  %i.ms = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.aa)
          to label %bb.qg unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.qg:                                            ; preds = %.preheader191.preheader
  %.not94.peel = icmp eq ptr %i.ms, null
  br i1 %.not94.peel, label %.loopexit457, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  store ptr %i.ms, ptr %i.z, align 8
  br label %.invoke556

.invoke556:                                       ; preds = %bb.qj, %bb.qh
  invoke void @_RNvXs5_NtCs66Sk1bwUSDc_5quote9___privateINtB5_9RepInterpRRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtNtB7_9to_tokens8ToTokens9to_tokensCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ab)
          to label %.preheader191 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader191:                                    ; preds = %.invoke556
  %i.mt = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterRNtNtCs3Eghgi3KVFH_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.aa)
          to label %bb.qi unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.qi:                                            ; preds = %.preheader191
  %.not94 = icmp eq ptr %i.mt, null
  br i1 %.not94, label %.loopexit457, label %bb.qj

.loopexit457:                                     ; preds = %bb.qi, %bb.qg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_group(ptr nonnull align 8 %i.af, i8 2, ptr nonnull align 8 %i.ac)
          to label %bb.ln unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qj:                                            ; preds = %bb.qi
  store ptr %i.mt, ptr %i.z, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.ab)
          to label %.invoke556 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qk:                                            ; preds = %bb.lf
  store ptr %i.lo, ptr %i.ah, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.aj)
          to label %.invoke554 unwind label %.loopexit.split-lp205.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ql:                                            ; preds = %bb.kv
  store ptr %i.li, ptr %i.al, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.an)
          to label %.invoke553 unwind label %.loopexit.split-lp211.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qm:                                            ; preds = %bb.kl
  store i64 %.sroa.0145.0.copyload146, ptr %i.ap, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4147, i64 24, i1 false)
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.ar)
          to label %.invoke559 unwind label %.loopexit.split-lp439

.invoke559:                                       ; preds = %bb.qm, %bb.kj
  invoke void @_RNvXs5_NtCs66Sk1bwUSDc_5quote9___privateINtB5_9RepInterpNtCsRujiHMkeh3_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.ar)
          to label %.invoke552 unwind label %.loopexit.split-lp439

.loopexit.split-lp439:                            ; preds = %.invoke559, %bb.qm
  %lpad.loopexit.split-lp441 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs66Sk1bwUSDc_5quote9___private9RepInterpNtCsRujiHMkeh3_11proc_macro211TokenStreamEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.ap) #10
          to label %.loopexit.split-lp217 unwind label %bb.pn

bb.qn:                                            ; preds = %bb.ka
  store i64 %.sroa.0.0.copyload142, ptr %i.at, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.av)
          to label %.invoke560 unwind label %.loopexit.split-lp428

.invoke560:                                       ; preds = %bb.qn, %bb.jy
  invoke void @_RNvXs5_NtCs66Sk1bwUSDc_5quote9___privateINtB5_9RepInterpNtCsRujiHMkeh3_11proc_macro211TokenStreamENtNtB7_9to_tokens8ToTokens9to_tokensCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.av)
          to label %.invoke551 unwind label %.loopexit.split-lp428

.loopexit.split-lp428:                            ; preds = %.invoke560, %bb.qn
  %lpad.loopexit.split-lp430 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs66Sk1bwUSDc_5quote9___private9RepInterpNtCsRujiHMkeh3_11proc_macro211TokenStreamEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.at) #10
          to label %.loopexit.split-lp224 unwind label %bb.pn

bb.qo:                                            ; preds = %bb.jp
  store ptr %i.km, ptr %i.ax, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.az)
          to label %.invoke550 unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qp:                                            ; preds = %bb.jf
  store ptr %i.kg, ptr %i.bb, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.bd)
          to label %.invoke549 unwind label %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qq:                                            ; preds = %bb.iv
  store ptr %i.ka, ptr %i.bf, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.bh)
          to label %.invoke548 unwind label %.loopexit.split-lp243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qr:                                            ; preds = %bb.il
  store ptr %i.ju, ptr %i.bj, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.bl)
          to label %.invoke547 unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qs:                                            ; preds = %bb.ib
  store ptr %i.jo, ptr %i.bn, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.bp)
          to label %.invoke546 unwind label %.loopexit.split-lp255.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qt:                                            ; preds = %bb.hr
  store ptr %i.ji, ptr %i.br, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.bt)
          to label %.invoke545 unwind label %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qu:                                            ; preds = %bb.ha
  store ptr %i.jb, ptr %i.bx, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.bz)
          to label %.invoke544 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qv:                                            ; preds = %bb.gq
  store ptr %i.iv, ptr %i.cb, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.cf)
          to label %.invoke558 unwind label %.loopexit.split-lp273.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qw:                                            ; preds = %bb.ga
  store ptr %i.ij, ptr %i.ch, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.cl)
          to label %.invoke557 unwind label %.loopexit.split-lp279.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qx:                                            ; preds = %bb.fk
  store ptr %i.hx, ptr %i.cn, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.cp)
          to label %.invoke541 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qy:                                            ; preds = %bb.fa
  store ptr %i.hr, ptr %i.cr, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.ct)
          to label %.invoke540 unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qz:                                            ; preds = %bb.ea
  store ptr %i.hl, ptr %i.cv, align 8
  invoke void @_RNvNtCs66Sk1bwUSDc_5quote9___private10push_comma(ptr nonnull align 8 %i.cx)
          to label %.invoke unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ra:                                            ; preds = %bb.cm
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs3Eghgi3KVFH_3syn4path4PathEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.dl) #10
          to label %bb.ck unwind label %bb.pn

bb.rb:                                            ; preds = %.thread157, %bb.ck
  %.pn101.pn.pn.pn.pn.pn.pn.pn.pn.pn160 = phi { ptr, i32 } [ %i.gs, %.thread157 ], [ %.pn101.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ck ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs3Eghgi3KVFH_3syn4path4PathEECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.dm) #10
          to label %bb.cc unwind label %bb.pn

.thread:                                          ; preds = %bb.be, %.split.thread, %bb.bc
  %.pn101.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn154 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn101.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bc ], [ %i.ga, %bb.be ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEEB1y_(ptr nonnull align 8 %i.ee) #10
          to label %bb.ba unwind label %bb.pn

bb.rc:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn101.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i8x16CshVzvyy7iigg_12salsa_macros(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvNtCshVzvyy7iigg_12salsa_macros7tracked7tracked(i32 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [1392 x i8], align 8              ; 4 uses
  %i.c = alloca [1392 x i8], align 8              ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [1680 x i8], align 8              ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 2 uses
  %i.k = alloca [240 x i8], align 8               ; 5 uses
  %i.l = alloca [240 x i8], align 8               ; 2 uses
  %i.m = alloca [360 x i8], align 8               ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [360 x i8], align 8               ; 7 uses
  %i.q = alloca [360 x i8], align 8               ; 10 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [4 x i8], align 4                 ; 6 uses
  store i32 %0, ptr %i.s, align 4
  store i32 %1, ptr %i.r, align 4
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = invoke i32 @_RNvXs8_NtNtCstuaXukgBIa_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nonnull align 4 %i.r)
          to label %_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %eh.lpad-body, %bb.al ], [ %eh.lpad-body, %bb.ap ], [ %eh.lpad-body, %bb.am ], [ %eh.lpad-body, %bb.ar ], [ %eh.lpad-body, %bb.an ], [ %eh.lpad-body, %bb.as ], [ %eh.lpad-body, %bb.ao ] ; 2 uses
  %.sroa.03.0 = phi i8 [ %.sroa.03.1, %bb.d ], [ %.sroa.03.2.lpad-body, %bb.al ], [ %.sroa.03.2.lpad-body, %bb.ap ], [ %.sroa.03.2.lpad-body, %bb.am ], [ %.sroa.03.2.lpad-body, %bb.ar ], [ %.sroa.03.2.lpad-body, %bb.an ], [ %.sroa.03.2.lpad-body, %bb.as ], [ %.sroa.03.2.lpad-body, %bb.ao ] ; 2 uses
  %.sroa.01.0 = phi i8 [ %.sroa.01.1, %bb.d ], [ %.sroa.01.2.lpad-body, %bb.al ], [ %.sroa.01.2.lpad-body, %bb.ap ], [ %.sroa.01.2.lpad-body, %bb.am ], [ %.sroa.01.2.lpad-body, %bb.ar ], [ %.sroa.01.2.lpad-body, %bb.an ], [ %.sroa.01.2.lpad-body, %bb.as ], [ %.sroa.01.2.lpad-body, %bb.ao ]
  %2 = trunc nuw i8 %.sroa.01.0 to i1
  br i1 %2, label %bb.at, label %bb.ai

bb.d:                                             ; preds = %bb.b, %bb.ae, %bb.f, %_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit
  %.sroa.03.1 = phi i8 [ 1, %bb.f ], [ %.sroa.03.320, %bb.ae ], [ 1, %_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit ], [ 1, %bb.b ]
  %.sroa.01.1 = phi i8 [ 0, %bb.f ], [ %.sroa.01.3, %bb.ae ], [ 1, %_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit ], [ 1, %bb.b ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ 0, %bb.a ], [ %i.t, %bb.b ]
  invoke void @_RINvCs3Eghgi3KVFH_3syn5parseNtNtB2_4item4ItemECshVzvyy7iigg_12salsa_macros(ptr nonnull sret([360 x i8]) align 8 %i.p, i32 %.sroa.0.0.i)
          to label %bb.e unwind label %bb.d

bb.e:                                             ; preds = %_RNvXsU_CstuaXukgBIa_10proc_macroNtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCshVzvyy7iigg_12salsa_macros.exit
  %i.v = load i64, ptr %i.p, align 8
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = load i32, ptr %i.r, align 4
  %i.z = invoke i32 @_RNvCshVzvyy7iigg_12salsa_macros23token_stream_with_error(i32 %i.y, ptr nonnull align 8 %i.h)
          to label %.sink.split unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.q, ptr noundef nonnull align 8 dereferenceable(360) %i.p, i64 360, i1 false)
  %i.aa = load i64, ptr %i.q, align 8             ; 2 uses
  %i.ab = add i64 %i.aa, -2
  %i.ac = icmp ugt i64 %i.aa, 1
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 3
  switch i64 %i.ad, label %bb.h [
    i64 3, label %bb.i
    i64 5, label %bb.j
    i64 9, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = invoke i32 @_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_4item4ItemNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.q)
          to label %bb.aa unwind label %bb.y

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.m, ptr noundef nonnull align 8 dereferenceable(360) %i.p, i64 360, i1 false)
  %i.af = load i32, ptr %i.s, align 4
  invoke void @_RNvNtCshVzvyy7iigg_12salsa_macros10tracked_fn10tracked_fn(ptr nonnull sret([32 x i8]) align 8 %i.o, i32 %i.af, ptr nonnull align 8 %i.m)
          to label %bb.z unwind label %bb.y

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.l, ptr noundef nonnull align 8 dereferenceable(240) %i.ag, i64 240, i1 false)
  %i.ah = load i32, ptr %i.s, align 4
  invoke void @_RNvNtCshVzvyy7iigg_12salsa_macros12tracked_impl12tracked_impl(ptr nonnull sret([32 x i8]) align 8 %i.o, i32 %i.ah, ptr nonnull align 8 %i.l)
          to label %bb.z unwind label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.k, ptr noundef nonnull align 8 dereferenceable(240) %i.ai, i64 240, i1 false)
  %i.aj = load i32, ptr %i.s, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.aj, ptr %i.g, align 4, !noalias !17
  invoke void @_RINvMNtCshVzvyy7iigg_12salsa_macros7hygieneNtB3_7Hygiene5from2NtNtCs3Eghgi3KVFH_3syn4item10ItemStructEB5_(ptr nonnull sret([48 x i8]) align 8 %i.f, ptr nonnull align 8 %i.k)
          to label %bb.l unwind label %.thread16.i, !noalias !17

.thread16.i:                                      ; preds = %bb.v, %bb.k
  %.sroa.01.1.ph.i = phi i1 [ true, %bb.k ], [ false, %bb.v ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !17
  invoke void @_RINvCs3Eghgi3KVFH_3syn5parseINtNtCshVzvyy7iigg_12salsa_macros7options7OptionsNtNtBv_14tracked_struct13TrackedStructEEBv_(ptr nonnull sret([1392 x i8]) align 8 %i.b, i32 %i.aj)
          to label %bb.n unwind label %bb.m, !noalias !17

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.d) #10
          to label %.thread.i unwind label %bb.t, !noalias !17

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCshVzvyy7iigg_12salsa_macros7options7OptionsNtNtBP_14tracked_struct13TrackedStructENtNtCs3Eghgi3KVFH_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([1392 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.o unwind label %bb.m, !noalias !17

bb.o:                                             ; preds = %bb.n
  %i.al = load i64, ptr %i.c, align 8, !noalias !17
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !17
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsRujiHMkeh3_11proc_macro211TokenStreamNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1p_EE13from_residualB1t_(ptr nonnull sret([32 x i8]) align 8 %i.o, ptr nonnull align 8 %i.a, ptr nonnull align 8 @46)
          to label %bb.v unwind label %bb.u

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1392) %i.e, ptr noundef nonnull align 8 dereferenceable(1392) %i.c, i64 1392, i1 false), !noalias !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ao, ptr noundef nonnull align 8 dereferenceable(240) %i.k, i64 240, i1 false), !noalias !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 1632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !17
  invoke fastcc void @_RNvMs0_NtCshVzvyy7iigg_12salsa_macros14tracked_structNtB5_5Macro9try_macro(ptr noalias nonnull align 8 %i.o, ptr align 8 %i.e)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros14tracked_struct5MacroEBF_(ptr nonnull align 8 %i.e) #10
          to label %.body unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros14tracked_struct5MacroEBF_(ptr nonnull align 8 %i.e)
          to label %_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit unwind label %bb.y

bb.t:                                             ; preds = %bb.x, %.thread.i, %bb.u, %bb.r, %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.u:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.d) #10
          to label %.thread.i unwind label %bb.t

bb.v:                                             ; preds = %bb.p
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshVzvyy7iigg_12salsa_macros7hygiene7HygieneEBF_(ptr nonnull align 8 %i.d)
          to label %bb.w unwind label %.thread16.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item10ItemStructEBF_(ptr nonnull align 8 %i.k)
          to label %_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit unwind label %bb.y

.thread11.i:                                      ; preds = %.thread.i
  br i1 %.sroa.01.010.i, label %bb.x, label %.body

.thread.i:                                        ; preds = %bb.u, %bb.m, %.thread16.i
  %.sroa.01.010.i = phi i1 [ %.sroa.01.1.ph.i, %.thread16.i ], [ false, %bb.u ], [ false, %bb.m ]
  %.pn9.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread16.i ], [ %i.as, %bb.u ], [ %i.ak, %bb.m ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item10ItemStructEBF_(ptr nonnull align 8 %i.k) #10
          to label %.thread11.i unwind label %bb.t

bb.x:                                             ; preds = %.thread11.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.g) #10
          to label %.body unwind label %bb.t

_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit: ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.s, %bb.ac, %bb.ab, %bb.aa, %bb.j, %bb.i, %bb.h
  %.sroa.07.0 = phi i1 [ %.sroa.07.117, %bb.ab ], [ %.sroa.07.1.ph, %bb.ac ], [ true, %bb.aa ], [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.w ], [ true, %bb.s ]
  %.sroa.06.0 = phi i1 [ %.sroa.06.118, %bb.ab ], [ %.sroa.06.1.ph, %bb.ac ], [ true, %bb.aa ], [ true, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ true, %bb.w ], [ true, %bb.s ]
  %.sroa.05.0 = phi i1 [ %.sroa.05.119, %bb.ab ], [ %.sroa.05.1.ph, %bb.ac ], [ true, %bb.aa ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.w ], [ false, %bb.s ]
  %.sroa.03.2 = phi i8 [ %.sroa.03.321, %bb.ab ], [ 0, %bb.ac ], [ 1, %bb.aa ], [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.w ], [ 0, %bb.s ]
  %.sroa.01.2 = phi i8 [ 0, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.aa ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.w ], [ 1, %bb.s ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %.thread11.i, %bb.x, %bb.y
  %.sroa.07.0.lpad-body = phi i1 [ %.sroa.07.0, %bb.y ], [ true, %bb.x ], [ true, %.thread11.i ], [ true, %bb.r ]
  %.sroa.06.0.lpad-body = phi i1 [ %.sroa.06.0, %bb.y ], [ true, %bb.x ], [ true, %.thread11.i ], [ true, %bb.r ]
  %.sroa.05.0.lpad-body = phi i1 [ %.sroa.05.0, %bb.y ], [ false, %bb.x ], [ false, %.thread11.i ], [ false, %bb.r ]
  %.sroa.03.2.lpad-body = phi i8 [ %.sroa.03.2, %bb.y ], [ 0, %bb.x ], [ 0, %.thread11.i ], [ 0, %bb.r ] ; 7 uses
  %.sroa.01.2.lpad-body = phi i8 [ %.sroa.01.2, %bb.y ], [ 1, %bb.x ], [ 1, %.thread11.i ], [ 1, %bb.r ] ; 7 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.y ], [ %.pn9.i, %bb.x ], [ %.pn9.i, %.thread11.i ], [ %i.aq, %bb.r ] ; 7 uses
  %i.au = load i64, ptr %i.q, align 8             ; 2 uses
  %i.av = add i64 %i.au, -2
  %i.aw = icmp ugt i64 %i.au, 1
  %i.ax = select i1 %i.aw, i64 %i.av, i64 3
  switch i64 %i.ax, label %bb.al [
    i64 3, label %bb.am
    i64 5, label %bb.an
    i64 9, label %bb.ao
  ]

bb.z:                                             ; preds = %_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit, %bb.j, %bb.i
  %.sroa.07.1.ph = phi i1 [ true, %_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit ], [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %.sroa.06.1.ph = phi i1 [ true, %_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit ], [ true, %bb.j ], [ false, %bb.i ] ; 2 uses
  %.sroa.05.1.ph = phi i1 [ false, %_RNvNtCshVzvyy7iigg_12salsa_macros14tracked_struct14tracked_struct.exit ], [ true, %bb.j ], [ true, %bb.i ] ; 2 uses
  %.pr = load i64, ptr %i.o, align 8
  %i.ay = icmp eq i64 %.pr, -2
  br i1 %i.ay, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.h
  invoke void @_RINvMNtCs3Eghgi3KVFH_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.n, i32 %i.ae, ptr nonnull @47, i64 60)
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %bb.aa
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 -2, ptr %i.o, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.z
  %.sroa.03.321 = phi i8 [ 1, %.thread ], [ 0, %bb.z ] ; 2 uses
  %.sroa.05.119 = phi i1 [ true, %.thread ], [ %.sroa.05.1.ph, %bb.z ]
  %.sroa.06.118 = phi i1 [ true, %.thread ], [ %.sroa.06.1.ph, %bb.z ]
  %.sroa.07.117 = phi i1 [ true, %.thread ], [ %.sroa.07.1.ph, %bb.z ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bb = load i32, ptr %i.r, align 4
  %i.bc = invoke i32 @_RNvCshVzvyy7iigg_12salsa_macros23token_stream_with_error(i32 %i.bb, ptr nonnull align 8 %i.i)
          to label %bb.ad unwind label %bb.y

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.bd = invoke i32 @_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtCsRujiHMkeh3_11proc_macro211TokenStreamINtB5_4IntoNtCstuaXukgBIa_10proc_macro11TokenStreamE4intoCshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %i.j, ptr nonnull align 8 @49)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sroa.03.320 = phi i8 [ 0, %bb.ac ], [ %.sroa.03.321, %bb.ab ] ; 3 uses
  %.sroa.01.3 = phi i8 [ 1, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.bd, %bb.ac ], [ %i.bc, %bb.ab ] ; 2 uses
  %i.be = load i64, ptr %i.q, align 8             ; 2 uses
  %i.bf = add i64 %i.be, -2
  %i.bg = icmp ugt i64 %i.be, 1
  %i.bh = select i1 %i.bg, i64 %i.bf, i64 3
  switch i64 %i.bh, label %bb.ae [
    i64 3, label %bb.af
    i64 5, label %bb.af
    i64 9, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item4ItemEBF_(ptr nonnull align 8 %i.q)
          to label %bb.af unwind label %bb.d

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ad, %bb.ad
  %3 = trunc nuw i8 %.sroa.01.3 to i1
  br i1 %3, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %4 = trunc nuw i8 %.sroa.03.320 to i1
  br i1 %4, label %.sink.split, label %bb.ak

bb.ah:                                            ; preds = %bb.af
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.r)
          to label %bb.ag unwind label %bb.aj

bb.ai:                                            ; preds = %bb.at, %bb.aj, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %.pn, %bb.c ], [ %i.bi, %bb.aj ]
  %.sroa.03.4 = phi i8 [ %.sroa.03.0, %bb.at ], [ %.sroa.03.0, %bb.c ], [ %.sroa.03.320, %bb.aj ]
  %5 = trunc nuw i8 %.sroa.03.4 to i1
  br i1 %5, label %bb.av, label %bb.au

bb.aj:                                            ; preds = %bb.ah
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.sink.split:                                      ; preds = %bb.f, %bb.ag
  %.sroa.0.1.ph = phi i32 [ %.sroa.0.0, %bb.ag ], [ %i.z, %bb.f ]
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.s)
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ag
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.ag ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i32 %.sroa.0.1

bb.al:                                            ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item4ItemEBF_(ptr nonnull align 8 %i.q) #10
          to label %bb.c unwind label %bb.aq

bb.am:                                            ; preds = %.body
  br i1 %.sroa.06.0.lpad-body, label %bb.ap, label %bb.c

bb.an:                                            ; preds = %.body
  br i1 %.sroa.07.0.lpad-body, label %bb.ar, label %bb.c

bb.ao:                                            ; preds = %.body
  br i1 %.sroa.05.0.lpad-body, label %bb.as, label %bb.c

bb.ap:                                            ; preds = %bb.am
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item6ItemFnEBF_(ptr nonnull align 8 %i.q) #10
          to label %bb.c unwind label %bb.aq

bb.aq:                                            ; preds = %bb.av, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.al
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.ar:                                            ; preds = %bb.an
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item8ItemImplEBF_(ptr nonnull align 8 %i.bk) #10
          to label %bb.c unwind label %bb.aq

bb.as:                                            ; preds = %bb.ao
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3Eghgi3KVFH_3syn4item10ItemStructEBF_(ptr nonnull align 8 %i.bl) #10
          to label %bb.c unwind label %bb.aq

bb.at:                                            ; preds = %bb.c
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.r) #10
          to label %bb.ai unwind label %bb.aq

bb.au:                                            ; preds = %bb.av, %bb.ai
  resume { ptr, i32 } %.pn.pn

bb.av:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCstuaXukgBIa_10proc_macro11TokenStreamECsRujiHMkeh3_11proc_macro2(ptr nonnull align 4 %i.s) #10
          to label %bb.au unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3Eghgi3KVFH_3syn11parse_quoteNtNtB4_8generics14WherePredicateNtB2_10ParseQuote5parseCshVzvyy7iigg_12salsa_macros(ptr sret([360 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsb_NtNtCs3Eghgi3KVFH_3syn8generics7parsingNtB7_14WherePredicateNtNtB9_5parse5Parse5parse(ptr sret([360 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_8generics14BoundLifetimesNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !23
  invoke void @_RNvXs2_NtNtCs3Eghgi3KVFH_3syn8generics8printingNtB7_14BoundLifetimesNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn8generics14BoundLifetimesNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !23

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #10
          to label %bb.d unwind label %bb.c, !noalias !23

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !23
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn8generics14BoundLifetimesNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  %i.e = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCs3Eghgi3KVFH_3syn7spannedNtNtB4_8generics8GenericsNtB2_7Spanned4spanCshVzvyy7iigg_12salsa_macros(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsRujiHMkeh3_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !26
  invoke void @_RNvXNtNtCs3Eghgi3KVFH_3syn8generics8printingNtB4_8GenericsNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn8generics8GenericsNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit unwind label %bb.b, !noalias !26

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsRujiHMkeh3_11proc_macro211TokenStreamECs66Sk1bwUSDc_5quote(ptr nonnull align 8 %i.a) #10
          to label %bb.d unwind label %bb.c, !noalias !26

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !26
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCs66Sk1bwUSDc_5quote7spannedNtNtCs3Eghgi3KVFH_3syn8generics8GenericsNtB5_7Spanned6___spanCshVzvyy7iigg_12salsa_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call i32 @_RNvNtCs66Sk1bwUSDc_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs66Sk1bwUSDc_5quote9to_tokensRNtNtCs3Eghgi3KVFH_3syn8generics11WhereClauseNtB2_8ToTokens9to_tokensCshVzvyy7iigg_12salsa_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs7_NtNtCs3Eghgi3KVFH_3syn8generics8printingNtB7_11WhereClauseNtNtCs66Sk1bwUSDc_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_IBM_INtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3K_14tracked_structNtB4W_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5P_11TokenStreamINtB2_12FromIteratorB6f_E9from_iterB1g_E0ENCINvXs6_NtB5P_3impNtB7n_11TokenStreamIB6z_B7x_E9from_iterB1c_Es_0ENtB2_12IntoIterator9into_iterB3K_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_IBM_INtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3K_8internedNtB4W_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5I_11TokenStreamINtB2_12FromIteratorB68_E9from_iterB1g_E0ENCINvXs6_NtB5I_3impNtB7g_11TokenStreamIB6s_B7q_E9from_iterB1c_Es_0ENtB2_12IntoIterator9into_iterB3K_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 96)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_IBM_INtNtNtB8_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB2m_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB3z_11TokenStreamINtB2_12FromIteratorB3Z_E9from_iterB1g_E0ENCINvXs6_NtB3z_3impNtB57_11TokenStreamIB4j_B5h_E9from_iterB1c_Es_0ENtB2_12IntoIterator9into_iterB2o_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3G_14tracked_structNtB4S_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5L_11TokenStreamINtB2_12FromIteratorB6b_E9from_iterB1c_E0ENtB2_12IntoIterator9into_iterB3G_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3G_8internedNtB4S_5Macro9try_macro0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB5E_11TokenStreamINtB2_12FromIteratorB64_E9from_iterB1c_E0ENtB2_12IntoIterator9into_iterB3G_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 96)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_INtNtNtB8_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn2ty4TypeENCNvMs_NtCshVzvyy7iigg_12salsa_macros10tracked_fnNtB2i_5Macro6try_fns1_0ENCINvXsb_CsRujiHMkeh3_11proc_macro2NtB3v_11TokenStreamINtB2_12FromIteratorB3V_E9from_iterB1c_E0ENtB2_12IntoIterator9into_iterB2k_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapIBM_NtNtCs3Eghgi3KVFH_3syn8generics10TypeParamsNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value16add_field_bounds0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3b_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtB2_6ExtendB3U_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB23_(ptr %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterNtNtCs3Eghgi3KVFH_3syn4item8ImplItemENCNvMNtCshVzvyy7iigg_12salsa_macros12tracked_implNtB2M_5Macro12try_generate0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB45_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtB2_6ExtendB4O_E6extendB1c_E0ENtB2_12IntoIterator9into_iterB2O_(ptr %0, ptr %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_3zip3ZipINtNtBQ_4skip4SkipINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB1P_4item5FnArgEEINtNtNtB8_3ops5range9RangeFromlEENCNvNtCshVzvyy7iigg_12salsa_macros7fn_util9input_ids0ENtB2_12IntoIterator9into_iterB3m_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 56)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3C_14tracked_structNtB4O_5Macro9try_macro0ENtB2_12IntoIterator9into_iterB3C_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 88)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_3zip3ZipINtNtNtB8_5slice4iter4IterRNtNtCs3Eghgi3KVFH_3syn2ty4TypeEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionRNtNtCshVzvyy7iigg_12salsa_macros11salsa_value20ManualRetentionProofEEENCNvMs0_NtB3C_8internedNtB4O_5Macro9try_macro0ENtB2_12IntoIterator9into_iterB3C_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 96)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_4skip4SkipINtNtCs3Eghgi3KVFH_3syn10punctuated4IterNtNtB1z_4item5FnArgEENCNvNtCshVzvyy7iigg_12salsa_macros7fn_util9input_tys0ENtB2_12IntoIterator9into_iterB2z_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterINtNtBQ_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldEENCNvMB2s_INtB2s_11SalsaStructNtNtB2u_14tracked_struct13TrackedStructE19tracked_fields_iter0ENCNvB3s_11tracked_ids0ENtB2_12IntoIterator9into_iterB2u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterINtNtBQ_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldEENCNvMB2s_INtB2s_11SalsaStructNtNtB2u_14tracked_struct13TrackedStructE19tracked_fields_iter0ENCNvB3s_11tracked_tys0ENtB2_12IntoIterator9into_iterB2u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterINtNtBQ_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldEENCNvMB2s_INtB2s_11SalsaStructNtNtB2u_14tracked_struct13TrackedStructE19tracked_fields_iter0ENCNvB3s_11tracked_vis0ENtB2_12IntoIterator9into_iterB2u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_6filter6FilterINtNtBQ_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtCshVzvyy7iigg_12salsa_macros12salsa_struct10SalsaFieldEENCNvMB2s_INtB2s_11SalsaStructNtNtB2u_14tracked_struct13TrackedStructE19tracked_fields_iter0ENCNvB3s_15tracked_options0ENtB2_12IntoIterator9into_iterB2u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}
end_hunk_0
