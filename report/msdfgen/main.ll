Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/main?download=true
inline.NumInlined: 364
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7msdfgen18generateSDF_legacyENS_13BitmapSectionIfLi1EEERKNS_5ShapeENS_5RangeERKNS_7Vector2ES8_

declare void @_ZN7msdfgen11generateSDFERKNS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_15GeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN7msdfgen19generatePSDF_legacyENS_13BitmapSectionIfLi1EEERKNS_5ShapeENS_5RangeERKNS_7Vector2ES8_(ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8, ptr noundef nonnull align 8 dereferenceable(25), double, double, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN7msdfgen12generatePSDFERKNS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_15GeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL13parseColoringRN7msdfgen5ShapeEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.044 = phi i32 [ 0, %bb.a ], [ %.145, %bb.h ]  ; 5 uses
  %.041 = phi i32 [ 0, %bb.a ], [ %.4, %bb.h ]    ; 4 uses
  %.038 = phi ptr [ %i.b, %bb.a ], [ %.139, %bb.h ] ; 9 uses
  %.036 = phi i8 [ 0, %bb.a ], [ %.2, %bb.h ]     ; 4 uses
  %.035 = phi i1 [ true, %bb.a ], [ %.1, %bb.h ]  ; 4 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.bh, %bb.h ]   ; 2 uses
  %i.c = load i8, ptr %.0, align 1, !tbaa !16     ; 2 uses
  switch i8 %i.c, label %bb.h [
    i8 0, label %bb.i
    i8 44, label %bb.c
    i8 63, label %bb.e
    i8 67, label %bb.f
    i8 77, label %bb.f
    i8 87, label %bb.f
    i8 89, label %bb.f
    i8 99, label %bb.f
    i8 109, label %bb.f
    i8 119, label %bb.f
    i8 121, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.035, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.d = zext nneg i8 %.036 to i32
  %spec.select = add i32 %.041, %i.d              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 2 uses
  %i.f = zext i32 %spec.select to i64             ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.h = load ptr, ptr %.038, align 8, !tbaa !28  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ugt i64 %i.l, %i.f
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.n = phi ptr [ %i.v, %.lr.ph ], [ %i.h, %.preheader ]
  %i.o = phi i64 [ %i.t, %.lr.ph ], [ %i.f, %.preheader ]
  %.24357 = phi i32 [ %i.s, %.lr.ph ], [ %spec.select, %.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = tail call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 7, ptr %i.r, align 8, !tbaa !265
  %i.s = add i32 %.24357, 1                       ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.v = load ptr, ptr %.038, align 8, !tbaa !28  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = icmp ugt i64 %i.z, %i.t
  br i1 %i.aa, label %.lr.ph, label %.loopexit, !llvm.loop !261

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.c
  %i.ab = add i32 %.044, 1                        ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.ad = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 24
  %i.ai = zext i32 %i.ab to i64                   ; 2 uses
  %.not54 = icmp ugt i64 %i.ah, %i.ai
  br i1 %.not54, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ai
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = zext nneg i8 %.036 to i32
  %spec.select55 = add i32 %.041, %i.ak           ; 3 uses
  %i.al = zext i32 %spec.select55 to i64          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = load ptr, ptr %.038, align 8, !tbaa !28 ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = icmp ugt i64 %i.as, %i.al
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = and i8 %i.c, -33                        ; 4 uses
  %i.av = icmp eq i8 %i.au, 67
  %i.aw = icmp eq i8 %i.au, 77
  %i.ax = select i1 %i.aw, i32 5, i32 0
  %i.ay = select i1 %i.av, i32 6, i32 %i.ax
  %i.az = icmp eq i8 %i.au, 89
  %i.ba = select i1 %i.az, i32 3, i32 0
  %i.bb = or i32 %i.ay, %i.ba
  %i.bc = icmp eq i8 %i.au, 87
  %i.bd = select i1 %i.bc, i32 7, i32 %i.bb
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al
  %i.bf = tail call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %i.bd, ptr %i.bg, align 8, !tbaa !265
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.g, %bb.f
  %.145 = phi i32 [ %.044, %bb.b ], [ %i.ab, %bb.d ], [ %.044, %bb.e ], [ %.044, %bb.g ], [ %.044, %bb.f ]
  %.4 = phi i32 [ %.041, %bb.b ], [ 0, %bb.d ], [ %.041, %bb.e ], [ %spec.select55, %bb.g ], [ %spec.select55, %bb.f ]
  %.139 = phi ptr [ %.038, %bb.b ], [ %i.aj, %bb.d ], [ %.038, %bb.e ], [ %.038, %bb.g ], [ %.038, %bb.f ]
  %.2 = phi i8 [ %.036, %bb.b ], [ 0, %bb.d ], [ %.036, %bb.e ], [ 1, %bb.g ], [ 0, %bb.f ]
  %.1 = phi i1 [ %.035, %bb.b ], [ true, %bb.d ], [ false, %bb.e ], [ %.035, %bb.g ], [ %.035, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !262

bb.i:                                             ; preds = %bb.b, %.loopexit
  ret void
}

declare void @_ZN7msdfgen19generateMSDF_legacyENS_13BitmapSectionIfLi3EEERKNS_5ShapeENS_5RangeERKNS_7Vector2ES8_NS_21ErrorCorrectionConfigE(ptr noundef byval(%"struct.msdfgen::BitmapSection.9") align 8, ptr noundef nonnull align 8 dereferenceable(25), double, double, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"struct.msdfgen::ErrorCorrectionConfig") align 8) local_unnamed_addr #2

declare void @_ZN7msdfgen12generateMSDFERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN7msdfgen20generateMTSDF_legacyENS_13BitmapSectionIfLi4EEERKNS_5ShapeENS_5RangeERKNS_7Vector2ES8_NS_21ErrorCorrectionConfigE(ptr noundef byval(%"struct.msdfgen::BitmapSection.10") align 8, ptr noundef nonnull align 8 dereferenceable(25), double, double, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"struct.msdfgen::ErrorCorrectionConfig") align 8) local_unnamed_addr #2

