inline.NumInlined: 688
inline.NumDeleted: 358
begin_hunk_0_@_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2EmRKNS0_9DataRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io15JpegInfoBuilder24MaybeCaptureSegmentBytesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_11JpegSegmentEPSt6vectorIhSaIhEE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(384) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit20, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.b, !llvm.loop !106

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNSt6vectorIhSaIhEE5clearEv.exit20, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt6vectorIhSaIhEE5clearEv.exit20, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !103    ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.x, ptr %i.y, align 8, !tbaa !107
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.aa = load i64, ptr %2, align 8, !tbaa !64    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72 ; 3 uses
  %i.ad = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %i.aa) ; 4 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ad
  br i1 %i.ak, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.f
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #22 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.x, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aj) #20
  %.pre.pre = load i64, ptr %2, align 8, !tbaa !64
  %.pre25.pre = load i64, ptr %i.ab, align 8, !tbaa !72
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %.pre25 = phi i64 [ %.pre25.pre, %bb.g ], [ %i.ac, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i ]
  %.pre = phi i64 [ %.pre.pre, %bb.g ], [ %i.aa, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i ]
  store ptr %i.al, ptr %3, align 8, !tbaa !103
  store ptr %i.al, ptr %i.y, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store ptr %i.am, ptr %i.af, align 8, !tbaa !104
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %i.an = phi i64 [ %i.ac, %bb.f ], [ %.pre25, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 2 uses
  %i.ao = phi i64 [ %i.aa, %bb.f ], [ %.pre, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  br i1 %i.ap, label %.lr.ph, label %_ZNSt6vectorIhSaIhEE5clearEv.exit20

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.p
  %.01724 = phi i64 [ %i.ao, %.lr.ph ], [ %i.bn, %bb.p ] ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !65
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !68
  %i.au = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %.01724, ptr noundef %i.as, ptr noundef %i.at) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.au to i8 ; 2 uses
  %i.av = and i16 %i.au, 256
  %.not = icmp eq i16 %i.av, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !107
  %.not.i.i18 = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i18, label %_ZNSt6vectorIhSaIhEE5clearEv.exit20, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i19:      ; preds = %bb.i
  store ptr %i.aw, ptr %i.y, align 8, !tbaa !107
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit20

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !107 ; 3 uses
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !104
  %.not.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %.sroa.0.0.extract.trunc, ptr %i.ay, align 1, !tbaa !52
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !107
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %3, align 8, !tbaa !103   ; 4 uses
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 8 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.m, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i, %i.bf  ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i21 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i21, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %4

4:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %4, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %6 = phi ptr [ %5, %4 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i ] ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.bf ; 2 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %7, align 1, !tbaa !52
  %8 = icmp sgt i64 %i.bf, 0
  br i1 %8, label %bb.n, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 1
  %.not.i17.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %6, ptr %3, align 8, !tbaa !103
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 %i.bk
  store ptr %i.bm, ptr %i.af, align 8, !tbaa !104
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.k
  %i.bn = add i64 %.01724, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.an
  br i1 %exitcond.not, label %_ZNSt6vectorIhSaIhEE5clearEv.exit20, label %bb.h, !llvm.loop !108

_ZNSt6vectorIhSaIhEE5clearEv.exit20:              ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.a, %bb.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i19, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io8JpegInfo14AddSegmentInfoERKNS0_15JpegSegmentInfoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.f, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !52
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK22photos_editing_formats8image_io15JpegInfoBuilder12IsMpfSegmentERKNS0_11JpegSegmentE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.photos_editing_formats::image_io::JpegMarker", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load i64, ptr %1, align 8, !tbaa !64
  %i.b = add i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %i.g to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %2, align 1
  %i.h = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.i = load i64, ptr %1, align 8
  %.v.i = select i1 %i.h, i64 4, i64 2
  %i.j = add i64 %i.i, %.v.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.k = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io11JpegSegment24BytesAtLocationStartWithEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j, ptr noundef nonnull @_ZN22photos_editing_formats8image_ioL4kMpfE)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK22photos_editing_formats8image_io15JpegInfoBuilder19IsPrimaryXmpSegmentERKNS0_11JpegSegmentE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.photos_editing_formats::image_io::JpegMarker", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load i64, ptr %1, align 8, !tbaa !64
  %i.b = add i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %i.g to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %2, align 1
  %i.h = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.i = load i64, ptr %1, align 8
  %.v.i = select i1 %i.h, i64 4, i64 2
  %i.j = add i64 %i.i, %.v.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.k = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io11JpegSegment24BytesAtLocationStartWithEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j, ptr noundef nonnull @_ZN22photos_editing_formats8image_ioL6kXmpIdE)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK22photos_editing_formats8image_io15JpegInfoBuilder5HasIdERKNS0_11JpegSegmentEPKc(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.photos_editing_formats::image_io::JpegMarker", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load i64, ptr %1, align 8, !tbaa !64
  %i.b = add i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %i.g to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %3, align 1
  %i.h = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.i = load i64, ptr %1, align 8
  %.v.i = select i1 %i.h, i64 4, i64 2
  %i.j = add i64 %i.i, %.v.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.k = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io11JpegSegment22BytesAtLocationContainEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j, ptr noundef %2)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io15JpegInfoBuilder17SetPrimaryXmpGuidERKNS0_11JpegSegmentE(ptr noundef nonnull align 8 captures(address) dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.photos_editing_formats::image_io::JpegMarker", align 1 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load i64, ptr %1, align 8, !tbaa !64
  %i.b = add i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %i.g to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %2, align 1
  %i.h = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.i = load i64, ptr %1, align 8
  %.v.i = select i1 %i.h, i64 4, i64 2
  %i.j = add i64 %i.i, %.v.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZNK22photos_editing_formats8image_io11JpegSegment23ExtractXmpPropertyValueB5cxx11EmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j, ptr noundef nonnull @_ZN22photos_editing_formats8image_ioL17kXmpHasExtendedIdE)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %3, align 8, !tbaa !61     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.q, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %3, %i.k
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !109

