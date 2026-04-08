inline.NumInlined: 36
inline.NumDeleted: 18
begin_hunk_0_@_random_Random_seed:bb.a

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc i32 @random_seed(ptr noundef %0, ptr noundef %.0)
  %i.e = icmp slt i32 %i.d, 0
  %._Py_NoneStruct.i = select i1 %i.e, ptr null, ptr @_Py_NoneStruct
  br label %bb.f
end_hunk_0
begin_hunk_1_@_random_Random_getstate:bb.a
  store ptr %i.h, ptr %i.j, align 8, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %bb.d, label %bb.b, !llvm.loop !33

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64
  %i.n = tail call ptr @PyLong_FromLong(i64 noundef %i.m) #7 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
end_hunk_1
begin_hunk_2_@_random_Random_setstate:bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr i8, ptr %.val.i, i64 168
  %.val27.i = load i64, ptr %i.c, align 8, !tbaa !37
  %i.d = and i64 %.val27.i, 67108864
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c
end_hunk_2
begin_hunk_3_@_random_Random_setstate:bb.a
  store i32 %i.n, ptr %i.o, align 4, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 624
  br i1 %exitcond.not.i, label %bb.h, label %bb.e, !llvm.loop !38

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 5024
end_hunk_3
begin_hunk_4_@_random_Random_setstate:bb.a
.loopexit.loopexit.i:                             ; preds = %bb.j
  %i.v = trunc nuw nsw i64 %i.r to i32
  %i.w = getelementptr i8, ptr %0, i64 16
  store i32 %i.v, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2496) %i.x, ptr noundef nonnull align 16 dereferenceable(2496) %i.a, i64 2496, i1 false), !tbaa !6
  br label %_random_Random_setstate_impl.exit
end_hunk_4
begin_hunk_5_@_random_Random_getrandbits:bb.a
  br i1 %.not, label %_random_Random_getrandbits_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

end_hunk_5
begin_hunk_6_@_random_Random_getrandbits:bb.a
  %i.z = add nuw nsw i64 %.02529.i, 1
  %i.aa = add i64 %.02330.i, -32
  %exitcond.not.i = icmp eq i64 %.02529.i, %i.n
  br i1 %exitcond.not.i, label %bb.h, label %.preheader.i, !llvm.loop !40

bb.h:                                             ; preds = %.preheader.i
  %i.ab = call ptr @_PyLong_FromByteArray(ptr noundef nonnull %i.q, i64 noundef %i.p, i32 noundef 1, i32 noundef 0) #7
end_hunk_6
begin_hunk_7_@genrand_uint32:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 623
  br i1 %i.d, label %.preheader43.preheader, label %bb.b

end_hunk_7
begin_hunk_8_@genrand_uint32:bb.a
  %i.bn = xor i32 %i.bm, %i.bh
  store i32 %i.bn, ptr %i.az, align 4, !tbaa !6
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next48.1, 623
  br i1 %exitcond50.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph
  %i.bo = getelementptr i8, ptr %0, i64 2512      ; 2 uses
