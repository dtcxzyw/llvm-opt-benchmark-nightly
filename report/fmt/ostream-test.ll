Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/ostream-test?download=true
inline.NumInlined: 3177
inline.NumDeleted: 1196
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK3fmt3v126detail16native_formatterIicLNS1_4typeE1EE6formatINS0_7contextEEEDTcldtfp0_3outEERKiRT_:bb.a

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !187 ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !122    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.d, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = and i32 %i.a, 16384
  %.not23 = icmp eq i32 %i.e, 0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %3, align 16, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.f, align 16, !tbaa !911
  %i.g = tail call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %3, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %.sroa.0.0.copyload.i15)
  br i1 %i.g, label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = icmp slt i32 %i.c, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = sub i32 0, %i.c
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %0, align 8, !tbaa !183
  %i.k = lshr i32 %i.j, 10
  %i.l = and i32 %i.k, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit

_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit: ; preds = %bb.e, %bb.f
  %.06.i = phi i64 [ 72057787311456256, %bb.e ], [ %i.q, %bb.f ]
  %.0.i = phi i32 [ %i.i, %bb.e ], [ %i.c, %bb.f ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.06.i, %.sroa.0.0.insert.ext.i
  %i.r = tail call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 4 dereferenceable(16) %0)
  br label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit14

_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit14: ; preds = %bb.c, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit
  %.sroa.010.0.i13 = phi ptr [ %i.r, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit ], [ %.sroa.0.0.copyload.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.s = load i32, ptr %5, align 4, !tbaa !183
  %i.t = lshr i32 %i.s, 6
  %i.u = and i32 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.x = load i32, ptr %5, align 4, !tbaa !183
  %i.y = lshr i32 %i.x, 8
  %i.z = and i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.sroa.0.0.copyload.i16 = load ptr, ptr %2, align 8, !tbaa !187 ; 3 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !122   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.ad, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ae = load i32, ptr %5, align 4, !tbaa !183
  %i.af = and i32 %i.ae, 16384
  %.not24 = icmp eq i32 %i.af, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ac, ptr %4, align 16, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1, ptr %i.ag, align 16, !tbaa !911
  %i.ah = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i16, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr %.sroa.0.0.copyload.i17)
  br i1 %i.ah, label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = icmp slt i32 %i.ac, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = sub i32 0, %i.ac
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit22

bb.k:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %5, align 4, !tbaa !183
  %i.al = lshr i32 %i.ak, 10
  %i.am = and i32 %i.al, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !122
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw i64 %i.aq, 32
  br label %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit22

