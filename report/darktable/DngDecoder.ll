Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngDecoder?download=true
inline.NumInlined: 1619
inline.NumDeleted: 868
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8rawspeed10DngDecoder20dropUnsuportedChunksEPSt6vectorIPKNS_7TiffIFDESaIS4_EE:bb.a
  br label %bb.j

.critedge:                                        ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.014.020 to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !63  ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.g, label %bb.h, !prof !280

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.ak, i1 false)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !281
  br label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.i, label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !65
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !65
  br label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit: ; preds = %.critedge, %bb.g, %bb.h, %bb.i
  %i.ao = phi ptr [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ %.pre.i.i, %bb.g ], [ %i.ag, %.critedge ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !281
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, %bb.e
  %i.aq = phi ptr [ %i.ap, %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit ], [ %.pre, %bb.e ]
  %.sroa.014.1 = phi ptr [ %i.ae, %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit ], [ %i.z, %bb.e ] ; 2 uses
  %i.ar = icmp eq ptr %.sroa.014.1, %i.aq
  br i1 %i.ar, label %._crit_edge, label %.lr.ph, !llvm.loop !279
}

declare noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK8rawspeed9TiffEntry5isIntEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10DngDecoder15parseACTIVEAREAEPKNS_7TiffIFDE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rawspeed::Optional.17") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !68
  %i.f = icmp ult i16 %i.e, -14707                ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !68
  %i.j = icmp ult i16 %i.i, -14706
  br i1 %i.j, label %bb.b, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.k

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.k = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %2, i16 noundef zeroext -14707) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 2 uses
  %.not = icmp eq i32 %i.m, 4
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder15parseACTIVEAREAEPKNS_7TiffIFDE, i32 noundef %i.m) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !141  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !142  ; 3 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30, !noalias !286 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.v = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 0)
          to label %bb.e unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, !noalias !286

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.t, align 4, !tbaa !143, !noalias !286
  %i.w = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 1)
          to label %bb.f unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, !noalias !286

bb.f:                                             ; preds = %bb.e
  store i32 %i.w, ptr %i.u, align 4, !tbaa !143, !noalias !286
  %i.x = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 2)
          to label %bb.g unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, !noalias !286

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i32 %i.x, ptr %i.y, align 4, !tbaa !143, !noalias !286
  %i.z = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 3)
          to label %_ZNK8rawspeed9TiffEntry11getU32ArrayEj.exit unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, !noalias !286 ; 6 uses

_ZNK8rawspeed9TiffEntry11getU32ArrayEj.exit:      ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !143, !noalias !286
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !143 ; 6 uses
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !143 ; 6 uses
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !143 ; 5 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  %i.ae = icmp sgt i32 %i.ac, -1
  %i.af = select i1 %.not.i.i, i1 %i.ae, i1 false
  br i1 %i.af, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

common.resume:                                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit35, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %i.ap, %_ZNSt6vectorIjSaIjEED2Ev.exit35 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 16) #31
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit: ; preds = %_ZNK8rawspeed9TiffEntry11getU32ArrayEj.exit
  %.not.i3.i = icmp sle i32 %i.ab, %i.q
  %i.ah = icmp sle i32 %i.ac, %i.s
  %i.ai = select i1 %.not.i3.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.h, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

bb.h:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit
  %.not.i.i22 = icmp sgt i32 %i.z, -1
  %i.aj = icmp sgt i32 %i.ad, -1
  %i.ak = select i1 %.not.i.i22, i1 %i.aj, i1 false
  br i1 %i.ak, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit24, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit24: ; preds = %bb.h
  %.not.i3.i23 = icmp samesign ule i32 %i.z, %i.q
  %i.al = icmp samesign ule i32 %i.ad, %i.s
  %i.am = select i1 %.not.i3.i23, i1 %i.al, i1 false
  br i1 %i.am, label %bb.i, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

bb.i:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit24
  %.not.i = icmp samesign uge i32 %i.z, %i.ab
  %i.an = icmp samesign uge i32 %i.ad, %i.ac
  %i.ao = select i1 %.not.i, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread: ; preds = %bb.h, %_ZNK8rawspeed9TiffEntry11getU32ArrayEj.exit, %bb.i, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit24, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder15parseACTIVEAREAEPKNS_7TiffIFDE, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.z, i32 noundef %i.ad, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s) #23
          to label %bb.j unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit35

bb.j:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread
  unreachable

_ZNSt6vectorIjSaIjEED2Ev.exit35:                  ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.i
  %i.aq = sub nuw nsw i32 %i.z, %i.ab
  %i.ar = sub nuw nsw i32 %i.ad, %i.ac
  %.sroa.2.0.insert.ext.i.i30 = zext nneg i32 %i.ar to i64
  %.sroa.2.0.insert.shift.i.i31 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i30, 32
  %.sroa.0.0.insert.ext.i.i32 = zext nneg i32 %i.aq to i64
  %.sroa.0.0.insert.insert.i.i33 = or disjoint i64 %.sroa.2.0.insert.shift.i.i31, %.sroa.0.0.insert.ext.i.i32
  %.sroa.0.sroa.7.0.insert.ext = zext nneg i32 %i.ac to i64
  %.sroa.0.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i32 %i.ab to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.7.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %0, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.insert.insert.i.i33, ptr %.sroa.8.0..sroa_idx, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.as, align 4, !tbaa !145
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 16) #31
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rawspeed::iPoint2D", align 4 ; 7 uses
  %3 = alloca %"class.rawspeed::Optional.17", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !68
  %i.f = icmp ult i16 %i.e, -14825                ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !68
  %i.j = icmp ult i16 %i.i, -14824
  br i1 %i.j, label %bb.b, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.k = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14825)
  %i.l = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 0)
  %.not = icmp eq i16 %i.l, 1
  br i1 %.not, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE) #23
  unreachable

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a, %bb.b, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.m = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -32115) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  %.not24 = icmp eq i32 %i.o, 2
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE) #23
  unreachable

