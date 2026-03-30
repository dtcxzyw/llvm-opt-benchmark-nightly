begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset15FixOrientationsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %1 = alloca %"struct.ClipperLib::IntPoint", align 8 ; 4 uses
  %2 = alloca %"struct.ClipperLib::IntPoint", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
end_hunk_0
begin_hunk_1
.lr.ph.i.i.i:                                     ; preds = %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %i.cd, %_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE.exit24.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -16 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %.sroa.0.0.i.i.i
end_hunk_1
begin_hunk_2
.lr.ph.i.i.i36:                                   ; preds = %bb.k, %.lr.ph.i.i.i36
  %.sroa.0.010.i.i.i37 = phi ptr [ %.sroa.0.0.i.i.i39, %.lr.ph.i.i.i36 ], [ %.sroa.0.08.i.i.i34, %bb.k ] ; 3 uses
  %.sroa.05.09.i.i.i38 = phi ptr [ %i.el, %.lr.ph.i.i.i36 ], [ %i.dj, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i38, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i37, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i37, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i38, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i37, i64 -16 ; 2 uses
  %i.em = icmp ult ptr %i.el, %.sroa.0.0.i.i.i39
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #10 {
bb.a:
  %1 = alloca %"struct.ClipperLib::IntPoint", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
end_hunk_3
begin_hunk_4
.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %bb.a ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -16 ; 2 uses
  %i.g = icmp ult ptr %i.f, %.sroa.0.0.i.i
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib12ReversePathsERSt6vectorIS0_INS_8IntPointESaIS1_EESaIS3_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #10 {
bb.a:
  %1 = alloca %"struct.ClipperLib::IntPoint", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
end_hunk_5
begin_hunk_6
.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %.lr.ph ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.g, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -16 ; 2 uses
  %i.m = icmp ult ptr %i.l, %.sroa.0.0.i.i.i
end_hunk_6
begin_hunk_7
; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib9MinkowskiERKSt6vectorINS_8IntPointESaIS1_EES5_RS0_IS3_SaIS3_EEbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.ClipperLib::IntPoint", align 8 ; 4 uses
  %6 = alloca %"class.std::vector.28", align 8    ; 18 uses
  %7 = alloca %"class.std::vector", align 8       ; 16 uses
  %8 = alloca %"class.std::vector", align 8       ; 16 uses
  %9 = alloca %"class.std::vector", align 8       ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
end_hunk_7
begin_hunk_8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.not422 = icmp eq ptr %i.i, %i.j
  br i1 %.not422, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i

end_hunk_8
begin_hunk_9
          to label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %bb.c ; 3 uses

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.r, ptr %6, align 8
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.n
  store ptr %i.t, ptr %i.p, align 8
end_hunk_9
begin_hunk_10

.lr.ph298:                                        ; preds = %.preheader274
  %i.u = icmp ugt i64 %i.g, 576460752303423487
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.u, label %.lr.ph298.split.us, label %.lr.ph298.split.preheader

.lr.ph298.split.preheader:                        ; preds = %.lr.ph298
end_hunk_10
begin_hunk_11
  br label %.lr.ph298.split

.lr.ph298.split.us:                               ; preds = %.lr.ph298
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
          to label %.noexc108 unwind label %.loopexit.split-lp277

end_hunk_11
begin_hunk_12

.lr.ph303:                                        ; preds = %.preheader262
  %i.y = icmp ugt i64 %i.g, 576460752303423487
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br i1 %i.y, label %.lr.ph303.split.us, label %.lr.ph303.split.preheader

.lr.ph303.split.preheader:                        ; preds = %.lr.ph303
end_hunk_12
begin_hunk_13
  br label %.lr.ph303.split

.lr.ph303.split.us:                               ; preds = %.lr.ph303
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #32
          to label %.noexc86 unwind label %.loopexit.split-lp265

end_hunk_13
begin_hunk_14

.lr.ph303.split:                                  ; preds = %.lr.ph303.split.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit
  %.069302 = phi i64 [ %i.cr, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit ], [ 0, %.lr.ph303.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not325, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i

.noexc86:                                         ; preds = %.lr.ph303.split.us
end_hunk_14
begin_hunk_15
          to label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit264 ; 4 uses

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i
  store ptr %i.ad, ptr %7, align 8
  store ptr %i.ad, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.f
  store ptr %i.ae, ptr %i.z, align 8
end_hunk_15
begin_hunk_16
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge301
  %i.al = load ptr, ptr %7, align 8               ; 2 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
end_hunk_16
begin_hunk_17
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %7, align 8               ; 3 uses
  %i.aw = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i
end_hunk_17
begin_hunk_18
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %._crit_edge301
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge unwind label %.loopexit264

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge: ; preds = %bb.f
  %.pre345 = load ptr, ptr %7, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

.loopexit264:                                     ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
end_hunk_18
begin_hunk_19
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %.lr.ph300
  %i.bm = load ptr, ptr %7, align 8               ; 5 uses
  %i.bn = ptrtoint ptr %i.bb to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
end_hunk_19
begin_hunk_20
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bx, ptr %7, align 8
  store ptr %i.cb, ptr %i.aa, align 8
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cc, ptr %i.z, align 8
end_hunk_20
begin_hunk_21
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.cr = add nuw i64 %.069302, 1                 ; 2 uses
  %exitcond341.not = icmp eq i64 %i.cr, %i.n
  br i1 %exitcond341.not, label %.loopexit263, label %.lr.ph303.split, !llvm.loop !289

bb.l:                                             ; preds = %.loopexit257, %.loopexit.split-lp258, %.loopexit264, %.loopexit.split-lp265
  %.pn76 = phi { ptr, i32 } [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ], [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit259, %.loopexit257 ], [ %lpad.loopexit.split-lp260, %.loopexit.split-lp258 ]
  %i.cs = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98, label %bb.m

end_hunk_21
begin_hunk_22
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ar

.lr.ph298.split:                                  ; preds = %.lr.ph298.split.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143
  %.067297 = phi i64 [ %i.fl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143 ], [ 0, %.lr.ph298.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not322, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE7reserveEm.exit110, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99

.noexc108:                                        ; preds = %.lr.ph298.split.us
end_hunk_22
begin_hunk_23
          to label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i107 unwind label %.loopexit276 ; 4 uses

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE13_M_deallocateEPS1_m.exit.i107: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99
  store ptr %i.cx, ptr %8, align 8
  store ptr %i.cx, ptr %i.w, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.f
  store ptr %i.cy, ptr %i.v, align 8
end_hunk_23
begin_hunk_24
  br i1 %.not.i111, label %bb.p, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.df = load ptr, ptr %8, align 8               ; 2 uses
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
end_hunk_24
begin_hunk_25
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.dn, ptr %i.do, align 8
  %i.dp = load ptr, ptr %8, align 8               ; 3 uses
  %i.dq = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not7.i.i.i.i.i.i114 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not7.i.i.i.i.i.i114, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i119, label %.lr.ph.i.i.i.i.i.i115
end_hunk_25
begin_hunk_26
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge unwind label %.loopexit276

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %8, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125

.loopexit276:                                     ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i99, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i113, %bb.p
end_hunk_26
begin_hunk_27
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit141

bb.r:                                             ; preds = %.lr.ph
  %i.eg = load ptr, ptr %8, align 8               ; 5 uses
  %i.eh = ptrtoint ptr %i.dv to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
end_hunk_27
begin_hunk_28
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i138: ; preds = %bb.t, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i135
  store ptr %i.er, ptr %8, align 8
  store ptr %i.ev, ptr %i.w, align 8
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.ew, ptr %i.v, align 8
end_hunk_28
begin_hunk_29
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit125, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.fl = add nuw i64 %.067297, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %i.n
  br i1 %exitcond.not, label %.loopexit263, label %.lr.ph298.split, !llvm.loop !295

bb.v:                                             ; preds = %.loopexit269, %.loopexit.split-lp270, %.loopexit276, %.loopexit.split-lp277
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  %i.fm = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i144 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, label %bb.w

end_hunk_29
begin_hunk_30
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ar

.loopexit263:                                     ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit143, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit, %.preheader274, %.preheader262
end_hunk_30
begin_hunk_31

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162
  %.not328 = icmp eq ptr %i.b, %i.c
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  br i1 %.not328, label %._crit_edge308, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge306.us
end_hunk_31
begin_hunk_32

_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us: ; preds = %.preheader.us, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us
  %.0305.us = phi i64 [ 0, %.preheader.us ], [ %i.ia, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.hk = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33
          to label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us unwind label %.loopexit.split.us ; 7 uses

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us: ; preds = %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us
  store ptr %i.hk, ptr %9, align 8
  store ptr %i.hk, ptr %i.hi, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  store ptr %i.hl, ptr %i.hh, align 8
  %i.hm = urem i64 %.065307.us, %i.n              ; 2 uses
  %i.hn = load ptr, ptr %6, align 8               ; 2 uses
  %i.ho = urem i64 %.0305.us, %i.g                ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.hm
  %i.hq = load ptr, ptr %i.hp, align 8
end_hunk_32
begin_hunk_33
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 3 uses
  store ptr %i.hx, ptr %i.hi, align 8
  %.pre346 = load ptr, ptr %i.hh, align 8         ; 4 uses
  %i.hy = load ptr, ptr %6, align 8               ; 3 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %i.ht
  %i.ia = add nuw i64 %.0305.us, 1                ; 3 uses
  %i.ib = urem i64 %i.ia, %i.g                    ; 2 uses
end_hunk_33
begin_hunk_34
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us

bb.ab:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit195.us
  %i.if = load ptr, ptr %9, align 8               ; 5 uses
  %i.ig = ptrtoint ptr %.pre346 to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 4 uses
end_hunk_34
begin_hunk_35

bb.ac:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ii) #34
  %.pre347.pre = load ptr, ptr %6, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i208.us: ; preds = %bb.ac, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us
  %.pre347 = phi ptr [ %.pre347.pre, %bb.ac ], [ %i.hy, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i205.us ]
  store ptr %i.iq, ptr %9, align 8
  store ptr %i.iu, ptr %i.hi, align 8
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.io ; 2 uses
  store ptr %i.iv, ptr %i.hh, align 8
end_hunk_35
begin_hunk_36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  store ptr %i.jc, ptr %i.hi, align 8
  %.pre349 = load ptr, ptr %9, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit227.us

bb.ae:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit211.us
  %i.jd = load ptr, ptr %9, align 8               ; 5 uses
  %i.je = ptrtoint ptr %i.iw to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 4 uses
end_hunk_36
begin_hunk_37
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i224.us: ; preds = %bb.af, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i221.us
  store ptr %i.jo, ptr %9, align 8
  store ptr %i.js, ptr %i.hi, align 8
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.jt, ptr %i.hh, align 8
end_hunk_37
begin_hunk_38
.lr.ph.i.i.i228.us:                               ; preds = %bb.ai, %.lr.ph.i.i.i228.us
  %.sroa.0.010.i.i.i.us = phi ptr [ %.sroa.0.0.i.i.i.us, %.lr.ph.i.i.i228.us ], [ %.sroa.0.08.i.i.i.us, %bb.ai ] ; 3 uses
  %.sroa.05.09.i.i.i.us = phi ptr [ %i.kx, %.lr.ph.i.i.i228.us ], [ %i.ju, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i.us, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.09.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i.us, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.us, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.us = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.us, i64 -16 ; 2 uses
  %i.ky = icmp ult ptr %i.kx, %.sroa.0.0.i.i.i.us
end_hunk_38
begin_hunk_39

bb.aj:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us
  %i.lb = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.lc = load ptr, ptr %9, align 8               ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le                    ; 3 uses
end_hunk_39
begin_hunk_40
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lf
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %i.lk, ptr %i.ll, align 8
  %i.lm = load ptr, ptr %9, align 8               ; 3 uses
  %i.ln = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i234.us = icmp eq ptr %i.lm, %i.ln
  br i1 %.not7.i.i.i.i.i.i234.us, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us, label %.lr.ph.i.i.i.i.i.i235.us
end_hunk_40
begin_hunk_41
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us

bb.al:                                            ; preds = %_ZN10ClipperLib11ReversePathERSt6vectorINS_8IntPointESaIS1_EE.exit.us
  invoke void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge unwind label %.loopexit.split.us

._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge: ; preds = %bb.al
  %.pre350 = load ptr, ptr %9, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us: ; preds = %._ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us_crit_edge, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i239.us
end_hunk_41
begin_hunk_42
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit247.us: ; preds = %bb.am, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit245.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %exitcond343.not = icmp eq i64 %i.ia, %i.g
  br i1 %exitcond343.not, label %._crit_edge306.us, label %_ZNSt12_Vector_baseIN10ClipperLib8IntPointESaIS1_EE11_M_allocateEm.exit.i164.us, !llvm.loop !309

end_hunk_42
begin_hunk_43
  br label %bb.ap

._crit_edge308:                                   ; preds = %._crit_edge306.us, %.preheader.lr.ph, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit162
  %i.lx = load ptr, ptr %6, align 8               ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lx, %i.lz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i
end_hunk_43
begin_hunk_44
  br i1 %.not.i.i.i163, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !51

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge308
end_hunk_44
begin_hunk_45
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

.split316.us.invoke:                              ; preds = %bb.ae, %bb.ab
end_hunk_45
begin_hunk_46

bb.ap:                                            ; preds = %.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.mm = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i229 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, label %bb.aq

end_hunk_46
begin_hunk_47
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ar

.noexc.i.i.i241:                                  ; preds = %bb.ak
end_hunk_47
begin_hunk_48

bb.ar:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98, %bb.c
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit98 ], [ %lpad.phi, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit230 ], [ %i.ac, %bb.c ], [ %.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit145 ]
  call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  resume { ptr, i32 } %.pn76.pn
}

end_hunk_48
