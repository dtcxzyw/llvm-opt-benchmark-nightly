Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/geometry?download=true
inline.NumInlined: 440
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z24drawMinEnclosingTriangleRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = load ptr, ptr %1, align 8, !tbaa !60
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.not.i = icmp ugt i64 %i.i, 2147483647
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.i, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 -2130509788, ptr %3, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 -2113732572, ptr %4, align 8, !tbaa !51
  store ptr %2, ptr %i.k, align 8, !tbaa !52
  %i.m = invoke noundef double @_ZN2cv20minEnclosingTriangleERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not = icmp eq i64 %i.s, 24
  br i1 %.not, label %bb.h, label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.w, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !51
  store ptr %0, ptr %i.v, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !49
  store i32 -2130509788, ptr %6, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.z, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store double 2.550000e+02, ptr %7, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv9polylinesERKNS_17_InputOutputArrayERKNS_11_InputArrayEbRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 2, i32 noundef 16, i32 noundef 0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.pre = load ptr, ptr %2, align 8, !tbaa !60
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %i.ab = phi ptr [ %i.p, %bb.d ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.l:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn10.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn.pn, %bb.g ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !62
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit18

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit18:  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn10.pn.pn
}

declare noundef double @_ZN2cv20minEnclosingTriangleERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv9polylinesERKNS_17_InputOutputArrayERKNS_11_InputArrayEbRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z15drawMinAreaRectRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::RotatedRect", align 4   ; 5 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca [4 x %"class.cv::Point_"], align 16 ; 12 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = load ptr, ptr %1, align 8, !tbaa !60
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.not.i = icmp ugt i64 %i.i, 2147483647
  br i1 %.not.i, label %bb.b, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.i, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.a
  store i32 -2130509788, ptr %3, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !52
  call void @_ZN2cv11minAreaRectERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::RotatedRect") align 4 %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !65
  call void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.m = load <4 x float>, ptr %4, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.1 unwind label %.loopexit ; 6 uses

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.q = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.o)
  %i.r = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.m)
  %.sroa.6.0.insert.ext29 = zext i32 %i.q to i64
  %.sroa.6.0.insert.shift30 = shl nuw i64 %.sroa.6.0.insert.ext29, 32
  %.sroa.0.0.insert.ext25 = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert27 = or disjoint i64 %.sroa.6.0.insert.shift30, %.sroa.0.0.insert.ext25
  store i64 %.sroa.0.0.insert.insert27, ptr %i.p, align 4, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !60
  store ptr %i.s, ptr %i.k, align 8, !tbaa !59
  store ptr %i.s, ptr %i.l, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load <4 x float>, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load <4 x float>, ptr %i.v, align 4
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %.lr.ph.i.i.i.i.i.i.preheader.1 unwind label %.loopexit ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader.1:                   ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.y = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.w)
  %i.z = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.0.insert.ext29.1 = zext i32 %i.y to i64
  %.sroa.6.0.insert.shift30.1 = shl nuw i64 %.sroa.6.0.insert.ext29.1, 32
  %.sroa.0.0.insert.ext25.1 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert27.1 = or disjoint i64 %.sroa.6.0.insert.shift30.1, %.sroa.0.0.insert.ext25.1
  store i64 %.sroa.0.0.insert.insert27.1, ptr %i.aa, align 4, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ab = load i64, ptr %i.p, align 4, !tbaa !86, !alias.scope !88
  store i64 %i.ab, ptr %i.x, align 4, !tbaa !86, !alias.scope !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 8) #19
  store ptr %i.x, ptr %5, align 8, !tbaa !60
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load <4 x float>, ptr %i.ae, align 16   ; 2 uses
  %i.ag = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc18.2 unwind label %.loopexit ; 8 uses

