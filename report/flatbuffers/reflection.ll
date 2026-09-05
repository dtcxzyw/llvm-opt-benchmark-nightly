Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/reflection?download=true
inline.NumInlined: 1553
inline.NumDeleted: 671
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11flatbuffers9GetFieldVIdEEPNS_6VectorIT_jEERKNS_5TableERKN10reflection5FieldE:bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !14
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !13
  %i.f = icmp ugt i16 %i.e, 10
  br i1 %i.f, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection5Field6offsetEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i, label %_ZNK10reflection5Field6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit

_ZNK10reflection5Field6offsetEv.exit:             ; preds = %bb.a, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.b
  %i.l = phi i16 [ %i.k, %bb.b ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !14
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !13
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2, label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorIdjEEjEET_t.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2: ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.s = zext i16 %i.l to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !13   ; 2 uses
  %.not.i.i3 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i3, label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorIdjEEjEET_t.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorIdjEEjEET_t.exit

_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorIdjEEjEET_t.exit: ; preds = %_ZNK10reflection5Field6offsetEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.c ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2 ], [ null, %_ZNK10reflection5Field6offsetEv.exit ]
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11flatbuffers9GetFieldVINS_6OffsetINS_6StringEEEEEPNS_6VectorIT_jEERKNS_5TableERKN10reflection5FieldE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !14
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !13
  %i.f = icmp ugt i16 %i.e, 10
  br i1 %i.f, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection5Field6offsetEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i, label %_ZNK10reflection5Field6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit

_ZNK10reflection5Field6offsetEv.exit:             ; preds = %bb.a, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.b
  %i.l = phi i16 [ %i.k, %bb.b ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !14
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !13
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2, label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetINS_6StringEEEjEEjEET_t.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2: ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.s = zext i16 %i.l to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !13   ; 2 uses
  %.not.i.i3 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i3, label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetINS_6StringEEEjEEjEET_t.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetINS_6StringEEEjEEjEET_t.exit

_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetINS_6StringEEEjEEjEET_t.exit: ; preds = %_ZNK10reflection5Field6offsetEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.c ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2 ], [ null, %_ZNK10reflection5Field6offsetEv.exit ]
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetINS_6StringEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !81
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87   ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !89
  %i.s = lshr i64 %i.r, 2
  %i.t = zext i32 %i.p to i64                     ; 2 uses
  %i.u = icmp samesign ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.t, 2
  %i.w = add nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.k
  %i.y = sub nuw i64 %i.k, %i.w
  %i.z = icmp ule i64 %i.d, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit: ; preds = %bb.d, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i, %bb.b, %bb.a
  %i.ab = phi i1 [ true, %bb.a ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i ], [ %i.aa, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE21VerifyVectorOfStringsEPKNS_6VectorINS_6OffsetINS_6StringEEEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !69     ; 2 uses
  %.not31 = icmp eq i32 %i.a, 0
  br i1 %.not31, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.fr32 = freeze i64 %i.f                        ; 7 uses
  %i.g = icmp ugt i64 %.fr32, 4
  %i.h = add i64 %.fr32, -4                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = add i64 %.fr32, -1                       ; 2 uses
  br i1 %i.g, label %.lr.ph.split, label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !81
  %.fr = freeze i8 %i.m
  %i.n = trunc i8 %.fr to i1
  %wide.trip.count40 = zext i32 %i.a to i64       ; 2 uses
  br i1 %i.n, label %.lr.ph.split.split, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23: ; preds = %.lr.ph.split, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.o = shl i64 %indvars.iv, 2
  %i.p = and i64 %i.o, 4294967292
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d                       ; 3 uses
  %.not33 = icmp ugt i64 %i.v, %i.h
  br i1 %.not33, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23
  %i.w = load i32, ptr %i.t, align 4, !tbaa !14
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp ugt i64 %i.j, %i.x
  br i1 %i.y, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us, label %.thread

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us: ; preds = %bb.b
  %i.z = add nuw nsw i64 %i.x, 4                  ; 3 uses
  %i.aa = add i64 %i.z, %i.v                      ; 2 uses
  %i.ab = icmp uge i64 %i.z, %.fr32
  %i.ac = sub nuw i64 %.fr32, %i.z
  %i.ad = icmp ugt i64 %i.v, %i.ac
  %.not14.i.us = select i1 %i.ab, i1 true, i1 %i.ad
  %.not10.i.us = icmp ugt i64 %i.aa, %i.k
  %or.cond.i.us = or i1 %.not10.i.us, %.not14.i.us
  br i1 %or.cond.i.us, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us

_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %2, label %.thread

2:                                                ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count40
  br i1 %exitcond.not, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, !llvm.loop !229

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !229

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.c
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.c ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ah = shl i64 %indvars.iv37, 2
  %i.ai = and i64 %i.ah, 4294967292
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.d                     ; 4 uses
  %i.ap = and i64 %i.ao, 3
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp ule i64 %i.ao, %i.h
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.as = load i32, ptr %i.am, align 4, !tbaa !14
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp ugt i64 %i.j, %i.at
  br i1 %i.au, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, label %.thread

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i: ; preds = %bb.d
  %i.av = add nuw nsw i64 %i.at, 4                ; 3 uses
  %i.aw = add i64 %i.av, %i.ao                    ; 2 uses
  %i.ax = icmp uge i64 %i.av, %.fr32
  %i.ay = sub nuw i64 %.fr32, %i.av
  %i.az = icmp ugt i64 %i.ao, %i.ay
  %.not14.i = select i1 %i.ax, i1 true, i1 %i.az
  %.not10.i = icmp ugt i64 %i.aw, %i.k
  %or.cond.i = or i1 %.not10.i, %.not14.i
  br i1 %or.cond.i, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aw
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %.thread

.thread:                                          ; preds = %2, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us, %bb.b, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit, %bb.d, %.lr.ph.split.split, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i ], [ false, %.lr.ph ], [ false, %.lr.ph.split.split ], [ false, %bb.d ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit ], [ true, %bb.c ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us ], [ false, %bb.b ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23 ], [ true, %2 ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_121VerifyVectorOfStructsERNS_16VerifierTemplateILb0EEERKNS_5TableEtRKN10reflection6ObjectEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3, i1 noundef zeroext %4) unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !14
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !13
  %i.f = icmp ult i16 %2, %i.e
  br i1 %i.f, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK11flatbuffers5Table10GetPointerIPKhjEET_t.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.g = zext i16 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %_ZNK11flatbuffers5Table10GetPointerIPKhjEET_t.exit.thread, label %bb.b

