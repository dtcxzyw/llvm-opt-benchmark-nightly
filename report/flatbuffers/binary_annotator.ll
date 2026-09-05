Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
begin_hunk_0_@_ZNK11flatbuffers5Table11VerifyFieldIiLb0EEEbRKNS_16VerifierTemplateIXT0_EEEtm:bb.a
bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62   ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4
  %i.y = add i64 %i.w, -4
  %i.z = icmp ule i64 %i.o, %i.y
  %i.aa = and i1 %i.x, %i.z
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE11VerifyFieldIiEEbPKhtm.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE11VerifyFieldIiEEbPKhtm.exit: ; preds = %bb.a, %bb.c, %bb.b, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit
  %i.ab = phi i1 [ true, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit ], [ %i.aa, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetIN10reflection8KeyValueEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !66
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !192
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOfTablesIN10reflection8KeyValueEEEbPKNS_6VectorINS_6OffsetIT_EEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !578
  %.not15 = icmp eq i32 %i.a, 0
  br i1 %.not15, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !578
  %i.d = zext i32 %i.c to i64
  %i.e = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.e, label %bb.c, label %.thread, !llvm.loop !576

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = shl nuw nsw i64 %indvars.iv, 2
  %i.g = and i64 %i.f, 4294967292
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = tail call noundef zeroext i1 @_ZNK10reflection8KeyValue6VerifyILb0EEEbRN11flatbuffers16VerifierTemplateIXT_EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %0) ; 3 uses
  br i1 %i.l, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ %i.l, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetINS_6StringEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !66
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !192
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE21VerifyVectorOfStringsEPKNS_6VectorINS_6OffsetINS_6StringEEEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !581    ; 2 uses
  %.not31 = icmp eq i32 %i.a, 0
  br i1 %.not31, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
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
  %i.m = load i8, ptr %i.l, align 8, !range !66
  %.fr = freeze i8 %i.m
  %i.n = trunc i8 %.fr to i1
  %wide.trip.count40 = zext i32 %i.a to i64       ; 2 uses
  br i1 %i.n, label %.lr.ph.split.split, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23: ; preds = %.lr.ph.split, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.o = shl i64 %indvars.iv, 2
  %i.p = and i64 %i.o, 4294967292
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d                       ; 3 uses
  %.not33 = icmp ugt i64 %i.v, %i.h
  br i1 %.not33, label %.thread, label %bb.b

2:                                                ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count40
  br i1 %exitcond.not, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, !llvm.loop !579

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23
  %i.w = load i32, ptr %i.t, align 4, !tbaa !63
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
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !86
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %2, label %.thread

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !579

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.c
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.c ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ah = shl i64 %indvars.iv37, 2
  %i.ai = and i64 %i.ah, 4294967292
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !63
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
  %i.as = load i32, ptr %i.am, align 4, !tbaa !63
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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !86
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %.thread

