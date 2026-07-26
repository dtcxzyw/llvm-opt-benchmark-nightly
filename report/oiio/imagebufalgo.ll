inline.NumInlined: 7403
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEEC2EibRKS2_:bb.a
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !96
  store i64 %i.aj, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1069

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %.noexc7 ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1066
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  invoke void @_ZN13kissfft_utils6traitsIfE7prepareERSt6vectorISt7complexIfESaIS4_EEibRS2_IiSaIiEESA_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.loopexit
  ret void

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt7complexIfEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit

bb.e:                                             ; preds = %.loopexit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1044
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #33
  br label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit:      ; preds = %bb.e, %bb.f
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZN13kissfft_utils6traitsIfED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !1044
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #33
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit

_ZN13kissfft_utils6traitsIfED2Ev.exit:            ; preds = %bb.g, %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit, %bb.d
  %.pn = phi { ptr, i32 } [ %i.an, %bb.d ], [ %i.ao, %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit ], [ %i.ao, %bb.g ]
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13kissfft_utils6traitsIfED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1054
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN13kissfft_utils6traitsIfED2Ev.exit, %bb.h
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1054
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.i
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1044
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #33
  br label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit12

_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit12:    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10, %bb.j
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1044
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN13kissfft_utils6traitsIfED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1044
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #33
  br label %_ZN13kissfft_utils6traitsIfED2Ev.exit

_ZN13kissfft_utils6traitsIfED2Ev.exit:            ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN13kissfft_utils6traitsIfED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1054
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN13kissfft_utils6traitsIfED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1054
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1044
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #33
  br label %_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit5

_ZNSt6vectorISt7complexIfESaIS1_EED2Ev.exit5:     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13kissfft_utils6traitsIfE7prepareERSt6vectorISt7complexIfESaIS4_EEibRS2_IiSaIiEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  tail call void @_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  %i.b = load ptr, ptr %0, align 8, !tbaa !1041
  %i.c = select i1 %3, float 2.000000e+00, float -2.000000e+00
  %i.d = tail call noundef float @llvm.acos.f32(float -1.000000e+00)
  %i.e = fmul nnan float %i.d, %i.c
  %6 = sitofp i32 %2 to float
  %i.f = fdiv float %i.e, %6
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZN13kissfft_utils6traitsIfE13fill_twiddlesEPSt7complexIfEib.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = fmul float %i.f, %i.i
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.j, i64 1
  %i.k = tail call noundef <2 x float> @cexpf(<2 x float> noundef %.sroa.0.4.vec.insert.i.i.i) #39
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store <2 x float> %i.k, ptr %i.l, align 4, !tbaa !96
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN13kissfft_utils6traitsIfE13fill_twiddlesEPSt7complexIfEib.exit, label %.lr.ph.i, !llvm.loop !1070

