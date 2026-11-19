Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_attribute_decoder?download=true
inline.NumInlined: 269
inline.NumDeleted: 195
begin_hunk_0_@_ZN5draco26SequentialAttributeDecoder34TransformAttributeToOriginalFormatERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EE:bb.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5draco26SequentialAttributeDecoder20GetPortableAttributeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.d = load i8, ptr %i.c, align 4, !tbaa !88, !range !89, !noundef !90
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 100 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !88, !range !89, !noundef !90
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  store i8 0, ptr %i.h, align 4, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !57   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ugt i64 %i.r, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nuw nsw i64 %i.r, %i.z
  tail call void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.u, i64 noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) @_ZN5dracoL27kInvalidAttributeValueIndexE)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp ult i64 %i.r, %i.z
  br i1 %i.ac, label %bb.g, label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.q ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !56
  br label %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit

_ZN5draco14PointAttribute18SetExplicitMappingEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !88, !range !89, !noundef !90
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = and i64 %i.ao, 17179869180
  %i.aq = icmp eq i64 %i.ap, 0
  %.not1011 = select i1 %i.ah, i1 true, i1 %i.aq
  br i1 %.not1011, label %.loopexit, label %.else.preheader

.else.preheader:                                  ; preds = %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  br label %.else

.else:                                            ; preds = %.else.preheader, %.else
  %indvars.iv = phi i64 [ 0, %.else.preheader ], [ %indvars.iv.next, %.else ] ; 3 uses
  %i.au = phi ptr [ %i.al, %.else.preheader ], [ %i.ay, %.else ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %storemerge.i.else.val = load i32, ptr %i.av, align 4, !tbaa !91, !noalias !92
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %storemerge.i.else.val, ptr %i.aw, align 4, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load ptr, ptr %i.aj, align 8
  %i.ay = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 2
  %i.bd = and i64 %i.bc, 4294967295
  %.not13 = icmp samesign ult i64 %indvars.iv.next, %i.bd
  br i1 %.not13, label %.else, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %.else, %_ZN5draco14PointAttribute18SetExplicitMappingEm.exit, %bb.c, %bb.b, %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  ret ptr %i.bf
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco26SequentialAttributeDecoder20InitPredictionSchemeEPNS_25PredictionSchemeInterfaceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.01725 = phi i32 [ %i.ak, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = load ptr, ptr %1, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.01725)
  %i.n = tail call noundef i32 @_ZNK5draco10PointCloud19GetNamedAttributeIdENS_17GeometryAttribute4TypeE(ptr noundef nonnull align 8 dereferenceable(164) %i.i, i32 noundef %i.m) ; 3 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.critedge24, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i8, ptr %i.q, align 8, !tbaa !94
  %i.s = icmp ult i8 %i.r, 2
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = sext i32 %i.n to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = load ptr, ptr %1, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.z)
  br i1 %i.ad, label %.critedge, label %.critedge24

bb.d:                                             ; preds = %bb.b
  %i.ae = tail call noundef ptr @_ZN5draco17PointCloudDecoder20GetPortableAttributeEi(ptr noundef nonnull align 8 dereferenceable(88) %i.p, i32 noundef %i.n) ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %1, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ae)
  br i1 %i.aj, label %.critedge, label %.critedge24

.critedge:                                        ; preds = %bb.e, %bb.c
  %i.ak = add nuw nsw i32 %.01725, 1              ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.not = icmp slt i32 %i.ak, %i.ao
  br i1 %.not, label %.lr.ph, label %.critedge24, !llvm.loop !93

.critedge24:                                      ; preds = %.critedge, %bb.e, %bb.d, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.d ], [ false, %bb.e ], [ true, %.critedge ]
  ret i1 %.lcssa
}

declare noundef i32 @_ZNK5draco10PointCloud19GetNamedAttributeIdENS_17GeometryAttribute4TypeE(ptr noundef nonnull align 8 dereferenceable(164), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5draco17PointCloudDecoder20GetPortableAttributeEi(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco26SequentialAttributeDecoder12DecodeValuesERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS4_EEPNS_13DecoderBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = load ptr, ptr %1, align 8, !tbaa !52
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96   ; 2 uses
  %3 = trunc i64 %i.l to i32
  %sext = shl i64 %i.l, 32
  %i.m = ashr exact i64 %sext, 32                 ; 4 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not26 = icmp slt i32 %i.h, 1
  br i1 %.not26, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01828 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %bb.c ]
  %.01828.a = phi i32 [ 0, %.lr.ph ], [ %5, %bb.c ] ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !100
  %i.r = load i64, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.s = add i64 %i.r, %i.m                       ; 2 uses
  %.not25.not.not = icmp sge i64 %i.q, %i.s       ; 3 uses
  br i1 %.not25.not.not, label %bb.c, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit22

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %2, align 8, !tbaa !102
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.u, i64 %i.m, i1 false)
  store i64 %i.s, ptr %i.p, align 8, !tbaa !101
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %4 = sext i32 %.01828.a to i64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.n, i64 %i.m, i1 false)
  %5 = add nsw i32 %.01828.a, %3
  %i.aa = add nuw nsw i32 %.01828, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, %i.h
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit22, label %bb.b, !llvm.loop !95

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit22: ; preds = %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not25.not.not, %bb.b ], [ %.not25.not.not, %bb.c ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #13
  ret i1 %.not.lcssa
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco26SequentialAttributeDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5draco26SequentialAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b)
  br label %_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco26SequentialAttributeDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5draco26SequentialAttributeDecoderE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5draco26SequentialAttributeDecoderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b), !inline_history !103
  br label %_ZN5draco26SequentialAttributeDecoderD2Ev.exit