.thread:                                          ; preds = %2, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us, %bb.b, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit, %bb.d, %.lr.ph.split.split, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i ], [ false, %.lr.ph ], [ false, %.lr.ph.split.split ], [ false, %bb.d ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit ], [ true, %bb.c ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us ], [ false, %bb.b ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23 ], [ true, %2 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10reflection5Field6VerifyILb0EEEbRN11flatbuffers16VerifierTemplateIXT_EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !61     ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !66
  %i.i = trunc nuw i8 %i.h to i1                  ; 6 uses
  %.not2.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 8 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4                         ; 4 uses
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i
  %i.p = load i32, ptr %0, align 4, !tbaa !63
  %i.q = sext i32 %i.p to i64
  %i.r = sub i64 %i.d, %i.q                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !189
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !189
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !190
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !191
  %.not.i.i.i = icmp ugt i32 %i.u, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp ugt i32 %i.x, %i.ab
  %.not15.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.ac
  %i.ad = trunc i64 %i.r to i1
  %.not2.i11.i.i = select i1 %i.ad, i1 %i.i, i1 false
  %i.ae = add i64 %i.k, -2
  %.not.i.i = icmp ugt i64 %i.r, %i.ae
  %i.af = or i1 %.not.i.i, %.not2.i11.i.i
  %or.cond18.i.i = select i1 %.not15.i.i, i1 true, i1 %i.af
  br i1 %or.cond18.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !97 ; 2 uses
  %i.ai = zext i16 %i.ah to i64                   ; 3 uses
  %i.aj = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.i, true
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  %i.an = and i16 %i.ah, 1
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond13.i.i = and i1 %i.ao, %i.am
  br i1 %or.cond13.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit: ; preds = %bb.c
  %i.ap = icmp ugt i64 %i.k, %i.ai
  %i.aq = sub nuw i64 %i.k, %i.ai
  %i.ar = icmp ule i64 %i.r, %i.aq
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.d, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

bb.d:                                             ; preds = %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit
  %i.at = load i32, ptr %0, align 4, !tbaa !63
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !97 ; 2 uses
  %i.ay = icmp ugt i16 %i.ax, 4
  br i1 %i.ay, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !97 ; 2 uses
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.bb = zext i16 %i.ba to i64                   ; 2 uses
  %i.bc = add i64 %i.d, %i.bb                     ; 4 uses
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp ne i64 %i.bd, 0
  %.not2.i.i.i.i = select i1 %i.be, i1 %i.i, i1 false
  %.not = icmp ugt i64 %i.bc, %i.m
  %or.cond106 = or i1 %.not2.i.i.i.i, %.not
  br i1 %or.cond106, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !63 ; 2 uses
  %or.cond.i.i.i = icmp sgt i32 %i.bg, 0
  br i1 %or.cond.i.i.i, label %_ZNK11flatbuffers5Table20VerifyOffsetRequiredIjLb0EEEbRKNS_16VerifierTemplateIXT0_EEEt.exit, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table20VerifyOffsetRequiredIjLb0EEEbRKNS_16VerifierTemplateIXT0_EEEt.exit: ; preds = %bb.f
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = add i64 %i.bc, %i.bh
  %i.bj = add i64 %i.k, -1                        ; 3 uses
  %.not.i.i.i23.not = icmp ugt i64 %i.bi, %i.bj
  br i1 %.not.i.i.i23.not, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZNK11flatbuffers5Table20VerifyOffsetRequiredIjLb0EEEbRKNS_16VerifierTemplateIXT0_EEEt.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.c                     ; 4 uses
  %i.bq = and i64 %i.bp, 3
  %i.br = icmp ne i64 %i.bq, 0
  %.not2.i.i.i26 = select i1 %i.br, i1 %i.i, i1 false
  %.not104 = icmp ugt i64 %i.bp, %i.m
  %or.cond107 = or i1 %.not2.i.i.i26, %.not104
  br i1 %or.cond107, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.bs = load i32, ptr %i.bn, align 4, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !192
  %i.bv = zext i32 %i.bs to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  br i1 %i.bw, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i: ; preds = %bb.g
  %i.bx = add nuw nsw i64 %i.bv, 4                ; 3 uses
  %i.by = add i64 %i.bx, %i.bp                    ; 2 uses
  %i.bz = icmp uge i64 %i.bx, %i.k
  %i.ca = sub nuw i64 %i.k, %i.bx
  %i.cb = icmp ugt i64 %i.bp, %i.ca
  %.not14.i = select i1 %i.bz, i1 true, i1 %i.cb
  %.not10.i = icmp ugt i64 %i.by, %i.bj
  %or.cond.i = or i1 %.not10.i, %.not14.i
  br i1 %or.cond.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !86
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = icmp ugt i16 %i.ax, 6
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i27, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i27: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
end_hunk_0
begin_hunk_1_@"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE":_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  %i.fe = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.cf
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fg = load i64, ptr %i.cf, align 8, !tbaa !86
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fi = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.be
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.fk = load i64, ptr %i.be, align 8, !tbaa !86
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !717, !nonnull !67, !align !197
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !179 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !63
  %i.fq = sext i32 %i.fp to i64
  %i.fr = sub nsw i64 0, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i149 = icmp ne i16 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i149)
  %i.fv = zext i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !63
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !99, !noalias !718 ; 3 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.gd, ptr %10, align 8, !tbaa !84, !alias.scope !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30, !noalias !718
  store i64 %i.gc, ptr %i.g, align 8, !tbaa !64, !noalias !718
  %i.ge = icmp ugt i32 %i.gb, 15
  br i1 %i.ge, label %.noexc.i.i151, label %._crit_edge.i.i.i150

.noexc.i.i151:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc152 unwind label %bb.az ; 2 uses

.noexc152:                                        ; preds = %.noexc.i.i151
  store ptr %i.gf, ptr %10, align 8, !tbaa !95, !alias.scope !718
  %i.gg = load i64, ptr %i.g, align 8, !tbaa !64, !noalias !718
  store i64 %i.gg, ptr %i.gd, align 8, !tbaa !86, !alias.scope !718
  br label %._crit_edge.i.i.i150

