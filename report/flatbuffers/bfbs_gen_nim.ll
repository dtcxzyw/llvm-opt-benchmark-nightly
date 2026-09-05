Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/bfbs_gen_nim?download=true
begin_hunk_0_@_ZNK11flatbuffers5Table11VerifyFieldIiLb0EEEbRKNS_16VerifierTemplateIXT0_EEEtm:bb.a
bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65   ; 2 uses
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetIN10reflection8KeyValueEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !99
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65   ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !103
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOfTablesIN10reflection8KeyValueEEEbPKNS_6VectorINS_6OffsetIT_EEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !295
  %.not15 = icmp eq i32 %i.a, 0
  br i1 %.not15, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !295
  %i.d = zext i32 %i.c to i64
  %i.e = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.e, label %bb.c, label %.thread, !llvm.loop !293

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = shl nuw nsw i64 %indvars.iv, 2
  %i.g = and i64 %i.f, 4294967292
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !66
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = tail call noundef zeroext i1 @_ZNK10reflection8KeyValue6VerifyILb0EEEbRN11flatbuffers16VerifierTemplateIXT_EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %0) ; 3 uses
  br i1 %i.l, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ %i.l, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetINS_6StringEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !99
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65   ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !103
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE21VerifyVectorOfStringsEPKNS_6VectorINS_6OffsetINS_6StringEEEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !107    ; 2 uses
  %.not31 = icmp eq i32 %i.a, 0
  br i1 %.not31, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
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
  %i.m = load i8, ptr %i.l, align 8, !range !99
  %.fr = freeze i8 %i.m
  %i.n = trunc i8 %.fr to i1
  %wide.trip.count40 = zext i32 %i.a to i64       ; 2 uses
  br i1 %i.n, label %.lr.ph.split.split, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23: ; preds = %.lr.ph.split, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.o = shl i64 %indvars.iv, 2
  %i.p = and i64 %i.o, 4294967292
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d                       ; 3 uses
  %.not33 = icmp ugt i64 %i.v, %i.h
  br i1 %.not33, label %.thread, label %bb.b

2:                                                ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count40
  br i1 %exitcond.not, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, !llvm.loop !296

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23
  %i.w = load i32, ptr %i.t, align 4, !tbaa !66
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
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %2, label %.thread

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !296

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.c
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.c ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ah = shl i64 %indvars.iv37, 2
  %i.ai = and i64 %i.ah, 4294967292
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
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
  %i.as = load i32, ptr %i.am, align 4, !tbaa !66
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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %.thread

.thread:                                          ; preds = %2, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us, %bb.b, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit, %bb.d, %.lr.ph.split.split, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i ], [ false, %.lr.ph ], [ false, %.lr.ph.split.split ], [ false, %bb.d ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit ], [ true, %bb.c ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us ], [ false, %bb.b ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23 ], [ true, %2 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10reflection5Field6VerifyILb0EEEbRN11flatbuffers16VerifierTemplateIXT_EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !64     ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !99
  %i.i = trunc nuw i8 %i.h to i1                  ; 6 uses
  %.not2.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65   ; 8 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4                         ; 4 uses
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i
  %i.p = load i32, ptr %0, align 4, !tbaa !66
  %i.q = sext i32 %i.p to i64
  %i.r = sub i64 %i.d, %i.q                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !100
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !101
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !102
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
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !68 ; 2 uses
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
  %i.at = load i32, ptr %0, align 4, !tbaa !66
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !68 ; 2 uses
  %i.ay = icmp ugt i16 %i.ax, 4
  br i1 %i.ay, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !68 ; 2 uses
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
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !66 ; 2 uses
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
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !66
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
  %i.bs = load i32, ptr %i.bn, align 4, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !103
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
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !25
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = icmp ugt i16 %i.ax, 6
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i27, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i27: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
end_hunk_0
