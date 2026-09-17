Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader20getNextTokenAsStringERN4core6stringIcEE:bb.a
.critedge:                                        ; preds = %bb.j, %.lr.ph, %..critedge.loopexit_crit_edge, %.preheader
  %.pn.lcssa = phi ptr [ %i.aj, %.preheader ], [ %i.aj, %.lr.ph ], [ %i.as, %..critedge.loopexit_crit_edge ], [ %i.as, %bb.j ] ; 2 uses
  %storemerge.lcssa = phi ptr [ %storemerge22, %.preheader ], [ %storemerge22, %.lr.ph ], [ %storemerge, %..critedge.loopexit_crit_edge ], [ %storemerge, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  %.not9 = icmp eq i8 %i.aw, 59
  br i1 %.not9, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge
  %i.ax = load i8, ptr %storemerge.lcssa, align 1, !tbaa !27
  %.not10 = icmp eq i8 %i.ax, 34
  br i1 %.not10, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !168
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.k, %bb.i, %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit, %bb.l, %_ZN4core6stringIcED2Ev.exit
  %.0 = phi i1 [ true, %_ZN4core6stringIcED2Ev.exit ], [ true, %bb.l ], [ false, %_ZN5scene16CXMeshFileLoader22findNextNoneWhiteSpaceEv.exit ], [ false, %bb.i ], [ false, %bb.k ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i8, ptr %i.b, align 8, !tbaa !165, !range !78, !noundef !79
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164  ; 2 uses
  %.not.i = icmp ult ptr %i.h, %i.j
  br i1 %.not.i, label %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

_ZN5scene16CXMeshFileLoader11readBinWordEv.exit:  ; preds = %bb.c
  %i.k = load i16, ptr %i.h, align 2, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8, !tbaa !168
  %i.m = icmp eq i16 %i.k, 7
  br i1 %i.m, label %bb.d, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

bb.d:                                             ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit
  %.not.i5 = icmp ult ptr %i.l, %i.j
  br i1 %.not.i5, label %bb.e, label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.l, align 4, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store ptr %i.o, ptr %i.g, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit

_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit: ; preds = %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit, %bb.d, %bb.e, %bb.c, %bb.b
  %i.p = phi i32 [ %i.f, %bb.b ], [ 0, %bb.d ], [ 1, %_ZN5scene16CXMeshFileLoader11readBinWordEv.exit ], [ %i.n, %bb.e ], [ 1, %bb.c ]
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.s = load i8, ptr %i.r, align 1, !tbaa !167
  %i.t = icmp eq i8 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !168  ; 4 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit
  %i.w = load double, ptr %i.v, align 8, !tbaa !329
  %i.x = fptrunc double %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.u, align 8, !tbaa !168
  br label %bb.m

bb.g:                                             ; preds = %_ZN5scene16CXMeshFileLoader12readBinDWordEv.exit
  %i.z = load float, ptr %i.v, align 4, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !168
  br label %bb.m

.preheader.i:                                     ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164 ; 3 uses
  %.promoted.i = load ptr, ptr %i.ab, align 8, !tbaa !168 ; 3 uses
  %i.ae = icmp ult ptr %.promoted.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.promoted7.i = load i32, ptr %i.af, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.lr.ph.i
  %i.ag = phi i32 [ %.promoted7.i, %.lr.ph.i ], [ %i.au, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ] ; 3 uses
  %i.ah = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.av, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ] ; 5 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27  ; 3 uses
  %i.aj = sext i8 %i.ai to i32
  %.off.i = add i8 %i.ai, -45
  %switch.i = icmp ult i8 %.off.i, 2
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = icmp ult i32 %i.ak, 10
  %or.cond.i = select i1 %switch.i, i1 true, i1 %i.al
  br i1 %or.cond.i, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.ai, label %.thread.i [
    i8 47, label %bb.j
    i8 35, label %.lr.ph.i.i.preheader
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %.lr.ph.i.i.preheader, label %.thread.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j, %bb.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.l
  %i.ap = phi ptr [ %i.ar, %bb.l ], [ %i.ah, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 5 uses
  store ptr %i.ar, ptr %i.ab, align 8, !tbaa !168
  switch i8 %i.aq, label %bb.l [
    i8 10, label %bb.k
    i8 13, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.as = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.as, ptr %i.af, align 4, !tbaa !163
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq ptr %i.ar, %i.ad
  br i1 %exitcond.not.i.i, label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, label %.lr.ph.i.i, !llvm.loop !3

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.ab, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i

_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i: ; preds = %bb.l, %.thread.i, %bb.k
  %i.au = phi i32 [ %i.ag, %.thread.i ], [ %i.as, %bb.k ], [ %i.ag, %bb.l ]
  %i.av = phi ptr [ %i.at, %.thread.i ], [ %i.ar, %bb.k ], [ %i.ar, %bb.l ] ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.ad
  br i1 %i.aw, label %bb.h, label %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, !llvm.loop !5

_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit: ; preds = %bb.h, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i, %.preheader.i
  %i.ax = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.ah, %bb.h ], [ %i.av, %_ZN5scene16CXMeshFileLoader18readUntilEndOfLineEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.ay = call double @strtod(ptr noundef %i.ax, ptr noundef nonnull %i.a) #28
  %i.az = fptrunc double %i.ay to float
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !177
  store ptr %i.ba, ptr %i.ab, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit, %bb.g, %bb.f
  %.0 = phi float [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.az, %_ZN5scene16CXMeshFileLoader28findNextNoneWhiteSpaceNumberEv.exit ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader11readVector2ERN4core8vector2dIfEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  store float %i.a, ptr %1, align 4, !tbaa !186
  %i.b = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.b, ptr %i.c, align 4, !tbaa !187
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader8readRGBAERN5video6SColorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(162) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 5 uses
  %i.a = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.b = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.c = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.d = tail call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.e = insertelement <4 x float> poison, float %i.a, i64 0
  %i.f = insertelement <4 x float> %i.e, float %i.b, i64 1
  %i.g = insertelement <4 x float> %i.f, float %i.c, i64 2
  %i.h = insertelement <4 x float> %i.g, float %i.d, i64 3
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.j)
  %i.l = fptosi <4 x float> %i.k to <4 x i32>
  %3 = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %4 = trunc <4 x i32> %3 to <4 x i8>
  store <4 x i8> %4, ptr %1, align 4, !tbaa !137
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load i8, ptr %i.m, align 8, !tbaa !165, !range !78, !noundef !79
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %sub_0.i

sub_0.i:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.p = load ptr, ptr %2, align 8, !tbaa !52     ; 4 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not.i = icmp eq i8 %i.q, 59
  br i1 %.not.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 0
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %.not5.i.i = phi i1 [ false, %sub_0.i ], [ %i.t, %sub_1.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.p, %i.u
  br i1 %i.v, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.tail.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !27
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.x) #29
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %.tail.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not5.i.i, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !168
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !168
  br label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit

_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit: ; preds = %bb.a, %_ZN4core6stringIcED2Ev.exit.i, %bb.b
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZN4core6stringIcED2Ev.exit.i ]
  ret i1 %.0.i
}

declare void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader24parseDataObjectAnimationEv(ptr noundef nonnull align 8 dereferenceable(162) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.core::string", align 8      ; 5 uses
  %2 = alloca %"class.core::string", align 8      ; 9 uses
  %3 = alloca %"struct.scene::SkinnedMesh::SJoint", align 8 ; 34 uses
  %4 = alloca %"class.core::string", align 8      ; 11 uses
  %5 = alloca %"class.core::string", align 8      ; 13 uses
  %6 = alloca %"class.core::string", align 8      ; 8 uses
  %7 = alloca %"class.core::string", align 8      ; 8 uses
  %8 = alloca %"class.core::string", align 8      ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20readHeadOfDataObjectEPN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef null)
  br i1 %i.c, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.83, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.e)
  %i.f = load ptr, ptr %2, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !27
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.l, align 8, !tbaa !48
  br label %bb.ba

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4core6stringIcED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !27
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZN4core6stringIcED2Ev.exit33

_ZN4core6stringIcED2Ev.exit33:                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.bb

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 0, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store <4 x float> splat (float 1.000000e+00), ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 0, ptr %i.u, align 8, !tbaa !179
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.w, align 8, !tbaa !334
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i8 1, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i8 1, ptr %i.aa, align 8, !tbaa !334
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 4, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 296
  store float 1.000000e+00, ptr %i.af, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 276
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !90
  store float 1.000000e+00, ptr %i.ac, align 8, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 384
  store i8 0, ptr %i.ah, align 8, !tbaa !189
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 392
  store i8 0, ptr %i.ai, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN4core6stringIcED2Ev.exit57.jt0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(162) %0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.al, align 8, !tbaa !26
  %i.au = and i64 %i.at, 4294967295
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.g, label %sub_0

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.86, i32 noundef 2)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %6, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ax, i32 noundef 2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ar
  br i1 %i.az, label %_ZN4core6stringIcED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.i
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !27
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #29
  br label %_ZN4core6stringIcED2Ev.exit36

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5video9SMaterialESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvT_S9_St20forward_iterator_tag:bb.a
  store ptr null, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !91
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5video9SMaterialESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !91
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.k, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.j, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5video9SMaterialESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !376

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef nonnull %i.g, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5video9SMaterialESt6vectorIS3_SaIS3_EEEES4_S3_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit.thread ], [ %i.k, %_ZSt10_ConstructIN5video9SMaterialEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.r, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN5video9SMaterialESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 72057594037927935
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i, !prof !377

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 144115188075855871
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 7
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #30
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not14.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not14.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 128
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef %i.e, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #28 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = shl i64 %1, 7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #32
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !77}
!1 = distinct !{!1, !77}
!2 = distinct !{!2, !77}
!3 = distinct !{!3, !77}
!4 = distinct !{!4, !77}
!5 = distinct !{!5, !77}
!6 = distinct !{!6, !77}
!7 = distinct !{ptr @_ZN5scene16CXMeshFileLoaderD1Ev, null, null, null, null, null}
!8 = distinct !{!8, !77}
!9 = distinct !{!9, !77}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"vtable pointer", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any pointer", !14, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !14, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !14, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!14, !14, i64 0}
!28 = !{!"_ZTSN5scene11IMeshLoaderE"}
!29 = !{!"p1 _ZTSN5scene11SkinnedMeshE", !20, i64 0}
!30 = !{!"_ZTS7irr_ptrIN5scene11SkinnedMeshEE", !29, i64 0}
!31 = !{!"p1 _ZTSN5scene18SkinnedMeshBuilder6WeightE", !20, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIN5scene18SkinnedMeshBuilder6WeightESaIS2_EE", !34, i64 0}
!36 = !{!"_ZTSN5scene18SkinnedMeshBuilderE", !30, i64 0, !35, i64 8}
!37 = !{!"_ZTSN4core6stringIcEE", !25, i64 0}
!38 = !{!"bool", !14, i64 0}
!39 = !{!"p1 _ZTSN5scene11SkinnedMesh6SJointE", !20, i64 0}
!40 = !{!"any p2 pointer", !20, i64 0}
!41 = !{!"p2 _ZTSN5scene16CXMeshFileLoader6SXMeshE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIPN5scene16CXMeshFileLoader6SXMeshESaIS3_EE", !44, i64 0}
!46 = !{!"_ZTSN4core5arrayIPN5scene16CXMeshFileLoader6SXMeshEEE", !45, i64 0, !38, i64 24}
!47 = !{!"_ZTSN5scene16CXMeshFileLoaderE", !28, i64 0, !36, i64 8, !21, i64 40, !21, i64 48, !21, i64 56, !15, i64 64, !15, i64 68, !37, i64 72, !38, i64 104, !39, i64 112, !46, i64 120, !15, i64 152, !15, i64 156, !38, i64 160, !14, i64 161}
!48 = !{!47, !38, i64 104}
!49 = !{!46, !38, i64 24}
!50 = !{!"_ZTS17IReferenceCounted", !15, i64 8}
!51 = !{!50, !15, i64 8}
!52 = !{!25, !21, i64 0}
!53 = !{!"p2 _ZTSN5scene15SSkinMeshBufferE", !40, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN5scene15SSkinMeshBufferESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIPN5scene15SSkinMeshBufferESaIS2_EE", !56, i64 0}
!58 = !{!"p1 int", !20, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIjSaIjEE", !61, i64 0}
!63 = !{!"p2 _ZTSN5scene11SkinnedMesh6SJointE", !40, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIPN5scene11SkinnedMesh6SJointESaIS3_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"float", !14, i64 0}
!66 = !{!"_ZTSN4core8vector3dIfEE", !65, i64 0, !65, i64 4, !65, i64 8}
!67 = !{!"_ZTSN4core8aabbox3dIfEE", !66, i64 0, !66, i64 12}
!68 = !{!30, !29, i64 0}
!69 = !{!32, !31, i64 0}
!70 = !{!32, !31, i64 16}
!71 = !{!47, !21, i64 40}
!72 = !{!42, !41, i64 8}
!73 = !{!42, !41, i64 0}
!74 = !{!42, !41, i64 16}
!75 = !{!"p1 _ZTSN5scene16CXMeshFileLoader6SXMeshE", !20, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!"p1 _ZTSN5video9SMaterialE", !20, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 8}
!83 = !{!81, !80, i64 0}
!84 = !{!"p1 _ZTSN5video8ITextureE", !20, i64 0}
!85 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !14, i64 0}
!86 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !14, i64 0}
!87 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !20, i64 0}
!88 = !{!"_ZTSN5video14SMaterialLayerE", !84, i64 0, !14, i64 8, !14, i64 8, !14, i64 9, !85, i64 10, !86, i64 11, !14, i64 12, !14, i64 13, !87, i64 16}
!89 = !{!88, !84, i64 0}
!90 = !{!65, !65, i64 0}
!91 = !{!81, !80, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE12_Vector_implE", !81, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN5video9SMaterialESaIS1_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIN5video9SMaterialESaIS1_EE", !93, i64 0}
!95 = !{!"_ZTSN4core5arrayIN5video9SMaterialEEE", !94, i64 0, !38, i64 24}
!96 = !{!95, !38, i64 24}
!97 = !{!88, !87, i64 16}
!98 = !{!54, !53, i64 16}
!99 = !{!54, !53, i64 0}
!100 = !{!54, !53, i64 8}
!101 = !{!"p1 _ZTSN5scene15SSkinMeshBufferE", !20, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSN4core5arrayIPN5scene15SSkinMeshBufferEEE", !57, i64 0, !38, i64 24}
!104 = !{!103, !38, i64 24}
!105 = !{!53, !53, i64 0}
!106 = !{!"p1 short", !20, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseItSaItEE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorItSaItEE", !109, i64 0}
!111 = !{!"_ZTSN4core5arrayItEE", !110, i64 0, !38, i64 24}
!112 = !{!"p1 _ZTSN5video9S3DVertexE", !20, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !112, i64 0, !112, i64 8, !112, i64 16}
!114 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE12_Vector_implE", !113, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseIN5video9S3DVertexESaIS1_EE", !114, i64 0}
!116 = !{!"_ZTSSt6vectorIN5video9S3DVertexESaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSN4core5arrayIN5video9S3DVertexEEE", !116, i64 0, !38, i64 24}
!118 = !{!"p1 _ZTSN4core8vector2dIfEE", !20, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE12_Vector_implE", !119, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE", !120, i64 0}
!122 = !{!"_ZTSSt6vectorIN4core8vector2dIfEESaIS2_EE", !121, i64 0}
!123 = !{!"_ZTSN4core5arrayINS_8vector2dIfEEEE", !122, i64 0, !38, i64 24}
!124 = !{!"_ZTSN4core5arrayIjEE", !62, i64 0, !38, i64 24}
!125 = !{!"p1 _ZTSN5scene16CXMeshFileLoader6SXMesh6WeightE", !20, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE12_Vector_implE", !126, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE", !127, i64 0}
!129 = !{!"_ZTSSt6vectorIN5scene16CXMeshFileLoader6SXMesh6WeightESaIS3_EE", !128, i64 0}
!130 = !{!"_ZTSN5scene16CXMeshFileLoader6SXMeshE", !37, i64 0, !15, i64 32, !15, i64 36, !15, i64 40, !111, i64 48, !103, i64 80, !117, i64 112, !123, i64 144, !124, i64 176, !124, i64 208, !95, i64 240, !129, i64 272, !15, i64 296, !38, i64 300, !38, i64 301}
!131 = !{!130, !38, i64 300}
!132 = !{!130, !15, i64 296}
!133 = !{!64, !63, i64 0}
!134 = !{!39, !39, i64 0}
!135 = !{!59, !58, i64 8}
!136 = !{!59, !58, i64 16}
!137 = !{!15, !15, i64 0}
!138 = !{!59, !58, i64 0}
!139 = !{!"llvm.loop.isvectorized", i32 1}
!140 = !{!"llvm.loop.unroll.runtime.disable"}
!141 = !{!130, !38, i64 301}
!142 = !{!113, !112, i64 8}
!143 = !{!113, !112, i64 0}
!144 = !{!"short", !14, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!113, !112, i64 16}
!147 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 8, i64 4, !90, i64 12, i64 4, !90, i64 16, i64 4, !90, i64 20, i64 4, !90, i64 24, i64 4, !137, i64 28, i64 4, !90, i64 32, i64 4, !90, i64 36, i64 2, !145}
!148 = !{!117, !38, i64 24}
!149 = !{!119, !118, i64 8}
!150 = !{!119, !118, i64 0}
!151 = !{!"_ZTSN5video6SColorE", !15, i64 0}
!152 = !{!"p1 _ZTSN5video17S3DVertex2TCoordsE", !20, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE17_Vector_impl_dataE", !152, i64 0, !152, i64 8, !152, i64 16}
!154 = !{!153, !152, i64 16}
!155 = !{!153, !152, i64 0}
!156 = !{!153, !152, i64 8}
!157 = !{!107, !106, i64 16}
!158 = !{!107, !106, i64 0}
!159 = !{!107, !106, i64 8}
!160 = !{!126, !125, i64 0}
end_hunk_1