._crit_edge.i.i.i150:                             ; preds = %.noexc152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.gh = phi ptr [ %i.gf, %.noexc152 ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 2 uses
  switch i32 %i.gb, label %bb.q [
    i32 1, label %bb.p
    i32 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i150
  %i.gi = load i8, ptr %i.ga, align 4, !tbaa !86, !noalias !718
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !86
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr nonnull align 4 %i.ga, i64 %i.gc, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i150
  %i.gj = load i64, ptr %i.g, align 8, !tbaa !64, !noalias !718 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !85, !alias.scope !718
  %i.gl = load ptr, ptr %10, align 8, !tbaa !95, !alias.scope !718
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gj
  store i8 0, ptr %i.gm, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30, !noalias !718
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.55, i64 noundef 4)
          to label %.noexc157 unwind label %bb.ba ; 6 uses

.noexc157:                                        ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.go, ptr %9, align 8, !tbaa !84, !alias.scope !719
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !95 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 5 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

bb.s:                                             ; preds = %.noexc157
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !85 ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 16
  call void @llvm.assume(i1 %i.gu)
  %i.gv = add nuw nsw i64 %i.gt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.go, ptr noundef nonnull align 8 dereferenceable(1) %i.gq, i64 %i.gv, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %.noexc157
  store ptr %i.gp, ptr %9, align 8, !tbaa !95, !alias.scope !719
  %i.gw = load i64, ptr %i.gq, align 8, !tbaa !86
  store i64 %i.gw, ptr %i.go, align 8, !tbaa !86, !alias.scope !719
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.pre.i155 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.s
  %i.gx = phi i64 [ %i.gt, %bb.s ], [ %.pre.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.gx, ptr %i.gz, align 8, !tbaa !85, !alias.scope !719
  store ptr %i.gq, ptr %i.gn, align 8, !tbaa !95
  store i64 0, ptr %i.gy, align 8, !tbaa !85
  store i8 0, ptr %i.gq, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !85, !noalias !720
  %i.hb = add i64 %i.ha, -4611686018427387901
  %i.hc = icmp ult i64 %i.hb, 3
  br i1 %i.hc, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc162 unwind label %bb.bb

.noexc162:                                        ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.t
  %i.hd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.56, i64 noundef 3)
          to label %.noexc163 unwind label %bb.bb ; 6 uses

.noexc163:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.he, ptr %8, align 8, !tbaa !84, !alias.scope !720
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !95 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 5 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

bb.v:                                             ; preds = %.noexc163
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !85 ; 3 uses
  %i.hk = icmp ult i64 %i.hj, 16
  call void @llvm.assume(i1 %i.hk)
  %i.hl = add nuw nsw i64 %i.hj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.he, ptr noundef nonnull align 8 dereferenceable(1) %i.hg, i64 %i.hl, i1 false)
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %.noexc163
  store ptr %i.hf, ptr %8, align 8, !tbaa !95, !alias.scope !720
  %i.hm = load i64, ptr %i.hg, align 8, !tbaa !86
  store i64 %i.hm, ptr %i.he, align 8, !tbaa !86, !alias.scope !720
  %.phi.trans.insert.i159 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.pre.i160 = load i64, ptr %.phi.trans.insert.i159, align 8, !tbaa !85
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i164

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i164: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.v
  %i.hn = phi i64 [ %i.hj, %bb.v ], [ %.pre.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.hn, ptr %i.hp, align 8, !tbaa !85, !alias.scope !720
  store ptr %i.hg, ptr %i.hd, align 8, !tbaa !95
  store i64 0, ptr %i.ho, align 8, !tbaa !85
  store i8 0, ptr %i.hg, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hq = load i32, ptr %1, align 4, !tbaa !63
  %i.hr = sext i32 %i.hq to i64
  %i.hs = sub nsw i64 0, %i.hr
  %i.ht = getelementptr inbounds i8, ptr %1, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 6
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i165 = icmp ne i16 %i.hv, 0
  call void @llvm.assume(i1 %.not.i.i.i165)
  %i.hw = zext i16 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !63
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !63
  %i.ic = sext i32 %i.ib to i64
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %i.ia, i64 %i.id ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !97
  %i.ig = icmp ugt i16 %i.if, 4
  br i1 %i.ig, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i167, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i167: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i164
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !97 ; 2 uses
  %.not.i.i168 = icmp eq i16 %i.ii, 0
  br i1 %.not.i.i168, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread, label %_ZNK10reflection4Type9base_typeEv.exit169

_ZNK10reflection4Type9base_typeEv.exit169:        ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i167
  %i.ij = zext i16 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !86  ; 2 uses
  %i.im = icmp ugt i8 %i.il, 19
  br i1 %i.im, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit

_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit: ; preds = %_ZNK10reflection4Type9base_typeEv.exit169
  %41 = zext nneg i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN10reflection17EnumNamesBaseTypeEvE5names, i64 %41
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !141
  br label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread

_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i164, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i167, %_ZNK10reflection4Type9base_typeEv.exit169, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit
  %.0.i170703 = phi ptr [ @.str, %_ZNK10reflection4Type9base_typeEv.exit169 ], [ %i.io, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit ], [ @.str.25, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i167 ], [ @.str.25, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i164 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  store ptr %i.ip, ptr %11, align 8, !tbaa !84
  %i.iq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i170703) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i64 %i.iq, ptr %i.f, align 8, !tbaa !64
  %i.ir = icmp ugt i64 %i.iq, 15
  br i1 %i.ir, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread
  %i.is = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc172 unwind label %bb.bc ; 2 uses

.noexc172:                                        ; preds = %.noexc.i
  store ptr %i.is, ptr %11, align 8, !tbaa !95
  %i.it = load i64, ptr %i.f, align 8, !tbaa !64
  store i64 %i.it, ptr %i.ip, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc172, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread
  %i.iu = phi ptr [ %i.is, %.noexc172 ], [ %i.ip, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit.thread ] ; 2 uses
  switch i64 %i.iq, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.iv = load i8, ptr %.0.i170703, align 1, !tbaa !86
  store i8 %i.iv, ptr %i.iu, align 1, !tbaa !86
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iu, ptr nonnull align 1 %.0.i170703, i64 %i.iq, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  %i.iw = load i64, ptr %i.f, align 8, !tbaa !64  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !85
  %i.iy = load ptr, ptr %11, align 8, !tbaa !95
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iw
  store i8 0, ptr %i.iz, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.ja = load i64, ptr %i.hp, align 8, !tbaa !85, !noalias !721 ; 4 uses
  %i.jb = load i64, ptr %i.ix, align 8, !tbaa !85, !noalias !721 ; 4 uses
  %i.jc = add i64 %i.jb, %i.ja                    ; 2 uses
  %i.jd = load ptr, ptr %8, align 8, !tbaa !95, !noalias !721 ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.he
  br i1 %i.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185: ; preds = %bb.y
  %i.jf = icmp ult i64 %i.ja, 16
  call void @llvm.assume(i1 %i.jf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.y
  %i.jg = load i64, ptr %i.he, align 8, !tbaa !86, !noalias !721
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i174: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185
  %i.jh = phi i64 [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185 ]
  %i.ji = icmp ugt i64 %i.jc, %i.jh
  br i1 %i.ji, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i174
  %i.jj = load ptr, ptr %11, align 8, !tbaa !95, !noalias !721
  %i.jk = icmp eq ptr %i.jj, %i.ip
  br i1 %i.jk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i184: ; preds = %bb.z
  %i.jl = icmp ult i64 %i.jb, 16
  call void @llvm.assume(i1 %i.jl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i178: ; preds = %bb.z
  %i.jm = load i64, ptr %i.ip, align 8, !tbaa !86, !noalias !721
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i179: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i184
  %i.jn = phi i64 [ %i.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i178 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i184 ]
  %.not.i180 = icmp ugt i64 %i.jc, %i.jn
  br i1 %.not.i180, label %bb.ab, label %.critedge.i181

.critedge.i181:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i179
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.jd, i64 noundef %i.ja)
          to label %.noexc186 unwind label %bb.bd ; 5 uses

.noexc186:                                        ; preds = %.critedge.i181
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.jp, ptr %7, align 8, !tbaa !84, !alias.scope !721
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !95 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 5 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i182

bb.aa:                                            ; preds = %.noexc186
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !85 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, 16
  call void @llvm.assume(i1 %i.jv)
  %i.jw = add nuw nsw i64 %i.ju, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jp, ptr noundef nonnull align 8 dereferenceable(1) %i.jr, i64 %i.jw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i182: ; preds = %.noexc186
  store ptr %i.jq, ptr %7, align 8, !tbaa !95, !alias.scope !721
  %i.jx = load i64, ptr %i.jr, align 8, !tbaa !86
  store i64 %i.jx, ptr %i.jp, align 8, !tbaa !86, !alias.scope !721
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i183: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i182, %bb.aa
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !85
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.jz, ptr %i.ka, align 8, !tbaa !85, !alias.scope !721
  store ptr %i.jr, ptr %i.jo, align 8, !tbaa !95
  store i64 0, ptr %i.jy, align 8, !tbaa !85
  store i8 0, ptr %i.jr, align 8, !tbaa !86
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i174
  %i.kb = sub i64 4611686018427387903, %i.ja
  %i.kc = icmp ult i64 %i.kb, %i.jb
  br i1 %i.kc, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i175

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc187 unwind label %bb.bd

.noexc187:                                        ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i175: ; preds = %bb.ab
  %i.kd = load ptr, ptr %11, align 8, !tbaa !95, !noalias !721
  %i.ke = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.kd, i64 noundef %i.jb)
          to label %.noexc188 unwind label %bb.bd ; 5 uses

.noexc188:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i175
  %i.kf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.kf, ptr %7, align 8, !tbaa !84, !alias.scope !721
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !95 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 5 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i176

bb.ad:                                            ; preds = %.noexc188
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !85 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 16
  call void @llvm.assume(i1 %i.kl)
  %i.km = add nuw nsw i64 %i.kk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kf, ptr noundef nonnull align 8 dereferenceable(1) %i.kh, i64 %i.km, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i176: ; preds = %.noexc188
  store ptr %i.kg, ptr %7, align 8, !tbaa !95, !alias.scope !721
  %i.kn = load i64, ptr %i.kh, align 8, !tbaa !86
  store i64 %i.kn, ptr %i.kf, align 8, !tbaa !86, !alias.scope !721
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i177: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i176, %bb.ad
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !85
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !85, !alias.scope !721
  store ptr %i.kh, ptr %i.ke, align 8, !tbaa !95
  store i64 0, ptr %i.ko, align 8, !tbaa !85
  store i8 0, ptr %i.kh, align 8, !tbaa !86
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i183
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !85, !noalias !722
  %i.kt = icmp eq i64 %i.ks, 4611686018427387903
  br i1 %i.kt, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #35
          to label %.noexc195 unwind label %bb.be

.noexc195:                                        ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit189
  %i.ku = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc196 unwind label %bb.be ; 6 uses

.noexc196:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.kv, ptr %6, align 8, !tbaa !84, !alias.scope !722
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !95 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 5 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

bb.af:                                            ; preds = %.noexc196
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !85 ; 3 uses
  %i.lb = icmp ult i64 %i.la, 16
end_hunk_1
begin_hunk_2_@"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE":_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit422.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i418.us, %bb.cu, %bb.ct
  %i.ake = phi ptr [ %.pre.i419.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i418.us ], [ %i.ajr, %bb.ct ], [ %i.aeb, %bb.cu ]
  store i64 0, ptr %i.aec, align 8, !tbaa !85
  store i8 0, ptr %i.ake, align 1, !tbaa !86
  %i.akf = load ptr, ptr %21, align 8, !tbaa !95  ; 2 uses
  %i.akg = icmp eq ptr %i.akf, %i.aeb
  br i1 %i.akg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit422.us
  %i.akh = load i64, ptr %i.aeb, align 8, !tbaa !86
  %i.aki = add i64 %i.akh, 1
  call void @_ZdlPvm(ptr noundef %i.akf, i64 noundef %i.aki) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit422.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423.us
  %i.akj = load ptr, ptr %23, align 8, !tbaa !95  ; 2 uses
  %i.akk = icmp eq ptr %i.akj, %i.adz
  br i1 %i.akk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425.us
  %i.akl = load i64, ptr %i.adz, align 8, !tbaa !86
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.akj, i64 noundef %i.akm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426.us
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.akn = load ptr, ptr %22, align 8, !tbaa !95  ; 2 uses
  %i.ako = icmp eq ptr %i.akn, %i.adx
  br i1 %i.ako, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428.us
  %i.akp = load i64, ptr %i.adx, align 8, !tbaa !86
  %i.akq = add i64 %i.akp, 1
  call void @_ZdlPvm(ptr noundef %i.akn, i64 noundef %i.akq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429.us
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  store i64 %indvars.iv, ptr %i.adw, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  %i.akr = load ptr, ptr %i.aed, align 8, !tbaa !717, !nonnull !67, !align !197
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !179 ; 3 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !63
  %i.aku = sext i32 %i.akt to i64
  %i.akv = sub nsw i64 0, %i.aku
  %i.akw = getelementptr inbounds i8, ptr %i.aks, i64 %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i433.us = icmp ne i16 %i.aky, 0
  call void @llvm.assume(i1 %.not.i.i.i433.us)
  %i.akz = zext i16 %i.aky to i64
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aks, i64 %i.akz ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !63
  %i.alc = zext i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.alc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4 ; 2 uses
  %i.alf = load i32, ptr %i.ald, align 4, !tbaa !99, !noalias !736 ; 3 uses
  %i.alg = zext i32 %i.alf to i64                 ; 2 uses
  store ptr %i.aee, ptr %28, align 8, !tbaa !84, !alias.scope !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30, !noalias !736
  store i64 %i.alg, ptr %i.c, align 8, !tbaa !64, !noalias !736
  %i.alh = icmp ugt i32 %i.alf, 15
  br i1 %i.alh, label %.noexc.i.i436.us, label %._crit_edge.i.i.i435.us

.noexc.i.i436.us:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431.us
  %i.ali = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc437.us unwind label %.split986.us ; 2 uses

.noexc437.us:                                     ; preds = %.noexc.i.i436.us
  store ptr %i.ali, ptr %28, align 8, !tbaa !95, !alias.scope !736
  %i.alj = load i64, ptr %i.c, align 8, !tbaa !64, !noalias !736
  store i64 %i.alj, ptr %i.aee, align 8, !tbaa !86, !alias.scope !736
  br label %._crit_edge.i.i.i435.us

._crit_edge.i.i.i435.us:                          ; preds = %.noexc437.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431.us
  %i.alk = phi ptr [ %i.ali, %.noexc437.us ], [ %i.aee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431.us ] ; 2 uses
  switch i32 %i.alf, label %bb.cz [
    i32 1, label %bb.cy
    i32 0, label %bb.da
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i.i435.us
  %i.all = load i8, ptr %i.ale, align 4, !tbaa !86, !noalias !736
  store i8 %i.all, ptr %i.alk, align 1, !tbaa !86
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i.i435.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alk, ptr nonnull align 4 %i.ale, i64 %i.alg, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i.i435.us
  %i.alm = load i64, ptr %i.c, align 8, !tbaa !64, !noalias !736 ; 2 uses
  store i64 %i.alm, ptr %i.aef, align 8, !tbaa !85, !alias.scope !736
  %i.aln = load ptr, ptr %28, align 8, !tbaa !95, !alias.scope !736
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 %i.alm
  store i8 0, ptr %i.alo, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !736
  %i.alp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.55, i64 noundef 4)
          to label %.noexc443.us unwind label %.split989.us ; 6 uses

.noexc443.us:                                     ; preds = %bb.da
  store ptr %i.aeg, ptr %27, align 8, !tbaa !84, !alias.scope !737
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !95 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alp, i64 16 ; 5 uses
  %i.als = icmp eq ptr %i.alq, %i.alr
  br i1 %i.als, label %bb.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.us: ; preds = %.noexc443.us
  store ptr %i.alq, ptr %27, align 8, !tbaa !95, !alias.scope !737
  %i.alt = load i64, ptr %i.alr, align 8, !tbaa !86
  store i64 %i.alt, ptr %i.aeg, align 8, !tbaa !86, !alias.scope !737
  %.phi.trans.insert.i440.us = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  %.pre.i441.us = load i64, ptr %.phi.trans.insert.i440.us, align 8, !tbaa !85
  br label %bb.dc

bb.db:                                            ; preds = %.noexc443.us
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !85 ; 3 uses
  %i.alw = icmp ult i64 %i.alv, 16
  call void @llvm.assume(i1 %i.alw)
  %i.alx = add nuw nsw i64 %i.alv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aeg, ptr noundef nonnull align 8 dereferenceable(1) %i.alr, i64 %i.alx, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.us
  %i.aly = phi i64 [ %i.alv, %bb.db ], [ %.pre.i441.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439.us ]
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  store i64 %i.aly, ptr %i.aeh, align 8, !tbaa !85, !alias.scope !737
  store ptr %i.alr, ptr %i.alp, align 8, !tbaa !95
  store i64 0, ptr %i.alz, align 8, !tbaa !85
  store i8 0, ptr %i.alr, align 8, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.ama = load i64, ptr %i.aeh, align 8, !tbaa !85, !noalias !738
  %i.amb = add i64 %i.ama, -4611686018427387901
  %i.amc = icmp ult i64 %i.amb, 3
  br i1 %i.amc, label %.split994.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i445.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i445.us: ; preds = %bb.dc
  %i.amd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.56, i64 noundef 3)
          to label %.noexc451.us unwind label %.loopexit722.split.us ; 6 uses

.noexc451.us:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i445.us
  store ptr %i.aei, ptr %26, align 8, !tbaa !84, !alias.scope !738
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !95 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 16 ; 5 uses
  %i.amg = icmp eq ptr %i.ame, %i.amf
  br i1 %i.amg, label %bb.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446.us: ; preds = %.noexc451.us
  store ptr %i.ame, ptr %26, align 8, !tbaa !95, !alias.scope !738
  %i.amh = load i64, ptr %i.amf, align 8, !tbaa !86
  store i64 %i.amh, ptr %i.aei, align 8, !tbaa !86, !alias.scope !738
  %.phi.trans.insert.i447.us = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  %.pre.i448.us = load i64, ptr %.phi.trans.insert.i447.us, align 8, !tbaa !85
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i453.us

bb.dd:                                            ; preds = %.noexc451.us
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !85 ; 3 uses
  %i.amk = icmp ult i64 %i.amj, 16
  call void @llvm.assume(i1 %i.amk)
  %i.aml = add nuw nsw i64 %i.amj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aei, ptr noundef nonnull align 8 dereferenceable(1) %i.amf, i64 %i.aml, i1 false)
  br label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i453.us

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i453.us: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446.us
  %i.amm = phi i64 [ %i.amj, %bb.dd ], [ %.pre.i448.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446.us ]
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  store i64 %i.amm, ptr %i.aej, align 8, !tbaa !85, !alias.scope !738
  store ptr %i.amf, ptr %i.amd, align 8, !tbaa !95
  store i64 0, ptr %i.amn, align 8, !tbaa !85
  store i8 0, ptr %i.amf, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %i.amo = load i32, ptr %1, align 4, !tbaa !63
  %i.amp = sext i32 %i.amo to i64
  %i.amq = sub nsw i64 0, %i.amp
  %i.amr = getelementptr inbounds i8, ptr %1, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 6
  %i.amt = load i16, ptr %i.ams, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i454.us = icmp ne i16 %i.amt, 0
  call void @llvm.assume(i1 %.not.i.i.i454.us)
  %i.amu = zext i16 %i.amt to i64
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 %i.amu ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !63
  %i.amx = zext i32 %i.amw to i64
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amx ; 3 uses
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !63
  %i.ana = sext i32 %i.amz to i64
  %i.anb = sub nsw i64 0, %i.ana
  %i.anc = getelementptr inbounds i8, ptr %i.amy, i64 %i.anb ; 2 uses
  %i.and = load i16, ptr %i.anc, align 2, !tbaa !97
  %i.ane = icmp ugt i16 %i.and, 6
  br i1 %i.ane, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i456.us, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i456.us: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i453.us
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anc, i64 6
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !97 ; 2 uses
  %.not.i.i457.us = icmp eq i16 %i.ang, 0
  br i1 %.not.i.i457.us, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us, label %_ZNK10reflection4Type7elementEv.exit458.us

