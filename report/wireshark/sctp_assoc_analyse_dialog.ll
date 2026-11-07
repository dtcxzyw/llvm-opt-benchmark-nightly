Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/sctp_assoc_analyse_dialog?download=true
inline.NumInlined: 817
inline.NumDeleted: 160
begin_hunk_0_@_ZN22SCTPAssocAnalyseDialog8fillTabsEPK16_sctp_assoc_info:bb.a

_ZN7QStringD2Ev.exit871:                          ; preds = %bb.ja, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i869, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #12
  br label %bb.jp

bb.jc:                                            ; preds = %_ZN7QStringD2Ev.exit813
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit875

bb.jd:                                            ; preds = %_ZNK7QString3argEtii5QChar.exit815
  %i.acv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.acw = load ptr, ptr %73, align 8             ; 2 uses
  %.not.i.i.i872 = icmp eq ptr %i.acw, null
  br i1 %.not.i.i.i872, label %_ZN7QStringD2Ev.exit875, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i873

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i873:   ; preds = %bb.jd
  %i.acx = atomicrmw add ptr %i.acw, i32 -1 acq_rel, align 4
  %.not.i.i874 = icmp eq i32 %i.acx, 1
  br i1 %.not.i.i874, label %bb.je, label %_ZN7QStringD2Ev.exit875

bb.je:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i873
  %i.acy = load ptr, ptr %73, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.acy, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit875

_ZN7QStringD2Ev.exit875:                          ; preds = %bb.je, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i873, %bb.jd, %bb.jc
  %.pn129 = phi { ptr, i32 } [ %i.acu, %bb.jc ], [ %i.acv, %bb.jd ], [ %i.acv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i873 ], [ %i.acv, %bb.je ]
  %i.acz = load ptr, ptr %74, align 8             ; 2 uses
  %.not.i.i.i876 = icmp eq ptr %i.acz, null
  br i1 %.not.i.i.i876, label %_ZN17QArrayDataPointerIDsED2Ev.exit883, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877:   ; preds = %_ZN7QStringD2Ev.exit875
  %i.ada = atomicrmw add ptr %i.acz, i32 -1 acq_rel, align 4
  %.not.i.i878 = icmp eq i32 %i.ada, 1
  br i1 %.not.i.i878, label %bb.jf, label %_ZN17QArrayDataPointerIDsED2Ev.exit883

bb.jf:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877
  %i.adb = load ptr, ptr %74, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.adb, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit883

_ZN17QArrayDataPointerIDsED2Ev.exit883:           ; preds = %bb.jf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877, %_ZN7QStringD2Ev.exit875
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #12
  br label %bb.jp

bb.jg:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit827
  %i.adc = landingpad { ptr, i32 }
          cleanup
  %i.add = load ptr, ptr %75, align 16            ; 2 uses
  %.not.i.i.i884 = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i884, label %_ZN7QStringD2Ev.exit887, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i885

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i885:   ; preds = %bb.jg
  %i.ade = atomicrmw add ptr %i.add, i32 -1 acq_rel, align 4
  %.not.i.i886 = icmp eq i32 %i.ade, 1
  br i1 %.not.i.i886, label %bb.jh, label %_ZN7QStringD2Ev.exit887

bb.jh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i885
  %i.adf = load ptr, ptr %75, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.adf, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit887

_ZN7QStringD2Ev.exit887:                          ; preds = %bb.jg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i885, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #12
  br label %bb.jp

bb.ji:                                            ; preds = %_ZN7QStringD2Ev.exit833
  %i.adg = landingpad { ptr, i32 }
          cleanup
  %i.adh = load ptr, ptr %76, align 16            ; 2 uses
  %.not.i.i.i888 = icmp eq ptr %i.adh, null
  br i1 %.not.i.i.i888, label %_ZN7QStringD2Ev.exit891, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i889

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i889:   ; preds = %bb.ji
  %i.adi = atomicrmw add ptr %i.adh, i32 -1 acq_rel, align 4
  %.not.i.i890 = icmp eq i32 %i.adi, 1
  br i1 %.not.i.i890, label %bb.jj, label %_ZN7QStringD2Ev.exit891

bb.jj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i889
  %i.adj = load ptr, ptr %76, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.adj, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit891