.noexc18.2:                                       ; preds = %.lr.ph.i.i.i.i.i.i.preheader.1
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ai = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ah)
  %i.aj = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.af)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6.0.insert.ext29.2 = zext i32 %i.ai to i64
  %.sroa.6.0.insert.shift30.2 = shl nuw i64 %.sroa.6.0.insert.ext29.2, 32
  %.sroa.0.0.insert.ext25.2 = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert27.2 = or disjoint i64 %.sroa.6.0.insert.shift30.2, %.sroa.0.0.insert.ext25.2
  store i64 %.sroa.0.0.insert.insert27.2, ptr %i.ak, align 4, !tbaa !86
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %wide.load = load <2 x i64>, ptr %i.x, align 4, !tbaa !86, !alias.scope !90
  store <2 x i64> %wide.load, ptr %i.ag, align 4, !tbaa !86, !alias.scope !89
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 16) #19
  store ptr %i.ag, ptr %5, align 8, !tbaa !60
  store ptr %i.al, ptr %i.k, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.am, ptr %i.l, align 8, !tbaa !62
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.pre37 = load float, ptr %.phi.trans.insert36, align 4, !tbaa !68
  %i.an = insertelement <4 x float> poison, float %.pre37, i64 0
  %i.ao = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.an)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !67
  %i.ap = insertelement <4 x float> poison, float %.pre, i64 0
  %i.aq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ap)
  %.sroa.6.0.insert.ext.3 = zext i32 %i.ao to i64
  %.sroa.6.0.insert.shift.3 = shl nuw i64 %.sroa.6.0.insert.ext.3, 32
  %.sroa.0.0.insert.ext.3 = zext i32 %i.aq to i64
  %.sroa.0.0.insert.insert.3 = or disjoint i64 %.sroa.6.0.insert.shift.3, %.sroa.0.0.insert.ext.3
  store i64 %.sroa.0.0.insert.insert.3, ptr %i.al, align 4, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !59
  %i.as = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.au, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !51
  store ptr %0, ptr %i.at, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.av, align 8, !tbaa !48
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.aw, align 4, !tbaa !49
  %i.ax = ptrtoint ptr %i.ag to i64
  %i.ay = sub i64 %i.as, %i.ax
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %.not.i19 = icmp ugt i64 %i.az, 2147483647
  br i1 %.not.i19, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.1, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = phi ptr [ null, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader.1 ], [ %i.p, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.1 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.c:                                             ; preds = %.noexc18.2
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.az, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
          to label %.noexc20 unwind label %bb.g

.noexc20:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc18.2
  store i32 -2130509788, ptr %7, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.bb, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %8, align 16, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv9polylinesERKNS_17_InputOutputArrayERKNS_11_InputArrayEbRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 2, i32 noundef 16, i32 noundef 0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bd = load ptr, ptr %5, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.g:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.pre38.pre = load ptr, ptr %5, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre38 = phi ptr [ %.pre38.pre, %bb.h ], [ %i.ag, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.h ], [ %i.bi, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %i.bk = phi ptr [ %.pre38, %bb.i ], [ %i.ba, %.loopexit ] ; 3 uses
  %.pn15 = phi { ptr, i32 } [ %.pn, %bb.i ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i22 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit23

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit23:  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn15
}

declare void @_ZN2cv11minAreaRectERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::RotatedRect") align 4, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z14drawConvexHullRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = load ptr, ptr %1, align 8, !tbaa !60
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.not.i = icmp ugt i64 %i.i, 2147483647
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.i, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 -2130509788, ptr %3, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 -2113732572, ptr %4, align 8, !tbaa !51
  store ptr %2, ptr %i.k, align 8, !tbaa !52
  invoke void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !51
  store ptr %0, ptr %i.m, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = load ptr, ptr %2, align 8, !tbaa !60
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %.not.i14 = icmp ugt i64 %i.w, 2147483647
  br i1 %.not.i14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.w, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  store i32 -2130509788, ptr %6, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.x, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store <2 x double> splat (double 2.550000e+02), ptr %7, align 16, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv9polylinesERKNS_17_InputOutputArrayERKNS_11_InputArrayEbRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 2, i32 noundef 16, i32 noundef 0)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.z = load ptr, ptr %2, align 8, !tbaa !60     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.i:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn10 = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10, %bb.n ], [ %.pn.pn, %bb.k ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit18

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit18:  ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn10.pn.pn
}

declare void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z18drawFittedEllipsesRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.cv::RotatedRect", align 4   ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %6 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.cv::Scalar_", align 16      ; 3 uses
  %10 = alloca %"class.cv::RotatedRect", align 4  ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %14 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.cv::Scalar_", align 16     ; 3 uses
  %17 = alloca %"class.cv::RotatedRect", align 4  ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %21 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.cv::Scalar_", align 16     ; 3 uses
  %24 = alloca %"class.cv::RotatedRect", align 4  ; 7 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %28 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.cv::Scalar_", align 16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  switch i32 %2, label %bb.af [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !49
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.f = load ptr, ptr %1, align 8, !tbaa !60
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %.not.i = icmp ugt i64 %i.j, 2147483647
  br i1 %.not.i, label %bb.c, label %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.j, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
  unreachable