_ZNK10reflection4Type7elementEv.exit458.us:       ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i456.us
  %i.anh = zext i16 %i.ang to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amy, i64 %i.anh
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !86 ; 2 uses
  %i.ank = icmp ugt i8 %i.anj, 19
  br i1 %i.ank, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us, label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.us

_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.us: ; preds = %_ZNK10reflection4Type7elementEv.exit458.us
  %42 = zext nneg i8 %i.anj to i64
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr @_ZZN10reflection17EnumNamesBaseTypeEvE5names, i64 %42
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !141
  br label %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us

_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i453.us, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i456.us, %_ZNK10reflection4Type7elementEv.exit458.us, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.us
  %.0.i459705.us = phi ptr [ @.str, %_ZNK10reflection4Type7elementEv.exit458.us ], [ %i.anm, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.us ], [ @.str.25, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i456.us ], [ @.str.25, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i453.us ] ; 3 uses
  store ptr %i.aek, ptr %29, align 8, !tbaa !84
  %i.ann = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i459705.us) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.ann, ptr %i.b, align 8, !tbaa !64
  %i.ano = icmp ugt i64 %i.ann, 15
  br i1 %i.ano, label %.noexc.i462.us, label %._crit_edge.i.i461.us

.noexc.i462.us:                                   ; preds = %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us
  %i.anp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc464.us unwind label %.loopexit727.split.us ; 2 uses