end_hunk_8
begin_hunk_9_@genrand_uint32:bb.a
bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.cd = phi i32 [ 0, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !35
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !6  ; 2 uses
end_hunk_9
begin_hunk_10_@random_seed:bb.a

init_genrand.exit.i.i:                            ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 16
  store i32 624, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr i8, ptr %0, i64 2512       ; 2 uses
  br label %bb.f

end_hunk_10
begin_hunk_11_@random_seed:bb.a
  %spec.store.select.i.i = select i1 %.not45.i.i, i64 %i.ak, i64 0
  %i.an = add nsw i64 %.03947.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.f, !llvm.loop !42

.preheader.i.i:                                   ; preds = %bb.h, %bb.j
  %.250.i.i = phi i64 [ %.3.i.i, %bb.j ], [ %.1.i.i, %bb.h ] ; 3 uses
end_hunk_11
begin_hunk_12_@random_seed:bb.a
  %.3.i.i = phi i64 [ 1, %bb.i ], [ %i.ay, %.preheader.i.i ]
  %i.bb = add nsw i64 %.14049.i.i, -1             ; 2 uses
  %.not44.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not44.i.i, label %random_seed_urandom.exit, label %.preheader.i.i, !llvm.loop !43

random_seed_urandom.exit:                         ; preds = %bb.j
  store i32 -2147483648, ptr %i.h, align 4, !tbaa !6
end_hunk_12
begin_hunk_13_@random_seed:bb.a

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.be = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.be, ptr %i.b, align 16
  %i.bf = call i32 @getpid() #7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_13
begin_hunk_14_@random_seed:bb.a
  br label %bb.aq

bb.m:                                             ; preds = %bb.l
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i64 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %0, i64 20        ; 8 uses
end_hunk_14
begin_hunk_15_@random_seed:bb.a

init_genrand.exit.i.i49:                          ; preds = %bb.n
  %i.by = getelementptr i8, ptr %0, i64 16
  store i32 624, ptr %i.by, align 8, !tbaa !35
  %i.bz = getelementptr i8, ptr %0, i64 2512      ; 2 uses
  br label %bb.p

end_hunk_15
begin_hunk_16_@random_seed:bb.a
  %spec.store.select.i.i55 = select i1 %.not45.i.i54, i64 %i.co, i64 0
  %i.cr = add nsw i64 %.03947.i.i51, -1           ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i56, label %.preheader.i.i57, label %bb.p, !llvm.loop !42

.preheader.i.i57:                                 ; preds = %bb.r, %bb.t
  %.250.i.i58 = phi i64 [ %.3.i.i60, %bb.t ], [ %.1.i.i53, %bb.r ] ; 3 uses
end_hunk_16
begin_hunk_17_@random_seed:bb.a
  %.3.i.i60 = phi i64 [ 1, %bb.s ], [ %i.dc, %.preheader.i.i57 ]
  %i.df = add nsw i64 %.14049.i.i59, -1           ; 2 uses
  %.not44.i.i61 = icmp eq i64 %i.df, 0
  br i1 %.not44.i.i61, label %random_seed_time_pid.exit, label %.preheader.i.i57, !llvm.loop !43

random_seed_time_pid.exit:                        ; preds = %bb.t
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !6
end_hunk_17
begin_hunk_18_@random_seed:bb.a

bb.w:                                             ; preds = %bb.u
  %i.di = getelementptr i8, ptr %.val44, i64 168
  %.val45 = load i64, ptr %i.di, align 8, !tbaa !37
  %i.dj = and i64 %.val45, 16777216
  %.not40 = icmp eq i64 %i.dj, 0
  br i1 %.not40, label %bb.y, label %bb.x
end_hunk_18
begin_hunk_19_@random_seed:bb.a

init_genrand.exit.i:                              ; preds = %bb.ag
  %i.et = getelementptr i8, ptr %0, i64 16
  store i32 624, ptr %i.et, align 8, !tbaa !35
  %i.eu = tail call i64 @llvm.umax.i64(i64 range(i64 -288230376151711743, 288230376151711745) %i.dz, i64 624)
  %i.ev = getelementptr i8, ptr %0, i64 2512      ; 2 uses
  br label %bb.ai
end_hunk_19
begin_hunk_20_@random_seed:bb.a
  %spec.store.select.i = select i1 %.not45.i, i64 %i.fk, i64 0
  %i.fn = add i64 %.03947.i, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i, label %.preheader.i, label %bb.ai, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.ak, %bb.am
  %.250.i = phi i64 [ %.3.i, %bb.am ], [ %.1.i64, %bb.ak ] ; 3 uses
end_hunk_20
begin_hunk_21_@random_seed:bb.a
  %.3.i = phi i64 [ 1, %bb.al ], [ %i.fy, %.preheader.i ]
  %i.gb = add nsw i64 %.14049.i, -1               ; 2 uses
  %.not44.i = icmp eq i64 %i.gb, 0
  br i1 %.not44.i, label %bb.an, label %.preheader.i, !llvm.loop !43

bb.an:                                            ; preds = %bb.am
  store i32 -2147483648, ptr %i.eg, align 4, !tbaa !6
end_hunk_21
begin_hunk_22_@llvm.memcpy.p0.p0.i64
!30 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = !{!26, !17, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !7, i64 16}
!36 = !{!"", !12, i64 0, !7, i64 16, !8, i64 20}
!37 = !{!25, !17, i64 168}
!38 = distinct !{!38, !34}
!39 = !{!17, !17, i64 0}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !34}
!42 = distinct !{!42, !34}
!43 = distinct !{!43, !34}
end_hunk_22