bb.c:                                             ; preds = %bb.b
  switch i64 %i.s, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.o, align 1, !tbaa !52
  store i8 %i.u, ptr %i.l, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.o

_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !116

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #21
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #23
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN22photos_editing_formats8image_io15JpegSegmentInfoEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 80 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit38, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32
  %.016.i.i.i.i.i30 = phi ptr [ %i.ab, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  invoke void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.016.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(80) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32 unwind label %bb.h

_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30, i64 80 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit38, label %.lr.ph.i.i.i.i.i29, !llvm.loop !116

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_(ptr noundef nonnull %i.z, ptr noundef nonnull %.016.i.i.i.i.i30)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit38: ; preds = %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32, %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ab, %_ZSt10_ConstructIN22photos_editing_formats8image_io15JpegSegmentInfoEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i32 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit38, %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit38 ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i:            ; preds = %bb.m, %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !52
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #20
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !115

_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io15JpegSegmentInfoEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN22photos_editing_formats8image_io15JpegSegmentInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit38
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !102
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #20
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !114
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !102
  ret void

bb.o:                                             ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.e
  %i.bc = extractvalue { ptr, i32 } %i.w, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #19 ; 0 uses
  tail call void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.q) #19
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit41

bb.p:                                             ; preds = %bb.o, %bb.j
  %.0.lpad-body.ph = phi ptr [ %i.z, %bb.j ], [ %i.p, %bb.o ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.bb, %bb.o ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoEEvT_S4_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit41 unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit41
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io15JpegSegmentInfoES2_EvT_S4_RSaIT0_E.exit.thread, %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #21
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bg

bb.s:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io15JpegSegmentInfoESaIS2_EE13_M_deallocateEPS2_m.exit41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io15JpegSegmentInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.g, ptr %i.a, align 8, !tbaa !71
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.j, ptr %i.d, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !52
  store i8 %i.l, ptr %i.k, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !51
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !103  ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i, label %.noexc5, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !109

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #22
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.z, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !104
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !117 ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %.noexc5
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc5
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !52
  store i8 %i.al, ptr %i.aa, align 1, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !107
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !52
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.an
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i, !prof !109

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #20
end_hunk_1
