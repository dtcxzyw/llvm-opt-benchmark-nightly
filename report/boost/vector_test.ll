Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 329
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2075
begin_hunk_0_@_ZN5boost9container4test17test_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE:bb.a
  br label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit

_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit: ; preds = %_ZN5boost9container4test23test_expected_containerINS0_6vectorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit107, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %.2, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit
  %i.so = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 5) ; 0 uses
  %i.sp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !221
  %i.sq = getelementptr i8, ptr %i.sp, i64 -24
  %i.sr = load i64, ptr %i.sq, align 8
  %i.ss = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 240
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !239 ; 6 uses
  %.not.i.i.i115 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i115, label %bb.cs, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116

bb.cs:                                            ; preds = %bb.cr
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116: ; preds = %bb.cr
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 56
  %i.sw = load i8, ptr %i.sv, align 8, !tbaa !245
  %.not.i1.i.i117 = icmp eq i8 %i.sw, 0
  br i1 %.not.i1.i.i117, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 67
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119

bb.cu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.su)
  %i.sz = load ptr, ptr %i.su, align 8, !tbaa !221
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 48
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = call noundef signext i8 %i.tb(ptr noundef nonnull align 8 dereferenceable(570) %i.su, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119: ; preds = %bb.ct, %bb.cu
  %.0.i.i.i118 = phi i8 [ %i.sy, %bb.ct ], [ %i.tc, %bb.cu ]
  %i.td = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i118)
  %i.te = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.td) ; 0 uses
  br label %bb.cx

bb.cv:                                            ; preds = %bb.x, %bb.y, %bb.cp, %bb.bt, %bb.ba, %bb.ak
  %.pn19 = phi { ptr, i32 } [ %i.dv, %bb.x ], [ %i.sk, %bb.cp ], [ %i.nq, %bb.bt ], [ %i.jp, %bb.ba ], [ %i.gi, %bb.ak ], [ %i.dw, %bb.y ]
  %i.tf = load i64, ptr %i.bc, align 8, !tbaa !596 ; 2 uses
  %.not.i.i108 = icmp eq i64 %i.tf, 0
  br i1 %.not.i.i108, label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit109, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tg = load ptr, ptr %9, align 8, !tbaa !597
  %i.th = mul i64 %i.tf, 44
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.th) #26
  br label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit109

_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit109: ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  resume { ptr, i32 } %.pn19

bb.cx:                                            ; preds = %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 37) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !221
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239  ; 6 uses
  %.not.i.i.i95 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i95, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !245
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 5 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.13, i64 noundef 9) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @_ZTSN5boost9container6vectorINS0_4test10EmplaceIntEvvEE, i64 noundef 51) ; 0 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !221
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !239  ; 6 uses
  %.not.i.i.i96 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i96, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !245
  %.not.i1.i.i98 = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i98, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit100

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i97
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !221
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit100

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit100: ; preds = %bb.f, %bb.g
  %.0.i.i.i99 = phi i8 [ %i.ac, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %.0.i.i.i99)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) ; 0 uses
  %i.aj = load atomic i8, ptr @_ZGVZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %.preheader28.i37, !prof !289

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit100
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #26
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader28.i37, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 264), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 308), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 352), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 396), i8 0, i64 20, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #26
  br label %.preheader28.i37

.preheader28.i37:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit100, %bb.h, %.preheader.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), i8 0, i64 16, i1 false)
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !585
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !585
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !585
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !247
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !585
  %i.am = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #25 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.am, i8 0, i64 20, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 1, ptr %i.an, align 4, !tbaa !584
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr %i.ap, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store i32 0, ptr %i.aq, align 4, !tbaa !585
  %i.ar = load <14 x i32>, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16
  %i.as = shufflevector <14 x i32> %i.ar, <14 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 12, i32 13>
  %.fr = freeze <8 x i32> %i.as
  %i.at = icmp eq <8 x i32> %.fr, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.au = load <10 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8
  %i.av = shufflevector <10 x i32> %i.au, <10 x i32> poison, <4 x i32> <i32 0, i32 1, i32 8, i32 9>
  %.fr304 = freeze <4 x i32> %i.av
  %i.aw = icmp eq <4 x i32> %.fr304, <i32 0, i32 0, i32 1, i32 2>
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 96), align 16
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 100), align 4
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8
  %.not27.i47.2 = icmp eq i32 %i.bb, 0
  %i.bc = shufflevector <8 x i1> %i.at, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.bc, %i.aw
  %i.bd = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x i1> %i.bd, <8 x i1> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp eq i8 %i.bf, -1
  %op.rdx301 = select i1 %i.bg, i1 %i.ay, i1 false
  %0 = select i1 %op.rdx301, i1 %i.ba, i1 false
  %op.rdx303 = select i1 %0, i1 %.not27.i47.2, i1 false
  br i1 %op.rdx303, label %.lr.ph36.i54.2, label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread

.lr.ph36.i54.2:                                   ; preds = %.preheader28.i37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 132
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr %i.bh, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 148
  store i32 0, ptr %i.bi, align 4, !tbaa !585
  %i.bj = load <14 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8
  %i.bk = shufflevector <14 x i32> %i.bj, <14 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 12, i32 13>
  %.fr306.a = freeze <8 x i32> %i.bk
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 144), align 16
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4
  %.not27.i61.3 = icmp eq i32 %i.bn, 0
  %i.bo = icmp ne <8 x i32> %.fr306.a, <i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3>
  %i.bp = bitcast <8 x i1> %i.bo to i8
  %i.bq = icmp eq i8 %i.bp, 0
  %op.rdx299 = select i1 %i.bq, i1 %i.bm, i1 false
  %op.rdx300 = select i1 %op.rdx299, i1 %.not27.i61.3, i1 false
  br i1 %op.rdx300, label %.lr.ph36.i68.3, label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread

.lr.ph36.i68.3:                                   ; preds = %.lr.ph36.i54.2
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.br, align 4, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  store i32 0, ptr %i.bs, align 4, !tbaa !585
  %i.bt = load <14 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4
  %i.bu = shufflevector <14 x i32> %i.bt, <14 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 12, i32 13>
  %.fr309 = freeze <8 x i32> %i.bu
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 188), align 4
  %i.bw = icmp eq i32 %i.bv, 4
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16
  %.not27.i75.4 = icmp eq i32 %i.bx, 0
  %i.by = icmp ne <8 x i32> %.fr309, <i32 1, i32 2, i32 3, i32 0, i32 0, i32 1, i32 2, i32 3>
  %i.bz = bitcast <8 x i1> %i.by to i8
  %i.ca = icmp eq i8 %i.bz, 0
  %op.rdx297 = select i1 %i.ca, i1 %i.bw, i1 false
  %op.rdx298 = select i1 %op.rdx297, i1 %.not27.i75.4, i1 false
  br i1 %op.rdx298, label %.lr.ph36.i82.4, label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread

.lr.ph36.i82.4:                                   ; preds = %.lr.ph36.i68.3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.am, i64 220
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.cb, align 4, !tbaa !247
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 236
  store i32 5, ptr %i.cc, align 4, !tbaa !585
  %i.cd = load <14 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16
  %i.ce = shufflevector <14 x i32> %i.cd, <14 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 12, i32 13>
  %.fr312 = freeze <8 x i32> %i.ce
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 232), align 8
  %i.cg = icmp eq i32 %i.cf, 4
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test27test_unchecked_emplace_backINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4
  %.not27.i89.5 = icmp eq i32 %i.ch, 5
  %i.ci = icmp ne <8 x i32> %.fr312, <i32 1, i32 2, i32 3, i32 4, i32 0, i32 1, i32 2, i32 3>
  %i.cj = bitcast <8 x i1> %i.ci to i8
  %i.ck = icmp eq i8 %i.cj, 0
  %op.rdx = select i1 %i.ck, i1 %i.cg, i1 false
  %op.rdx296 = select i1 %op.rdx, i1 %.not27.i89.5, i1 false
  br i1 %op.rdx296, label %bb.i, label %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread

_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread: ; preds = %.preheader28.i37, %.lr.ph36.i54.2, %.lr.ph36.i68.3, %.lr.ph36.i82.4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 264) #26
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph36.i82.4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 264) #26
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 5) ; 0 uses
  %i.cm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !221
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !239 ; 6 uses
  %.not.i.i.i101 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i101, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i102

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i102: ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !245
  %.not.i1.i.i103 = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i103, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i102
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 67
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit105

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i102
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !221
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit105

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit105: ; preds = %bb.k, %bb.l
  %.0.i.i.i104 = phi i8 [ %i.cv, %bb.k ], [ %i.cz, %bb.l ]
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i104)
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit105
  %.3 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test10EmplaceIntEvvED2Ev.exit.thread ], [ true, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit105 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test19test_emplace_beforeINS0_6vectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.boost::container::dtl::insert_emplace_proxy.500", align 8 ; 6 uses
  %1 = alloca %"struct.boost::container::dtl::insert_emplace_proxy.500", align 8 ; 6 uses
  %2 = alloca %"struct.boost::container::dtl::insert_emplace_proxy.504", align 8 ; 7 uses
  %3 = alloca %"struct.boost::container::dtl::insert_emplace_proxy.508", align 8 ; 8 uses
  %4 = alloca %"class.boost::container::vector.483", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vector.483", align 8 ; 50 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %13 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %17 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %i.u = alloca i32, align 4                      ; 6 uses
  %i.v = alloca i32, align 4                      ; 6 uses
  %19 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %20 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %23 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %24 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %26 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %27 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %28 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %i.am = alloca i32, align 4                     ; 5 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  %29 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %30 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.ao = alloca i32, align 4                     ; 5 uses
  %i.ap = alloca i32, align 4                     ; 5 uses
  %i.aq = alloca i32, align 4                     ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 5 uses
  %32 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.ar = alloca i32, align 4                     ; 5 uses
  %i.as = alloca i32, align 4                     ; 5 uses
  %33 = alloca %"class.boost::container::vec_iterator.487", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::vec_iterator.493", align 8 ; 2 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.44, i64 noundef 29) ; 0 uses
  %i.av = load ptr, ptr @_ZSt4cout, align 8, !tbaa !221
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !239 ; 6 uses
  %.not.i.i.i255 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i255, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !245
  %.not.i1.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !221
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.be, %bb.c ], [ %i.bi, %bb.d ]
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 5 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.13, i64 noundef 9) ; 0 uses
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @_ZTSN5boost9container6vectorINS0_4test10EmplaceIntEvvEE, i64 noundef 51) ; 0 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !221
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !239 ; 6 uses
  %.not.i.i.i256 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i256, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !245
  %.not.i1.i.i258 = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i258, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !246
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit260

end_hunk_0