bb.e:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread
  %i.p = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -32114) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE) #23
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.s = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i32 noundef 1) ; 3 uses
  %i.t = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i32 noundef 0) ; 3 uses
  store i32 %i.s, ptr %2, align 4, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !147
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = icmp sgt i32 %i.t, 0
  %i.x = and i1 %i.v, %i.w
  %.pre = load i32, ptr %i.q, align 4, !tbaa !77  ; 2 uses
  %i.y = zext nneg i32 %i.s to i64
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = mul nuw nsw i64 %i.z, %i.y
  %i.ab = zext i32 %.pre to i64
  %.not26 = icmp eq i64 %i.aa, %i.ab
  %or.cond = select i1 %i.x, i1 %.not26, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE, i32 noundef %.pre) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %2)
  %i.af = load i32, ptr %i.u, align 4, !tbaa !147 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = load i32, ptr %2, align 4               ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %or.cond54 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond54, label %.preheader, label %._crit_edge33

.preheader:                                       ; preds = %bb.i, %._crit_edge
  %i.aj = phi i32 [ %i.aq, %._crit_edge ], [ %i.af, %bb.i ]
  %i.ak = phi i32 [ %i.ar, %._crit_edge ], [ %i.ah, %bb.i ] ; 3 uses
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge ], [ 0, %bb.i ] ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %indvars.iv37, 32
  %i.am = trunc nuw nsw i64 %indvars.iv37 to i32
  br label %bb.j

._crit_edge33:                                    ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK8rawspeed10DngDecoder15parseACTIVEAREAEPKNS_7TiffIFDE(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::Optional.17") align 4 %3, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !145, !range !148, !noundef !149
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.m, label %bb.n

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre40 = load i32, ptr %i.u, align 4, !tbaa !147
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aq = phi i32 [ %.pre40, %._crit_edge.loopexit ], [ %i.aj, %.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.bd, %._crit_edge.loopexit ], [ %i.ak, %.preheader ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = icmp slt i64 %indvars.iv.next38, %i.as
  br i1 %i.at, label %.preheader, label %._crit_edge33, !llvm.loop !287

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.au = phi i32 [ %i.ak, %.lr.ph ], [ %i.bd, %bb.l ]
  %i.av = mul nuw nsw i32 %i.au, %i.am
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = call noundef zeroext i8 @_ZNK8rawspeed9TiffEntry7getByteEj(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef %i.ax) ; 3 uses
  %i.az = icmp ugt i8 %i.ay, 6
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = zext i8 %i.ay to i32
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE, i32 noundef %i.ba) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %indvars.iv
  call void @_ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 %.sroa.0.0.insert.insert, i8 noundef zeroext %i.ay)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %2, align 4, !tbaa !146   ; 3 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !288

bb.m:                                             ; preds = %._crit_edge33
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load i32, ptr %3, align 4, !tbaa !291
  %i.bj = sub nsw i32 0, %i.bi
  call void @_ZN8rawspeed16ColorFilterArray10shiftRightEi(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !292
  %i.bo = sub nsw i32 0, %i.bn
  call void @_ZN8rawspeed16ColorFilterArray9shiftDownEi(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i32 noundef %i.bo)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare void @_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i8 @_ZNK8rawspeed9TiffEntry7getByteEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

declare void @_ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE(ptr noundef nonnull align 8 dereferenceable(32), i64, i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZN8rawspeed16ColorFilterArray10shiftRightEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

declare void @_ZN8rawspeed16ColorFilterArray9shiftDownEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10DngDecoder16parseColorMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext -14758) #27 ; 2 uses
  %.not2.i = icmp eq ptr %i.c, null
  br i1 %.not2.i, label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0)
  %.not.i = icmp eq i16 %i.d, 21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  br i1 %.not.i, label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit", label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit.thread"

"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit": ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %.pre, i16 noundef zeroext -14815) #27 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit.thread", label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29.thread48"

"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit.thread": ; preds = %bb.b, %bb.a, %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit"
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ], [ %.pre, %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit" ]
  %i.g = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i16 noundef zeroext -14757) #27 ; 2 uses
  %.not2.i26 = icmp eq ptr %i.g, null
  br i1 %.not2.i26, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit.thread"
  %i.h = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 noundef 0)
  %.not.i27 = icmp eq i16 %i.h, 21
  br i1 %.not.i27, label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29", label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit

"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29": ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.j = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i16 noundef zeroext -14814) #27 ; 2 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit, label %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29.thread48"

