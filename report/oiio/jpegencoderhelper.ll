Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegencoderhelper?download=true
inline.NumInlined: 369
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8ultrahdr17JpegEncoderHelper13compressImageEPK14uhdr_raw_imageiPKvm:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  store ptr %i.g, ptr %i.e, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !6
  store <2 x i32> %i.i, ptr %i.b, align 8, !tbaa !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !6
  store i32 %i.l, ptr %i.j, align 8, !tbaa !6
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !104
  %i.q = load i32, ptr %2, align 8, !tbaa !105
  call void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 !guid !106 {
bb.a:
  tail call void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 initializes((0, 264)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !116 {
bb.a:
  %10 = alloca %struct.jpeg_compress_struct, align 8 ; 28 uses
  %11 = alloca %"struct.ultrahdr::jpeg_error_mgr_impl", align 8 ; 6 uses
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 16), align 8, !tbaa !30 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %i.f = icmp slt i32 %i.e, %6                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !107

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8)
  br i1 %i.g, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = icmp slt i32 %6, %i.i
  br i1 %i.j, label %select.unfold, label %.lr.ph.i.i.i53

select.unfold:                                    ; preds = %bb.b, %bb.a, %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  store i32 3, ptr %0, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.k, align 4, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %6) #25 ; 0 uses
  br label %.critedge51

.lr.ph.i.i.i53:                                   ; preds = %bb.b, %.lr.ph.i.i.i53
  %.012.i.i.i54 = phi ptr [ %.1.i.i.i59, %.lr.ph.i.i.i53 ], [ %i.c, %bb.b ] ; 3 uses
  %.0811.i.i.i55 = phi ptr [ %.19.i.i.i56, %.lr.ph.i.i.i53 ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i54, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = icmp slt i32 %i.o, %6                    ; 2 uses
  %.19.i.i.i56 = select i1 %i.p, ptr %.0811.i.i.i55, ptr %.012.i.i.i54 ; 4 uses
  %.1.in.v.i.i.i57 = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i58 = getelementptr inbounds nuw i8, ptr %.012.i.i.i54, i64 %.1.in.v.i.i.i57
  %.1.i.i.i59 = load ptr, ptr %.1.in.i.i.i58, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %.1.i.i.i59, null
  br i1 %.not.i.i.i60, label %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61, label %.lr.ph.i.i.i53, !llvm.loop !107

_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61: ; preds = %.lr.ph.i.i.i53
  %i.q = icmp eq ptr %.19.i.i.i56, getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8)
  br i1 %i.q, label %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i56, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  %i.t = icmp slt i32 %6, %i.s
  %spec.select.i.i62 = select i1 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), ptr %.19.i.i.i56
  br label %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64