_ZN7QStringD2Ev.exit891:                          ; preds = %bb.ji, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i889, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #12
  br label %bb.jp

bb.jk:                                            ; preds = %_ZN7QStringD2Ev.exit839
  %i.adk = landingpad { ptr, i32 }
          cleanup
  %i.adl = load ptr, ptr %77, align 16            ; 2 uses
  %.not.i.i.i892 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i892, label %_ZN7QStringD2Ev.exit895, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i893

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i893:   ; preds = %bb.jk
  %i.adm = atomicrmw add ptr %i.adl, i32 -1 acq_rel, align 4
  %.not.i.i894 = icmp eq i32 %i.adm, 1
  br i1 %.not.i.i894, label %bb.jl, label %_ZN7QStringD2Ev.exit895

bb.jl:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i893
  %i.adn = load ptr, ptr %77, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.adn, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit895

_ZN7QStringD2Ev.exit895:                          ; preds = %bb.jk, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i893, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #12
  br label %bb.jp

bb.jm:                                            ; preds = %_ZN7QStringD2Ev.exit845
  %i.ado = landingpad { ptr, i32 }
          cleanup
  %i.adp = load ptr, ptr %78, align 16            ; 2 uses
  %.not.i.i.i896 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i896, label %_ZN7QStringD2Ev.exit899, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i897

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i897:   ; preds = %bb.jm
  %i.adq = atomicrmw add ptr %i.adp, i32 -1 acq_rel, align 4
  %.not.i.i898 = icmp eq i32 %i.adq, 1
  br i1 %.not.i.i898, label %bb.jn, label %_ZN7QStringD2Ev.exit899

bb.jn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i897
  %i.adr = load ptr, ptr %78, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.adr, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit899

_ZN7QStringD2Ev.exit899:                          ; preds = %bb.jm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i897, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #12
  br label %bb.jp

bb.jo:                                            ; preds = %bb.fn, %bb.ay, %_ZN7QStringD2Ev.exit851, %_ZN17QArrayDataPointerIDsED2Ev.exit703
  ret void