"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29.thread48": ; preds = %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit", %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29"
  %.01951 = phi ptr [ %i.j, %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29" ], [ %i.e, %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit" ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01951, i64 44 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !77   ; 3 uses
  %i.m = urem i32 %i.l, 3
  %.not22 = icmp ne i32 %i.m, 0
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  %or.cond = or i1 %.not22, %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29.thread48"
  %i.n = zext i32 %i.l to i64                     ; 6 uses
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30, !noalias !301 ; 10 uses
  store i64 0, ptr %i.p, align 4, !noalias !301
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  %i.r = add nsw i64 %i.n, -1                     ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.u = add nuw nsw i64 %i.n, 2305843009213693950
  %i.v = and i64 %i.u, 2305843009213693951        ; 3 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp samesign ult i64 %i.v, 15
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 12
  %n.vec = and i64 %i.w, 4611686018427387888      ; 4 uses
  %i.y = shl i64 %n.vec, 3
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 4 uses
  %i.ab = load i64, ptr %i.p, align 4, !noalias !301
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 32
  %i.ad = getelementptr i8, ptr %next.gep, i64 64
  %i.ae = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %next.gep, align 4, !noalias !301
  store <4 x i64> %broadcast.splat, ptr %i.ac, align 4, !noalias !301
  store <4 x i64> %broadcast.splat, ptr %i.ad, align 4, !noalias !301
  store <4 x i64> %broadcast.splat, ptr %i.ae, align 4, !noalias !301
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !304

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %i.w, 4611686018427387900    ; 3 uses
  %i.ag = shl i64 %n.vec97, 3
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 2 uses
  %i.ai = shl i64 %index98, 3
  %next.gep99 = getelementptr i8, ptr %i.q, i64 %i.ai
  %i.aj = load i64, ptr %i.p, align 4, !noalias !301
  %broadcast.splatinsert100 = insertelement <4 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat101 = shufflevector <4 x i64> %broadcast.splatinsert100, <4 x i64> poison, <4 x i32> zeroinitializer
  store <4 x i64> %broadcast.splat101, ptr %next.gep99, align 4, !noalias !301
  %index.next102 = add nuw i64 %index98, 4        ; 2 uses
  %i.ak = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !298

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.w, %n.vec97
  br i1 %cmp.n103, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.q, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.al = load i64, ptr %i.p, align 4, !noalias !301
  store i64 %i.al, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !301
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !299

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc.i.i
  %.0.i.i.i.i.i.ph.i.i = phi ptr [ %i.q, %.noexc.i.i ], [ %i.t, %middle.block ], [ %i.t, %vec.epilog.middle.block ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.an = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = invoke i64 @_ZNK8rawspeed9TiffEntry12getSRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %.01951, i32 noundef %i.an)
          to label %bb.e unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit.i.i, !noalias !301

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i.i
  store i64 %i.ao, ptr %i.ap, align 4, !noalias !301
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.n
  br i1 %exitcond.not.i.i, label %_ZNK8rawspeed9TiffEntry17getSRationalArrayEj.exit, label %bb.d, !llvm.loop !300

common.resume:                                    ; preds = %bb.o, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit.i.i
  %.sink = phi i64 [ %.idx, %bb.o ], [ %i.o, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit.i.i ]
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.aq, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %.sink) #31
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit.i.i: ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK8rawspeed9TiffEntry17getSRationalArrayEj.exit: ; preds = %bb.e
  %.pre54 = load i32, ptr %i.k, align 4, !tbaa !77
  %i.ar = zext i32 %.pre54 to i64                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !78 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 280 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 296 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !150
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !151
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.bb, %i.ar
  br i1 %i.bc, label %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %_ZNK8rawspeed9TiffEntry17getSRationalArrayEj.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 288 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !305
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.az
  %i.bh = shl nuw nsw i64 %i.ar, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #30
          to label %.noexc unwind label %bb.h     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !151 ; 4 uses
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !305
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %bb.f, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.f:                                             ; preds = %.noexc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr align 4 %i.bj, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.f, %.noexc
  %.not.i8.i = icmp eq ptr %i.bj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !150
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.br) #31
  br label %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !151
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store ptr %i.bs, ptr %i.bd, align 8, !tbaa !305
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ar
  store ptr %i.bt, ptr %i.av, align 8, !tbaa !150
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %_ZNK8rawspeed9TiffEntry17getSRationalArrayEj.exit
  %i.bu = icmp eq ptr %i.p, %.0.i.i.i.i.i.ph.i.i
  br i1 %i.bu, label %.loopexit87, label %.lr.ph

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE11_M_allocateEm.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %.sroa.036.053 = phi ptr [ %i.da, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit ], [ %i.p, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE7reserveEm.exit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.036.053, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !307
  %.not23.not = icmp eq i32 %i.bx, 0
  %i.by = load ptr, ptr %i.as, align 8, !tbaa !78 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 280 ; 3 uses
  br i1 %.not23.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 288 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !305 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 296 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !150
  %.not.i30 = icmp eq ptr %i.cb, %i.cd
  br i1 %.not.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load i64, ptr %.sroa.036.053, align 4
  store i64 %i.ce, ptr %i.cb, align 4
  %1 = load ptr, ptr %i.ca, align 8, !tbaa !305
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !305
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !151 ; 4 uses
  %i.ch = ptrtoint ptr %i.cb to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.l, label %_ZNKSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #29
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #30
          to label %.noexc32 unwind label %.loopexit ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  %i.ct = load i64, ptr %.sroa.036.053, align 4
  store i64 %i.ct, ptr %i.cs, align 4
  %i.cu = icmp sgt i64 %i.cj, 0
  br i1 %i.cu, label %bb.m, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.m:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.m, %.noexc32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.cw = load ptr, ptr %i.cc, align 8, !tbaa !150
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cy) #31
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.cr, ptr %i.bz, align 8, !tbaa !151
  store ptr %i.cv, ptr %i.ca, align 8, !tbaa !305
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cz, ptr %i.cc, align 8, !tbaa !150
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.036.053, i64 8 ; 2 uses
  %i.db = icmp eq ptr %i.da, %.0.i.i.i.i.i.ph.i.i
  br i1 %i.db, label %.loopexit87, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.critedge:                                        ; preds = %.lr.ph
  %i.dc = load ptr, ptr %i.bz, align 8, !tbaa !151 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 288 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !305
  %.not.i.i = icmp eq ptr %i.de, %i.dc
  br i1 %.not.i.i, label %.loopexit87, label %_ZSt8_DestroyIPN8rawspeed12NotARationalIiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8rawspeed12NotARationalIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.critedge
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !305
  br label %.loopexit87

.loopexit87:                                      ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit, %.critedge, %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE7reserveEm.exit, %_ZSt8_DestroyIPN8rawspeed12NotARationalIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.idx88 = shl nuw nsw i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %.idx88) #31
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit: ; preds = %bb.c, %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit.thread", %.loopexit87, %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29.thread48", %"_ZZNK8rawspeed10DngDecoder16parseColorMatrixEvENK3$_0clENS_7TiffTagES2_.exit29"
  ret void

