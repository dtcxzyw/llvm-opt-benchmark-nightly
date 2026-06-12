inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.ss to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sw) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !34
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.ay, %bb.ap, %.thread153.i
  %.pn78156.i = phi { ptr, i32 } [ %i.cg, %.thread153.i ], [ %.pn72.i, %bb.ap ], [ %i.jg, %bb.ay ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit160.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp161.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #20
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i: ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp.i
  %.pn78.pn.i = phi { ptr, i32 } [ %.pn78156.i, %.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sx = load ptr, ptr %6, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i138.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i138.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i
  %i.sy = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i: ; preds = %bb.cs, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, %.lr.ph.split
  %i.tc = phi i32 [ %.pre, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i ], [ %i.am, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.td = sext i32 %i.tc to i64
  %i.te = icmp slt i64 %indvars.iv.next, %i.td
  br i1 %i.te, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !177

bb.ct:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 0, ptr nonnull @.str.7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, ptr noundef nonnull %3)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit unwind label %.loopexit.split-lp30

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit: ; preds = %bb.ct
  %.val17 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.tf = icmp eq i64 %.val17, 0
  br i1 %i.tf, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit
  %.val16 = load ptr, ptr %9, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val16), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, %bb.b
  ret void

.body:                                            ; preds = %.loopexit29, %.loopexit.split-lp30, %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i
  %.pn = phi { ptr, i32 } [ %.pn78.pn.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i ], [ %i.al, %bb.d ], [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ]
  %.val15 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.tg = icmp eq i64 %.val15, 0
  br i1 %i.tg, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24, label %bb.cw

bb.cw:                                            ; preds = %.body
  %.val = load ptr, ptr %9, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24: ; preds = %.body, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil17IsPathInFieldMaskESt17basic_string_viewIcSt11char_traitsIcEERKNS0_9FieldMaskE(i64 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr100 = freeze i64 %0                         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %.fr = freeze ptr %i.e                          ; 3 uses
  %i.f = ptrtoint ptr %.fr to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = add i64 %i.f, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = icmp eq i64 %.fr100, 0
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count117 = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader
  %indvars.iv114 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next115, %.lr.ph.split.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv114
  %.0.i.i.i.i.i.us = select i1 %i.h, ptr %i.d, ptr %i.m
  %i.n = load ptr, ptr %.0.i.i.i.i.i.us, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  %or.cond = select i1 %i.q, i1 true, i1 %exitcond118.not
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.us, !llvm.loop !179

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.h, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.r = load ptr, ptr %.fr, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  %.fr102 = freeze i64 %i.t                       ; 5 uses
  %i.u = icmp ult i64 %.fr102, %.fr100
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.fr102 ; 2 uses
  br i1 %i.u, label %.lr.ph.split.split.us.split.us.split, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us.split:             ; preds = %.lr.ph.split.split.us
  %i.w = icmp eq i64 %.fr102, 0
  br i1 %i.w, label %.lr.ph.split.split.us.split.us.split.split.us, label %.lr.ph.split.split.us.split.us.split.split

.lr.ph.split.split.us.split.us.split.split.us:    ; preds = %.lr.ph.split.split.us.split.us.split
  %lhsc.us50.us.us74 = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %lhsc.us50.us.us74, 46
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split.us.split.split:       ; preds = %.lr.ph.split.split.us.split.us.split
  %bcmp.i.i.i.us48.us = tail call i32 @bcmp(ptr %1, ptr %i.r, i64 %.fr102)
  %i.y = icmp eq i32 %bcmp.i.i.i.us48.us, 0
  br i1 %i.y, label %.lr.ph.split.split.us.split.us.split.split.split.us, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.us.split.us.split.split
  %lhsc.us50.us.us83 = load i8, ptr %i.v, align 1
  %i.z = icmp eq i8 %lhsc.us50.us.us83, 46
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.aa = icmp eq i64 %.fr100, %.fr102
  br i1 %i.aa, label %.lr.ph.split.split.us.split.split.us, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split.split.us:             ; preds = %.lr.ph.split.split.us.split
  %bcmp.i.us.us63 = tail call i32 @bcmp(ptr %1, ptr %i.r, i64 %.fr100)
  %i.ab = icmp eq i32 %bcmp.i.us.us63, 0
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !30 ; 5 uses
  %i.ah = icmp eq i64 %.fr100, %i.ag
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph.split.split
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.ae, i64 %.fr100)
  %i.ai = icmp eq i32 %bcmp.i, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aj = icmp ult i64 %i.ag, %.fr100
  br i1 %i.aj, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq i64 %i.ag, 0
  br i1 %i.ak, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.c
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.ae, i64 %i.ag)
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.al, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, label %.critedge

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19: ; preds = %bb.c, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %lhsc = load i8, ptr %i.am, align 1
  %i.an = icmp eq i8 %lhsc, 46
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.critedge