.noexc464.us:                                     ; preds = %.noexc.i462.us
  store ptr %i.anp, ptr %29, align 8, !tbaa !95
  %i.anq = load i64, ptr %i.b, align 8, !tbaa !64
  store i64 %i.anq, ptr %i.aek, align 8, !tbaa !86
  br label %._crit_edge.i.i461.us

._crit_edge.i.i461.us:                            ; preds = %.noexc464.us, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us
  %i.anr = phi ptr [ %i.anp, %.noexc464.us ], [ %i.aek, %_ZN10reflection16EnumNameBaseTypeENS_8BaseTypeE.exit460.thread.us ] ; 2 uses
  switch i64 %i.ann, label %bb.df [
    i64 1, label %bb.de
    i64 0, label %bb.dg
  ]

bb.de:                                            ; preds = %._crit_edge.i.i461.us
  %i.ans = load i8, ptr %.0.i459705.us, align 1, !tbaa !86
  store i8 %i.ans, ptr %i.anr, align 1, !tbaa !86
  br label %bb.dg

bb.df:                                            ; preds = %._crit_edge.i.i461.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anr, ptr nonnull align 1 %.0.i459705.us, i64 %i.ann, i1 false)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %._crit_edge.i.i461.us
  %i.ant = load i64, ptr %i.b, align 8, !tbaa !64 ; 2 uses
  store i64 %i.ant, ptr %i.ael, align 8, !tbaa !85
  %i.anu = load ptr, ptr %29, align 8, !tbaa !95
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.ant
  store i8 0, ptr %i.anv, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.anw = load i64, ptr %i.aej, align 8, !tbaa !85, !noalias !739 ; 4 uses
  %i.anx = load i64, ptr %i.ael, align 8, !tbaa !85, !noalias !739 ; 4 uses
  %i.any = add i64 %i.anx, %i.anw                 ; 2 uses
  %i.anz = load ptr, ptr %26, align 8, !tbaa !95, !noalias !739 ; 2 uses
  %i.aoa = icmp eq ptr %i.anz, %i.aei
  br i1 %i.aoa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i478.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.us: ; preds = %bb.dg
  %i.aob = load i64, ptr %i.aei, align 8, !tbaa !86, !noalias !739
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i467.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i478.us: ; preds = %bb.dg
  %i.aoc = icmp ult i64 %i.anw, 16
  call void @llvm.assume(i1 %i.aoc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i467.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i467.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i478.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.us
  %i.aod = phi i64 [ %i.aob, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i478.us ]
  %i.aoe = icmp ugt i64 %i.any, %i.aod
  br i1 %i.aoe, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i467.us
  %i.aof = load ptr, ptr %29, align 8, !tbaa !95, !noalias !739
  %i.aog = icmp eq ptr %i.aof, %i.aek
  br i1 %i.aog, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i477.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i471.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i471.us: ; preds = %bb.dh
  %i.aoh = load i64, ptr %i.aek, align 8, !tbaa !86, !noalias !739
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i472.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i477.us: ; preds = %bb.dh
  %i.aoi = icmp ult i64 %i.anx, 16
  call void @llvm.assume(i1 %i.aoi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i472.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i472.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i477.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i471.us
  %i.aoj = phi i64 [ %i.aoh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i471.us ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i477.us ]
  %.not.i473.us = icmp ugt i64 %i.any, %i.aoj
  br i1 %.not.i473.us, label %bb.dj, label %.critedge.i474.us

.critedge.i474.us:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i472.us
  %i.aok = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef %i.anz, i64 noundef %i.anw)
          to label %.noexc479.us unwind label %.loopexit732.split.us ; 5 uses

.noexc479.us:                                     ; preds = %.critedge.i474.us
  store ptr %i.aem, ptr %25, align 8, !tbaa !84, !alias.scope !739
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !95 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aok, i64 16 ; 5 uses
  %i.aon = icmp eq ptr %i.aol, %i.aom
  br i1 %i.aon, label %bb.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i475.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i475.us: ; preds = %.noexc479.us
  store ptr %i.aol, ptr %25, align 8, !tbaa !95, !alias.scope !739
  %i.aoo = load i64, ptr %i.aom, align 8, !tbaa !86
  store i64 %i.aoo, ptr %i.aem, align 8, !tbaa !86, !alias.scope !739
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i476.us

bb.di:                                            ; preds = %.noexc479.us
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !85 ; 2 uses
  %i.aor = icmp ult i64 %i.aoq, 16
  call void @llvm.assume(i1 %i.aor)
  %i.aos = add nuw nsw i64 %i.aoq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aem, ptr noundef nonnull align 8 dereferenceable(1) %i.aom, i64 %i.aos, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i476.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i476.us: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i475.us
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aok, i64 8 ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !85
  store i64 %i.aou, ptr %i.aen, align 8, !tbaa !85, !alias.scope !739
  store ptr %i.aom, ptr %i.aok, align 8, !tbaa !95
  store i64 0, ptr %i.aot, align 8, !tbaa !85
  store i8 0, ptr %i.aom, align 8, !tbaa !86
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482.us

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i472.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i467.us
  %i.aov = sub i64 4611686018427387903, %i.anw
  %i.aow = icmp ult i64 %i.aov, %i.anx
  br i1 %i.aow, label %.split1029.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468.us: ; preds = %bb.dj
  %i.aox = load ptr, ptr %29, align 8, !tbaa !95, !noalias !739
  %i.aoy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.aox, i64 noundef %i.anx)
          to label %.noexc481.us unwind label %.loopexit732.split.us ; 5 uses