bb.o:                                             ; preds = %bb.h, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.idx = shl nuw nsw i64 %i.n, 3
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10DngDecoder20getTilingDescriptionEPKNS_7TiffIFDE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.rawspeed::DngTilingDescription") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !68
  %i.f = icmp ult i16 %i.e, 324                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !68
  %i.j = icmp ult i16 %i.i, 325
  br i1 %i.j, label %bb.b, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.k = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %2, i16 noundef zeroext 322)
  %i.l = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 0) ; 5 uses
  %i.m = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %2, i16 noundef zeroext 323)
  %i.n = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i32 noundef 0) ; 4 uses
  %i.o = icmp eq i32 %i.l, 0
  %i.p = icmp eq i32 %i.n, 0
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder20getTilingDescriptionEPKNS_7TiffIFDE, i32 noundef %i.l, i32 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !141  ; 2 uses
  %i.u = zext i32 %i.l to i64                     ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit.thread, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.d
  %i.v = sext i32 %i.t to i64
  %i.w = add nsw i64 %i.v, -1
  %i.x = udiv i64 %i.w, %i.u
  %i.y = trunc i64 %i.x to i32
  %i.z = add i32 %i.y, 1                          ; 5 uses
  %.not57 = icmp eq i32 %i.z, 0
  br i1 %.not57, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit.thread, label %bb.e

_ZN8rawspeed19roundUpDivisionSafeEmm.exit.thread: ; preds = %bb.d, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder20getTilingDescriptionEPKNS_7TiffIFDE) #23
  unreachable

bb.e:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !142 ; 2 uses
  %i.ac = zext i32 %i.n to i64                    ; 2 uses
  %.not.i64 = icmp eq i32 %i.ab, 0
  br i1 %.not.i64, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit65.thread, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit65

_ZN8rawspeed19roundUpDivisionSafeEmm.exit65:      ; preds = %bb.e
  %i.ad = sext i32 %i.ab to i64
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = udiv i64 %i.ae, %i.ac
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add i32 %i.ag, 1                        ; 5 uses
  %.not58 = icmp eq i32 %i.ah, 0
  br i1 %.not58, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit65.thread, label %bb.f

_ZN8rawspeed19roundUpDivisionSafeEmm.exit65.thread: ; preds = %bb.e, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit65
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder20getTilingDescriptionEPKNS_7TiffIFDE) #23
  unreachable

bb.f:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit65
  %i.ai = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %2, i16 noundef zeroext 324)
  %i.aj = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %2, i16 noundef zeroext 325)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !77 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !77 ; 2 uses
  %.not59 = icmp eq i32 %i.al, %i.an
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder20getTilingDescriptionEPKNS_7TiffIFDE, i32 noundef %i.al, i32 noundef %i.an) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = udiv i32 %i.al, %i.z
  %i.ap = urem i32 %i.al, %i.z
  %.not60 = icmp eq i32 %i.ao, %i.ah
  %.not61 = icmp eq i32 %i.ap, 0
  %or.cond114 = and i1 %.not60, %.not61
  br i1 %or.cond114, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = udiv i32 %i.al, %i.ah
  %i.ar = urem i32 %i.al, %i.ah
  %.not62 = icmp eq i32 %i.aq, %i.z
  %.not63 = icmp eq i32 %i.ar, 0
  %or.cond115 = and i1 %.not62, %.not63
  br i1 %or.cond115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder20getTilingDescriptionEPKNS_7TiffIFDE, i32 noundef %i.al, i32 noundef %i.z, i32 noundef %i.ah) #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !78  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %i.au, align 8, !tbaa !308
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.av, align 4, !tbaa !309
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !146 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit.i, label %bb.l
end_hunk_0
begin_hunk_1_@_ZN8rawspeed10DngDecoder17decodeRawInternalEv:bb.a
  %.str.26..str.27 = select i1 %i.cm, ptr @.str.26, ptr @.str.27
  invoke void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull %.str.26..str.27)
          to label %bb.am unwind label %bb.q

bb.am:                                            ; preds = %.invoke73
  switch i32 %.0, label %bb.ap [
    i32 1, label %bb.an
    i32 3, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.cr = load i32, ptr %i.t, align 4, !tbaa !143
  %i.cs = icmp sgt i32 %i.cr, 16
  br i1 %i.cs, label %.invoke71, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ct = load i32, ptr %i.t, align 4, !tbaa !143
  switch i32 %i.ct, label %.invoke71 [
    i32 16, label %bb.ap
    i32 24, label %bb.ap
    i32 32, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.an, %bb.am
  %i.cu = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.q, i16 noundef zeroext 256)
          to label %bb.aq unwind label %bb.q

bb.aq:                                            ; preds = %bb.ap
  %i.cv = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i32 noundef 0)
          to label %bb.ar unwind label %bb.q

bb.ar:                                            ; preds = %bb.aq
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store i32 %i.cv, ptr %i.cx, align 8, !tbaa !141
  %i.cy = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.q, i16 noundef zeroext 257)
          to label %bb.as unwind label %bb.q

bb.as:                                            ; preds = %bb.ar
  %i.cz = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i32 noundef 0)
          to label %bb.at unwind label %bb.q      ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !78 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !142
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !146
  %i.de = icmp sgt i32 %i.dd, 0
  %i.df = icmp sgt i32 %i.cz, 0
  %i.dg = and i1 %i.df, %i.de
  br i1 %i.dg, label %bb.au, label %.invoke71