_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64: ; preds = %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61, %bb.c
  %.sroa.0.0.i.i63 = phi ptr [ %spec.select.i.i62, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdr14sample_factorsE, i64 8), %_ZNSt8_Rb_treeI12uhdr_img_fmtSt4pairIKS0_St6vectorIiSaIiEEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i61 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i63, i64 40
  %i.v = call ptr @jpeg_std_error(ptr noundef nonnull %11)
  store ptr %i.v, ptr %10, align 8, !tbaa !117
  store ptr @_ZN8ultrahdrL15jpegrerror_exitEP18jpeg_common_struct, ptr %11, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @_ZN8ultrahdrL18outputErrorMessageEP18jpeg_common_struct, ptr %i.w, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.y = call i32 @_setjmp(ptr noundef nonnull %i.x) #27
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64
  call void @jpeg_CreateCompress(ptr noundef nonnull %10, i32 noundef 80, i64 noundef 584)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN8ultrahdrL15initDestinationEP20jpeg_compress_struct, ptr %i.aa, align 8, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @_ZN8ultrahdrL17emptyOutputBufferEP20jpeg_compress_struct, ptr %i.ab, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @_ZN8ultrahdrL20terminateDestinationEP20jpeg_compress_struct, ptr %i.ac, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !69
  %.not.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !69
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.ah, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store i32 %4, ptr %i.ai, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 52 ; 4 uses
  store i32 %5, ptr %i.aj, align 4, !tbaa !71
  switch i32 %6, label %bb.g [
    i32 11, label %bb.h
    i32 2, label %bb.e
    i32 10, label %bb.f
    i32 9, label %bb.f
    i32 8, label %bb.f
    i32 7, label %bb.f
    i32 6, label %bb.f
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  store i32 1, ptr %0, align 4, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %6) #25 ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit, %bb.e, %bb.f
  %.042 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %_ZNSt6vectorIhSaIhEE5clearEv.exit ]
  %i.an = phi <2 x i32> [ splat (i32 1), %bb.e ], [ splat (i32 3), %bb.f ], [ <i32 3, i32 2>, %_ZNSt6vectorIhSaIhEE5clearEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 56
  store <2 x i32> %i.an, ptr %i.ao, align 8, !tbaa !72
  call void @jpeg_set_defaults(ptr noundef nonnull %10)
  call void @jpeg_set_quality(ptr noundef nonnull %10, i32 noundef %7, i32 noundef 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 92
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !73 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !75  ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76 ; 5 uses
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !123
  %i.aw = uitofp i32 %i.av to float               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.ba = uitofp i32 %i.az to float               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 28 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.aq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bd = getelementptr nuw i8, ptr %i.au, i64 8  ; 3 uses
  %i.be = mul nuw nsw i64 %wide.trip.count, 96
  %i.bf = getelementptr i8, ptr %i.au, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -80    ; 3 uses
  %i.bh = shl nuw nsw i64 %wide.trip.count, 2
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 100    ; 3 uses
  %12 = getelementptr i8, ptr %i.as, i64 32       ; 2 uses
  %13 = shl nuw nsw i64 %wide.trip.count, 3
  %i.bk = getelementptr i8, ptr %i.as, i64 %13    ; 2 uses
  %bound0 = icmp ult ptr %i.bd, %i.bj
  %bound1 = icmp ult ptr %i.ay, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %bound0110 = icmp ult ptr %i.bd, %12
  %bound1111 = icmp ult ptr %i.ax, %i.bg
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx = or i1 %found.conflict, %found.conflict112
  %bound0113 = icmp ult ptr %i.bd, %i.bk
  %bound1114 = icmp ult ptr %i.as, %i.bg
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx, %found.conflict115
  %bound0117 = icmp ult ptr %i.ay, %12
  %bound1118 = icmp ult ptr %i.ax, %i.bj
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %i.ay, %i.bk
  %bound1122 = icmp ult ptr %i.as, %i.bj
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  br i1 %conflict.rdx124, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.bl = load i32, ptr %i.ax, align 4, !tbaa !6, !alias.scope !124
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.bm = sitofp <2 x i32> %broadcast.splatinsert to <2 x float>
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = load i32, ptr %i.bb, align 4, !tbaa !6, !alias.scope !124
  %broadcast.splatinsert125 = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.bp = sitofp <2 x i32> %broadcast.splatinsert125 to <2 x float>
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <2 x float> poison, float %i.aw, i64 0
  %broadcast.splat128 = shufflevector <2 x float> %broadcast.splatinsert127, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <2 x float> poison, float %i.ba, i64 0
  %broadcast.splat130 = shufflevector <2 x float> %broadcast.splatinsert129, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.br = shl nuw nsw i64 %index, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.br
  %wide.vec = load <4 x i32>, ptr %i.bs, align 4, !tbaa !6, !alias.scope !125 ; 3 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 108
  %i.bz = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.bz, ptr %i.bv, align 8, !tbaa !6, !alias.scope !126, !noalias !127
  %i.ca = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.ca, ptr %i.bw, align 8, !tbaa !6, !alias.scope !126, !noalias !127
  %i.cb = sitofp <2 x i32> %strided.vec to <2 x float>
  %i.cc = fmul nnan contract <2 x float> %broadcast.splat128, %i.cb
  %i.cd = fdiv contract <2 x float> %i.cc, %i.bn
  %i.ce = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cd)
  %i.cf = fptoui <2 x float> %i.ce to <2 x i32>
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  store <2 x i32> %i.cf, ptr %i.cg, align 8, !tbaa !6, !alias.scope !128, !noalias !129
  %i.ch = load i32, ptr %i.bx, align 4, !tbaa !78, !alias.scope !126, !noalias !127
  %i.ci = load i32, ptr %i.by, align 4, !tbaa !78, !alias.scope !126, !noalias !127
  %i.cj = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.ck = insertelement <2 x i32> %i.cj, i32 %i.ci, i64 1
  %i.cl = sitofp <2 x i32> %i.ck to <2 x float>
  %i.cm = fmul nnan contract <2 x float> %broadcast.splat130, %i.cl
  %i.cn = fdiv contract <2 x float> %i.cm, %i.bq
  %i.co = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cn)
  %i.cp = fptoui <2 x float> %i.co to <2 x i32>
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  store <2 x i32> %i.cp, ptr %i.cq, align 4, !tbaa !6, !alias.scope !128, !noalias !129
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.h
  %.not = icmp eq i32 %6, 11                      ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !6  ; 2 uses
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !132
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 12 ; 2 uses
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !78
  %i.cz = sitofp i32 %i.ct to float
  %i.da = fmul nnan contract float %i.cz, %i.aw
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !6
  %i.dc = sitofp i32 %i.db to float
  %i.dd = fdiv contract float %i.da, %i.dc
  %i.de = call contract noundef float @llvm.ceil.f32(float %i.dd)
  %i.df = fptoui float %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !6
  %i.dh = load i32, ptr %i.cy, align 4, !tbaa !78
  %i.di = sitofp i32 %i.dh to float
  %i.dj = fmul nnan contract float %i.ba, %i.di
  %i.dk = load i32, ptr %i.bb, align 4, !tbaa !6
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fdiv contract float %i.dj, %i.dl
  %i.dn = call contract noundef float @llvm.ceil.f32(float %i.dm)
  %i.do = fptoui float %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !114