_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit: ; preds = %bb.b
  store i32 -2130509788, ptr %4, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !52
  invoke void @_ZN2cv10fitEllipseERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::RotatedRect") align 4 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val44 = load float, ptr %i.l, align 4, !tbaa !94 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val45 = load float, ptr %i.m, align 4, !tbaa !95
  %i.n = fmul float %.val44, 3.000000e+01
  %i.o = fcmp ole float %.val45, %i.n
  %i.p = fcmp ogt float %.val44, 0.000000e+00
  %spec.select.i = and i1 %i.p, %i.o
  br i1 %spec.select.i, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !51
  store ptr %0, ptr %i.q, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %6, align 16, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.s, align 16, !tbaa !70
  invoke void @_ZN2cv7ellipseERKNS_17_InputOutputArrayERKNS_11RotatedRectERKNS_7Scalar_IdEEii(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 2, i32 noundef 16)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %._crit_edge.i.i

bb.g:                                             ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.w, align 8
  store i32 50397184, ptr %7, align 8, !tbaa !51
  store ptr %0, ptr %i.v, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.x, ptr noundef nonnull align 1 dereferenceable(6) @.str.14, i64 6, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.z, align 2, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !102
  %i.ac = add nsw i32 %i.ab, -80
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %9, align 16, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.ad, align 16, !tbaa !70
  %.sroa.095.0.insert.ext = zext i32 %i.ac to i64
  %.sroa.095.0.insert.insert = or disjoint i64 %.sroa.095.0.insert.ext, 85899345920
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %.sroa.095.0.insert.insert, i32 noundef 0, double noundef 5.000000e-01, ptr noundef nonnull align 8 dead_on_return %9, i32 noundef 2, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ae = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.x
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !18
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.at

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.x
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.j
  %i.al = load i64, ptr %i.x, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.h, %bb.g
  %.pn32.pn = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.u, %bb.h ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.au

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.ao, align 4, !tbaa !49
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.aq = load ptr, ptr %1, align 8, !tbaa !60
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %.not.i49 = icmp ugt i64 %i.au, 2147483647
  br i1 %.not.i49, label %bb.m, label %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit50

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.au, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
  unreachable

_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit50: ; preds = %bb.l
  store i32 -2130509788, ptr %11, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %1, ptr %i.av, align 8, !tbaa !52
  invoke void @_ZN2cv13fitEllipseAMSERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::RotatedRect") align 4 %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val42 = load float, ptr %i.aw, align 4, !tbaa !94 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.val43 = load float, ptr %i.ax, align 4, !tbaa !95
  %i.ay = fmul float %.val42, 3.000000e+01
  %i.az = fcmp ole float %.val43, %i.ay
  %i.ba = fcmp ogt float %.val42, 0.000000e+00
  %spec.select.i51 = and i1 %i.ba, %i.az
  br i1 %spec.select.i51, label %bb.o, label %._crit_edge.i.i52

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.bc, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !51
  store ptr %0, ptr %i.bb, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %13, align 16, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.bd, align 16, !tbaa !70
  invoke void @_ZN2cv7ellipseERKNS_17_InputOutputArrayERKNS_11RotatedRectERKNS_7Scalar_IdEEii(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(20) %10, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 2, i32 noundef 16)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %._crit_edge.i.i52

bb.q:                                             ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit50
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.u

._crit_edge.i.i52:                                ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.bh, align 8
  store i32 50397184, ptr %14, align 8, !tbaa !51
  store ptr %0, ptr %i.bg, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.bi, ptr %15, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bi, ptr noundef nonnull align 1 dereferenceable(3) @.str.15, i64 3, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.bj, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 19
  store i8 0, ptr %i.bk, align 1, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !102
  %i.bn = add nsw i32 %i.bm, -80
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %16, align 16, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.bo, align 16, !tbaa !70
  %.sroa.092.0.insert.ext = zext i32 %i.bn to i64
  %.sroa.092.0.insert.insert = or disjoint i64 %.sroa.092.0.insert.ext, 85899345920
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 %.sroa.092.0.insert.insert, i32 noundef 0, double noundef 5.000000e-01, ptr noundef nonnull align 8 dead_on_return %16, i32 noundef 2, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i52
  %i.bp = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bi
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.s
  %i.br = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.at