.invoke71:                                        ; preds = %bb.at, %bb.ao, %bb.an
  %i.dh = phi ptr [ @.str.29, %bb.ao ], [ @.str.28, %bb.an ], [ @.str.30, %bb.at ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.dh, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngDecoder17decodeRawInternalEv) #23
          to label %.cont72 unwind label %bb.q

.cont72:                                          ; preds = %.invoke71
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !351, !range !148, !noundef !149
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK8rawspeed10DngDecoder8parseCFAEPKNS_7TiffIFDE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %i.q)
          to label %bb.aw unwind label %bb.q

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dl = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.q, i16 noundef zeroext 277)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.dm = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i32 noundef 0)
          to label %bb.ay unwind label %bb.bb     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  %i.dn = add i32 %i.dm, -5
  %or.cond = icmp ult i32 %i.dn, -4
  br i1 %or.cond, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngDecoder17decodeRawInternalEv, i32 noundef %i.dm) #23
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ax, %bb.aw
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %bb.ay
  %i.dp = load ptr, ptr %i.cn, align 8, !tbaa !78
  invoke void @_ZN8rawspeed12RawImageData6setCppEj(ptr noundef nonnull align 8 dereferenceable(624) %i.dp, i32 noundef %i.dm)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZNK8rawspeed10DngDecoder10decodeDataEPKNS_7TiffIFDEj(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %i.q, i32 noundef %.0)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull %i.q)
          to label %bb.bf unwind label %bb.bb

bb.bf:                                            ; preds = %bb.be
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !156 ; 2 uses
  %i.ds = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !157
  store <2 x ptr> %i.ds, ptr %0, align 8, !tbaa !157
  %.not.i.i.i.i50 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i50, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 3 uses
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i51 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i.i51, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !143
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !143
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.dx = atomicrmw volatile add ptr %i.dt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.bf, %bb.bh, %bb.bi
  %i.dy = load ptr, ptr %2, align 8, !tbaa !345   ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !352
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #31
  br label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EED2Ev.exit: ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.body:                                            ; preds = %bb.ai, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed17RawImageDataFloatESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i, %bb.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i, %bb.l, %bb.m, %bb.bb, %bb.q, %bb.b
  %.pn33 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.w, %bb.m ], [ %i.v, %bb.l ], [ %i.aj, %bb.q ], [ %i.do, %bb.bb ], [ %i.as, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i ], [ %i.bl, %bb.aa ], [ %i.cj, %bb.ai ], [ %i.bq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed17RawImageDataFloatESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i ]
  %i.ee = load ptr, ptr %2, align 8, !tbaa !345   ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EED2Ev.exit54, label %bb.bk

bb.bk:                                            ; preds = %.body
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !352
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #31
  br label %_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EED2Ev.exit54

_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EED2Ev.exit54: ; preds = %.body, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn33
}

declare void @_ZNK8rawspeed7TiffIFD14getIFDsWithTagENS_7TiffTagE(ptr dead_on_unwind writable sret(%"class.std::vector.11") align 8, ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #5

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @_ZN8rawspeed12RawImageData6setCppEj(ptr noundef nonnull align 8 dereferenceable(624), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.77", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::Optional.17", align 8 ; 6 uses
  %4 = alloca %"class.rawspeed::DngOpcodes", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.72", align 1 ; 4 uses
  %7 = alloca %"class.std::vector.120", align 8   ; 14 uses
  %8 = alloca %"class.rawspeed::RawImageCurveGuard", align 8 ; 7 uses
  %9 = alloca %"class.rawspeed::DngOpcodes", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::allocator.72", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK8rawspeed10DngDecoder15parseACTIVEAREAEPKNS_7TiffIFDE(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::Optional.17") align 4 %3, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !145, !range !148, !noundef !149
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %.sroa.023.0.copyload = load i64, ptr %3, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.224.0.copyload = load i64, ptr %.sroa.224.0..sroa_idx, align 8
  tail call void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624) %i.e, i64 %.sroa.023.0.copyload, i64 %.sroa.224.0.copyload)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 16 uses
  %.not10.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i.i, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.j = load i16, ptr %i.i, align 2, !tbaa !68
  %i.k = icmp ult i16 %i.j, -14817                ; 2 uses
  %.19.i.i.i.i = select i1 %i.k, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = icmp eq ptr %.19.i.i.i.i, %i.h
  br i1 %i.l, label %.lr.ph.i.i.i.i112.preheader, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2, !tbaa !68
  %i.o = icmp ult i16 %i.n, -14816
  br i1 %i.o, label %.lr.ph.i.i.i.i69, label %.lr.ph.i.i.i.i112.preheader

.lr.ph.i.i.i.i69:                                 ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit, %.lr.ph.i.i.i.i69
  %.012.i.i.i.i70 = phi ptr [ %.1.i.i.i.i75, %.lr.ph.i.i.i.i69 ], [ %i.g, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ] ; 3 uses
  %.0811.i.i.i.i71 = phi ptr [ %.19.i.i.i.i72, %.lr.ph.i.i.i.i69 ], [ %i.h, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i70, i64 32
  %i.q = load i16, ptr %i.p, align 2, !tbaa !68
  %i.r = icmp ult i16 %i.q, -14816                ; 2 uses
  %.19.i.i.i.i72 = select i1 %i.r, ptr %.0811.i.i.i.i71, ptr %.012.i.i.i.i70 ; 3 uses
  %.1.in.v.i.i.i.i73 = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i74 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i70, i64 %.1.in.v.i.i.i.i73
  %.1.i.i.i.i75 = load ptr, ptr %.1.in.i.i.i.i74, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %.1.i.i.i.i75, null
  br i1 %.not.i.i.i.i76, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i69, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77: ; preds = %.lr.ph.i.i.i.i69
  %i.s = icmp eq ptr %.19.i.i.i.i72, %i.h
  br i1 %i.s, label %.lr.ph.i.i.i.i112.preheader, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit79

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit79: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i72, i64 32
  %i.u = load i16, ptr %i.t, align 2, !tbaa !68
  %i.v = icmp ult i16 %i.u, -14815
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit79
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !142
  %i.ac = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14817) ; 2 uses
  %i.ad = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14816) ; 2 uses
  %i.ae = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30, !noalias !371 ; 8 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = invoke i64 @_ZNK8rawspeed9TiffEntry11getRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 0)
          to label %.lr.ph.i.i.1 unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i, !noalias !371

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.af, ptr %i.ae, align 4, !noalias !371
  %i.ag = invoke i64 @_ZNK8rawspeed9TiffEntry11getRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i32 noundef 1)
          to label %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i, !noalias !371 ; 3 uses

