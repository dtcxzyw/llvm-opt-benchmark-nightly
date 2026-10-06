Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Effect?download=true
inline.NumInlined: 572
inline.NumDeleted: 219
begin_hunk_0_@_ZNK6Effect27sibling_union_field_is_readEPK8Variable:bb.a
  ret i1 %.3
}

declare noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6Effect30sibling_union_field_is_writtenEPK8Variable(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(200) %1)
  %i.e = tail call noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.not1617.not = icmp eq ptr %i.h, %i.i
  br i1 %.not1617.not, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.01118, 1                   ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %.not16 = icmp ult i64 %i.j, %i.p
  br i1 %.not16, label %.lr.ph, label %.critedge, !llvm.loop !4

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.q = phi ptr [ %i.l, %bb.b ], [ %i.i, %.preheader ]
  %.01118 = phi i64 [ %i.j, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01118
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(200) %i.s)
  %i.x = tail call noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.w)
  %.not15 = icmp eq ptr %i.e, %i.x                ; 3 uses
  br i1 %.not15, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ %.not15, %bb.b ], [ %.not15, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6Effect17is_read_partiallyEPK8Variable(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6Effect7is_readEPK8Variable(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef %1)
  br i1 %i.a, label %_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK6Effect13field_is_readEPK8Variable(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef %1)
  br i1 %i.b, label %_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(200) %1), !inline_history !127
  %i.g = tail call noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not1617.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not1617.not.i, label %_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = add nuw i64 %.01118.i, 1                 ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.m = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %.not16.i = icmp ult i64 %i.k, %i.q
  br i1 %.not16.i, label %.lr.ph.i, label %_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit, !llvm.loop !3

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.r = phi ptr [ %i.m, %bb.d ], [ %i.j, %.preheader.i ]
  %.01118.i = phi i64 [ %i.k, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.01118.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(200) %i.t), !inline_history !127
  %i.y = tail call noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.x)
  %.not15.i = icmp eq ptr %i.g, %i.y              ; 3 uses
  br i1 %.not15.i, label %_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit, label %bb.d

_ZNK6Effect27sibling_union_field_is_readEPK8Variable.exit: ; preds = %.lr.ph.i, %bb.d, %.preheader.i, %bb.c, %bb.b, %bb.a
  %i.z = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ false, %.preheader.i ], [ %.not15.i, %bb.d ], [ %.not15.i, %.lr.ph.i ]
  ret i1 %i.z
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6Effect20is_written_partiallyEPK8Variable(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not15.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not15.not.i, label %.loopexit, label %tailrecurse.us.preheader.i

tailrecurse.us.preheader.i:                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %tailrecurse.us.i

tailrecurse.us.i:                                 ; preds = %..critedge_crit_edge.us.i, %tailrecurse.us.preheader.i
  %.tr13.us.i = phi ptr [ %i.n, %..critedge_crit_edge.us.i ], [ %1, %tailrecurse.us.preheader.i ] ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = add nuw i64 %.0916.us.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.h
  br i1 %exitcond.not.i, label %..critedge_crit_edge.us.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %tailrecurse.us.i
  %.0916.us.i = phi i64 [ 0, %tailrecurse.us.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0916.us.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = icmp eq ptr %i.k, %.tr13.us.i
  br i1 %i.l, label %_ZNK6Effect10is_writtenEPK8Variable.exit, label %bb.b

..critedge_crit_edge.us.i:                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.tr13.us.i, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %.not12.us.i = icmp eq ptr %i.n, null
  br i1 %.not12.us.i, label %.loopexit, label %tailrecurse.us.i

.loopexit:                                        ; preds = %..critedge_crit_edge.us.i, %bb.a
  %i.o = tail call noundef zeroext i1 @_ZNK6Effect16field_is_writtenEPK8Variable(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef %1)
  br i1 %i.o, label %_ZNK6Effect10is_writtenEPK8Variable.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.p = load ptr, ptr %1, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(200) %1), !inline_history !128
  %i.t = tail call noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.s) ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNK6Effect10is_writtenEPK8Variable.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not1617.not.i = icmp eq ptr %i.u, %i.v
  br i1 %.not1617.not.i, label %_ZNK6Effect10is_writtenEPK8Variable.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i64 %.01118.i, 1                 ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %.not16.i = icmp ult i64 %i.w, %i.ac
  br i1 %.not16.i, label %.lr.ph.i, label %_ZNK6Effect10is_writtenEPK8Variable.exit, !llvm.loop !4

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.ad = phi ptr [ %i.y, %bb.e ], [ %i.v, %.preheader.i ]
  %.01118.i = phi i64 [ %i.w, %bb.e ], [ 0, %.preheader.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.01118.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(200) %i.af), !inline_history !128
  %i.ak = tail call noundef ptr @_ZNK8Variable19get_container_unionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.aj)
  %.not15.i = icmp eq ptr %i.t, %i.ak             ; 3 uses
  br i1 %.not15.i, label %_ZNK6Effect10is_writtenEPK8Variable.exit, label %bb.e