_ZNK11flatbuffers5Table10GetPointerIPKhjEET_t.exit.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.a
  %not. = xor i1 %4, true
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !14
  %i.p = sext i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !13
  %i.t = icmp ugt i16 %i.s, 12
  br i1 %i.t, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i11, label %_ZNK10reflection6Object8bytesizeEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i11: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.v = load i16, ptr %i.u, align 2, !tbaa !13   ; 2 uses
  %.not.i.i12 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i12, label %_ZNK10reflection6Object8bytesizeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i11
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = sext i32 %i.y to i64
  br label %_ZNK10reflection6Object8bytesizeEv.exit

_ZNK10reflection6Object8bytesizeEv.exit:          ; preds = %bb.b, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i11, %bb.c
  %i.aa = phi i64 [ %i.z, %bb.c ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i11 ], [ 0, %bb.b ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !86
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !range !81
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not2.i.i = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %_ZNK10reflection6Object8bytesizeEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !87 ; 4 uses
  %i.am = icmp ugt i64 %i.al, 4
  %i.an = add i64 %i.al, -4
  %i.ao = icmp ule i64 %i.ae, %i.an
  %i.ap = and i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.d:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !89
  %i.at = udiv i64 %i.as, %i.aa
  %i.au = zext i32 %i.aq to i64                   ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = mul nsw i64 %i.aa, %i.au
  %i.ax = add nsw i64 %i.aw, 4                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.al
  %i.az = sub nuw i64 %i.al, %i.ax
  %i.ba = icmp ule i64 %i.ae, %i.az
  %i.bb = select i1 %i.ay, i1 %i.ba, i1 false
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit: ; preds = %bb.e, %bb.d, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i, %_ZNK10reflection6Object8bytesizeEv.exit, %_ZNK11flatbuffers5Table10GetPointerIPKhjEET_t.exit.thread
  %.0 = phi i1 [ %not., %_ZNK11flatbuffers5Table10GetPointerIPKhjEET_t.exit.thread ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i ], [ %i.bb, %bb.e ], [ false, %bb.d ], [ false, %_ZNK10reflection6Object8bytesizeEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11flatbuffers9GetFieldVINS_6OffsetINS_5TableEEEEEPNS_6VectorIT_jEERKS2_RKN10reflection5FieldE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !14
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !13
  %i.f = icmp ugt i16 %i.e, 10
  br i1 %i.f, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection5Field6offsetEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i, label %_ZNK10reflection5Field6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit

_ZNK10reflection5Field6offsetEv.exit:             ; preds = %bb.a, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.b
  %i.l = phi i16 [ %i.k, %bb.b ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !14
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !13
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2, label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2: ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.s = zext i16 %i.l to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !13   ; 2 uses
  %.not.i.i3 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i3, label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit

_ZNK11flatbuffers5Table10GetPointerIPNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit: ; preds = %_ZNK10reflection5Field6offsetEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.c ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2 ], [ null, %_ZNK10reflection5Field6offsetEv.exit ]
  ret ptr %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetINS_5TableEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
end_hunk_0