_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit: ; preds = %.lr.ph.i.i.1
  store i64 %i.ag, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.ptr, align 4, !noalias !371
  %.val.i = load i32, ptr %i.ae, align 4          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.val3.i = load i32, ptr %i.ah, align 4, !tbaa !373 ; 3 uses
  %i.ai = icmp eq i32 %.val3.i, 0
  %i.aj = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ak = lshr i64 %i.ag, 32                      ; 2 uses
  %i.al = trunc nuw i64 %i.ak to i32              ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.d

common.resume:                                    ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit135, %bb.y, %_ZNSt6vectorItSaItEED2Ev.exit171, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt6vectorItSaItEED2Ev.exit.i.i, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i128, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i ], [ %i.da, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i128 ], [ %i.gd, %_ZNSt6vectorItSaItEED2Ev.exit.i.i ], [ %i.dn, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit135 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %.pn62, %bb.bh ], [ %.pn60, %_ZNSt6vectorItSaItEED2Ev.exit171 ], [ %.pn.pn.pn, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110 ], [ %.pn54.pn, %bb.y ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #31, !noalias !371
  br label %common.resume

bb.d:                                             ; preds = %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit
  %i.an = urem i32 %.val.i, %.val3.i
  %i.ao = udiv i32 %.val.i, %.val3.i              ; 3 uses
  %.not.i.i = icmp ne i32 %i.an, 0
  %i.ap = icmp eq i64 %i.ak, 0
  %or.cond322 = select i1 %.not.i.i, i1 true, i1 %i.ap
  br i1 %or.cond322, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d, %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.53, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_0clERKNS_12NotARationalIjEE") #23
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aq = urem i32 %i.aj, %i.al
  %i.ar = udiv i32 %i.aj, %i.al                   ; 3 uses
  %.not.i.i.1 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.1, label %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_0clERKNS_12NotARationalIjEE.exit.i.1", label %bb.e

"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_0clERKNS_12NotARationalIjEE.exit.i.1": ; preds = %bb.f
  %.sroa.6287.0.insert.ext = zext i32 %i.ar to i64
  %.sroa.6287.0.insert.shift = shl nuw i64 %.sroa.6287.0.insert.ext, 32
  %.sroa.0285.0.insert.ext = zext i32 %i.ao to i64
  %.sroa.0285.0.insert.insert = or disjoint i64 %.sroa.6287.0.insert.shift, %.sroa.0285.0.insert.ext
  %.not.i.i80 = icmp sgt i32 %i.ao, -1
  %i.as = icmp sgt i32 %i.ar, -1
  %i.at = select i1 %.not.i.i80, i1 %i.as, i1 false
  %.not.i3.i = icmp sle i32 %i.ao, %i.z
  %i.au = icmp sle i32 %i.ar, %i.ab
  %i.av = select i1 %i.at, i1 %.not.i3.i, i1 false
  %i.aw = select i1 %i.av, i1 %i.au, i1 false
  %.sroa.0255.0 = select i1 %i.aw, i64 %.sroa.0285.0.insert.insert, i64 0 ; 3 uses
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !78  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !146
  %.sroa.0255.0.extract.trunc = trunc i64 %.sroa.0255.0 to i32 ; 2 uses
  %i.ba = sub nsw i32 %i.az, %.sroa.0255.0.extract.trunc
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !147
  %.sroa.0255.4.extract.shift = lshr i64 %.sroa.0255.0, 32
  %.sroa.0255.4.extract.trunc = trunc nuw nsw i64 %.sroa.0255.4.extract.shift to i32 ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.sroa.0255.4.extract.trunc
  %.sroa.2.0.insert.ext.i = zext i32 %i.bd to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc89 unwind label %bb.l   ; 8 uses

bb.g:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110

.noexc89:                                         ; preds = %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_0clERKNS_12NotARationalIjEE.exit.i.1"
  %.06.i.i.i.i.i.i.i.i.i.i.i82.ptr = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bg = invoke i64 @_ZNK8rawspeed9TiffEntry11getRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 0)
          to label %.lr.ph.i.i84.1 unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i86, !noalias !374

.lr.ph.i.i84.1:                                   ; preds = %.noexc89
  store i64 %i.bg, ptr %i.be, align 4, !noalias !374
  %i.bh = invoke i64 @_ZNK8rawspeed9TiffEntry11getRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 1)
          to label %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit90 unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i86, !noalias !374 ; 3 uses

_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit90: ; preds = %.lr.ph.i.i84.1
  store i64 %i.bh, ptr %.06.i.i.i.i.i.i.i.i.i.i.i82.ptr, align 4, !noalias !374
  %.val.i94 = load i32, ptr %i.be, align 4        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val3.i95 = load i32, ptr %i.bi, align 4, !tbaa !373 ; 3 uses
  %i.bj = icmp eq i32 %.val3.i95, 0
  %i.bk = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bl = lshr i64 %i.bh, 32                      ; 2 uses
  %i.bm = trunc nuw i64 %i.bl to i32              ; 2 uses
  br i1 %i.bj, label %bb.i, label %bb.h