bb.t:                                             ; preds = %._crit_edge.i.i52
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bi
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.t
  %i.bw = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.r, %bb.q
  %.pn29.pn = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.bf, %bb.r ], [ %i.be, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.au

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.by, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.bz, align 4, !tbaa !49
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.cb = load ptr, ptr %1, align 8, !tbaa !60
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.cf, 2147483647
  br i1 %.not.i62, label %bb.w, label %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit63

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.cf, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
  unreachable

_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit63: ; preds = %bb.v
  store i32 -2130509788, ptr %18, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %1, ptr %i.cg, align 8, !tbaa !52
  invoke void @_ZN2cv16fitEllipseDirectERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::RotatedRect") align 4 %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.val40 = load float, ptr %i.ch, align 4, !tbaa !94 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 12
  %.val41 = load float, ptr %i.ci, align 4, !tbaa !95
  %i.cj = fmul float %.val40, 3.000000e+01
  %i.ck = fcmp ole float %.val41, %i.cj
  %i.cl = fcmp ogt float %.val40, 0.000000e+00
  %spec.select.i64 = and i1 %i.cl, %i.ck
  br i1 %spec.select.i64, label %bb.y, label %._crit_edge.i.i65

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.cn, align 8
  store i32 50397184, ptr %19, align 8, !tbaa !51
  store ptr %0, ptr %i.cm, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %20, align 16, !tbaa !70
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.co, align 16, !tbaa !70
  invoke void @_ZN2cv7ellipseERKNS_17_InputOutputArrayERKNS_11RotatedRectERKNS_7Scalar_IdEEii(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 4 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 2, i32 noundef 16)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %._crit_edge.i.i65

bb.aa:                                            ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit63
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.ae

._crit_edge.i.i65:                                ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.cr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.cs, align 8
  store i32 50397184, ptr %21, align 8, !tbaa !51
  store ptr %0, ptr %i.cr, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.ct = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ct, ptr %22, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ct, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 6, ptr %i.cu, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %22, i64 22
  store i8 0, ptr %i.cv, align 2, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !102
  %i.cy = add nsw i32 %i.cx, -80
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %23, align 16, !tbaa !70
  %i.cz = getelementptr inbounds nuw i8, ptr %23, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.cz, align 16, !tbaa !70
  %.sroa.089.0.insert.ext = zext i32 %i.cy to i64
  %.sroa.089.0.insert.insert = or disjoint i64 %.sroa.089.0.insert.ext, 85899345920
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 %.sroa.089.0.insert.insert, i32 noundef 0, double noundef 5.000000e-01, ptr noundef nonnull align 8 dead_on_return %23, i32 noundef 2, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i65
  %i.da = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ct
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ac
  %i.dc = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.at

bb.ad:                                            ; preds = %._crit_edge.i.i65
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ct
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ad
  %i.dh = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.ab, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cq, %bb.ab ], [ %i.cp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.au

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.dj, align 8, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.dk, align 4, !tbaa !49
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.dm = load ptr, ptr %1, align 8, !tbaa !60
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3                 ; 2 uses
  %.not.i75 = icmp ugt i64 %i.dq, 2147483647
  br i1 %.not.i75, label %bb.ag, label %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit76

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.dq, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #18
  unreachable

_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit76: ; preds = %bb.af
  store i32 -2130509788, ptr %25, align 8, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %1, ptr %i.dr, align 8, !tbaa !52
  invoke void @_ZN2cv10fitEllipseERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::RotatedRect") align 4 %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.val = load float, ptr %i.ds, align 4, !tbaa !94 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %24, i64 12
  %.val39 = load float, ptr %i.dt, align 4, !tbaa !95
  %i.du = fmul float %.val, 3.000000e+01
  %i.dv = fcmp ole float %.val39, %i.du
  %i.dw = fcmp ogt float %.val, 0.000000e+00
  %spec.select.i77 = and i1 %i.dw, %i.dv
  br i1 %spec.select.i77, label %bb.ai, label %.noexc.i79

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.dx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.dy, align 8
  store i32 50397184, ptr %26, align 8, !tbaa !51
  store ptr %0, ptr %i.dx, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %27, align 16, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.dz, align 16, !tbaa !70
  invoke void @_ZN2cv7ellipseERKNS_17_InputOutputArrayERKNS_11RotatedRectERKNS_7Scalar_IdEEii(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 4 dereferenceable(20) %24, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 2, i32 noundef 16)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %.noexc.i79

bb.ak:                                            ; preds = %_ZN2cv11_InputArrayC2INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EE.exit76
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %bb.as

bb.al:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.as

.noexc.i79:                                       ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %i.ed, align 8
  store i32 50397184, ptr %28, align 8, !tbaa !51
  store ptr %0, ptr %i.ec, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  %i.ee = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.ee, ptr %29, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 16, ptr %i.a, align 8, !tbaa !15
  %i.ef = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %bb.aq  ; 2 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.ef, ptr %29, align 8, !tbaa !17
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ef, ptr noundef nonnull align 1 dereferenceable(16) @.str.17, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !19
  %i.ei = load ptr, ptr %29, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !102
  %i.em = add nsw i32 %i.el, -80
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %30, align 16, !tbaa !70
  %i.en = getelementptr inbounds nuw i8, ptr %30, i64 16
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.en, align 16, !tbaa !70
  %.sroa.0.0.insert.ext = zext i32 %i.em to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 85899345920
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 %.sroa.0.0.insert.insert, i32 noundef 0, double noundef 5.000000e-01, ptr noundef nonnull align 8 dead_on_return %30, i32 noundef 2, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %.noexc80
  %i.eo = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ee
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.am
  %i.eq = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 76) ; 0 uses
  %i.et = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %i.eu = getelementptr i8, ptr %i.et, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 240
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !43
  %.not.i1.i.i = icmp eq i8 %i.fa, 0
  br i1 %.not.i1.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 67
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ey)
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef signext i8 %i.ff(ptr noundef nonnull align 8 dereferenceable(570) %i.ey, i8 noundef signext 10), !inline_history !91
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i = phi i8 [ %i.fc, %bb.ao ], [ %i.fg, %bb.ap ]
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fh) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.at