declare void @_ZN7msdfgen13generateMTSDFERKNS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef byval(%"struct.msdfgen::BitmapSection.9") align 8, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN7msdfgen22distanceSignCorrectionENS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEfNS_8FillRuleE(ptr noundef byval(%"struct.msdfgen::BitmapSection.10") align 8, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen21writeShapeDescriptionEP8_IO_FILERKNS_5ShapeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen12saveSvgShapeERKNS_5ShapeERKNS0_6BoundsEPKc(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi3EEERKNS_18BitmapConstSectionIfLi1EEENS_5RangeEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double, double, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZL12cmpExtensionPKcS0_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi ptr [ %i.b, %bb.a ], [ %.014, %bb.c ]
  %.pn17 = phi ptr [ %i.d, %bb.a ], [ %.013, %bb.c ]
  %.013 = getelementptr inbounds i8, ptr %.pn17, i64 -1 ; 3 uses
  %.014 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 3 uses
  %.not = icmp ult ptr %.013, %1                  ; 2 uses
  %i.e = icmp ult ptr %.014, %0
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.014, align 1, !tbaa !16   ; 3 uses
  %i.g = add i8 %i.f, -97
  %or.cond.i = icmp ult i8 %i.g, 26
  %i.h = add nsw i8 %i.f, -32
  %i.i = select i1 %or.cond.i, i8 %i.h, i8 %i.f
  %i.j = load i8, ptr %.013, align 1, !tbaa !16   ; 3 uses
  %i.k = add i8 %i.j, -97
  %or.cond.i18 = icmp ult i8 %i.k, 26
  %i.l = add nsw i8 %i.j, -32
  %i.m = select i1 %or.cond.i18, i8 %i.l, i8 %i.j
  %.not16 = icmp eq i8 %i.i, %i.m
  br i1 %.not16, label %bb.b, label %bb.d, !llvm.loop !266

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not.lcssa = phi i1 [ false, %bb.c ], [ %.not, %bb.b ]
  ret i1 %.not.lcssa
}

declare noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi3EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection.11") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi1EEERKNS_18BitmapConstSectionIfLi1EEENS_5RangeEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double, double, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi1EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi3EEE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi3EEERKNS_18BitmapConstSectionIfLi3EEENS_5RangeEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double, double, float noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi1EEERKNS_18BitmapConstSectionIfLi3EEENS_5RangeEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double, double, float noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen12simulate8bitERKNS_13BitmapSectionIfLi4EEE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi4EEERKNS_18BitmapConstSectionIfLi4EEENS_5RangeEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double, double, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen7savePngENS_18BitmapConstSectionIfLi4EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection.12") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen9renderSDFERKNS_13BitmapSectionIfLi1EEERKNS_18BitmapConstSectionIfLi4EEENS_5RangeEf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double, double, float noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msdfgen5ShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #21
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN7msdfgen20setFontVariationAxisEPNS_14FreetypeHandleEPNS_10FontHandleENS_17FontVariationAxis3TagEd(ptr noundef, ptr noundef, i32, double noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen17FontVariationAxis3TagC1EPKc(ptr noundef nonnull align 1 dereferenceable(4), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen20setFontVariationAxisEPNS_14FreetypeHandleEPNS_10FontHandleEPKcd(ptr noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

declare noundef zeroext i1 @_ZN7msdfgen21listFontVariationAxesERSt6vectorINS_17FontVariationAxisESaIS1_EEPNS_14FreetypeHandleEPNS_10FontHandleE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen11destroyFontEPNS_10FontHandleE(ptr noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen20deinitializeFreetypeEPNS_14FreetypeHandleE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare void @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

declare void @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN7msdfgen20TrueDistanceSelector9EdgeCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN7msdfgen20TrueDistanceSelector7addEdgeERNS0_9EdgeCacheEPKNS_11EdgeSegmentES5_S5_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

declare noundef zeroext i1 @_ZN7msdfgen7saveBmpENS_18BitmapConstSectionIfLi1EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi1EEEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen8saveRgbaENS_18BitmapConstSectionIfLi1EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7msdfgen8saveFl32ILi1EEEbNS_18BitmapConstSectionIfXT_EEEPKc(ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define internal fastcc void @_ZL15writeTextBitmapP8_IO_FILEPKfiii(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge19

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = sext i32 %4 to i64
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %exitcond21.peel.not = icmp eq i32 %2, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.01318.us = phi i32 [ %i.ab, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.01417.us = phi ptr [ %i.aa, %._crit_edge.us ], [ %1, %.preheader.us.preheader ] ; 3 uses
  %i.d = load float, ptr %.01417.us, align 4, !tbaa !22 ; 4 uses
  %i.e = fcmp oge float %i.d, 0.000000e+00
  %i.f = fcmp ole float %i.d, 1.000000e+00
  %or.cond.i.i.us.peel = and i1 %i.e, %i.f
  %i.g = fcmp ogt float %i.d, 0.000000e+00
  %i.h = uitofp i1 %i.g to float
  %i.i = select i1 %or.cond.i.i.us.peel, float %i.d, float %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float -2.550000e+02, float 2.555000e+02)
  %i.k = fptosi float %i.j to i32
  %i.l = and i32 %i.k, 255
  %i.m = xor i32 %i.l, 255
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.208, i32 noundef %i.m) #21 ; 0 uses
  br i1 %exitcond21.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %.preheader.us, %.peel.next
end_hunk_0