_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i86: ; preds = %.lr.ph.i.i84.1, %.noexc89
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 16) #31, !noalias !374
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110

bb.h:                                             ; preds = %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit90
  %i.bo = urem i32 %.val.i94, %.val3.i95
  %i.bp = udiv i32 %.val.i94, %.val3.i95          ; 3 uses
  %.not.i.i96 = icmp ne i32 %i.bo, 0
  %i.bq = icmp eq i64 %i.bl, 0
  %or.cond323 = select i1 %.not.i.i96, i1 true, i1 %i.bq
  br i1 %or.cond323, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h, %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit90
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_0clERKNS_12NotARationalIjEE") #23
          to label %.noexc98 unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit108

.noexc98:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.br = urem i32 %i.bk, %i.bm
  %i.bs = udiv i32 %i.bk, %i.bm                   ; 3 uses
  %.not.i.i96.1 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i96.1, label %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_1clERKNS_12NotARationalIjEE.exit.i.1", label %bb.i

"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_1clERKNS_12NotARationalIjEE.exit.i.1": ; preds = %bb.j
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !78  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !146 ; 2 uses
  %.not.i.i99 = icmp sle i32 %i.bp, %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = icmp sle i32 %i.bs, %i.bx
  %i.bz = select i1 %.not.i.i99, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.k, label %.critedge

bb.k:                                             ; preds = %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_1clERKNS_12NotARationalIjEE.exit.i.1"
  %.sroa.6.0.insert.ext = zext i32 %i.bs to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bp to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  %i.ca = add nsw i32 %i.bp, %.sroa.0255.0.extract.trunc
  %i.cb = add nsw i32 %i.bs, %.sroa.0255.4.extract.trunc
  %.not.i.i104 = icmp sle i32 %i.ca, %i.bv
  %i.cc = icmp sle i32 %i.cb, %i.bx
  %i.cd = select i1 %.not.i.i104, i1 %i.cc, i1 false
  %spec.select282 = select i1 %i.cd, i64 %.sroa.0.0.insert.insert, i64 %.sroa.0.0.insert.insert.i
  br label %.critedge

bb.l:                                             ; preds = %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_0clERKNS_12NotARationalIjEE.exit.i.1"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110

_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit108: ; preds = %bb.i, %.critedge
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 16) #31
  br label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110

.critedge:                                        ; preds = %bb.k, %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_1clERKNS_12NotARationalIjEE.exit.i.1"
  %.sroa.12.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %"_ZZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDEENK3$_1clERKNS_12NotARationalIjEE.exit.i.1" ], [ %spec.select282, %bb.k ]
  invoke void @_ZN8rawspeed12RawImageData8subFrameENS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(624) %i.bt, i64 %.sroa.0255.0, i64 %.sroa.12.0)
          to label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit108

_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit110: ; preds = %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit108, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i86, %bb.l, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %i.bn, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i86 ], [ %i.cf, %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit108 ], [ %i.ce, %bb.l ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #31
  br label %common.resume

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread: ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 16) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #31
  %.pr.pre = load ptr, ptr %i.f, align 8, !tbaa !66 ; 2 uses
  %.not10.i.i.i.i111 = icmp eq ptr %.pr.pre, null
  br i1 %.not10.i.i.i.i111, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread, label %.lr.ph.i.i.i.i112.preheader

.lr.ph.i.i.i.i112.preheader:                      ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit79, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread
  %.012.i.i.i.i113.ph = phi ptr [ %i.g, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ], [ %i.g, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit79 ], [ %i.g, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ %i.g, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77 ], [ %.pr.pre, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread ]
  br label %.lr.ph.i.i.i.i112

.lr.ph.i.i.i.i112:                                ; preds = %.lr.ph.i.i.i.i112.preheader, %.lr.ph.i.i.i.i112
  %.012.i.i.i.i113 = phi ptr [ %.1.i.i.i.i118, %.lr.ph.i.i.i.i112 ], [ %.012.i.i.i.i113.ph, %.lr.ph.i.i.i.i112.preheader ] ; 3 uses
  %.0811.i.i.i.i114 = phi ptr [ %.19.i.i.i.i115, %.lr.ph.i.i.i.i112 ], [ %i.h, %.lr.ph.i.i.i.i112.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i113, i64 32
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !68
  %i.ci = icmp ult i16 %i.ch, -14818              ; 2 uses
  %.19.i.i.i.i115 = select i1 %i.ci, ptr %.0811.i.i.i.i114, ptr %.012.i.i.i.i113 ; 3 uses
  %.1.in.v.i.i.i.i116 = select i1 %i.ci, i64 24, i64 16
  %.1.in.i.i.i.i117 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i113, i64 %.1.in.v.i.i.i.i116
  %.1.i.i.i.i118 = load ptr, ptr %.1.in.i.i.i.i117, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %.1.i.i.i.i118, null
  br i1 %.not.i.i.i.i119, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i120, label %.lr.ph.i.i.i.i112, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i120: ; preds = %.lr.ph.i.i.i.i112
  %i.cj = icmp eq ptr %.19.i.i.i.i115, %i.h
  br i1 %i.cj, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i120
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i115, i64 32
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !68
  %i.cm = icmp ult i16 %i.cl, -14817
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i123, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread

.lr.ph.i.i.i.i.i.i.i.i.i.i.i123:                  ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122
  %i.cn = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14818) ; 2 uses
  %i.co = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30, !noalias !375 ; 9 uses
  %.ptr281 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  %i.cp = invoke i64 @_ZNK8rawspeed9TiffEntry11getRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i32 noundef 0)
          to label %.lr.ph.i.i126.1 unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i128, !noalias !375