_ZNK6Effect10is_writtenEPK8Variable.exit:         ; preds = %bb.c, %.lr.ph.i, %bb.e, %.preheader.i, %bb.d, %.loopexit
  %i.al = phi i1 [ true, %.loopexit ], [ %.not15.i, %.lr.ph.i ], [ false, %bb.d ], [ false, %.preheader.i ], [ %.not15.i, %bb.e ], [ true, %bb.c ]
  ret i1 %i.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6Effect11consolidateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(74) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not39 = icmp eq ptr %i.b, %i.c
  br i1 %.not39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %.not40 = icmp eq ptr %i.j, %i.k
  br i1 %.not40, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %._crit_edge
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = ashr exact i64 %i.n, 3
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.p = phi ptr [ %i.ah, %bb.h ], [ %i.b, %.lr.ph.preheader ] ; 7 uses
  %.033 = phi i64 [ %.1, %bb.h ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.02132.a = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %1 = load ptr, ptr %0, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02132.a ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = tail call noundef zeroext i1 @_ZNK6Effect7is_readEPK8Variable(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull %i.t)
  br i1 %i.u, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 8
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.v, i64 %i.z, i1 false)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp eq i64 %i.z, 8
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !34
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !34
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.ad = phi ptr [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %.pre.i.i, %bb.e ], [ %i.p, %bb.c ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !27
  %i.af = add i64 %.02132.a, -1
  %i.ag = add i64 %.033, -1
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.b, %.lr.ph
  %i.ah = phi ptr [ %i.ae, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %i.p, %bb.b ], [ %i.p, %.lr.ph ]
  %.122 = phi i64 [ %i.af, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.02132.a, %bb.b ], [ %.02132.a, %.lr.ph ]
  %.1 = phi i64 [ %i.ag, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.033, %bb.b ], [ %.033, %.lr.ph ] ; 2 uses
  %i.ai = add i64 %.122, 1                        ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %.1
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !129

._crit_edge38:                                    ; preds = %_ZNK6Effect10is_writtenEPK8Variable.exit.thread, %._crit_edge
  ret void

bb.i:                                             ; preds = %.lr.ph37, %_ZNK6Effect10is_writtenEPK8Variable.exit.thread
  %i.ak = phi ptr [ %i.j, %.lr.ph37 ], [ %i.bn, %_ZNK6Effect10is_writtenEPK8Variable.exit.thread ] ; 7 uses
  %i.al = phi ptr [ %i.j, %.lr.ph37 ], [ %i.bo, %_ZNK6Effect10is_writtenEPK8Variable.exit.thread ] ; 4 uses
  %.235 = phi i64 [ %i.o, %.lr.ph37 ], [ %.3, %_ZNK6Effect10is_writtenEPK8Variable.exit.thread ] ; 3 uses
  %.01934 = phi i64 [ 0, %.lr.ph37 ], [ %i.bp, %_ZNK6Effect10is_writtenEPK8Variable.exit.thread ] ; 4 uses
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !28  ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.01934 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  %.not15.not.i = icmp eq ptr %i.al, %i.am
  %or.cond = select i1 %.not, i1 true, i1 %.not15.not.i
  br i1 %or.cond, label %_ZNK6Effect10is_writtenEPK8Variable.exit.thread, label %tailrecurse.us.preheader.i

tailrecurse.us.preheader.i:                       ; preds = %bb.i
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  br label %tailrecurse.us.i

tailrecurse.us.i:                                 ; preds = %..critedge_crit_edge.us.i, %tailrecurse.us.preheader.i
  %.tr13.us.i = phi ptr [ %i.ba, %..critedge_crit_edge.us.i ], [ %i.aq, %tailrecurse.us.preheader.i ] ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.av = add nuw i64 %.0916.us.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, %i.au
  br i1 %exitcond.not.i, label %..critedge_crit_edge.us.i, label %bb.k, !llvm.loop !0

bb.k:                                             ; preds = %bb.j, %tailrecurse.us.i
  %.0916.us.i = phi i64 [ 0, %tailrecurse.us.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0916.us.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.ay = icmp eq ptr %i.ax, %.tr13.us.i
  br i1 %i.ay, label %_ZNK6Effect10is_writtenEPK8Variable.exit, label %bb.j

..critedge_crit_edge.us.i:                        ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.tr13.us.i, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58 ; 2 uses
  %.not12.us.i = icmp eq ptr %i.ba, null
  br i1 %.not12.us.i, label %_ZNK6Effect10is_writtenEPK8Variable.exit.thread, label %tailrecurse.us.i

_ZNK6Effect10is_writtenEPK8Variable.exit:         ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, %i.ak
  br i1 %i.bc, label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24, label %bb.l

bb.l:                                             ; preds = %_ZNK6Effect10is_writtenEPK8Variable.exit
  %i.bd = ptrtoint ptr %i.ak to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp sgt i64 %i.bf, 8
  br i1 %i.bg, label %bb.m, label %bb.n, !prof !32

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.bb, i64 %i.bf, i1 false)
  %.pre.i.i23 = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24

bb.n:                                             ; preds = %bb.l
  %i.bh = icmp eq i64 %i.bf, 8
  br i1 %i.bh, label %bb.o, label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !34
  store ptr %i.bi, ptr %i.an, align 8, !tbaa !34
  br label %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24

_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24: ; preds = %_ZNK6Effect10is_writtenEPK8Variable.exit, %bb.m, %bb.n, %bb.o
  %i.bj = phi ptr [ %i.ak, %bb.o ], [ %i.ak, %bb.n ], [ %.pre.i.i23, %bb.m ], [ %i.ak, %_ZNK6Effect10is_writtenEPK8Variable.exit ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8 ; 3 uses
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !27
  %i.bl = add i64 %.01934, -1
  %i.bm = add i64 %.235, -1
  br label %_ZNK6Effect10is_writtenEPK8Variable.exit.thread

_ZNK6Effect10is_writtenEPK8Variable.exit.thread:  ; preds = %..critedge_crit_edge.us.i, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24, %bb.i
  %i.bn = phi ptr [ %i.bk, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24 ], [ %i.ak, %bb.i ], [ %i.ak, %..critedge_crit_edge.us.i ]
  %i.bo = phi ptr [ %i.bk, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24 ], [ %i.al, %bb.i ], [ %i.al, %..critedge_crit_edge.us.i ]
  %.120 = phi i64 [ %i.bl, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24 ], [ %.01934, %bb.i ], [ %.01934, %..critedge_crit_edge.us.i ]
  %.3 = phi i64 [ %i.bm, %_ZNSt6vectorIPK8VariableSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit24 ], [ %.235, %bb.i ], [ %.235, %..critedge_crit_edge.us.i ] ; 2 uses
  %i.bp = add i64 %.120, 1                        ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.3
  br i1 %i.bq, label %bb.i, label %._crit_edge38, !llvm.loop !130
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6Effect13has_race_withERKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(74) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %.not2331.not.i = icmp eq ptr %i.c, %i.d
  %.not29.not.i = icmp eq ptr %i.j, %i.k
  %or.cond.i = select i1 %.not2331.not.i, i1 true, i1 %.not29.not.i
  br i1 %or.cond.i, label %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.a, %..critedge_crit_edge.us.i
  %.02032.us.i = phi i64 [ %i.ae, %..critedge_crit_edge.us.i ], [ 0, %bb.a ] ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.p = add nuw i64 %.030.us.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.o
  br i1 %exitcond.not.i, label %..critedge_crit_edge.us.i, label %bb.c, !llvm.loop !131

bb.c:                                             ; preds = %bb.b, %.preheader.us.i
  %.030.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.02032.us.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.030.us.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = tail call noundef zeroext i1 @_ZNK8Variable5matchEPKS_(ptr noundef nonnull align 8 dereferenceable(200) %i.s, ptr noundef %i.v)
  br i1 %i.w, label %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.030.us.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.02032.us.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = tail call noundef zeroext i1 @_ZNK8Variable5matchEPKS_(ptr noundef nonnull align 8 dereferenceable(200) %i.z, ptr noundef %i.ac)
  br i1 %i.ad, label %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit25, label %bb.b

..critedge_crit_edge.us.i:                        ; preds = %bb.b
  %i.ae = add nuw i64 %.02032.us.i, 1             ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond38.not.i, label %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit, label %.preheader.us.i, !llvm.loop !132

_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit: ; preds = %..critedge_crit_edge.us.i, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 3 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !28 ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %.not2331.not.i4 = icmp eq ptr %i.ah, %i.ai
  %.not29.not.i5 = icmp eq ptr %i.ao, %i.ap
  %or.cond.i6 = select i1 %.not2331.not.i4, i1 true, i1 %.not29.not.i5
  br i1 %or.cond.i6, label %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit14, label %.preheader.us.i7

.preheader.us.i7:                                 ; preds = %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit, %..critedge_crit_edge.us.i11
  %.02032.us.i8 = phi i64 [ %i.bj, %..critedge_crit_edge.us.i11 ], [ 0, %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit ] ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.au = add nuw i64 %.030.us.i9, 1              ; 2 uses
  %exitcond.not.i10 = icmp eq i64 %i.au, %i.at
  br i1 %exitcond.not.i10, label %..critedge_crit_edge.us.i11, label %bb.f, !llvm.loop !131

bb.f:                                             ; preds = %bb.e, %.preheader.us.i7
  %.030.us.i9 = phi i64 [ 0, %.preheader.us.i7 ], [ %i.au, %bb.e ] ; 3 uses
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.02032.us.i8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.ay = load ptr, ptr %1, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.030.us.i9
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.bb = tail call noundef zeroext i1 @_ZNK8Variable5matchEPKS_(ptr noundef nonnull align 8 dereferenceable(200) %i.ax, ptr noundef %i.ba)
  br i1 %i.bb, label %_ZL22non_empty_intersectionRKSt6vectorIPK8VariableSaIS2_EES6_.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %1, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.030.us.i9
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.02032.us.i8
end_hunk_0
