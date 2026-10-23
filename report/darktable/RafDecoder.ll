Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RafDecoder?download=true
inline.NumInlined: 1006
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed10RafDecoder16applyCorrectionsEPKNS_6CameraE:bb.a

._crit_edge.split:                                ; preds = %bb.am
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge195.split, label %.preheader, !llvm.loop !243

bb.ak:                                            ; preds = %.preheader, %bb.am
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.am ] ; 4 uses
  %i.iy = trunc nuw nsw i64 %indvars.iv to i32
  %i.iz = xor i32 %i.iy, -1
  %i.ja = add i32 %i.he, %i.iz                    ; 2 uses
  %i.jb = add nuw nsw i64 %indvars.iv, %i.hk      ; 3 uses
  br i1 %i.hl, label %bb.al, label %.split.us

bb.al:                                            ; preds = %bb.ak
  %i.jc = load i32, ptr %i.fl, align 8, !tbaa !254
  %i.jd = trunc nuw i64 %i.jb to i32
  %i.je = icmp sgt i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.am, label %.split.us

bb.am:                                            ; preds = %bb.al
  %i.jf = add nuw nsw i64 %indvars.iv, %i.fr      ; 2 uses
  %i.jg = icmp samesign ult i64 %i.jf, %i.fs
  call void @llvm.assume(i1 %i.jg)
  call void @llvm.assume(i1 %i.hh)
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.jf
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !272
  %i.jj = icmp samesign ult i64 %i.jb, %i.ft
  call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp samesign ult i32 %i.ja, %i.fc
  call void @llvm.assume(i1 %i.jk)
  %i.jl = mul nuw nsw i32 %i.ja, %i.ff
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.jb
  store i16 %i.ji, ptr %i.jo, align 2, !tbaa !272
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.ak, !llvm.loop !242

bb.an:                                            ; preds = %bb.q, %bb.r, %.noexc108, %.noexc109, %.noexc110, %.noexc111, %.noexc112, %.noexc113, %.noexc114, %_ZN8rawspeed8RawImage6createERKNS_8iPoint2DENS_12RawImageTypeEj.exit, %.split.us
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.split.us:                                        ; preds = %bb.ak, %bb.al, %bb.u, %bb.t
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10RafDecoder16applyCorrectionsEPKNS_6CameraE) #13
          to label %bb.ao unwind label %bb.an

bb.ao:                                            ; preds = %.split.us
  unreachable

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.l, %bb.k
  %i.jq = load i8, ptr %i.e, align 1, !tbaa !245, !range !148, !noundef !130
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !69
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.0 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.0159.0.insert.ext = zext i32 %.sroa.0159.0 to i64
  %.sroa.0159.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.0159.0.insert.ext
  %.sroa.12.0.insert.ext = zext i32 %.sroa.12.1 to i64
  %.sroa.12.0.insert.shift = shl nuw i64 %.sroa.12.0.insert.ext, 32
  %.sroa.0163.0.insert.ext = zext i32 %.sroa.0163.1 to i64
  %.sroa.0163.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.shift, %.sroa.0163.0.insert.ext
  call void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624) %i.js, i64 %.sroa.0159.0.insert.insert, i64 %.sroa.0163.0.insert.insert)
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge, %bb.ap, %_ZN8rawspeed8RawImageD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i64, i64 } @_ZN8rawspeed10RafDecoder14getDefaultCropEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD13getIFDWithTagENS_7TiffTagEj(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -16384, i32 noundef 0) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !34
  %i.i = icmp ult i16 %i.h, 272                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.j, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i16, ptr %i.k, align 2, !tbaa !34
  %i.m = icmp ult i16 %i.l, 273
  br i1 %i.m, label %.lr.ph.i.i.i.i14, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

.lr.ph.i.i.i.i14:                                 ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit, %.lr.ph.i.i.i.i14
  %.012.i.i.i.i15 = phi ptr [ %.1.i.i.i.i20, %.lr.ph.i.i.i.i14 ], [ %i.e, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ] ; 3 uses
  %.0811.i.i.i.i16 = phi ptr [ %.19.i.i.i.i17, %.lr.ph.i.i.i.i14 ], [ %i.f, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i15, i64 32
  %i.o = load i16, ptr %i.n, align 2, !tbaa !34
  %i.p = icmp ult i16 %i.o, 273                   ; 2 uses
  %.19.i.i.i.i17 = select i1 %i.p, ptr %.0811.i.i.i.i16, ptr %.012.i.i.i.i15 ; 3 uses
  %.1.in.v.i.i.i.i18 = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i15, i64 %.1.in.v.i.i.i.i18
  %.1.i.i.i.i20 = load ptr, ptr %.1.in.i.i.i.i19, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %.1.i.i.i.i20, null
  br i1 %.not.i.i.i.i21, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i22, label %.lr.ph.i.i.i.i14, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i22: ; preds = %.lr.ph.i.i.i.i14
  %i.q = icmp eq ptr %.19.i.i.i.i17, %i.f
  br i1 %i.q, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit24

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit24: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i22
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i17, i64 32
  %i.s = load i16, ptr %i.r, align 2, !tbaa !34
  %i.t = icmp ult i16 %i.s, 274
  br i1 %i.t, label %bb.b, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i22, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit24, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10RafDecoder14getDefaultCropEv, i32 noundef 272, i32 noundef 273) #13
  unreachable

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit24
  %i.u = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext 272) ; 2 uses
  %i.v = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i32 noundef 0)
  %i.w = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i32 noundef 1)
  %i.x = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext 273) ; 2 uses
  %i.y = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i32 noundef 0)
  %i.z = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i32 noundef 1)
  %.sroa.2.0.insert.ext = zext i16 %i.v to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i16 %i.w to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.sroa.5.8.insert.ext = zext i16 %i.y to i64
  %.sroa.5.8.insert.shift = shl nuw nsw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.3.8.insert.ext = zext i16 %i.z to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN8rawspeed12RawImageData9clearAreaENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624), i64, i64) local_unnamed_addr #3