_ZN5draco26SequentialAttributeDecoderD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 19 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 6 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !59     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = sub i64 %i.f, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %2, -4                          ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 7 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.o = add i64 %2, 4611686018427387903
  %i.p = and i64 %i.o, 4611686018427387903        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check169 = icmp samesign ult i64 %i.p, 7
  br i1 %min.iters.check169, label %.lr.ph.i.i.i.i.i.preheader271, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec171 = and i64 %i.q, 9223372036854775800   ; 3 uses
  %i.r = shl i64 %n.vec171, 2                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.r
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %i.u = shl i64 %index173, 2                     ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load176 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !59
  %wide.load177 = load <4 x i32>, ptr %i.v, align 4, !tbaa !59
  %i.w = getelementptr i8, ptr %next.gep174, i64 16
  store <4 x i32> %wide.load176, ptr %next.gep174, align 4, !tbaa !59
  store <4 x i32> %wide.load177, ptr %i.w, align 4, !tbaa !59
  %index.next178 = add nuw i64 %index173, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.x, label %middle.block179, label %vector.body172, !llvm.loop !104

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.q, %n.vec171
  br i1 %cmp.n180, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader271

.lr.ph.i.i.i.i.i.preheader271:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block179
  %.013.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block179 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %middle.block179 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader271, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader271 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader271 ] ; 2 uses
  %i.y = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !59
  store i32 %i.y, ptr %.013.i.i.i.i.i, align 4, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !105

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block179, %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !56
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ac, %i.j
  %i.ae = ashr exact i64 %i.ad, 2                 ; 6 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i69.preheader, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check186 = icmp ult i64 %i.ae, 8
  %i.ag = add i64 %.neg, -1
  %diff.check188 = icmp ult i64 %i.ag, 31
  %or.cond = or i1 %min.iters.check186, %diff.check188
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i69.preheader270, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i.i.i.i.i69.preheader
  %n.vec190 = and i64 %i.ae, 9223372036854775800  ; 3 uses
  %i.ah = and i64 %i.ae, 7
  %i.ai = mul i64 %n.vec190, -4                   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.ai
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %i.al = mul i64 %index192, -4                   ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.d, i64 %i.al ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.n, i64 %i.al ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %next.gep194, i64 -16
  %i.an = getelementptr inbounds i8, ptr %next.gep194, i64 -32
  %wide.load195 = load <4 x i32>, ptr %i.am, align 4, !tbaa !59
  %wide.load196 = load <4 x i32>, ptr %i.an, align 4, !tbaa !59
  %i.ao = getelementptr inbounds i8, ptr %next.gep193, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %next.gep193, i64 -32
  store <4 x i32> %wide.load195, ptr %i.ao, align 4, !tbaa !59
  store <4 x i32> %wide.load196, ptr %i.ap, align 4, !tbaa !59
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.aq, label %middle.block198, label %vector.body191, !llvm.loop !106

middle.block198:                                  ; preds = %vector.body191
  %cmp.n199 = icmp eq i64 %i.ae, %n.vec190
  br i1 %cmp.n199, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i69.preheader270

.lr.ph.i.i.i.i.i69.preheader270:                  ; preds = %.lr.ph.i.i.i.i.i69.preheader, %middle.block198
  %.010.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ah, %middle.block198 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.aj, %middle.block198 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ak, %middle.block198 ]
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader270, %.lr.ph.i.i.i.i.i69
  %.010.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i69 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i69.preheader270 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i69 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i69.preheader270 ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i69 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i69.preheader270 ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !59
  store i32 %i.at, ptr %i.as, align 4, !tbaa !59
  %i.au = add nsw i64 %.010.i.i.i.i.i, -1
  %i.av = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, !llvm.loop !107

_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block198, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ax = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
end_hunk_0
