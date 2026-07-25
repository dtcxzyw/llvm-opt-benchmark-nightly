inline.NumInlined: 2081
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN11OpenImageIO4v3_18DeepData15set_all_samplesENS0_4spanIKjLm18446744073709551615EEE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq i64 %2, %i.b
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = load i8, ptr %i.d, align 8, !tbaa !64, !range !83, !noundef !84
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.08 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  tail call void @_ZN11OpenImageIO4v3_18DeepData11set_samplesEli(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %.08, i32 noundef %i.i)
  %i.j = add nuw nsw i64 %.08, 1                  ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !62
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !85

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %2
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef %1, ptr noundef %i.n)
  %i.o = load ptr, ptr %0, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load i64, ptr %i.a, align 8, !tbaa !62
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.q
  tail call void @_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef %1, ptr noundef %i.r)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZNK11OpenImageIO4v3_18DeepData11all_samplesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.i, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData15copy_deep_pixelElRKS1_l(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2, i64 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp slt i64 %1, %i.c
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit79

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not52 = icmp slt i64 %3, %i.f
  %or.cond74 = select i1 %i.d, i1 %.not52, i1 false
  br i1 %or.cond74, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11OpenImageIO4v3_18DeepData11set_samplesEli(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef 0)
  br label %.loopexit79

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !63
  %.not53 = icmp eq i32 %i.h, %i.j
  br i1 %.not53, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %.loopexit79

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.d
  %i.k = load ptr, ptr %2, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %3
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 6 uses
  tail call void @_ZN11OpenImageIO4v3_18DeepData11set_samplesEli(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.o)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit79, label %bb.e

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.q = load i32, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %i.r = load i32, ptr %i.i, align 8, !tbaa !63
  %.not.i54 = icmp eq i32 %i.q, %i.r
  br i1 %.not.i54, label %bb.f, label %_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.u = load i64, ptr %i.t, align 8, !tbaa !92
  %i.v = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.x = load i64, ptr %i.w, align 8, !tbaa !92
  %.not11.i = icmp eq i64 %i.u, %i.x
  br i1 %.not11.i, label %.preheader.i, label %_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit

.preheader.i:                                     ; preds = %bb.f
  %i.y = icmp slt i32 %i.q, 1
  br i1 %i.y, label %.loopexit80, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph.i

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph.i: ; preds = %.preheader.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !11
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit80, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i, !llvm.loop !125

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i: ; preds = %bb.g, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ac = load i64, ptr %i.ab, align 4            ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ae = load i64, ptr %i.ad, align 4            ; 2 uses
  %i.af = trunc i64 %i.ac to i24
  %i.ag = trunc i64 %i.ae to i24
  %or.cond20.i = icmp eq i24 %i.af, %i.ag
  %.unshifted.i = xor i64 %i.ae, %i.ac
  %i.ah = icmp ult i64 %.unshifted.i, 4294967296
  %or.cond21.not.i = and i1 %or.cond20.i, %i.ah
  br i1 %or.cond21.not.i, label %bb.g, label %_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit

_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i, %bb.e, %bb.f
  %i.ai = icmp sgt i32 %i.h, 0
  %i.aj = icmp sgt i32 %i.o, 0
  %or.cond106 = and i1 %i.ai, %i.aj
  br i1 %or.cond106, label %.lr.ph86.split.us.preheader, label %.loopexit79

.lr.ph86.split.us.preheader:                      ; preds = %_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph86.split.us

.lr.ph86.split.us:                                ; preds = %.lr.ph86.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph86.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 7 uses
  %i.ak = load i32, ptr %i.g, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv, %i.al
  br i1 %i.am, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.us, label %.critedge.us

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.us: ; preds = %.lr.ph86.split.us
  %i.an = load ptr, ptr %0, align 8, !tbaa !36
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 4
  %i.ar = and i64 %i.aq, -4294901761
  %i.as = icmp eq i64 %i.ar, 262
  br i1 %i.as, label %bb.h, label %.critedge.us

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.us
  %i.at = load i32, ptr %i.i, align 8
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv, %i.au
  br i1 %i.av, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit60.us, label %.critedge.us

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit60.us: ; preds = %bb.h
  %i.aw = load ptr, ptr %2, align 8, !tbaa !36
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i64, ptr %i.ay, align 4
  %i.ba = and i64 %i.az, -4294901761
  %i.bb = icmp eq i64 %i.ba, 262
  br i1 %i.bb, label %.lr.ph83.us.preheader, label %.critedge.us

.critedge.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit60.us, %bb.h, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.us, %.lr.ph86.split.us
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.us, %bb.i
  %.081.us = phi i32 [ 0, %.critedge.us ], [ %i.be, %bb.i ] ; 3 uses
  %i.bd = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %3, i32 noundef %i.bc, i32 noundef %.081.us)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.bc, i32 noundef %.081.us, float noundef %i.bd)
  %i.be = add nuw nsw i32 %.081.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.o
  br i1 %exitcond.not, label %.loopexit.us, label %bb.i, !llvm.loop !126