bb.aq:                                            ; preds = %.noexc.i79
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ar:                                            ; preds = %.noexc80
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ee
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.ar
  %i.fn = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.aq
  %.pn35 = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.fk, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.al, %bb.ak
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.eb, %bb.al ], [ %i.ea, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.au

bb.at:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.au:                                            ; preds = %bb.as, %bb.ae, %bb.u, %bb.k
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.as ], [ %.pn32.pn, %bb.k ], [ %.pn29.pn, %bb.u ], [ %.pn.pn, %bb.ae ]
  resume { ptr, i32 } %.pn35.pn.pn
}

declare void @_ZN2cv10fitEllipseERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::RotatedRect") align 4, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv7ellipseERKNS_17_InputOutputArrayERKNS_11RotatedRectERKNS_7Scalar_IdEEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i64, i32 noundef, double noundef, ptr noundef align 8 dead_on_return, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN2cv13fitEllipseAMSERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::RotatedRect") align 4, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv16fitEllipseDirectERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::RotatedRect") align 4, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z10drawShapesRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EEiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !17
  %i.d = load i64, ptr %i.c, align 1
  %i.e = icmp ne i64 %i.d, 7308325638361001261
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_Z22drawMinEnclosingCircleRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %bb.a
  %.pre = load ptr, ptr %3, align 8, !tbaa !17
  %bcmp.i21 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.10, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i21, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  tail call void @_Z24drawMinEnclosingTriangleRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.a
  %.pre37 = load ptr, ptr %3, align 8, !tbaa !17
  %bcmp.i23 = tail call i32 @bcmp(ptr %.pre37, ptr nonnull @.str.13, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i23, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  tail call void @_Z15drawMinAreaRectRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26: ; preds = %bb.a
  %.pre38 = load ptr, ptr %3, align 8, !tbaa !17
  %bcmp.i25 = tail call i32 @bcmp(ptr %.pre38, ptr nonnull @.str.8, i64 %i.b)
  %i.j = icmp eq i32 %bcmp.i25, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26
  tail call void @_Z14drawConvexHullRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %bb.a
  %.pre39 = load ptr, ptr %3, align 8, !tbaa !17
  %bcmp.i27 = tail call i32 @bcmp(ptr %.pre39, ptr nonnull @.str.12, i64 %i.b)
  %i.k = icmp eq i32 %bcmp.i27, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  tail call void @_Z18drawFittedEllipsesRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %bb.a
  %.pre40 = load ptr, ptr %3, align 8, !tbaa !17
  %bcmp.i29 = tail call i32 @bcmp(ptr %.pre40, ptr nonnull @.str.9, i64 %i.b)
  %i.l = icmp eq i32 %bcmp.i29, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  tail call void @_Z22drawMinEnclosingCircleRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_Z24drawMinEnclosingTriangleRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_Z15drawMinAreaRectRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_Z14drawConvexHullRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_Z18drawFittedEllipsesRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit26.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv10medianBlurERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i64) local_unnamed_addr #5

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #19
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