_ZN13kissfft_utils6traitsIfE13fill_twiddlesEPSt7complexIfEib.exit: ; preds = %.lr.ph.i, %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt7complexIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14, %_ZN13kissfft_utils6traitsIfE13fill_twiddlesEPSt7complexIfEib.exit
  %.023 = phi i32 [ %2, %_ZN13kissfft_utils6traitsIfE13fill_twiddlesEPSt7complexIfEib.exit ], [ %i.w, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14 ] ; 5 uses
  %.0 = phi i32 [ 4, %_ZN13kissfft_utils6traitsIfE13fill_twiddlesEPSt7complexIfEib.exit ], [ %.1.lcssa, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14 ] ; 3 uses
  %i.r = srem i32 %.023, %.0
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.125 = phi i32 [ %spec.select, %bb.e ], [ %.0, %bb.b ] ; 2 uses
  switch i32 %.125, label %bb.d [
    i32 4, label %bb.e
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = add nsw i32 %.125, 2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %.2 = phi i32 [ %i.s, %bb.d ], [ 3, %bb.c ], [ 2, %.lr.ph ] ; 3 uses
  %i.t = mul nsw i32 %.2, %.2
  %i.u = icmp sgt i32 %i.t, %.023
  %spec.select = select i1 %i.u, i32 %.023, i32 %.2 ; 3 uses
  %i.v = srem i32 %.023, %spec.select
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1071

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.1.lcssa = phi i32 [ %.0, %bb.b ], [ %spec.select, %bb.e ] ; 4 uses
  %i.w = sdiv i32 %.023, %.1.lcssa                ; 4 uses
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !1072 ; 4 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !1054
  %.not.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i32 %.1.lcssa, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.z, ptr %i.n, align 8, !tbaa !1072
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %4, align 8, !tbaa !1052  ; 4 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.af = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 2305843009213693951)
  %i.aj = select i1 %i.ah, i64 2305843009213693951, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #34 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store i32 %.1.lcssa, ptr %i.am, align 4, !tbaa !3
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.al, ptr %4, align 8, !tbaa !1052
  store ptr %i.ao, ptr %i.n, align 8, !tbaa !1072
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !1054
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !1072 ; 4 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !1054
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.w, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store ptr %i.as, ptr %i.p, align 8, !tbaa !1072
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.at = load ptr, ptr %5, align 8, !tbaa !1052  ; 4 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i8

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i8: ; preds = %bb.l
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i9 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i9, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #34 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 %i.w, ptr %i.bf, align 4, !tbaa !3
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i11

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i11

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i11: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.not.i17.i.i12 = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i12, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i13, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i13

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i13: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i11
  store ptr %i.be, ptr %5, align 8, !tbaa !1052
  store ptr %i.bh, ptr %i.p, align 8, !tbaa !1072
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bi, ptr %i.q, align 8, !tbaa !1054
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14

_ZNSt6vectorIiSaIiEE9push_backERKi.exit14:        ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i13
  %i.bj = icmp sgt i32 %i.w, 1
  br i1 %i.bj, label %bb.b, label %bb.p, !llvm.loop !1073

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1066 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1041   ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L18median_filter_implIffEEbRNS0_8ImageBufERKS2_iiNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.fi = select i1 %or.cond.i.i, i1 true, i1 %i.fh, !prof !315
  br i1 %i.fi, label %bb.x, label %.preheader103.backedge, !prof !288

bb.x:                                             ; preds = %bb.w
  %i.fj = load ptr, ptr %2, align 8, !tbaa !287
  %i.fk = load i32, ptr %i.as, align 8, !tbaa !280
  %i.fl = load i32, ptr %i.au, align 4, !tbaa !282
  %i.fm = load i32, ptr %i.bk, align 8, !tbaa !316
  %i.fn = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i32 noundef %i.ek, i32 noundef %i.fk, i32 noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i1 noundef zeroext %i.fd, i32 noundef %i.fm)
          to label %.noexc70 unwind label %bb.q

.noexc70:                                         ; preds = %bb.x
  %i.fo = zext i1 %i.fd to i8
  store ptr %i.fn, ptr %i.ay, align 8, !tbaa !289
  store i8 %i.fo, ptr %i.aw, align 1, !tbaa !310
  br label %.preheader103.backedge

bb.y:                                             ; preds = %._crit_edge108._crit_edge, %.thread
  %.pre142 = phi i32 [ %.pre142.pre143, %.thread ], [ %.pre142.pre, %._crit_edge108._crit_edge ] ; 2 uses
  %i.fp = phi i32 [ %.pre140, %.thread ], [ %.pre139, %._crit_edge108._crit_edge ]
  %.15396 = phi i32 [ %.052, %.thread ], [ %i.ei, %._crit_edge108._crit_edge ] ; 3 uses
  %i.fq = load i32, ptr %i.ar, align 4, !tbaa !281 ; 3 uses
  store i32 %i.fq, ptr %i.aq, align 4, !tbaa !279
  %i.fr = add nsw i32 %i.fp, 1                    ; 3 uses
  store i32 %i.fr, ptr %i.as, align 8, !tbaa !280
  %i.fs = load i32, ptr %i.az, align 8, !tbaa !317
  %.not.i69 = icmp slt i32 %i.fr, %i.fs
  br i1 %.not.i69, label %._crit_edge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = load i32, ptr %i.at, align 4, !tbaa !300 ; 2 uses
  store i32 %i.ft, ptr %i.as, align 8, !tbaa !280
  %i.fu = add nsw i32 %.pre142, 1                 ; 3 uses
  store i32 %i.fu, ptr %i.au, align 4, !tbaa !282
  %i.fv = load i32, ptr %i.av, align 8, !tbaa !283
  %.not1.i = icmp slt i32 %i.fu, %i.fv
  br i1 %.not1.i, label %._crit_edge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.ap, align 8, !tbaa !275
  br label %.preheader103.backedge

