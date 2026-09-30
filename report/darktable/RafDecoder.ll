Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RafDecoder?download=true
inline.NumInlined: 1006
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed10RafDecoder16applyCorrectionsEPKNS_6CameraE:bb.a

bb.am:                                            ; preds = %.preheader, %bb.ao
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ao ] ; 4 uses
  %i.ja = trunc nuw nsw i64 %indvars.iv to i32
  %i.jb = xor i32 %i.ja, -1
  %i.jc = add i32 %i.he, %i.jb                    ; 2 uses
  %i.jd = add nuw nsw i64 %indvars.iv, %i.hk      ; 3 uses
  br i1 %i.hl, label %bb.an, label %.split.us

bb.an:                                            ; preds = %bb.am
  %i.je = load i32, ptr %i.fl, align 8, !tbaa !254
  %i.jf = trunc nuw i64 %i.jd to i32
  %i.jg = icmp sgt i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.ao, label %.split.us

bb.ao:                                            ; preds = %bb.an
  %i.jh = add nuw nsw i64 %indvars.iv, %i.fr      ; 2 uses
  %i.ji = icmp samesign ult i64 %i.jh, %i.fs
  call void @llvm.assume(i1 %i.ji)
  call void @llvm.assume(i1 %i.hh)
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.jh
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !272
  %i.jl = icmp samesign ult i64 %i.jd, %i.ft
  call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp samesign ult i32 %i.jc, %i.fc
  call void @llvm.assume(i1 %i.jm)
  %i.jn = mul nuw nsw i32 %i.jc, %i.ff
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.jo
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.jd
  store i16 %i.jk, ptr %i.jq, align 2, !tbaa !272
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.am, !llvm.loop !242

bb.ap:                                            ; preds = %.split.us
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.split.us:                                        ; preds = %bb.am, %bb.an, %bb.u, %bb.t
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10RafDecoder16applyCorrectionsEPKNS_6CameraE) #13
          to label %bb.aq unwind label %bb.ap

bb.aq:                                            ; preds = %.split.us
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.al, %bb.ak
  %.pn50 = phi { ptr, i32 } [ %i.jr, %bb.ap ], [ %i.iz, %bb.al ], [ %i.iy, %bb.ak ]
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.l, %bb.k
  %i.js = load i8, ptr %i.e, align 1, !tbaa !245, !range !148, !noundef !130
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge
  %i.ju = load ptr, ptr %i.a, align 8, !tbaa !69
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.0 to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.0159.0.insert.ext = zext i32 %.sroa.0159.0 to i64
  %.sroa.0159.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.0159.0.insert.ext
  %.sroa.12.0.insert.ext = zext i32 %.sroa.12.1 to i64
  %.sroa.12.0.insert.shift = shl nuw i64 %.sroa.12.0.insert.ext, 32
  %.sroa.0163.0.insert.ext = zext i32 %.sroa.0163.1 to i64
  %.sroa.0163.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.shift, %.sroa.0163.0.insert.ext
  call void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624) %i.ju, i64 %.sroa.0159.0.insert.insert, i64 %.sroa.0163.0.insert.insert)
  br label %bb.at

bb.at:                                            ; preds = %.critedge, %bb.as, %_ZN8rawspeed8RawImageD2Ev.exit
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
  %.pre222 = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.o = phi ptr [ %.pre222, %bb.f ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK8rawspeed11TiffRootIFD5getIDEv(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::TiffID") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = invoke noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.h unwind label %bb.k       ; 12 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10RafDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE) #13
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.bl, %bb.l, %bb.bk, %bb.bi, %bb.m, %bb.i, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.l:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !70
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !70
  invoke void @_ZN8rawspeed10RafDecoder16applyCorrectionsEPKNS_6CameraE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.s)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ac = call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i16 noundef zeroext -4086) #30 ; 42 uses
  %.not201 = icmp eq ptr %i.ac, null
  br i1 %.not201, label %bb.bd, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !68
  switch i32 %i.ae, label %.loopexit [
    i32 4, label %bb.p
    i32 36, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !69  ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 100 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 152 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !281, !range !148, !noundef !130
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.ai, align 8, !tbaa !281
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !282
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store i32 4, ptr %i.al, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store i32 2, ptr %i.am, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 140
  store i32 2, ptr %i.an, align 4, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store i32 2, ptr %i.ao, align 8, !tbaa !70
  %i.ap = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 0)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  store i32 %i.ap, ptr %i.ag, align 4, !tbaa !70
  %i.aq = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !70
  %i.as = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 2)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 108
  store i32 %i.as, ptr %i.at, align 4, !tbaa !70
  %i.au = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 3)
          to label %.loopexit.loopexit unwind label %bb.v