declare void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_geometry.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL8hot_keysB5cxx11, i64 16), ptr @_ZL8hot_keysB5cxx11, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 372, ptr %i.a, align 8, !tbaa !15
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL8hot_keysB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.b, ptr @_ZL8hot_keysB5cxx11, align 8, !tbaa !17
  %i.c = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL8hot_keysB5cxx11, i64 16), align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(372) %i.b, ptr noundef nonnull align 1 dereferenceable(372) @.str, i64 372, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL8hot_keysB5cxx11, i64 8), align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  store i8 0, ptr %i.d, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL8hot_keysB5cxx11, ptr nonnull @__dso_handle) #17 ; 0 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) @image) #17
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN2cv3MatD1Ev, ptr nonnull @image, ptr nonnull @__dso_handle) #17 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !61}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !6, i64 16}
!17 = !{!16, !11, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!16, !14, i64 8}
!20 = !{!"vtable pointer", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !14, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!28 = !{!"_ZTSSt6locale", !27, i64 0}
!29 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !25, i64 48, !6, i64 64, !7, i64 192, !26, i64 200, !28, i64 208}
!30 = !{!"p1 _ZTSSo", !10, i64 0}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !29, i64 0, !30, i64 216, !6, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!37 = !{!36, !33, i64 240}
!38 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!40 = !{!"p1 int", !10, i64 0}
!41 = !{!"p1 short", !10, i64 0}
!42 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!43 = !{!42, !6, i64 56}
!44 = !{!"_ZTS8UserData", !7, i64 0, !16, i64 8, !7, i64 40}
!45 = !{!44, !7, i64 0}
!46 = !{!44, !7, i64 40}
!47 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!48 = !{!47, !7, i64 0}
!49 = !{!47, !7, i64 4}
!50 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !47, i64 16}
!51 = !{!50, !7, i64 0}
!52 = !{!50, !10, i64 8}
!53 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IiEESaIS2_EE", !10, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !53, i64 0}
!57 = !{!"p1 _ZTSN2cv6Point_IiEE", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 8}
!60 = !{!58, !57, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!58, !57, i64 16}
!63 = !{!54, !53, i64 16}
!64 = !{!"float", !6, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"_ZTSN2cv6Point_IfEE", !64, i64 0, !64, i64 4}
!67 = !{!66, !64, i64 0}
!68 = !{!66, !64, i64 4}
!69 = !{!"double", !6, i64 0}
!70 = !{!69, !69, i64 0}
!71 = distinct !{null}
!72 = distinct !{!72, i1 true, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!73 = distinct !{!73, !72, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!74 = distinct !{null, null}
!75 = !{!11, !11, i64 0}
!76 = !{!29, !23, i64 32}
!77 = !{!73}
!78 = distinct !{!78, !61}
!79 = !{!53, !53, i64 0}
!80 = distinct !{!80, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!81 = distinct !{!81, !80, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0:It1"}
!82 = distinct !{!82, !80, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1:It1"}
!83 = distinct !{!83, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!84 = distinct !{!84, !83, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0:It2"}
!85 = distinct !{!85, !83, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1:It2"}
!86 = !{!7, !7, i64 0}
!87 = !{!81}
!88 = !{!82}
!89 = !{!84}
!90 = !{!85}
!91 = distinct !{null, null, null, null}
!92 = !{!"_ZTSN2cv5Size_IfEE", !64, i64 0, !64, i64 4}
!93 = !{!"_ZTSN2cv11RotatedRectE", !66, i64 0, !92, i64 8, !64, i64 16}
!94 = !{!93, !64, i64 8}
!95 = !{!93, !64, i64 12}
!96 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!97 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!98 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!99 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !98, i64 4, !7, i64 8, !6, i64 12}
!100 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!101 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !96, i64 56, !97, i64 64, !99, i64 72, !100, i64 128}
!102 = !{!101, !7, i64 12}
end_hunk_0
