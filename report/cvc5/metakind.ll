Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/metakind?download=true
inline.NumInlined: 785
inline.NumDeleted: 177
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE89ENS0_13BitVectorSizeELb1EE7compareEPKNS0_4expr9NodeValueESA_:bb.a
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13BitVectorSizeEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !30
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE90ENS0_9BitVectorELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = tail call noundef zeroext i1 @_ZN4cvc58internaleqERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = icmp eq i64 %i.g, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.r, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit9
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit10: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit9, %bb.g
  %i.u = phi ptr [ %i.t, %bb.g ], [ %i.s, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit9 ]
  %i.v = tail call noundef zeroext i1 @_ZN4cvc58internaleqERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit10, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit
  %.0 = phi i1 [ %i.v, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit10 ], [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE139ENS0_12BitVectorBitELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit
  %.sink16 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink15 = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12BitVectorBitEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load i32, ptr %.sink16, align 4, !tbaa !32
  %i.u = load i32, ptr %.sink15, align 4, !tbaa !32
  %i.v = icmp eq i32 %i.t, %i.u
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE141ENS0_16BitVectorExtractELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE143ENS0_15BitVectorRepeatELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_15BitVectorRepeatEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !34
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE145ENS0_19BitVectorRotateLeftELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19BitVectorRotateLeftEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !36
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE147ENS0_20BitVectorRotateRightELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_20BitVectorRotateRightEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !38
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE149ENS0_19BitVectorSignExtendELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE154ENS0_16FiniteFieldValueELb1EE7compareEPKNS0_4expr9NodeValueESA_:bb.a

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit9
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit10: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit9, %bb.g
  %i.u = phi ptr [ %i.t, %bb.g ], [ %i.s, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit9 ]
  %i.v = tail call noundef zeroext i1 @_ZN4cvc58internaleqERKNS0_16FiniteFieldValueES3_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit10, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit
  %.0 = phi i1 [ %i.v, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit10 ], [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE159ENS0_13FloatingPointELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal13FloatingPointeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = icmp eq i64 %i.g, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.r, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit9
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit10: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit9, %bb.g
  %i.u = phi ptr [ %i.t, %bb.g ], [ %i.s, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit9 ]
  %i.v = tail call noundef zeroext i1 @_ZNK4cvc58internal13FloatingPointeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit10, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit
  %.0 = phi i1 [ %i.v, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit10 ], [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE160ENS0_12RoundingModeELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_12RoundingModeEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !44
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE161ENS0_17FloatingPointSizeELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE189ENS0_30FloatingPointToFPIEEEBitVectorELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE191ENS0_30FloatingPointToFPFloatingPointELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE193ENS0_21FloatingPointToFPRealELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE195ENS0_32FloatingPointToFPSignedBitVectorELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE197ENS0_34FloatingPointToFPUnsignedBitVectorELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.q = icmp eq i64 %i.g, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.q, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit
  %.sink23 = phi ptr [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit ], [ %i.p, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9 ], [ %i.p, %bb.g ]
  %.sink = phi ptr [ %i.n, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit9 ], [ %i.s, %bb.g ]
  %i.t = load <2 x i32>, ptr %.sink23, align 4
  %i.u = load <2 x i32>, ptr %.sink, align 4
  %i.v = icmp eq <2 x i32> %i.t, %i.u
  %2 = freeze <2 x i1> %i.v
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE199ENS0_18FloatingPointToUBVELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToUBVEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !30
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE201ENS0_23FloatingPointToUBVTotalELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23FloatingPointToUBVTotalEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !30
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE203ENS0_18FloatingPointToSBVELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448         ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967296
  br i1 %i.d, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 288230371856744448         ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967296
  %i.i = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 24 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %.tr11, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit10

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9: ; preds = %bb.e, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.e ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 2 uses
  %i.s = icmp eq i64 %i.g, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.tr11, i64 24 ; 2 uses
  br i1 %i.s, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit10

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit10: ; preds = %bb.g, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit
  %.sink15 = phi ptr [ %i.o, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit ], [ %i.u, %bb.g ], [ %i.t, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9 ]
  %.sink = phi i32 [ %i.m, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit ], [ %i.r, %bb.g ], [ %i.r, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_18FloatingPointToSBVEEERKT_v.exit9 ]
  %i.v = load i32, ptr %.sink15, align 4, !tbaa !30
  %i.w = icmp eq i32 %.sink, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE205ENS0_23FloatingPointToSBVTotalELb1EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr11, %tailrecurse ] ; 3 uses
  %.tr11 = phi ptr [ %1, %bb.a ], [ %.tr, %tailrecurse ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE34ENS0_18FunctionArrayConstELb0EE7compareEPKNS0_4expr9NodeValueESA_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE71ENS0_9DivisibleELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9DivisibleEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal7IntegereqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE72ENS0_8RationalELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit ]
  %i.o = tail call i32 @__gmpq_equal(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #19
  %i.p = icmp ne i32 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE73ENS0_8RationalELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v.exit ]
  %i.o = tail call i32 @__gmpq_equal(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #19
  %i.p = icmp ne i32 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE74ENS0_19RealAlgebraicNumberELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_19RealAlgebraicNumberEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal19RealAlgebraicNumbereqERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE90ENS0_9BitVectorELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9BitVectorEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZN4cvc58internaleqERKNS0_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE141ENS0_16BitVectorExtractELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16BitVectorExtractEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE153ENS0_6FfSizeELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6FfSizeEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal7IntegereqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE154ENS0_16FiniteFieldValueELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZN4cvc58internaleqERKNS0_16FiniteFieldValueES3_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE159ENS0_13FloatingPointELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13FloatingPointEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal13FloatingPointeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE161ENS0_17FloatingPointSizeELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_17FloatingPointSizeEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE189ENS0_30FloatingPointToFPIEEEBitVectorELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPIEEEBitVectorEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE191ENS0_30FloatingPointToFPFloatingPointELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_30FloatingPointToFPFloatingPointEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE193ENS0_21FloatingPointToFPRealELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_21FloatingPointToFPRealEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE195ENS0_32FloatingPointToFPSignedBitVectorELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_32FloatingPointToFPSignedBitVectorEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE197ENS0_34FloatingPointToFPUnsignedBitVectorELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_34FloatingPointToFPUnsignedBitVectorEEERKT_v.exit ]
  %i.o = load <2 x i32>, ptr %i.g, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = icmp eq <2 x i32> %i.o, %i.p
  %2 = freeze <2 x i1> %i.q
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE220ENS0_13ArrayStoreAllELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_13ArrayStoreAllEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal13ArrayStoreAlleqERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE234ENS0_14AscriptionTypeELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_14AscriptionTypeEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal14AscriptionTypeeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE243ENS0_9ProjectOpELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal9ProjectOpeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE245ENS0_23CodatatypeBoundVariableELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_23CodatatypeBoundVariableEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal23CodatatypeBoundVariableeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE254ENS0_8EmptySetELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8EmptySetEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal8EmptySeteqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4kind8metakind21NodeValueConstCompareILNS1_6Kind_tE275ENS0_9ProjectOpELb0EE7compareEPKNS0_4expr9NodeValueESA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 288230371856744448
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.d, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 288230371856744448
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.k, label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit2

_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit2: ; preds = %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %_ZNK4cvc58internal4expr9NodeValue8getConstINS0_9ProjectOpEEERKT_v.exit ]
  %i.o = tail call noundef zeroext i1 @_ZNK4cvc58internal9ProjectOpeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  ret i1 %i.o
}
end_hunk_2
