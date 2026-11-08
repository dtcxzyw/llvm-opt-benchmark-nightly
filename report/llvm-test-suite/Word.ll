Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Word?download=true
inline.NumInlined: 775
inline.NumDeleted: 123
begin_hunk_0_@_ZN2PP4Word9set_valueEd:bb.a
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !91
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !94
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.k:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.br, %bb.k ], [ %i.u, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 !guid !189 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !190 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c) ; 0 uses
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !guid !191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  br i1 %1, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull @.str.1, i64 noundef 5) ; 0 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull @.str.2, i64 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat !guid !192 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !86
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN2PP4Word13check_after_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 !guid !194 {
bb.a:
  %i.a = icmp slt i32 %3, %2
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %1, align 8, !tbaa !86     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !92    ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %.thread23
    i8 45, label %.thread23
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = sext i8 %i.e to i32
  %isdigittmp = add nsw i32 %i.f, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.d, label %.critedge

.thread23:                                        ; preds = %bb.b, %bb.b
  %i.g = add nsw i32 %2, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread23
  %.016 = phi i32 [ %i.g, %.thread23 ], [ %2, %bb.c ] ; 2 uses
  %.not2024 = icmp sgt i32 %.016, %3
  br i1 %.not2024, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.h = sext i32 %.016 to i64
  %i.i = add i32 %3, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !92
  %i.l = sext i8 %i.k to i32
  %isdigittmp21 = add nsw i32 %i.l, -48
  %isdigit22 = icmp ult i32 %isdigittmp21, 10     ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp ne i32 %i.i, %lftr.wideiv
  %or.cond.not = select i1 %isdigit22, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge, !llvm.loop !193

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ %isdigit22, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN2PP4Word14check_before_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 !guid !201 {
bb.a:
  %i.a = icmp slt i32 %3, %2
  br i1 %i.a, label %.critedge82, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %1, align 8, !tbaa !86     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !92
  switch i8 %i.e, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = add nsw i32 %2, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.057 = phi i32 [ %i.f, %bb.c ], [ %2, %bb.b ]  ; 6 uses
  %.not92 = icmp sgt i32 %.057, %3
  br i1 %.not92, label %.critedge82, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.g = sext i32 %.057 to i64
  %i.h = add i32 %3, 1
  br label %.lr.ph

.lr.ph96.preheader:                               ; preds = %bb.e
  %i.i = sext i32 %.057 to i64                    ; 2 uses
  %i.j = add i32 %3, 1
  br label %.lr.ph96

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !92
  switch i8 %i.l, label %bb.e [
    i8 43, label %.critedge82
    i8 45, label %.critedge82
  ]

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph96.preheader, label %.lr.ph, !llvm.loop !195

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.critedge
  %indvars.iv117 = phi i32 [ %.057, %.lr.ph96.preheader ], [ %indvars.iv.next118.a, %.critedge ] ; 5 uses
  %indvars.iv112 = phi i64 [ %i.i, %.lr.ph96.preheader ], [ %indvars.iv.next113, %.critedge ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv112
  %i.n = load i8, ptr %i.m, align 1, !tbaa !92
  %i.o = icmp eq i8 %i.n, 46
  br i1 %i.o, label %bb.f, label %.critedge

.critedge:                                        ; preds = %.lr.ph96
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %lftr.wideiv115 = trunc i64 %indvars.iv.next113 to i32
  %exitcond116.not = icmp eq i32 %i.j, %lftr.wideiv115
  %indvars.iv.next118.a = add i32 %indvars.iv117, 1
  br i1 %exitcond116.not, label %.critedge76, label %.lr.ph96, !llvm.loop !196

bb.f:                                             ; preds = %.lr.ph96
  %i.p = trunc nsw i64 %indvars.iv112 to i32      ; 4 uses
  %i.q = icmp sgt i64 %indvars.iv112, -1
  br i1 %i.q, label %.preheader87.preheader, label %.critedge76

.preheader87.preheader:                           ; preds = %bb.f
  %4 = zext i32 %indvars.iv117 to i64             ; 2 uses
  %.not65.not.not158 = icmp sgt i32 %3, %indvars.iv117
  br i1 %.not65.not.not158, label %.lr.ph160, label %.critedge74.preheader

.preheader87:                                     ; preds = %.lr.ph160
  %i.r = trunc nuw i64 %indvars.iv.next121.a to i32
  %.not65.not.not = icmp sgt i32 %3, %i.r
  br i1 %.not65.not.not, label %.lr.ph160, label %.critedge74.preheader, !llvm.loop !197

.critedge74.preheader:                            ; preds = %.preheader87, %.preheader87.preheader
  %.not6697 = icmp slt i32 %.057, %i.p
  br i1 %.not6697, label %.lr.ph99, label %.critedge78.preheader

.lr.ph160:                                        ; preds = %.preheader87.preheader, %.preheader87
  %indvars.iv120159 = phi i64 [ %indvars.iv.next121.a, %.preheader87 ], [ %4, %.preheader87.preheader ]
  %indvars.iv.next121.a = add nuw nsw i64 %indvars.iv120159, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next121.a
  %i.t = load i8, ptr %i.s, align 1, !tbaa !92
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %.critedge82, label %.preheader87, !llvm.loop !197

.critedge74:                                      ; preds = %.lr.ph99
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %lftr.wideiv128 = trunc i64 %indvars.iv.next124 to i32
  %exitcond129.not = icmp eq i32 %indvars.iv117, %lftr.wideiv128
  br i1 %exitcond129.not, label %.critedge78.preheader, label %.lr.ph99, !llvm.loop !198

.critedge78.preheader:                            ; preds = %.critedge74, %.critedge74.preheader
  %.not67.not.not161 = icmp sgt i32 %3, %indvars.iv117
  br i1 %.not67.not.not161, label %.lr.ph163, label %.critedge76

.lr.ph99:                                         ; preds = %.critedge74.preheader, %.critedge74
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.critedge74 ], [ %i.i, %.critedge74.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv123
  %i.w = load i8, ptr %i.v, align 1, !tbaa !92
  %i.x = sext i8 %i.w to i32
  %isdigittmp = add nsw i32 %i.x, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.critedge74, label %.critedge82

.critedge78:                                      ; preds = %.lr.ph163
  %i.y = trunc nuw i64 %indvars.iv.next133 to i32
  %.not67.not.not = icmp sgt i32 %3, %i.y
  br i1 %.not67.not.not, label %.lr.ph163, label %.critedge76, !llvm.loop !199

.lr.ph163:                                        ; preds = %.critedge78.preheader, %.critedge78
  %indvars.iv132162 = phi i64 [ %indvars.iv.next133, %.critedge78 ], [ %4, %.critedge78.preheader ]
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132162, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next133
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !92
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp68 = add nsw i32 %i.ab, -48
  %isdigit69 = icmp ult i32 %isdigittmp68, 10
  br i1 %isdigit69, label %.critedge78, label %.critedge82, !llvm.loop !199

.critedge76:                                      ; preds = %.critedge, %.critedge78, %.critedge78.preheader, %bb.f
  %.05584 = phi i32 [ %i.p, %.critedge78.preheader ], [ %i.p, %bb.f ], [ %i.p, %.critedge78 ], [ -1, %.critedge ]
  %.not = icmp eq i32 %.05584, -1
  br i1 %.not, label %.lr.ph102.preheader, label %.critedge82

.lr.ph102.preheader:                              ; preds = %.critedge76
  %i.ac = sext i32 %.057 to i64
  %i.ad = add i32 %3, 1
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102, %.lr.ph102.preheader
  %indvars.iv135 = phi i64 [ %i.ac, %.lr.ph102.preheader ], [ %indvars.iv.next136, %.lr.ph102 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv135
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !92
  %i.ag = sext i8 %i.af to i32
  %isdigittmp71 = add nsw i32 %i.ag, -48
  %isdigit72 = icmp ult i32 %isdigittmp71, 10     ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %lftr.wideiv138 = trunc i64 %indvars.iv.next136 to i32
  %exitcond139.not = icmp ne i32 %i.ad, %lftr.wideiv138
  %or.cond.not = select i1 %isdigit72, i1 %exitcond139.not, i1 false
  br i1 %or.cond.not, label %.lr.ph102, label %.critedge82, !llvm.loop !200

.critedge82:                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph160, %.lr.ph99, %.lr.ph163, %.lr.ph102, %bb.d, %.critedge76, %bb.a
  %.9 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ true, %.critedge76 ], [ false, %.lr.ph160 ], [ %isdigit72, %.lr.ph102 ], [ false, %.lr.ph99 ], [ false, %.lr.ph163 ], [ false, %.lr.ph ], [ false, %.lr.ph ]
  ret i1 %.9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word10print_typeERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 !guid !202 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.37, i64 noundef 7) ; 0 uses
  %.pr = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.38, i64 noundef 6) ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.39, i64 noundef 7) ; 0 uses
  %.pr15 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pr15, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.40, i64 noundef 6) ; 0 uses
  %.pre21 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi i32 [ %.pre21, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.35, i64 noundef 1) ; 0 uses
  %.pr16 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = phi i32 [ %.pr16, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.41, i64 noundef 8) ; 0 uses
  %.pre22 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = phi i32 [ %.pre22, %bb.l ], [ %i.v, %bb.k ] ; 2 uses
  %i.aa = icmp eq i32 %i.z, 6
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %.pr17 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = phi i32 [ %.pr17, %bb.n ], [ %i.z, %bb.m ] ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 7
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %.pre23 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = phi i32 [ %.pre23, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %.pr18 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = phi i32 [ %.pr18, %bb.r ], [ %i.ah, %bb.q ] ; 2 uses
  %i.am = icmp eq i32 %i.al, 9
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %.pre24 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ap = phi i32 [ %.pre24, %bb.t ], [ %i.al, %bb.s ] ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 10
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %.pr19 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = phi i32 [ %.pr19, %bb.v ], [ %i.ap, %bb.u ] ; 2 uses
  %i.au = icmp eq i32 %i.at, 11
  br i1 %i.au, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %.pre25 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = phi i32 [ %.pre25, %bb.x ], [ %i.at, %bb.w ] ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 12
  br i1 %i.ay, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %.pr20 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %bb.aa

end_hunk_0