.noexc481.us:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i468.us
  store ptr %i.aem, ptr %25, align 8, !tbaa !84, !alias.scope !739
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !95 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16 ; 5 uses
  %i.apb = icmp eq ptr %i.aoz, %i.apa
  br i1 %i.apb, label %bb.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i469.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i469.us: ; preds = %.noexc481.us
  store ptr %i.aoz, ptr %25, align 8, !tbaa !95, !alias.scope !739
  %i.apc = load i64, ptr %i.apa, align 8, !tbaa !86
  store i64 %i.apc, ptr %i.aem, align 8, !tbaa !86, !alias.scope !739
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i470.us

bb.dk:                                            ; preds = %.noexc481.us
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !85 ; 2 uses
  %i.apf = icmp ult i64 %i.ape, 16
  call void @llvm.assume(i1 %i.apf)
  %i.apg = add nuw nsw i64 %i.ape, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aem, ptr noundef nonnull align 8 dereferenceable(1) %i.apa, i64 %i.apg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i470.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i470.us: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i469.us
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8 ; 2 uses
  %i.api = load i64, ptr %i.aph, align 8, !tbaa !85
  store i64 %i.api, ptr %i.aen, align 8, !tbaa !85, !alias.scope !739
  store ptr %i.apa, ptr %i.aoy, align 8, !tbaa !95
  store i64 0, ptr %i.aph, align 8, !tbaa !85
  store i8 0, ptr %i.apa, align 8, !tbaa !86
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482.us

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i470.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i476.us
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.apj = load i64, ptr %i.aen, align 8, !tbaa !85, !noalias !740
  %i.apk = icmp eq i64 %i.apj, 4611686018427387903
  br i1 %i.apk, label %.split1039.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483.us: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit482.us
  %i.apl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %.noexc489.us unwind label %.loopexit737.split.us ; 6 uses