.critedge:                                        ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.split, !llvm.loop !179

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %.critedge, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph.split.us, %.lr.ph.split.split.us.split.split.us, %.lr.ph.split.split.us.split.us.split.split.split.us, %.lr.ph.split.split.us.split.us.split.split.us, %.lr.ph.split.split.us.split.us.split.split, %.lr.ph.split.split.us.split, %bb.a
  %i.ao = phi i1 [ %i.z, %.lr.ph.split.split.us.split.us.split.split.split.us ], [ %i.ab, %.lr.ph.split.split.us.split.split.us ], [ false, %bb.a ], [ false, %.lr.ph.split.split.us.split.us.split.split ], [ %i.q, %.lr.ph.split.us ], [ %i.x, %.lr.ph.split.split.us.split.us.split.split.us ], [ false, %.lr.ph.split.split.us.split ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ false, %.critedge ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19 ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil14MergeMessageToERKNS0_7MessageERKNS0_9FieldMaskERKNS2_12MergeOptionsEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 10 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %.not.not = icmp eq ptr %i.b, %i.d
  br i1 %.not.not, label %.critedge, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.2, i32 noundef 673, ptr noundef nonnull @.str.3) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  unreachable

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %5, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.f, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

.lr.ph.i:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  %i.p = add i64 %i.m, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.o, ptr %i.k, ptr %i.s
  %i.t = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %i.w, ptr %i.u)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !34
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %bb.d, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !95

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc
  %.val.i.pr = load i64, ptr %i.g, align 8, !tbaa !94
  %i.aa = icmp eq i64 %.val.i.pr, 0
  br i1 %i.aa, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageEPKNS3_4NodeERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS7_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 1 dereferenceable(2) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %.val15 = load ptr, ptr %5, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val15), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %.critedge, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.thread:                                          ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val14.pre = load i64, ptr %i.g, align 8, !tbaa !94
  %i.ab = icmp eq i64 %.val14.pre, 0
  br i1 %i.ab, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit18, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %lpad.phi24 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %lpad.loopexit, %bb.g ]
  %.val = load ptr, ptr %5, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit18

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit18: ; preds = %bb.g, %bb.h
  %lpad.phi25 = phi { ptr, i32 } [ %lpad.loopexit, %bb.g ], [ %lpad.phi24, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %lpad.phi25
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil11TrimMessageERKNS0_9FieldMaskEPNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %2, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.j, ptr %i.f, ptr %i.n
  %i.o = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.r, ptr %i.p)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !34
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !95

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc, %bb.a
  %i.v = icmp eq ptr %1, null
  br i1 %i.v, label %bb.c, label %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit, !prof !26

bb.c:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke void @_ZN4absl12lts_2025051212log_internal14DieBecauseNullEPKciS3_(ptr noundef nonnull @.str.2, i32 noundef 686, ptr noundef nonnull @.str.4) #21
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.c
  unreachable

_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !94
  %i.w = icmp eq i64 %.val.i, 0
  br i1 %i.w, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit
  %i.x = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPKNS3_4NodeEPNS0_7MessageE(ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef %1)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %.val3 = load ptr, ptr %2, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val3), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit, %bb.e
  %.0.i11 = phi i1 [ %i.x, %bb.e ], [ false, %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %.0.i11

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.c, %bb.d
end_hunk_0