._crit_edge.i:                                    ; preds = %.thread, %bb.z, %bb.y
  %i.fw = phi i32 [ %.pre142, %bb.y ], [ %i.fu, %bb.z ], [ %.pre142.pre143, %.thread ]
  %.15395 = phi i32 [ %.15396, %bb.y ], [ %.15396, %bb.z ], [ %.052, %.thread ]
  %i.fx = phi i32 [ %i.fr, %bb.y ], [ %i.ft, %bb.z ], [ %.pre140, %.thread ]
  %i.fy = phi i32 [ %i.fq, %bb.y ], [ %i.fq, %bb.z ], [ %i.eo, %.thread ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fy, i32 noundef %i.fx, i32 noundef %i.fw)
          to label %.preheader103.backedge unwind label %bb.q

.preheader103.backedge:                           ; preds = %._crit_edge.i, %bb.u, %bb.t, %bb.v, %bb.w, %.noexc70, %bb.aa
  %.052.be = phi i32 [ %.15395, %._crit_edge.i ], [ %i.ei, %bb.t ], [ %i.ei, %bb.u ], [ %i.ei, %bb.v ], [ %i.ei, %bb.w ], [ %i.ei, %.noexc70 ], [ %.15396, %bb.aa ]
  br label %.preheader103

bb.ab:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit68
  %.not58 = icmp eq i32 %.052, 0
  br i1 %.not58, label %.preheader101, label %bb.ac

.preheader101:                                    ; preds = %bb.ab
  br i1 %i.ad, label %.lr.ph113, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ad, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %bb.ac
  %i.fz = sdiv i32 %.052, 2
  %i.ga = sext i32 %.052 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.ga, 2
  %i.gb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ga, i1 true)
  %i.gc = shl nuw nsw i64 %i.gb, 1
  %i.gd = xor i64 %i.gc, 126
  %i.ge = sext i32 %i.fz to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph111, %bb.ag
  %indvars.iv126 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next127, %bb.ag ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv126 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !327 ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %.idx ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh, i64 noundef %i.gd)
          to label %.noexc73 unwind label %bb.ah

.noexc73:                                         ; preds = %bb.ad
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %.noexc73
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !327
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.ge
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !254
  %i.gl = load ptr, ptr %3, align 8, !tbaa !287
  %i.gm = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl)
          to label %.noexc75 unwind label %bb.ai

.noexc75:                                         ; preds = %bb.ae
  %i.gn = icmp eq i32 %i.gm, 3
  br i1 %i.gn, label %bb.af, label %bb.ag, !prof !288

bb.af:                                            ; preds = %.noexc75
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %.noexc75, %bb.af
  %i.go = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv126
  store float %i.gk, ptr %i.gp, align 4, !tbaa !254
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %bb.ad, !llvm.loop !1255

bb.ah:                                            ; preds = %.noexc73, %bb.ad
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph113:                                        ; preds = %.preheader101, %bb.ak
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.ak ], [ 0, %.preheader101 ] ; 2 uses
  %i.gs = load ptr, ptr %3, align 8, !tbaa !287
  %i.gt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %.noexc79 unwind label %bb.al

.noexc79:                                         ; preds = %.lr.ph113
  %i.gu = icmp eq i32 %i.gt, 3
  br i1 %i.gu, label %bb.aj, label %bb.ak, !prof !288