declare void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624), i64, i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10RafDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::TiffID", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -30681) #30 ; 2 uses
  %.not199 = icmp eq ptr %i.c, null
  br i1 %.not199, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store i32 %.0, ptr %i.h, align 8, !tbaa !280
  %i.i = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i16 noundef zeroext -4093) #30 ; 2 uses
  %.not200 = icmp eq ptr %i.i, null
  br i1 %.not200, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i32 noundef 0) ; 3 uses
  %i.k = icmp ugt i32 %i.j, 16
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10RafDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE, i32 noundef %i.j) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  %notmask = shl nsw i64 -1, %i.l
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %.sroa.0.0.insert.insert.i = xor i64 %notmask, -4294967297
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.n, align 4
  %.pre229 = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.o = phi ptr [ %.pre229, %bb.f ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK8rawspeed11TiffRootIFD5getIDEv(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::TiffID") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = invoke noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10RafDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE) #13
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70
  store i64 %i.z, ptr %i.x, align 8, !tbaa !70
  invoke void @_ZN8rawspeed10RafDecoder16applyCorrectionsEPKNS_6CameraE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.s)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ab = call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, i16 noundef zeroext -4086) #30 ; 42 uses
  %.not201 = icmp eq ptr %i.ab, null
  br i1 %.not201, label %bb.ba, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !68
  switch i32 %i.ad, label %.loopexit [
    i32 4, label %bb.o
    i32 36, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !69  ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 100 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 152 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !281, !range !148, !noundef !130
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ah, align 8, !tbaa !281
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !282
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store i32 4, ptr %i.ak, align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  store i32 2, ptr %i.al, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 140
  store i32 2, ptr %i.am, align 4, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  store i32 2, ptr %i.an, align 8, !tbaa !70
  %i.ao = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 0)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  store i32 %i.ao, ptr %i.af, align 4, !tbaa !70
  %i.ap = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 1)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !70
  %i.ar = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 2)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 108
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !70
  %i.at = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 3)
          to label %.loopexit.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.loopexit:                               ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 %i.at, ptr %i.au, align 8, !tbaa !70
  br label %.loopexit

bb.u:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !69  ; 11 uses
  %.ptr244 = getelementptr inbounds nuw i8, ptr %i.av, i64 100 ; 20 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 152 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !281, !range !148, !noundef !130
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.preheader210, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.ax, align 8, !tbaa !281
  br label %.preheader210

.preheader210:                                    ; preds = %bb.u, %bb.v
  store ptr %.ptr244, ptr %i.aw, align 8, !tbaa !282
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  store i32 4, ptr %i.ba, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store i32 2, ptr %i.bb, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 140
  store i32 2, ptr %i.bc, align 4, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  store i32 2, ptr %i.bd, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.ptr244, i8 0, i64 16, i1 false), !tbaa !70
  %i.be = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph217.preheader:                              ; preds = %bb.az
  %i.bf = load i32, ptr %i.cg, align 8, !tbaa !70
  %i.bg = add i32 %i.bf, %i.fm
  store i32 %i.bg, ptr %i.cg, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 100 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bh, align 4, !tbaa !70
  %i.bi = sdiv <4 x i32> %wide.load, splat (i32 9)
  store <4 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !70
  br label %.loopexit

bb.w:                                             ; preds = %.preheader210
  %i.bj = load i32, ptr %.ptr244, align 4, !tbaa !70
  %i.bk = add i32 %i.bj, %i.be
  store i32 %i.bk, ptr %.ptr244, align 4, !tbaa !70
  %i.bl = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 1)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 18 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !70
  %i.bo = add i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !70
  %i.bp = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bq = load i32, ptr %.ptr244, align 4, !tbaa !70
  %i.br = add i32 %i.bq, %i.bp
  store i32 %i.br, ptr %.ptr244, align 4, !tbaa !70
  %i.bs = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 3)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !70
  %i.bu = add i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !70
  %i.bv = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 4)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.bw = load i32, ptr %.ptr244, align 4, !tbaa !70
  %i.bx = add i32 %i.bw, %i.bv
  store i32 %i.bx, ptr %.ptr244, align 4, !tbaa !70
  %i.by = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 5)
          to label %.preheader206.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader206.1:                                  ; preds = %bb.aa
  %i.bz = load i32, ptr %i.bm, align 8, !tbaa !70
  %i.ca = add i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.bm, align 8, !tbaa !70
  %i.cb = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 6)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %.preheader206.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 108 ; 18 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !70
  %i.ce = add i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !70
  %i.cf = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 7)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 112 ; 18 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !70
  %i.ci = add i32 %i.ch, %i.cf
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !70
  %i.cj = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i32 noundef 8)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.ck = load i32, ptr %i.cc, align 4, !tbaa !70
end_hunk_0