bb.jp:                                            ; preds = %_ZN7QStringD2Ev.exit899, %_ZN7QStringD2Ev.exit895, %_ZN7QStringD2Ev.exit891, %_ZN7QStringD2Ev.exit887, %_ZN17QArrayDataPointerIDsED2Ev.exit883, %_ZN7QStringD2Ev.exit871, %_ZN17QArrayDataPointerIDsED2Ev.exit867, %_ZN7QStringD2Ev.exit855, %_ZN17QArrayDataPointerIDsED2Ev.exit791, %_ZN7QStringD2Ev.exit779, %_ZN17QArrayDataPointerIDsED2Ev.exit775, %_ZN7QStringD2Ev.exit763, %_ZN17QArrayDataPointerIDsED2Ev.exit759, %_ZN7QStringD2Ev.exit747, %_ZN17QArrayDataPointerIDsED2Ev.exit743, %_ZN7QStringD2Ev.exit731, %_ZN17QArrayDataPointerIDsED2Ev.exit727, %_ZN17QArrayDataPointerIDsED2Ev.exit715, %_ZN7QStringD2Ev.exit603, %_ZN7QStringD2Ev.exit592, %_ZN7QStringD2Ev.exit584, %_ZN7QStringD2Ev.exit576, %_ZN7QStringD2Ev.exit572, %_ZN7QStringD2Ev.exit568, %_ZN7QStringD2Ev.exit564, %_ZN17QArrayDataPointerIDsED2Ev.exit560, %_ZN7QStringD2Ev.exit548, %_ZN17QArrayDataPointerIDsED2Ev.exit544, %_ZN7QStringD2Ev.exit532, %_ZN17QArrayDataPointerIDsED2Ev.exit468, %_ZN7QStringD2Ev.exit456, %_ZN17QArrayDataPointerIDsED2Ev.exit452, %_ZN7QStringD2Ev.exit440, %_ZN17QArrayDataPointerIDsED2Ev.exit436, %_ZN7QStringD2Ev.exit424, %_ZN17QArrayDataPointerIDsED2Ev.exit420, %_ZN7QStringD2Ev.exit408, %_ZN17QArrayDataPointerIDsED2Ev.exit404, %_ZN17QArrayDataPointerIDsED2Ev.exit392, %_ZN7QStringD2Ev.exit281, %_ZN7QStringD2Ev.exit272, %_ZN7QStringD2Ev.exit264, %_ZN7QStringD2Ev.exit256, %_ZN17QArrayDataPointerIDsED2Ev.exit252, %_ZN17QArrayDataPointerIDsED2Ev.exit240, %_ZN17QArrayDataPointerIDsED2Ev.exit228, %_ZN17QArrayDataPointerIDsED2Ev.exit216, %_ZN7QStringD2Ev.exit204
  %.pn141 = phi { ptr, i32 } [ %i.ez, %_ZN7QStringD2Ev.exit281 ], [ %i.sf, %_ZN7QStringD2Ev.exit603 ], [ %.pn137, %_ZN17QArrayDataPointerIDsED2Ev.exit791 ], [ %i.yt, %_ZN7QStringD2Ev.exit779 ], [ %.pn135, %_ZN17QArrayDataPointerIDsED2Ev.exit775 ], [ %i.yh, %_ZN7QStringD2Ev.exit763 ], [ %.pn133, %_ZN17QArrayDataPointerIDsED2Ev.exit759 ], [ %i.xv, %_ZN7QStringD2Ev.exit747 ], [ %.pn131, %_ZN17QArrayDataPointerIDsED2Ev.exit743 ], [ %i.xj, %_ZN7QStringD2Ev.exit731 ], [ %i.ado, %_ZN7QStringD2Ev.exit899 ], [ %i.adk, %_ZN7QStringD2Ev.exit895 ], [ %i.adg, %_ZN7QStringD2Ev.exit891 ], [ %i.adc, %_ZN7QStringD2Ev.exit887 ], [ %.pn129, %_ZN17QArrayDataPointerIDsED2Ev.exit883 ], [ %i.acq, %_ZN7QStringD2Ev.exit871 ], [ %.pn127, %_ZN17QArrayDataPointerIDsED2Ev.exit867 ], [ %i.ace, %_ZN7QStringD2Ev.exit855 ], [ %.pn124, %_ZN17QArrayDataPointerIDsED2Ev.exit727 ], [ %.pn122, %_ZN17QArrayDataPointerIDsED2Ev.exit715 ], [ %i.re, %_ZN7QStringD2Ev.exit584 ], [ %i.ro, %_ZN7QStringD2Ev.exit592 ], [ %.pn117, %_ZN17QArrayDataPointerIDsED2Ev.exit468 ], [ %i.lr, %_ZN7QStringD2Ev.exit456 ], [ %.pn115, %_ZN17QArrayDataPointerIDsED2Ev.exit452 ], [ %i.lf, %_ZN7QStringD2Ev.exit440 ], [ %.pn113, %_ZN17QArrayDataPointerIDsED2Ev.exit436 ], [ %i.kt, %_ZN7QStringD2Ev.exit424 ], [ %.pn111, %_ZN17QArrayDataPointerIDsED2Ev.exit420 ], [ %i.kh, %_ZN7QStringD2Ev.exit408 ], [ %i.qp, %_ZN7QStringD2Ev.exit576 ], [ %i.ql, %_ZN7QStringD2Ev.exit572 ], [ %i.qh, %_ZN7QStringD2Ev.exit568 ], [ %i.qd, %_ZN7QStringD2Ev.exit564 ], [ %.pn109, %_ZN17QArrayDataPointerIDsED2Ev.exit560 ], [ %i.pr, %_ZN7QStringD2Ev.exit548 ], [ %.pn107, %_ZN17QArrayDataPointerIDsED2Ev.exit544 ], [ %i.pf, %_ZN7QStringD2Ev.exit532 ], [ %.pn104, %_ZN17QArrayDataPointerIDsED2Ev.exit404 ], [ %.pn102, %_ZN17QArrayDataPointerIDsED2Ev.exit392 ], [ %i.dk, %_ZN7QStringD2Ev.exit256 ], [ %i.dy, %_ZN7QStringD2Ev.exit264 ], [ %i.ei, %_ZN7QStringD2Ev.exit272 ], [ %.pn98, %_ZN17QArrayDataPointerIDsED2Ev.exit252 ], [ %.pn96, %_ZN17QArrayDataPointerIDsED2Ev.exit240 ], [ %.pn94, %_ZN17QArrayDataPointerIDsED2Ev.exit228 ], [ %.pn, %_ZN17QArrayDataPointerIDsED2Ev.exit216 ], [ %i.ca, %_ZN7QStringD2Ev.exit204 ]
  resume { ptr, i32 } %.pn141
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN7QDialogD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN22SCTPAssocAnalyseDialogD2Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64) initializes((0, 8), (16, 24)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV22SCTPAssocAnalyseDialog, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV22SCTPAssocAnalyseDialog, i64 488), ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 544) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7QDialogD2Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40) %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn16_N22SCTPAssocAnalyseDialogD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN22SCTPAssocAnalyseDialogD1Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64) %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN22SCTPAssocAnalyseDialogD0Ev(ptr noundef align 8 dereferenceable_or_null(64) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN22SCTPAssocAnalyseDialogD1Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64) %0) #12
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn16_N22SCTPAssocAnalyseDialogD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN22SCTPAssocAnalyseDialogD1Ev(ptr noundef align 8 dead_on_return(64) dereferenceable_or_null(64) %i.a) #12, !inline_history !19
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(64) %i.a, i64 noundef 64) #13, !inline_history !19
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN22SCTPAssocAnalyseDialog18findAssocForPacketEP13_capture_file(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QMessageBox, align 8         ; 8 uses
  %2 = alloca %class.QString, align 8             ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @sctp_stat_get_info()
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !21, !noundef !7
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @register_tap_listener_sctp_stat()
  %i.g = tail call i32 @cf_retap_packets(ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @sctp_stat_get_info()
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @g_list_first(ptr noundef %i.j) ; 2 uses
  %.not46 = icmp eq ptr %i.k, null
  br i1 %.not46, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.c, %._crit_edge
  %.02647 = phi ptr [ %i.x, %._crit_edge ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.02647, align 8           ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 296
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @g_list_first(ptr noundef %i.n) ; 2 uses
  %.not3344 = icmp eq ptr %i.o, null
  br i1 %.not3344, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph49
  %i.p = load i32, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.02545 = phi ptr [ %i.o, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %.02545, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp eq i32 %i.p, %i.s
  br i1 %i.t, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %.02545, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %._crit_edge, label %bb.d, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.e, %.lr.ph49
  %i.w = getelementptr i8, ptr %.02647, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %._crit_edge50, label %.lr.ph49

._crit_edge50:                                    ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_ZN11QMessageBoxC1EP7QWidget(ptr noundef nonnull align 8 dereferenceable_or_null(40) %1, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef align 8 dereferenceable_or_null(56) @_ZN22SCTPAssocAnalyseDialog16staticMetaObjectE, ptr noundef @.str.1, ptr noundef null, i32 noundef -1)
          to label %_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit unwind label %bb.i

_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit:      ; preds = %._crit_edge50
  invoke void @_ZN11QMessageBox7setTextERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.f
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.z, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.aa = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.ab = invoke noundef i32 @_ZN7QDialog4execEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %1)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %_ZN7QStringD2Ev.exit
  call void @_ZN11QMessageBoxD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable_or_null(40) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %.thread40

bb.i:                                             ; preds = %._crit_edge50
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit37

bb.j:                                             ; preds = %_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i34, label %_ZN7QStringD2Ev.exit37, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35:    ; preds = %bb.j
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %.not.i.i36 = icmp eq i32 %i.af, 1
  br i1 %.not.i.i36, label %bb.k, label %_ZN7QStringD2Ev.exit37

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35
  %i.ag = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit37

_ZN7QStringD2Ev.exit37:                           ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35 ], [ %i.ad, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.m

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7QStringD2Ev.exit37
  %.pn31 = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn, %_ZN7QStringD2Ev.exit37 ]
  call void @_ZN11QMessageBoxD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable_or_null(40) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn31

.thread40:                                        ; preds = %bb.d, %bb.h
  %.2 = phi ptr [ null, %bb.h ], [ %i.l, %bb.d ]
  ret ptr %.2
}

; Function Attrs: null_pointer_is_valid
declare ptr @sctp_stat_get_info() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @register_tap_listener_sctp_stat() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @cf_retap_packets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QMessageBoxC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QMessageBox7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZN7QDialog4execEv(ptr noundef align 8 dereferenceable_or_null(40)) unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QMessageBoxD1Ev(ptr noundef align 8 dead_on_return(40) dereferenceable_or_null(40)) unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN22SCTPAssocAnalyseDialog9findAssocEP7QWidgett(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %i.a = tail call ptr @get_sctp_assoc_info(i16 noundef zeroext %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef align 8 dereferenceable_or_null(56) @_ZN22SCTPAssocAnalyseDialog16staticMetaObjectE, ptr noundef @.str.2, ptr noundef null, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef align 8 dereferenceable_or_null(56) @_ZN22SCTPAssocAnalyseDialog16staticMetaObjectE, ptr noundef @.str.3, ptr noundef null, i32 noundef -1)
          to label %_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit unwind label %bb.g

_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit:      ; preds = %bb.b
  %i.b = zext i16 %1 to i64
  invoke void @_ZNK7QString3argEyii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i64 noundef %i.b, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEtii5QChar.exit unwind label %bb.h

_ZNK7QString3argEtii5QChar.exit:                  ; preds = %_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit
  %i.c = invoke noundef i32 @_ZN11QMessageBox7warningEP7QWidgetRK7QStringS4_6QFlagsINS_14StandardButtonEES6_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 1024, i32 noundef 0)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %_ZNK7QString3argEtii5QChar.exit
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.e = atomicrmw add ptr %i.d, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.f = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.f, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i13, label %_ZN7QStringD2Ev.exit16, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14:    ; preds = %_ZN7QStringD2Ev.exit
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %.not.i.i15 = icmp eq i32 %i.h, 1
  br i1 %.not.i.i15, label %bb.e, label %_ZN7QStringD2Ev.exit16

bb.e:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14
  %i.i = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit16

_ZN7QStringD2Ev.exit16:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i17, label %_ZN7QStringD2Ev.exit20, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18:    ; preds = %_ZN7QStringD2Ev.exit16
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %.not.i.i19 = icmp eq i32 %i.k, 1
  br i1 %.not.i.i19, label %bb.f, label %_ZN7QStringD2Ev.exit20

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18
  %i.l = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit20

_ZN7QStringD2Ev.exit20:                           ; preds = %_ZN7QStringD2Ev.exit16, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit28

bb.h:                                             ; preds = %_ZN22SCTPAssocAnalyseDialog2trEPKcS1_i.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit24

bb.i:                                             ; preds = %_ZNK7QString3argEtii5QChar.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i21, label %_ZN7QStringD2Ev.exit24, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i22:    ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZN25Ui_SCTPAssocAnalyseDialog13retranslateUiEP7QDialog:bb.a
  br i1 %.not.i.i395, label %bb.gq, label %_ZN7QStringD2Ev.exit396

bb.gq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i394
  %i.qi = load ptr, ptr %48, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qi, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit396

_ZN7QStringD2Ev.exit396:                          ; preds = %bb.gp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i394, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #12
  br label %bb.hb

bb.gr:                                            ; preds = %_ZN7QStringD2Ev.exit188
  %i.qj = landingpad { ptr, i32 }
          cleanup
  %i.qk = load ptr, ptr %49, align 8              ; 2 uses
  %.not.i.i.i397 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i397, label %_ZN7QStringD2Ev.exit400, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i398

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i398:   ; preds = %bb.gr
  %i.ql = atomicrmw add ptr %i.qk, i32 -1 acq_rel, align 4
  %.not.i.i399 = icmp eq i32 %i.ql, 1
  br i1 %.not.i.i399, label %bb.gs, label %_ZN7QStringD2Ev.exit400

bb.gs:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i398
  %i.qm = load ptr, ptr %49, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qm, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit400

_ZN7QStringD2Ev.exit400:                          ; preds = %bb.gr, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i398, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #12
  br label %bb.hb

bb.gt:                                            ; preds = %_ZN7QStringD2Ev.exit192
  %i.qn = landingpad { ptr, i32 }
          cleanup
  %i.qo = load ptr, ptr %50, align 8              ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i401, label %_ZN7QStringD2Ev.exit404, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i402

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i402:   ; preds = %bb.gt
  %i.qp = atomicrmw add ptr %i.qo, i32 -1 acq_rel, align 4
  %.not.i.i403 = icmp eq i32 %i.qp, 1
  br i1 %.not.i.i403, label %bb.gu, label %_ZN7QStringD2Ev.exit404

bb.gu:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i402
  %i.qq = load ptr, ptr %50, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qq, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit404

_ZN7QStringD2Ev.exit404:                          ; preds = %bb.gt, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i402, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #12
  br label %bb.hb

bb.gv:                                            ; preds = %_ZN7QStringD2Ev.exit196
  %i.qr = landingpad { ptr, i32 }
          cleanup
  %i.qs = load ptr, ptr %51, align 8              ; 2 uses
  %.not.i.i.i405 = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i405, label %_ZN7QStringD2Ev.exit408, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i406

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i406:   ; preds = %bb.gv
  %i.qt = atomicrmw add ptr %i.qs, i32 -1 acq_rel, align 4
  %.not.i.i407 = icmp eq i32 %i.qt, 1
  br i1 %.not.i.i407, label %bb.gw, label %_ZN7QStringD2Ev.exit408

bb.gw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i406
  %i.qu = load ptr, ptr %51, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qu, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit408

_ZN7QStringD2Ev.exit408:                          ; preds = %bb.gv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i406, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #12
  br label %bb.hb

bb.gx:                                            ; preds = %_ZN7QStringD2Ev.exit200
  %i.qv = landingpad { ptr, i32 }
          cleanup
  %i.qw = load ptr, ptr %52, align 8              ; 2 uses
  %.not.i.i.i409 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i409, label %_ZN7QStringD2Ev.exit412, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i410

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i410:   ; preds = %bb.gx
  %i.qx = atomicrmw add ptr %i.qw, i32 -1 acq_rel, align 4
  %.not.i.i411 = icmp eq i32 %i.qx, 1
  br i1 %.not.i.i411, label %bb.gy, label %_ZN7QStringD2Ev.exit412

bb.gy:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i410
  %i.qy = load ptr, ptr %52, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.qy, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit412

_ZN7QStringD2Ev.exit412:                          ; preds = %bb.gx, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i410, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #12
  br label %bb.hb

bb.gz:                                            ; preds = %_ZN7QStringD2Ev.exit204
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %53, align 8              ; 2 uses
  %.not.i.i.i413 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.i413, label %_ZN7QStringD2Ev.exit416, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i414

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i414:   ; preds = %bb.gz
  %i.rb = atomicrmw add ptr %i.ra, i32 -1 acq_rel, align 4
  %.not.i.i415 = icmp eq i32 %i.rb, 1
  br i1 %.not.i.i415, label %bb.ha, label %_ZN7QStringD2Ev.exit416

bb.ha:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i414
  %i.rc = load ptr, ptr %53, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rc, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit416

_ZN7QStringD2Ev.exit416:                          ; preds = %bb.gz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i414, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #12
  br label %bb.hb

bb.hb:                                            ; preds = %_ZN7QStringD2Ev.exit416, %_ZN7QStringD2Ev.exit412, %_ZN7QStringD2Ev.exit408, %_ZN7QStringD2Ev.exit404, %_ZN7QStringD2Ev.exit400, %_ZN7QStringD2Ev.exit396, %_ZN7QStringD2Ev.exit392, %_ZN7QStringD2Ev.exit388, %_ZN7QStringD2Ev.exit384, %_ZN7QStringD2Ev.exit380, %_ZN7QStringD2Ev.exit376, %_ZN7QStringD2Ev.exit372, %_ZN7QStringD2Ev.exit368, %_ZN7QStringD2Ev.exit364, %_ZN7QStringD2Ev.exit360, %_ZN7QStringD2Ev.exit356, %_ZN7QStringD2Ev.exit352, %_ZN7QStringD2Ev.exit348, %_ZN7QStringD2Ev.exit344, %_ZN7QStringD2Ev.exit340, %_ZN7QStringD2Ev.exit336, %_ZN7QStringD2Ev.exit332, %_ZN7QStringD2Ev.exit328, %_ZN7QStringD2Ev.exit324, %_ZN7QStringD2Ev.exit320, %_ZN7QStringD2Ev.exit316, %_ZN7QStringD2Ev.exit312, %_ZN7QStringD2Ev.exit308, %_ZN7QStringD2Ev.exit304, %_ZN7QStringD2Ev.exit300, %_ZN7QStringD2Ev.exit296, %_ZN7QStringD2Ev.exit292, %_ZN7QStringD2Ev.exit288, %_ZN7QStringD2Ev.exit284, %_ZN7QStringD2Ev.exit280, %_ZN7QStringD2Ev.exit276, %_ZN7QStringD2Ev.exit272, %_ZN7QStringD2Ev.exit268, %_ZN7QStringD2Ev.exit264, %_ZN7QStringD2Ev.exit260, %_ZN7QStringD2Ev.exit256, %_ZN7QStringD2Ev.exit252, %_ZN7QStringD2Ev.exit248, %_ZN7QStringD2Ev.exit244, %_ZN7QStringD2Ev.exit240, %_ZN7QStringD2Ev.exit236, %_ZN7QStringD2Ev.exit232, %_ZN7QStringD2Ev.exit228, %_ZN7QStringD2Ev.exit224, %_ZN7QStringD2Ev.exit220, %_ZN7QStringD2Ev.exit216, %_ZN7QStringD2Ev.exit212
  %.pn = phi { ptr, i32 } [ %i.qz, %_ZN7QStringD2Ev.exit416 ], [ %i.qv, %_ZN7QStringD2Ev.exit412 ], [ %i.qr, %_ZN7QStringD2Ev.exit408 ], [ %i.qn, %_ZN7QStringD2Ev.exit404 ], [ %i.qj, %_ZN7QStringD2Ev.exit400 ], [ %i.qf, %_ZN7QStringD2Ev.exit396 ], [ %i.qb, %_ZN7QStringD2Ev.exit392 ], [ %i.px, %_ZN7QStringD2Ev.exit388 ], [ %i.pt, %_ZN7QStringD2Ev.exit384 ], [ %i.pp, %_ZN7QStringD2Ev.exit380 ], [ %i.pl, %_ZN7QStringD2Ev.exit376 ], [ %i.ph, %_ZN7QStringD2Ev.exit372 ], [ %i.pd, %_ZN7QStringD2Ev.exit368 ], [ %i.oz, %_ZN7QStringD2Ev.exit364 ], [ %i.ov, %_ZN7QStringD2Ev.exit360 ], [ %i.or, %_ZN7QStringD2Ev.exit356 ], [ %i.on, %_ZN7QStringD2Ev.exit352 ], [ %i.oj, %_ZN7QStringD2Ev.exit348 ], [ %i.of, %_ZN7QStringD2Ev.exit344 ], [ %i.ob, %_ZN7QStringD2Ev.exit340 ], [ %i.nx, %_ZN7QStringD2Ev.exit336 ], [ %i.nt, %_ZN7QStringD2Ev.exit332 ], [ %i.np, %_ZN7QStringD2Ev.exit328 ], [ %i.nl, %_ZN7QStringD2Ev.exit324 ], [ %i.nh, %_ZN7QStringD2Ev.exit320 ], [ %i.nd, %_ZN7QStringD2Ev.exit316 ], [ %i.mz, %_ZN7QStringD2Ev.exit312 ], [ %i.mv, %_ZN7QStringD2Ev.exit308 ], [ %i.mr, %_ZN7QStringD2Ev.exit304 ], [ %i.mn, %_ZN7QStringD2Ev.exit300 ], [ %i.mj, %_ZN7QStringD2Ev.exit296 ], [ %i.mf, %_ZN7QStringD2Ev.exit292 ], [ %i.mb, %_ZN7QStringD2Ev.exit288 ], [ %i.lx, %_ZN7QStringD2Ev.exit284 ], [ %i.lt, %_ZN7QStringD2Ev.exit280 ], [ %i.lp, %_ZN7QStringD2Ev.exit276 ], [ %i.ll, %_ZN7QStringD2Ev.exit272 ], [ %i.lh, %_ZN7QStringD2Ev.exit268 ], [ %i.ld, %_ZN7QStringD2Ev.exit264 ], [ %i.kz, %_ZN7QStringD2Ev.exit260 ], [ %i.kv, %_ZN7QStringD2Ev.exit256 ], [ %i.kr, %_ZN7QStringD2Ev.exit252 ], [ %i.kn, %_ZN7QStringD2Ev.exit248 ], [ %i.kj, %_ZN7QStringD2Ev.exit244 ], [ %i.kf, %_ZN7QStringD2Ev.exit240 ], [ %i.kb, %_ZN7QStringD2Ev.exit236 ], [ %i.jx, %_ZN7QStringD2Ev.exit232 ], [ %i.jt, %_ZN7QStringD2Ev.exit228 ], [ %i.jp, %_ZN7QStringD2Ev.exit224 ], [ %i.jl, %_ZN7QStringD2Ev.exit220 ], [ %i.jh, %_ZN7QStringD2Ev.exit216 ], [ %i.jd, %_ZN7QStringD2Ev.exit212 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN16QDialogButtonBox7clickedEP15QAbstractButton(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZN7QWidget5closeEv(ptr noundef align 8 dereferenceable_or_null(40)) #1

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QTabWidget15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QMetaObject18connectSlotsByNameEP7QObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QWidget6resizeERK5QSize(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN16QCoreApplication9translateEPKcS1_S1_i(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN15QAbstractButton7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QTabWidget10setTabTextEiRK7QString(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK10QTabWidget7indexOfEPK7QWidget(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind writable sret(%"class.QMetaObject::Connection") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN9QtPrivate11QSlotObjectIM7QWidgetFbvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #13
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.unpack12 = load i64, ptr %i.b, align 8        ; 3 uses
  %.elt13 = getelementptr i8, ptr %1, i64 24
  %.unpack14 = load i64, ptr %.elt13, align 8
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.unpack14 ; 2 uses
  %i.d = and i64 %.unpack12, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack12
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !7
  br label %_ZN9QtPrivate15FunctionPointerIM7QWidgetFbvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

bb.f:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %.unpack12 to ptr
  br label %_ZN9QtPrivate15FunctionPointerIM7QWidgetFbvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

_ZN9QtPrivate15FunctionPointerIM7QWidgetFbvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit: ; preds = %bb.e, %bb.f
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef align 8 dereferenceable_or_null(40) %i.c), !inline_history !22 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %.unpack = load i64, ptr %3, align 8            ; 2 uses
  %.elt7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.unpack8 = load i64, ptr %.elt7, align 8
  %i.l = getelementptr i8, ptr %1, i64 16
  %.unpack9 = load i64, ptr %i.l, align 8
  %.elt10 = getelementptr i8, ptr %1, i64 24
  %.unpack11 = load i64, ptr %.elt10, align 8
  %i.m = icmp eq i64 %.unpack, %.unpack9
  %i.n = icmp eq i64 %.unpack, 0
  %i.o = icmp eq i64 %.unpack8, %.unpack11
  %i.p = or i1 %i.n, %i.o
  %i.q = and i1 %i.m, %i.p
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %4, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g, %_ZN9QtPrivate15FunctionPointerIM7QWidgetFbvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argEyii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind writable sret(%class.QString) align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QListWidget10insertItemEiRK7QString(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK11QListWidget5countEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{}
!8 = distinct !{!8, i1 true, !"_ZN7QObject7connectIM16QDialogButtonBoxFvP15QAbstractButtonEM7QWidgetFbvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!9 = distinct !{!9, !8, !"_ZN7QObject7connectIM16QDialogButtonBoxFvP15QAbstractButtonEM7QWidgetFbvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!10 = distinct !{!10, i1 true, !"_ZN7QObject7connectIM16QDialogButtonBoxFvP15QAbstractButtonEM7QWidgetFbvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!11 = distinct !{!11, !10, !"_ZN7QObject7connectIM16QDialogButtonBoxFvP15QAbstractButtonEM7QWidgetFbvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!12 = distinct !{!12, i1 true, !"_ZN7QObject7connectIM16QDialogButtonBoxFvP15QAbstractButtonEM7QWidgetFbvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE"}
!13 = distinct !{!13, !12, !"_ZN7QObject7connectIM16QDialogButtonBoxFvP15QAbstractButtonEM7QWidgetFbvEEEN11QMetaObject10ConnectionEPKN9QtPrivate15FunctionPointerIT_E6ObjectESD_PKNSC_IT0_E6ObjectESI_N2Qt14ConnectionTypeE: argument 0"}
!14 = !{!9}
!15 = !{!11}
!16 = !{!13}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = !{ptr @_ZN22SCTPAssocAnalyseDialogD0Ev}
!20 = distinct !{!20, !6}
!21 = !{i8 0, i8 2}
!22 = distinct !{null, null}
end_hunk_1