.noexc489.us:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483.us
  store ptr %i.aeo, ptr %24, align 8, !tbaa !84, !alias.scope !740
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !95 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 16 ; 5 uses
  %i.apo = icmp eq ptr %i.apm, %i.apn
  br i1 %i.apo, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484.us: ; preds = %.noexc489.us
  store ptr %i.apm, ptr %24, align 8, !tbaa !95, !alias.scope !740
  %i.app = load i64, ptr %i.apn, align 8, !tbaa !86
  store i64 %i.app, ptr %i.aeo, align 8, !tbaa !86, !alias.scope !740
  %.phi.trans.insert.i485.us = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  %.pre.i486.us = load i64, ptr %.phi.trans.insert.i485.us, align 8, !tbaa !85
  br label %bb.dm

bb.dl:                                            ; preds = %.noexc489.us
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !85 ; 3 uses
  %i.aps = icmp ult i64 %i.apr, 16
  call void @llvm.assume(i1 %i.aps)
  %i.apt = add nuw nsw i64 %i.apr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aeo, ptr noundef nonnull align 8 dereferenceable(1) %i.apn, i64 %i.apt, i1 false)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484.us
  %i.apu = phi i64 [ %i.apr, %bb.dl ], [ %.pre.i486.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484.us ]
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  store i64 %i.apu, ptr %i.aep, align 8, !tbaa !85, !alias.scope !740
  store ptr %i.apn, ptr %i.apl, align 8, !tbaa !95
  store i64 0, ptr %i.apv, align 8, !tbaa !85
  store i8 0, ptr %i.apn, align 8, !tbaa !86
  %i.apw = load ptr, ptr %i.adt, align 8, !tbaa !95 ; 6 uses
  %i.apx = icmp eq ptr %i.apw, %i.adu
end_hunk_2