bb.aj:                                            ; preds = %.noexc79
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.noexc79, %bb.aj
  %i.gv = load ptr, ptr %i.bl, align 8, !tbaa !289
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv131
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !254
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %.lr.ph113, !llvm.loop !1256

bb.al:                                            ; preds = %bb.aj, %.lr.ph113
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit:                                        ; preds = %bb.ag, %bb.ak, %bb.ac, %.preheader101
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.p, !llvm.loop !1257

bb.am:                                            ; preds = %bb.q, %bb.al, %bb.ai, %bb.ah, %bb.p
  %.pn60.pn = phi { ptr, i32 } [ %i.dh, %bb.p ], [ %i.gq, %bb.ah ], [ %i.di, %bb.q ], [ %i.gx, %bb.al ], [ %i.gr, %bb.ai ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.m
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.am ], [ %i.cg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !1258

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !254 ; 2 uses
  %i.j = load float, ptr %0, align 4, !tbaa !254
  store float %i.j, ptr %i.h, align 4, !tbaa !254
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = sdiv i64 %i.n, 2
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.r, align 4, !tbaa !254
  %i.v = load float, ptr %i.t, align 4, !tbaa !254
  %i.w = fcmp olt float %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load float, ptr %i.y, align 4, !tbaa !254
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store float %i.z, ptr %i.aa, align 4, !tbaa !254
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1259

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !254
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !254
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i78.i.i.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !254 ; 2 uses
  %i.ao = fcmp olt float %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store float %i.an, ptr %i.ap, align 4, !tbaa !254
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1260

_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store float %i.i, ptr %i.aq, align 4, !tbaa !254
  %i.ar = icmp sgt i64 %i.l, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !1261

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ax = load float, ptr %i.e, align 4, !tbaa !254 ; 5 uses
  %i.ay = load float, ptr %i.av, align 4, !tbaa !254 ; 5 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !254 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = fcmp olt float %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load float, ptr %0, align 4, !tbaa !254
  store float %i.ay, ptr %0, align 4, !tbaa !254
  store float %i.bc, ptr %i.av, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt float %i.ax, %i.ba
  %i.be = load float, ptr %0, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.ba, ptr %0, align 4, !tbaa !254
  store float %i.be, ptr %i.aw, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store float %i.ax, ptr %0, align 4, !tbaa !254
  store float %i.be, ptr %i.e, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = fcmp olt float %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load float, ptr %0, align 4, !tbaa !254
  store float %i.ax, ptr %0, align 4, !tbaa !254
  store float %i.bg, ptr %i.e, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt float %i.ay, %i.ba
  %i.bi = load float, ptr %0, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.ba, ptr %0, align 4, !tbaa !254
  store float %i.bi, ptr %i.aw, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store float %i.ay, ptr %0, align 4, !tbaa !254
  store float %i.bi, ptr %i.av, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load float, ptr %0, align 4, !tbaa !254 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load float, ptr %.1.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bl = fcmp olt float %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !1262

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load float, ptr %.114.i.i, align 4, !tbaa !254 ; 2 uses
  %i.bo = fcmp olt float %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !1263

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store float %i.bn, ptr %.1.i.i, align 4, !tbaa !254
  store float %i.bk, ptr %.114.i.i, align 4, !tbaa !254
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1264

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 64
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !1258

_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load float, ptr %.020.i.ptr, align 4, !tbaa !254 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !254  ; 2 uses
  %i.g = fcmp olt float %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !232

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store float %i.f, ptr %i.i, align 4, !tbaa !254
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load float, ptr %.pn19.i, align 4, !tbaa !254 ; 2 uses
  %i.k = fcmp olt float %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi float [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store float %i.l, ptr %.0912.i.i, align 4, !tbaa !254
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load float, ptr %.0.i.i, align 4, !tbaa !254 ; 2 uses
  %i.n = fcmp olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1265

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store float %i.e, ptr %.sink.i, align 4, !tbaa !254
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !1266

_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_1