_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit22: ; preds = %bb.j, %bb.k
  %.06.i18 = phi i64 [ 72057787311456256, %bb.j ], [ %i.ar, %bb.k ]
  %.0.i19 = phi i32 [ %i.aj, %bb.j ], [ %i.ac, %bb.k ]
  %.sroa.0.0.insert.ext.i20 = zext i32 %.0.i19 to i64
  %.sroa.0.0.insert.insert.i21 = or disjoint i64 %.06.i18, %.sroa.0.0.insert.ext.i20
  %i.as = call ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i16, i64 %.sroa.0.0.insert.insert.i21, ptr noundef nonnull align 4 dereferenceable(16) %5)
  br label %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %bb.h, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit22
  %.sroa.010.0.i = phi ptr [ %i.as, %_ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.exit22 ], [ %.sroa.0.0.copyload.i16, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit14
  %.sroa.012.0 = phi ptr [ %.sroa.010.0.i, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit ], [ %.sroa.010.0.i13, %_ZN3fmt3v126detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS0_10locale_refE.exit14 ]
  ret ptr %.sroa.012.0
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #24 comdat {
bb.a:
  %3 = alloca %class.anon.188, align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %1 to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i32, ptr %2, align 4, !tbaa !183    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i10
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %.sroa.039.0.extract.trunc.i, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.022.i = phi i32 [ %i.s, %.lr.ph.i ], [ %.sroa.039.0.extract.trunc.i, %bb.b ] ; 2 uses
  %.02021.i = phi i32 [ %i.f, %.lr.ph.i ], [ 32, %bb.b ]
  %i.f = add i32 %.02021.i, -2                    ; 3 uses
  %i.g = zext i32 %.022.i to i64
  %i.h = mul i64 %i.g, 5497558139                 ; 2 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.k = lshr i64 %i.h, 31
  %i.l = and i64 %i.k, 254
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.j, align 2
  %i.o = lshr i64 %i.h, 39
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = icmp ugt i32 %.022.i, -939524097
  %i.r = select i1 %i.q, i32 33554432, i32 0
  %i.s = or disjoint i32 %i.r, %i.p               ; 3 uses
  %i.t = icmp samesign ugt i32 %i.s, 99
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !912

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.020.lcssa.i = phi i32 [ 32, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %.sroa.039.0.extract.trunc.i, %bb.b ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.u = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.v = add i32 %.020.lcssa.i, -2
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.y = shl nuw nsw i32 %.0.lcssa.i, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  store i16 %i.ab, ptr %i.x, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ac = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.ad = or disjoint i8 %i.ac, 48
  %i.ae = add i32 %.020.lcssa.i, -1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !31
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = and i32 %i.b, 4096
  %.not36 = icmp eq i32 %i.ah, 0                  ; 2 uses
  %.str.236..str.237.i = select i1 %.not36, ptr @.str.237, ptr @.str.236
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i32 [ %i.am, %.split.i ], [ %.sroa.039.0.extract.trunc.i, %bb.e ] ; 2 uses
  %.0.i5.idx = phi i64 [ %.0.i5.add, %.split.i ], [ 32, %bb.e ]
  %i.ai = and i32 %.012.i, 15
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.236..str.237.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !31
  %.0.i5.add = add nsw i64 %.0.i5.idx, -1         ; 4 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i5.add
  store i8 %i.al, ptr %.ptr41, align 1, !tbaa !31
  %i.am = lshr i32 %.012.i, 4                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.am, 0
  br i1 %.not.i6, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !15

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.an = and i32 %i.b, 8192
  %.not37 = icmp eq i32 %i.an, 0
  br i1 %.not37, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ao = select i1 %.not36, i32 30768, i32 22576 ; 2 uses
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = select i1 %.not.i7, i32 %i.ao, i32 %i.ap
  %i.ar = or i32 %i.aq, %.sroa.2.0.extract.trunc.i
  %i.as = add i32 %i.ar, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i32 [ %i.aw, %.split.us.i ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 32, %bb.a ] ; 2 uses
  %i.at = trunc i32 %.012.us.i to i8
  %i.au = and i8 %i.at, 7
  %i.av = or disjoint i8 %i.au, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr40 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.av, ptr %.ptr40, align 1, !tbaa !31
  %i.aw = lshr i32 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, label %.split.us.i, !llvm.loop !15

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8: ; preds = %.split.us.i
  %i.ax = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8
  %gepdiff = sub nsw i64 33, %.0.us.i.idx
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !185
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp sge i64 %gepdiff, %i.ba
  %i.bc = icmp ne i32 %.sroa.039.0.extract.trunc.i, 0
  %or.cond.i = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i9 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bd = select i1 %.not.i9, i32 48, i32 12288
  %i.be = or i32 %i.bd, %.sroa.2.0.extract.trunc.i
  %i.bf = add i32 %i.be, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i10:                                    ; preds = %bb.a, %.split.us.i10
  %.012.us.i11 = phi i32 [ %i.bj, %.split.us.i10 ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i12.idx = phi i64 [ %.0.us.i12.add, %.split.us.i10 ], [ 32, %bb.a ]
  %i.bg = trunc i32 %.012.us.i11 to i8
  %i.bh = and i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 48
  %.0.us.i12.add = add nsw i64 %.0.us.i12.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i12.add
  store i8 %i.bi, ptr %.ptr, align 1, !tbaa !31
  %i.bj = lshr i32 %.012.us.i11, 1                ; 2 uses
  %.not.us.i13 = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i13, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, label %.split.us.i10, !llvm.loop !15

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14: ; preds = %.split.us.i10
  %i.bk = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.bk, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %i.bl = and i32 %i.b, 4096
  %.not39 = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not39, i32 25136, i32 16944 ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = select i1 %.not.i15, i32 %i.bm, i32 %i.bn
  %i.bp = or i32 %i.bo, %.sroa.2.0.extract.trunc.i
  %i.bq = add i32 %i.bp, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.br = trunc i64 %1 to i8
  %i.bs = and i32 %i.b, 7
  %i.bt = icmp eq i32 %i.bs, 1
  %i.bu = zext i1 %i.bt to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 %i.bu, ptr %3, align 1, !tbaa !275
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.br, ptr %i.bv, align 1, !tbaa !276
  %i.bw = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %i.as, %bb.f ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.bf, %bb.h ], [ %.sroa.2.0.extract.trunc.i, %bb.g ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %i.bq, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.c ], [ %.sroa.2.0.extract.trunc.i, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i12.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %.0.i5.add, %bb.f ], [ %.0.i5.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %.0.us.i12.add, %bb.i ], [ %i.w, %bb.c ], [ %i.af, %bb.d ] ; 5 uses
  %i.bx = trunc i64 %.0.i.idx to i32
  %i.by = sub i32 32, %i.bx                       ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !241 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !185 ; 4 uses
  %i.cd = add nsw i32 %i.cc, 1
  %i.ce = or i32 %i.cd, %i.ca
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = lshr i32 %.0, 24                        ; 2 uses
  %i.ch = add i32 %i.by, %i.cg                    ; 4 uses
  br i1 %i.cf, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !75
  %i.cl = add i64 %i.ck, %i.ci                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !74
  %i.co = icmp ugt i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !72
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cl), !inline_history !11
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.cr = and i32 %.0, 16777215                   ; 2 uses
  %.not.i48 = icmp eq i32 %i.cr, 0
  br i1 %.not.i48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 32
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.cj, align 8, !tbaa !75
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cu = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.dh, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.cv = load i64, ptr %i.cm, align 8, !tbaa !74
  %i.cw = sub i64 %i.cv, %i.cu
  %gepdiff52 = sub nsw i64 32, %.02732.i.i.idx    ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %gepdiff52
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !72
  %i.cz = add i64 %gepdiff52, %i.cu
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cz), !inline_history !14
  %i.da = load i64, ptr %i.cj, align 8, !tbaa !75 ; 2 uses
  %i.db = load i64, ptr %i.cm, align 8, !tbaa !74
  %i.dc = sub i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %gepdiff52, i64 %i.dc)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.da, %bb.n ], [ %i.cu, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.dd, %bb.n ], [ %gepdiff52, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.de = load ptr, ptr %0, align 8, !tbaa !73
  %i.df = getelementptr i8, ptr %i.de, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !31
  %.pre37.i.i = load i64, ptr %i.cj, align 8, !tbaa !75
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.dg = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.dh = add i64 %i.dg, %.025.i.i                ; 2 uses
  store i64 %i.dh, ptr %i.cj, align 8, !tbaa !75
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 32
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !3

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.042.i49 = phi i32 [ %i.cr, %.lr.ph ], [ %i.dr, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.di = trunc i32 %.042.i49 to i8
  %i.dj = load i64, ptr %i.cj, align 8, !tbaa !75 ; 2 uses
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %i.dl = load i64, ptr %i.cm, align 8, !tbaa !74
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %i.cs, align 8, !tbaa !72
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dk), !inline_history !13
  %.pre.i.i16 = load i64, ptr %i.cj, align 8, !tbaa !75 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dk, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.do = phi i64 [ %i.dj, %bb.p ], [ %.pre.i.i16, %bb.q ]
  %i.dp = load ptr, ptr %0, align 8, !tbaa !73
  store i64 %.pre-phi.i.i, ptr %i.cj, align 8, !tbaa !75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 %i.di, ptr %i.dq, align 1, !tbaa !31
  %i.dr = lshr i32 %.042.i49, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !913

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.ds = and i32 %i.b, 56
  %i.dt = icmp eq i32 %i.ds, 32
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.ca, i32 %i.ch)
  %spec.select35 = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 %i.ch)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.du = icmp sgt i32 %i.cc, %i.by
  br i1 %i.du, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.dv = add i32 %i.cc, %i.cg
  %i.dw = sub nsw i32 %i.cc, %i.by
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.626.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.dw, %bb.u ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %i.ch, %bb.t ], [ %spec.select35, %bb.s ], [ %i.dv, %bb.u ]
  %i.dx = zext i32 %.sroa.025.0 to i64            ; 2 uses
  %i.dy = zext i32 %i.ca to i64
  %i.dz = tail call i64 @llvm.usub.sat.i64(i64 %i.dy, i64 %i.dx) ; 4 uses
  %i.ea = lshr i32 %i.b, 3
  %i.eb = and i32 %i.ea, 7
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @.str.256, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !31
  %i.ef = sext i8 %i.ee to i64
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = lshr i64 %i.dz, %i.eg                   ; 4 uses
  %i.ei = sub nsw i64 %i.dz, %i.eh
  %i.ej = lshr i32 %i.b, 15
  %i.ek = and i32 %i.ej, 7
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %i.dz, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !75
  %i.ep = add i64 %i.eo, %i.dx
  %i.eq = add i64 %i.ep, %i.em                    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !74
  %i.et = icmp ugt i64 %i.eq, %i.es
  br i1 %i.et, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
end_hunk_0