.lr.ph.i.i126.1:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i123
  store i64 %i.cp, ptr %i.co, align 4, !noalias !375
  %i.cq = invoke i64 @_ZNK8rawspeed9TiffEntry11getRationalEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i32 noundef 1)
          to label %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.preheader.preheader unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i128, !noalias !375 ; 3 uses

_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.preheader.preheader: ; preds = %.lr.ph.i.i126.1
  store i64 %i.cq, ptr %.ptr281, align 4, !noalias !375
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = load <2 x i32>, ptr %i.co, align 4      ; 2 uses
  %i.ct = load i32, ptr %i.cr, align 4
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !376
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = icmp eq i32 %i.ct, 0
  %or.cond = select i1 %i.cv, i1 true, i1 %i.cw
  %i.cx = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cy = lshr i64 %i.cq, 32                      ; 2 uses
  %i.cz = trunc nuw i64 %i.cy to i32
  br i1 %or.cond, label %bb.m, label %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131

_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit.i.i128: ; preds = %.lr.ph.i.i126.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i123
  %i.da = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 16) #31, !noalias !375
  br label %common.resume

_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131: ; preds = %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.preheader.preheader
  %i.db = icmp eq i32 %i.cx, 0
  %i.dc = icmp eq i64 %i.cy, 0
  %or.cond.1 = or i1 %i.db, %i.dc
  br i1 %or.cond.1, label %bb.m, label %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.1

_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.1: ; preds = %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131
  %i.dd = insertelement <2 x i32> %i.cs, i32 %i.cx, i64 1
  %i.de = uitofp <2 x i32> %i.dd to <2 x double>
  %i.df = shufflevector <2 x i32> %i.cs, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x i32> %i.df, i32 %i.cz, i64 1
  %i.dh = uitofp <2 x i32> %i.dg to <2 x double>
  %i.di = fdiv <2 x double> %i.de, %i.dh          ; 2 uses
  %shift = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x double> %i.di, %shift
  %i.dj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 248
  store double %i.dj, ptr %i.dm, align 8, !tbaa !377
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 16) #31
  br label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread

bb.m:                                             ; preds = %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131, %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.preheader.preheader
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.32, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngDecoder14handleMetadataEPKNS_7TiffIFDE) #23
          to label %bb.n unwind label %_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit135

bb.n:                                             ; preds = %bb.m
  unreachable

_ZNSt6vectorIN8rawspeed12NotARationalIjEESaIS2_EED2Ev.exit135: ; preds = %bb.m
  %i.dn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 16) #31
  br label %common.resume

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread: ; preds = %bb.c, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i120, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread, %_ZNK8rawspeed9TiffEntry16getRationalArrayEj.exit131.1, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !378, !range !148, !noundef !149
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.o, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147.thread

bb.o:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit122.thread
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !66  ; 2 uses
  %.not10.i.i.i.i136 = icmp eq ptr %i.dr, null
  br i1 %.not10.i.i.i.i136, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit.thread.i, label %.lr.ph.i.i.i.i137

.lr.ph.i.i.i.i137:                                ; preds = %bb.o, %.lr.ph.i.i.i.i137
  %.012.i.i.i.i138 = phi ptr [ %.1.i.i.i.i143, %.lr.ph.i.i.i.i137 ], [ %i.dr, %bb.o ] ; 3 uses
  %.0811.i.i.i.i139 = phi ptr [ %.19.i.i.i.i140, %.lr.ph.i.i.i.i137 ], [ %i.h, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i138, i64 32
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !68
  %i.du = icmp ult i16 %i.dt, -14528              ; 2 uses
  %.19.i.i.i.i140 = select i1 %i.du, ptr %.0811.i.i.i.i139, ptr %.012.i.i.i.i138 ; 3 uses
  %.1.in.v.i.i.i.i141 = select i1 %i.du, i64 24, i64 16
  %.1.in.i.i.i.i142 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i138, i64 %.1.in.v.i.i.i.i141
  %.1.i.i.i.i143 = load ptr, ptr %.1.in.i.i.i.i142, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i144 = icmp eq ptr %.1.i.i.i.i143, null
  br i1 %.not.i.i.i.i144, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i145, label %.lr.ph.i.i.i.i137, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i145: ; preds = %.lr.ph.i.i.i.i137
  %i.dv = icmp eq ptr %.19.i.i.i.i140, %i.h
  br i1 %i.dv, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i145
  %i.dw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i140, i64 32
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !68
  %i.dy = icmp ult i16 %i.dx, -14527
  br i1 %i.dy, label %bb.p, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147.thread

bb.p:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147
  %i.dz = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14528)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 44
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !77
  %.not = icmp eq i32 %i.eb, 0
  br i1 %.not, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  invoke void @_ZN8rawspeed10DngOpcodesC1ERKNS_8RawImageENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %i.ed)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK8rawspeed10DngOpcodes12applyOpCodesERKNS_8RawImageE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ec)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @_ZN8rawspeed10DngOpcodesD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147.thread

bb.u:                                             ; preds = %bb.p
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.eg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
  call void @_ZN8rawspeed10DngOpcodesD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn54 = phi { ptr, i32 } [ %i.eg, %bb.w ], [ %i.ef, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.x ], [ %i.ee, %bb.u ] ; 3 uses
  %.445 = extractvalue { ptr, i32 } %.pn54.pn, 1
  %i.eh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE) #28
  %i.ei = icmp eq i32 %.445, %i.eh
  br i1 %i.ei, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  %.4 = extractvalue { ptr, i32 } %.pn54.pn, 0
  %i.ej = call ptr @__cxa_begin_catch(ptr %.4) #28 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #28, !call_target !252
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ep, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  invoke void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !59
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @__cxa_end_catch()
  br label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit147.thread

bb.ac:                                            ; preds = %bb.z
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.ad:                                            ; preds = %bb.aa
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %5, align 8, !tbaa !253   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.ad
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !59
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
end_hunk_1