.loopexit.loopexit:                               ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store i32 %i.au, ptr %i.av, align 8, !tbaa !70
  br label %.loopexit

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.w:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !69  ; 11 uses
  %.ptr237 = getelementptr inbounds nuw i8, ptr %i.ax, i64 100 ; 20 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 152 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !281, !range !148, !noundef !130
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.preheader206, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.az, align 8, !tbaa !281
  br label %.preheader206

.preheader206:                                    ; preds = %bb.w, %bb.x
  store ptr %.ptr237, ptr %i.ay, align 8, !tbaa !282
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store i32 4, ptr %i.bc, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store i32 2, ptr %i.bd, align 8, !tbaa !70
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 140
  store i32 2, ptr %i.be, align 4, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store i32 2, ptr %i.bf, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.ptr237, i8 0, i64 16, i1 false), !tbaa !70
  %i.bg = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 0)
          to label %bb.y unwind label %bb.bc

.lr.ph213.preheader:                              ; preds = %bb.bb
  %i.bh = load i32, ptr %i.ci, align 8, !tbaa !70
  %i.bi = add i32 %i.bh, %i.fo
  store i32 %i.bi, ptr %i.ci, align 8, !tbaa !70
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 100 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bj, align 4, !tbaa !70
  %i.bk = sdiv <4 x i32> %wide.load, splat (i32 9)
  store <4 x i32> %i.bk, ptr %i.bj, align 4, !tbaa !70
  br label %.loopexit

bb.y:                                             ; preds = %.preheader206
  %i.bl = load i32, ptr %.ptr237, align 4, !tbaa !70
  %i.bm = add i32 %i.bl, %i.bg
  store i32 %i.bm, ptr %.ptr237, align 4, !tbaa !70
  %i.bn = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 1)
          to label %bb.z unwind label %bb.bc

bb.z:                                             ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 18 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !70
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !70
  %i.br = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 2)
          to label %bb.aa unwind label %bb.bc

bb.aa:                                            ; preds = %bb.z
  %i.bs = load i32, ptr %.ptr237, align 4, !tbaa !70
  %i.bt = add i32 %i.bs, %i.br
  store i32 %i.bt, ptr %.ptr237, align 4, !tbaa !70
  %i.bu = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 3)
          to label %bb.ab unwind label %bb.bc

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !70
  %i.bw = add i32 %i.bv, %i.bu
  store i32 %i.bw, ptr %i.bo, align 8, !tbaa !70
  %i.bx = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 4)
          to label %bb.ac unwind label %bb.bc

bb.ac:                                            ; preds = %bb.ab
  %i.by = load i32, ptr %.ptr237, align 4, !tbaa !70
  %i.bz = add i32 %i.by, %i.bx
  store i32 %i.bz, ptr %.ptr237, align 4, !tbaa !70
  %i.ca = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 5)
          to label %.preheader205.1 unwind label %bb.bc

.preheader205.1:                                  ; preds = %bb.ac
  %i.cb = load i32, ptr %i.bo, align 8, !tbaa !70
  %i.cc = add i32 %i.cb, %i.ca
  store i32 %i.cc, ptr %i.bo, align 8, !tbaa !70
  %i.cd = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 6)
          to label %bb.ad unwind label %bb.bc

bb.ad:                                            ; preds = %.preheader205.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 108 ; 18 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !70
  %i.cg = add i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !70
  %i.ch = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 7)
          to label %bb.ae unwind label %bb.bc

end_hunk_0