.loopexit.us:                                     ; preds = %bb.i, %.lr.ph83.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond100.not, label %.loopexit79, label %.lr.ph86.split.us, !llvm.loop !127

.lr.ph83.us:                                      ; preds = %.lr.ph83.us.preheader, %.lr.ph83.us
  %.04582.us = phi i32 [ %i.bg, %.lr.ph83.us ], [ 0, %.lr.ph83.us.preheader ] ; 3 uses
  %i.bf = tail call noundef i32 @_ZNK11OpenImageIO4v3_18DeepData15deep_value_uintElii(ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %3, i32 noundef %i.bh, i32 noundef %.04582.us)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliij(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.bh, i32 noundef %.04582.us, i32 noundef %i.bf)
  %i.bg = add nuw nsw i32 %.04582.us, 1           ; 2 uses
  %exitcond98.not = icmp eq i32 %i.bg, %i.o
  br i1 %exitcond98.not, label %.loopexit.us, label %.lr.ph83.us, !llvm.loop !128

.lr.ph83.us.preheader:                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit60.us
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br label %.lr.ph83.us

.loopexit80:                                      ; preds = %bb.g, %.preheader.i
  %i.bi = tail call noundef ptr @_ZN11OpenImageIO4v3_18DeepData8data_ptrElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef 0, i32 noundef 0)
  %i.bj = tail call noundef ptr @_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii(ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %3, i32 noundef 0, i32 noundef 0)
  %i.bk = load ptr, ptr %0, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !92
  %i.bn = sext i32 %i.o to i64
  %i.bo = mul i64 %i.bm, %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bj, i64 %i.bo, i1 false)
  br label %.loopexit79

.loopexit79:                                      ; preds = %.loopexit.us, %_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit, %bb.d, %.loopexit80, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.a, %bb.c
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.d ], [ true, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit ], [ true, %.loopexit80 ], [ true, %_ZNK11OpenImageIO4v3_18DeepData17same_channeltypesERKS1_.exit ], [ true, %.loopexit.us ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18DeepData4Impl5clearEv(ptr noundef nonnull align 8 dereferenceable(250) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !7
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not.i.i1 = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i1, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  store ptr %i.e, ptr %i.f, align 8, !tbaa !90
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %.not.i.i2 = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i2, label %_ZNSt6vectorImSaImEE5clearEv.exit4, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i3

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i3:       ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  store ptr %i.i, ptr %i.j, align 8, !tbaa !90
  br label %_ZNSt6vectorImSaImEE5clearEv.exit4

_ZNSt6vectorImSaImEE5clearEv.exit4:               ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %.not.i.i5 = icmp eq ptr %i.o, %i.m
  br i1 %.not.i.i5, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit4
  store ptr %i.m, ptr %i.n, align 8, !tbaa !82
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit4, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82
  %.not.i.i6 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i6, label %_ZNSt6vectorIjSaIjEE5clearEv.exit8, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i7

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i7:       ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.q, ptr %i.r, align 8, !tbaa !82
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit8

_ZNSt6vectorIjSaIjEE5clearEv.exit8:               ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !82
  %.not.i.i9 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i9, label %_ZNSt6vectorIjSaIjEE5clearEv.exit11, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i10

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i10:      ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !82
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit11

_ZNSt6vectorIjSaIjEE5clearEv.exit11:              ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit8, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !129
  %.not.i.i12 = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i12, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit11
  store ptr %i.y, ptr %i.z, align 8, !tbaa !129
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit11, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ae, %i.ac
  br i1 %.not.i.i13, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ac, %_ZNSt6vectorIcSaIcEE5clearEv.exit ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91
  %.not.i.i14 = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i14, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  store ptr %i.am, ptr %i.an, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.ap, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 -1, i64 24, i1 false)
  store i8 0, ptr %i.ar, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_18DeepData9Z_channelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.c = load i32, ptr %i.b, align 4, !tbaa !101  ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_18DeepData9A_channelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_18DeepData10AR_channelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
end_hunk_0