bb.i:                                             ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 288
  store i32 1, ptr %i.dq, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 312
  store i32 0, ptr %i.dr, align 8, !tbaa !134
  call void @jpeg_start_compress(ptr noundef nonnull %10, i32 noundef 1)
  %i.ds = icmp ne ptr %8, null
  %i.dt = icmp ne i64 %9, 0
  %or.cond12 = and i1 %i.ds, %i.dt
  br i1 %or.cond12, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.du = trunc i64 %9 to i32
  call void @jpeg_write_marker(ptr noundef nonnull %10, i32 noundef 226, ptr noundef nonnull %8, i32 noundef %i.du)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.042, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.dv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 255, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 80) #25 ; 0 uses
  %i.dw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23
  %i.dx = trunc i64 %i.dw to i32
  call void @jpeg_write_marker(ptr noundef nonnull %10, i32 noundef 254, ptr noundef nonnull %i.a, i32 noundef %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 340 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79 ; 2 uses
  %i.ea = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.eb = icmp ult i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph75, label %.loopexit

.critedge:                                        ; preds = %.lr.ph75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ec = load i32, ptr %i.dy, align 4, !tbaa !79 ; 2 uses
  %i.ed = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.ee = icmp ult i32 %i.ec, %i.ed
  br i1 %i.ee, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader, %.critedge
  %i.ef = phi i32 [ %i.ec, %.critedge ], [ %i.dz, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.eg = load ptr, ptr %2, align 8, !tbaa !36
  %i.eh = load i32, ptr %3, align 4, !tbaa !6
  %i.ei = mul i32 %i.ef, 3
  %i.ej = mul i32 %i.ei, %i.eh
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ek
  store ptr %i.el, ptr %i.b, align 8, !tbaa !36
  %i.em = call i32 @jpeg_write_scanlines(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i32 noundef 1) ; 2 uses
  %.not49 = icmp eq i32 %i.em, 1
  br i1 %.not49, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph75
  store i32 1, ptr %0, align 4, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.en, align 4, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eo, i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.em, i32 noundef 1) #25 ; 0 uses
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.critedge51, !llvm.loop !115

bb.p:                                             ; preds = %bb.n
  call void @_ZN8ultrahdr17JpegEncoderHelper13compressYCbCrEP20jpeg_compress_structPPKhPKj(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %3)
  %i.eq = load i32, ptr %0, align 4, !tbaa !42
  %.not48 = icmp eq i32 %i.eq, 0
  br i1 %.not48, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

bb.r:                                             ; preds = %_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEE4findERS7_.exit64
  store i32 1, ptr %0, align 4, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.er, align 4, !tbaa !43
  %i.es = load ptr, ptr %10, align 8, !tbaa !117
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !80
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void %i.eu(ptr noundef nonnull %10, ptr noundef nonnull %i.ev)
  call void @jpeg_destroy_compress(ptr noundef nonnull %10)
  br label %.critedge51

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_jpegencoderhelper.cpp:bb.a
.loopexit.i:                                      ; preds = %_ZNSt4pairIK12uhdr_img_fmtSt6vectorIiSaIiEEED2Ev.exit209.i, %.body.i, %.body.thread307.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn306.i = phi { ptr, i32 } [ %i.cy, %.body.thread307.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt4pairIK12uhdr_img_fmtSt6vectorIiSaIiEEED2Ev.exit209.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn306.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt4pairIK12uhdr_img_fmtSt6vectorIiSaIiEEED2Ev.exit.6.i, %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %i.fh = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapI12uhdr_img_fmtSt6vectorIiSaIiEESt4lessIS0_ESaISt4pairIKS0_S3_EEED2Ev, ptr nonnull @_ZN8ultrahdr14sample_factorsE, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind returns_twice }
attributes #28 = { cold nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 -6271654479066796508}
!8 = !{i64 -8455190618410100755}
!9 = !{i64 7825578278707229671}
!10 = !{i64 6137234843586308195}
!11 = !{i64 6688049381283866126}
!12 = !{i64 7268221242252404377}
!13 = !{i64 -8047083830598233824}
!14 = !{i64 -4227780511191914515}
!15 = !{i64 1069405855981459787}
!16 = !{i64 1807500214907235454}
!17 = !{i64 4029769776489522135}
!18 = !{i64 3601106132145706863}
!19 = !{i64 1902167642931310777}
!20 = !{i64 -2972101071142074491}
!21 = !{i64 5285598135222664028}
!22 = !{i64 2439655722610343064}
!23 = !{i64 2412314959268824392}
!24 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!25 = !{!"any pointer", !4, i64 0}
!26 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !25, i64 0}
!27 = !{!"_ZTSSt18_Rb_tree_node_base", !24, i64 0, !26, i64 8, !26, i64 16, !26, i64 24}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSSt15_Rb_tree_header", !27, i64 0, !28, i64 32}
!30 = !{!29, !26, i64 8}
!31 = !{!26, !26, i64 0}
!32 = !{!"_ZTS12uhdr_img_fmt", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 omnipotent char", !25, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTS16uhdr_color_gamut", !4, i64 0}
!38 = !{!"_ZTS19uhdr_color_transfer", !4, i64 0}
!39 = !{!"_ZTS16uhdr_color_range", !4, i64 0}
!40 = !{!"_ZTS14uhdr_codec_err", !4, i64 0}
!41 = !{!"_ZTS15uhdr_error_info", !40, i64 0, !5, i64 4, !4, i64 8}
!42 = !{!41, !40, i64 0}
!43 = !{!41, !5, i64 4}
!44 = !{!"p1 _ZTS14jpeg_error_mgr", !25, i64 0}
!45 = !{!"p1 _ZTS15jpeg_memory_mgr", !25, i64 0}
!46 = !{!"p1 _ZTS17jpeg_progress_mgr", !25, i64 0}
!47 = !{!"p1 _ZTS20jpeg_destination_mgr", !25, i64 0}
!48 = !{!"_ZTS13J_COLOR_SPACE", !4, i64 0}
!49 = !{!"double", !4, i64 0}
!50 = !{!"_ZTS12J_DCT_METHOD", !4, i64 0}
!51 = !{!"short", !4, i64 0}
!52 = !{!"p1 int", !25, i64 0}
!53 = !{!"p1 _ZTS16jpeg_comp_master", !25, i64 0}
!54 = !{!"p1 _ZTS22jpeg_c_main_controller", !25, i64 0}
!55 = !{!"p1 _ZTS22jpeg_c_prep_controller", !25, i64 0}
!56 = !{!"p1 _ZTS22jpeg_c_coef_controller", !25, i64 0}
!57 = !{!"p1 _ZTS18jpeg_marker_writer", !25, i64 0}
!58 = !{!"p1 _ZTS20jpeg_color_converter", !25, i64 0}
!59 = !{!"p1 _ZTS16jpeg_downsampler", !25, i64 0}
!60 = !{!"p1 _ZTS16jpeg_forward_dct", !25, i64 0}
!61 = !{!"p1 _ZTS20jpeg_entropy_encoder", !25, i64 0}
!62 = !{!"_ZTS20jpeg_compress_struct", !44, i64 0, !45, i64 8, !46, i64 16, !25, i64 24, !5, i64 32, !5, i64 36, !47, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !48, i64 60, !49, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !48, i64 96, !25, i64 104, !4, i64 112, !4, i64 144, !4, i64 160, !4, i64 192, !4, i64 224, !4, i64 240, !4, i64 256, !5, i64 272, !25, i64 280, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !50, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !4, i64 329, !4, i64 330, !51, i64 332, !51, i64 334, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 376, !5, i64 408, !5, i64 412, !5, i64 416, !4, i64 420, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !52, i64 480, !5, i64 488, !53, i64 496, !54, i64 504, !55, i64 512, !56, i64 520, !57, i64 528, !58, i64 536, !59, i64 544, !60, i64 552, !61, i64 560, !25, i64 568, !5, i64 576}
!63 = !{!"any p2 pointer", !25, i64 0}
!64 = !{!"p2 omnipotent char", !63, i64 0}
!65 = !{!"_ZTS14jpeg_error_mgr", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !28, i64 128, !64, i64 136, !5, i64 144, !64, i64 152, !5, i64 160, !5, i64 164}
!66 = !{!"_ZTS20jpeg_destination_mgr", !35, i64 0, !28, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!67 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!68 = !{!67, !35, i64 0}
!69 = !{!67, !35, i64 8}
!70 = !{!62, !47, i64 40}
!71 = !{!62, !5, i64 52}
!72 = !{!4, !4, i64 0}
!73 = !{!62, !5, i64 92}
!74 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!75 = !{!74, !52, i64 0}
!76 = !{!62, !25, i64 104}
!77 = !{!"_ZTS19jpeg_component_info", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !25, i64 80, !25, i64 88}
!78 = !{!77, !5, i64 12}
!79 = !{!62, !5, i64 340}
!80 = !{!65, !25, i64 24}
!81 = !{!"_ZTS18jpeg_common_struct", !44, i64 0, !45, i64 8, !46, i64 16, !25, i64 24, !5, i64 32, !5, i64 36}
!82 = !{!81, !44, i64 0}
!83 = !{!66, !35, i64 0}
!84 = !{!66, !28, i64 8}
!85 = !{!74, !52, i64 16}
!86 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !74, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorIiSaIiEE", !87, i64 0}
!89 = !{!"_ZTSSt4pairIK12uhdr_img_fmtSt6vectorIiSaIiEEE", !32, i64 0, !88, i64 8}
!90 = !{!89, !32, i64 0}
!91 = !{!74, !52, i64 8}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = !{i64 -378815828514436632}
!95 = !{!29, !24, i64 0}
!96 = !{!29, !26, i64 16}
!97 = !{!29, !26, i64 24}
!98 = !{!29, !28, i64 32}
!99 = !{i64 -8823860350484835802}
!100 = !{i64 4454034208185889270}
!101 = !{!25, !25, i64 0}
!102 = !{!"_ZTS14uhdr_raw_image", !32, i64 0, !37, i64 4, !38, i64 8, !39, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !4, i64 48}
!103 = !{!102, !5, i64 16}
!104 = !{!102, !5, i64 20}
!105 = !{!102, !32, i64 0}
!106 = !{i64 -2083468557261889732}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !108}
!113 = distinct !{!113, !34, !130, !131}
!114 = distinct !{!114, !34, !130}
!115 = distinct !{!115, !34}
!116 = !{i64 -8689785927940971618}
!117 = !{!62, !44, i64 0}
!118 = !{!65, !25, i64 0}
!119 = !{!65, !25, i64 16}
!120 = !{!66, !25, i64 16}
!121 = !{!66, !25, i64 24}
!122 = !{!66, !25, i64 32}
!123 = !{!62, !5, i64 48}
!124 = !{!109}
!125 = !{!110}
!126 = !{!111}
!127 = !{!112, !109, !110}
!128 = !{!112}
!129 = !{!109, !110}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!77, !5, i64 8}
!133 = !{!62, !5, i64 288}
!134 = !{!62, !50, i64 312}
!135 = !{i64 -7367739965619879447}
!136 = !{!"_ZTS21uhdr_compressed_image", !25, i64 0, !28, i64 8, !28, i64 16, !37, i64 24, !38, i64 28, !39, i64 32}
!137 = !{!136, !25, i64 0}
!138 = !{!136, !28, i64 8}
!139 = !{!136, !28, i64 16}
!140 = !{!136, !37, i64 24}
!141 = !{!136, !38, i64 28}
!142 = !{!136, !39, i64 32}
!143 = !{i64 4745663755148820201}
!144 = !{i64 -2232366860100121228}
!145 = !{!"p1 _ZTS8_IO_FILE", !25, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{i64 6245197186641159256}
!148 = !{i64 -2661442155047772607}
!149 = !{i64 5853352368250103272}
!150 = distinct !{!150, i1 true, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!151 = distinct !{!151, !150, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!152 = distinct !{!152, !34}
!153 = distinct !{!153, i1 true, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!154 = distinct !{!154, !153, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!155 = distinct !{!155, !164}
!156 = distinct !{!156, !34}
!157 = distinct !{!157, !34}
!158 = distinct !{!158, !34}
!159 = distinct !{!159, !34}
!160 = !{i64 6862247437365160955}
!161 = !{!28, !28, i64 0}
!162 = !{!151}
!163 = !{!154}
!164 = !{!"llvm.loop.unroll.disable"}
!165 = !{!64, !64, i64 0}
!166 = !{!62, !5, i64 352}
!167 = !{i64 1080103601501470593}
!168 = !{i64 7192104122008673275}
!169 = distinct !{!169, !34}
!170 = !{i64 -6058545999290387241}
!171 = !{!27, !26, i64 24}
!172 = !{!27, !26, i64 16}
!173 = !{i64 7662346941529985187}
!174 = !{!67, !35, i64 16}
!175 = !{i64 -8711361267326273451}
!176 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!177 = !{!52, !52, i64 0}
!178 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!179 = !{i64 -5087037021726726511}
end_hunk_1
