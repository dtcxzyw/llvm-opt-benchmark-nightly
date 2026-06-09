inline.NumInlined: 403
inline.NumDeleted: 225
begin_hunk_0_@_ZN8facebook5velox11DecimalUtil30parseStringToDecimalComponentsERKNS0_10StringViewEiRiS5_Rn:bb.a
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %21, align 8, !tbaa !23, !noalias !82 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i97.i: ; preds = %bb.af
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !13, !noalias !82
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i98.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !82
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !79
  br label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit

_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit: ; preds = %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i, %bb.z, %bb.ac, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i
  %.sroa.22.2.ph = phi ptr [ %.sroa.22.1, %bb.ac ], [ %.sroa.22.1, %bb.z ], [ %.sroa.22.1, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i ], [ %.sroa.22.1, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i ], [ %.sroa.22.1, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i ], [ null, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i ], [ null, %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i ]
  %.sroa.37.1.ph = phi i8 [ %.sroa.37.0, %bb.ac ], [ %.sroa.37.0, %bb.z ], [ %.sroa.37.0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i ], [ %.sroa.37.0, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i ], [ %.sroa.37.0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i ], [ %.sroa.37.0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i ], [ 1, %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i ]
  %.sroa.13.2.ph = phi i64 [ %.sroa.13.1, %bb.ac ], [ %.sroa.13.1, %bb.z ], [ %.sroa.13.1, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i ], [ %.sroa.13.1, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i ], [ %.sroa.13.1, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i ], [ 0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i ], [ 0, %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i ]
  %.sroa.9.1.ph = phi ptr [ %i.ab, %bb.ac ], [ %i.ab, %bb.z ], [ %i.ab, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i ], [ %i.ab, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i ], [ %i.ab, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i ], [ %.sroa.9.0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i ], [ null, %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i ]
  %.sroa.0113.1.ph = phi i64 [ %i.ac, %bb.ac ], [ %i.ac, %bb.z ], [ %i.ac, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit96.i ], [ %i.ac, %_ZN8facebook5velox6Status9UserErrorIJRA19_KcEEES1_DpOT_.exit.i ], [ 0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit90.i ], [ 0, %_ZN8facebook5velox6Status9UserErrorIJRA28_KcEEES1_DpOT_.exit.i ], [ 0, %_ZN8facebook5velox6Status9UserErrorIJRA16_KcEEES1_DpOT_.exit.i ]
  %.pr = load ptr, ptr %31, align 8, !tbaa !85    ; 3 uses
  %i.dc = icmp eq ptr %.pr, null
  br i1 %i.dc, label %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  %i.dd = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !23, !noalias !88
  %i.df = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !18, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21, !noalias !88
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull @.str, i64 noundef 23, ptr noundef %i.de, i64 noundef %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21, !noalias !88
  %i.dh = load ptr, ptr %32, align 8, !tbaa !23, !noalias !91
  %i.di = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !18, !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21, !noalias !94
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr %i.dh, i64 %i.dj, i64 0, ptr nonnull %19)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.ah
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %18)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc
  %i.dk = load ptr, ptr %18, align 8, !tbaa !23, !noalias !94 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ai
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !13, !noalias !94
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.aj:                                            ; preds = %.noexc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %18, align 8, !tbaa !23, !noalias !94 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.aj
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !13, !noalias !94
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !94
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !91
  %i.dv = load ptr, ptr %32, align 8, !tbaa !23   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !13
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.ea = load ptr, ptr %31, align 8, !tbaa !85
  %.not.i73 = icmp eq ptr %i.ea, null
  br i1 %.not.i73, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.ak, !prof !97

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %.critedge70

bb.al:                                            ; preds = %bb.ag
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.am:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.am ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ] ; 2 uses
  %i.ed = load ptr, ptr %32, align 8, !tbaa !23   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.body
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !13
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.al
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.al ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.ei = load ptr, ptr %31, align 8, !tbaa !85
  %.not.i77 = icmp eq ptr %i.ei, null
  br i1 %.not.i77, label %_ZN8facebook5velox6StatusD2Ev.exit78, label %bb.an, !prof !97

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  br label %_ZN8facebook5velox6StatusD2Ev.exit78

_ZN8facebook5velox6StatusD2Ev.exit78:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread: ; preds = %bb.s, %.critedge.i, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit
  %.sroa.0113.1155 = phi i64 [ %.sroa.0113.1.ph, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit ], [ %i.ac, %.critedge.i ], [ %i.ac, %bb.s ] ; 2 uses
  %.sroa.9.1153 = phi ptr [ %.sroa.9.1.ph, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit ], [ %i.ab, %.critedge.i ], [ %i.ab, %bb.s ] ; 2 uses
  %.sroa.13.2151 = phi i64 [ %.sroa.13.2.ph, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit ], [ %.sroa.13.1, %.critedge.i ], [ %.sroa.13.1, %bb.s ] ; 3 uses
  %.sroa.37.1149 = phi i8 [ %.sroa.37.1.ph, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit ], [ %.sroa.37.0, %.critedge.i ], [ %.sroa.37.0, %bb.s ] ; 2 uses
  %.sroa.32.0147 = phi i64 [ 0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit ], [ %.sroa.0103.0.insert.insert.i, %.critedge.i ], [ 0, %bb.s ] ; 2 uses
  %.sroa.22.2145 = phi ptr [ %.sroa.22.2.ph, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit ], [ %.sroa.22.1, %.critedge.i ], [ %.sroa.22.1, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %.not159 = icmp eq i64 %.sroa.0113.1155, 0
  br i1 %.not159, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread
  %.sroa.22.2145242 = phi ptr [ null, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread ], [ %.sroa.22.2145, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ] ; 3 uses
  %.sroa.32.0147240 = phi i64 [ 0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread ], [ %.sroa.32.0147, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ] ; 3 uses
  %.sroa.37.1149238 = phi i8 [ %.sroa.37.0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread ], [ %.sroa.37.1149, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ] ; 3 uses
  %.sroa.13.2151236 = phi i64 [ 0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread ], [ %.sroa.13.2151, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ] ; 6 uses
  %.sroa.9.1153234 = phi ptr [ %.sroa.9.0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread ], [ %.sroa.9.1153, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ] ; 4 uses
  %.sroa.0113.1155232 = phi i64 [ %.sroa.0113.0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread.thread ], [ %.sroa.0113.1155, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ] ; 5 uses
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %bb.ao
  %.06.i = phi i64 [ %i.em, %bb.ao ], [ 0, %.lr.ph.i82.preheader ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.9.1153234, i64 %.06.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = icmp eq i8 %i.ek, 48
  br i1 %i.el, label %bb.ao, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit

bb.ao:                                            ; preds = %.lr.ph.i82
  %i.em = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %.sroa.0113.1155232
  br i1 %exitcond.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread, label %.lr.ph.i82, !llvm.loop !98

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit: ; preds = %.lr.ph.i82
  %.not = icmp eq i64 %.06.i, -1
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit
  %i.en = add i64 %.sroa.13.2151236, %.sroa.0113.1155232
  %i.eo = sub i64 %i.en, %.06.i
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread: ; preds = %bb.ao, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread, %bb.ap, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit
  %.not159245 = phi i1 [ false, %bb.ap ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ true, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ false, %bb.ao ]
  %.sroa.22.2145243 = phi ptr [ %.sroa.22.2145242, %bb.ap ], [ %.sroa.22.2145242, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ %.sroa.22.2145, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.22.2145242, %bb.ao ] ; 7 uses
  %.sroa.32.0147241 = phi i64 [ %.sroa.32.0147240, %bb.ap ], [ %.sroa.32.0147240, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ %.sroa.32.0147, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.32.0147240, %bb.ao ] ; 2 uses
  %.sroa.37.1149239 = phi i8 [ %.sroa.37.1149238, %bb.ap ], [ %.sroa.37.1149238, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ %.sroa.37.1149, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.37.1149238, %bb.ao ]
  %.sroa.13.2151237 = phi i64 [ %.sroa.13.2151236, %bb.ap ], [ %.sroa.13.2151236, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ %.sroa.13.2151, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.13.2151236, %bb.ao ] ; 3 uses
  %.sroa.9.1153235 = phi ptr [ %.sroa.9.1153234, %bb.ap ], [ %.sroa.9.1153234, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ %.sroa.9.1153, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.9.1153234, %bb.ao ] ; 2 uses
  %.sroa.0113.1155233 = phi i64 [ %.sroa.0113.1155232, %bb.ap ], [ %.sroa.0113.1155232, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ 0, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.0113.1155232, %bb.ao ]
  %.058 = phi i64 [ %i.eo, %bb.ap ], [ %.sroa.13.2151236, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ %.sroa.13.2151, %_ZN8facebook5velox12_GLOBAL__N_122parseDecimalComponentsEPKcmRNS1_17DecimalComponentsE.exit.thread ], [ %.sroa.13.2151236, %bb.ao ]
  %i.ep = trunc i64 %.058 to i32
  store i32 %i.ep, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.eq = trunc i64 %.sroa.13.2151237 to i32      ; 4 uses
  %i.er = and i64 %.sroa.32.0147241, 4294967296
  %.not160 = icmp eq i64 %i.er, 0
  br i1 %.not160, label %bb.aq, label %_ZNRSt8optionalIiE5valueEv.exit

bb.aq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread
  %i.es = icmp slt i32 %2, %i.eq
  br i1 %i.es, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.et = sext i32 %2 to i64                      ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.22.2145243, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13
  %i.ew = icmp sgt i8 %i.ev, 52
  br label %.sink.split

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread
  %.sroa.32.32.extract.trunc = trunc i64 %.sroa.32.0147241 to i32 ; 3 uses
  %i.ex = sub nsw i32 %i.eq, %.sroa.32.32.extract.trunc ; 2 uses
  store i32 %i.ex, ptr %4, align 4, !tbaa !3
  %i.ey = icmp sgt i32 %i.ex, %2
  br i1 %i.ey, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.ez = sub i32 0, %.sroa.32.32.extract.trunc   ; 3 uses
  %.not67 = icmp sgt i32 %2, %i.ez
  br i1 %.not67, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = icmp sgt i32 %i.eq, 0
  br i1 %i.fa, label %bb.au, label %.sink.split

bb.au:                                            ; preds = %bb.at
  %i.fb = load i8, ptr %.sroa.22.2145243, align 1, !tbaa !13
  %i.fc = icmp sgt i8 %i.fb, 52
  br label %.sink.split

bb.av:                                            ; preds = %bb.as
  %i.fd = add nsw i32 %2, %.sroa.32.32.extract.trunc
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.22.2145243, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !13
  %i.fh = icmp sgt i8 %i.fg, 52
  br label %.sink.split

.sink.split:                                      ; preds = %bb.at, %bb.au, %bb.aq, %bb.ar, %bb.av
  %.sink = phi i32 [ %2, %bb.av ], [ %i.eq, %bb.aq ], [ %2, %bb.ar ], [ %i.ez, %bb.au ], [ %i.ez, %bb.at ]
  %.sroa.22.0.ph = phi ptr [ %.sroa.22.2145243, %bb.av ], [ %.sroa.22.2145243, %bb.aq ], [ %.sroa.22.2145243, %bb.ar ], [ @.str.1, %bb.au ], [ @.str.1, %bb.at ]
  %.sroa.13.0.ph = phi i64 [ %i.fe, %bb.av ], [ %.sroa.13.2151237, %bb.aq ], [ %i.et, %bb.ar ], [ 0, %bb.au ], [ 0, %bb.at ]
  %.4.ph = phi i1 [ %i.fh, %bb.av ], [ false, %bb.aq ], [ %i.ew, %bb.ar ], [ %i.fc, %bb.au ], [ false, %bb.at ]
  store i32 %.sink, ptr %4, align 4, !tbaa !3
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNRSt8optionalIiE5valueEv.exit
  %.sroa.22.0 = phi ptr [ %.sroa.22.2145243, %_ZNRSt8optionalIiE5valueEv.exit ], [ %.sroa.22.0.ph, %.sink.split ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %.sroa.13.2151237, %_ZNRSt8optionalIiE5valueEv.exit ], [ %.sroa.13.0.ph, %.sink.split ] ; 3 uses
  %.4 = phi i1 [ false, %_ZNRSt8optionalIiE5valueEv.exit ], [ %.4.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  br i1 %.not159245, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.9.1153235, i64 %.sroa.0113.1155233
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !99
  store ptr %.sroa.9.1153235, ptr %16, align 8, !noalias !104
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21, !noalias !104
  call void @_ZN5folly6detail15str_to_integralInEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.17") align 16 %17, ptr noundef nonnull %16) #21, !noalias !104
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fl = load i8, ptr %i.fk, align 16, !tbaa !107, !noalias !110
  %i.fm = icmp eq i8 %i.fl, 1
  br i1 %i.fm, label %bb.ay, label %bb.ba, !prof !97

bb.ay:                                            ; preds = %bb.ax
  %i.fn = load i128, ptr %17, align 16, !tbaa !21, !noalias !110
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !115, !noalias !110 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.fj, align 8, !tbaa !115, !noalias !110 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !99
  %.not14.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fo, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ay, %bb.az
  %.01115.i.i.i.i.i.i = phi ptr [ %i.fo, %bb.az ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ay ] ; 2 uses
  %i.fp = load i8, ptr %.01115.i.i.i.i.i.i, align 1, !tbaa !13, !noalias !116
  %i.fq = sext i8 %i.fp to i32
  %i.fr = call i32 @isspace(i32 noundef %i.fq) #25, !noalias !116
  %.not12.not.i.i.not.i.i.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not12.not.i.i.not.i.i.i.i, label %.loopexit67.i, label %bb.az

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !99
  br label %.loopexit67.i

.loopexit67.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21, !noalias !124
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull @.str.2, i64 16, i64 0, ptr nonnull %15), !noalias !124
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %33, i8 noundef signext 1, ptr noundef nonnull %14)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.loopexit67.i
  %i.fs = load ptr, ptr %14, align 8, !tbaa !23, !noalias !124 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.bb
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13, !noalias !124
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i90

bb.bc:                                            ; preds = %.loopexit67.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %14, align 8, !tbaa !23, !noalias !124 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i84: ; preds = %bb.bc
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !13, !noalias !124
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i85: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !124
  br label %common.resume

.thread.i:                                        ; preds = %bb.az, %bb.ay
  store i128 %i.fn, ptr %5, align 16, !tbaa !21, !noalias !127
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i90: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !121
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

bb.bd:                                            ; preds = %.thread.i, %bb.aw
  %.not15.i = icmp eq i64 %.sroa.13.0, 0
  br i1 %.not15.i, label %_ZN8facebook5velox6StatusD2Ev.exit92.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gd = load i128, ptr %5, align 16, !tbaa !21, !noalias !127
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %.sroa.13.0
  %i.gf = load i128, ptr %i.ge, align 16, !tbaa !21, !noalias !127
  %i.gg = call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %i.gd, i128 %i.gf) ; 2 uses
  %i.gh = extractvalue { i128, i1 } %i.gg, 1
  %i.gi = extractvalue { i128, i1 } %i.gg, 0
  store i128 %i.gi, ptr %5, align 16, !noalias !127
  br i1 %i.gh, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21, !noalias !131
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.2, i64 16, i64 0, ptr nonnull %13), !noalias !131
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %33, i8 noundef signext 1, ptr noundef nonnull %12)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gj = load ptr, ptr %12, align 8, !tbaa !23, !noalias !131 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZN8facebook5velox6Status9UserErrorIJRA17_KcEEES1_DpOT_.exit22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20.i: ; preds = %bb.bg
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !13, !noalias !131
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #24
  br label %_ZN8facebook5velox6Status9UserErrorIJRA17_KcEEES1_DpOT_.exit22.i

bb.bh:                                            ; preds = %bb.bf
  %i.go = landingpad { ptr, i32 }
          cleanup
  %i.gp = load ptr, ptr %12, align 8, !tbaa !23, !noalias !131 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i17.i: ; preds = %bb.bh
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !13, !noalias !131
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i18.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !131
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA17_KcEEES1_DpOT_.exit22.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !128
  br label %_ZN8facebook5velox6StatusD2Ev.exit92

bb.bi:                                            ; preds = %bb.be
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.22.0, i64 %.sroa.13.0
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !134
  store ptr %.sroa.22.0, ptr %10, align 8, !noalias !137
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.gu, ptr %i.gv, align 8, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21, !noalias !137
  call void @_ZN5folly6detail15str_to_integralInEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.17") align 16 %11, ptr noundef nonnull %10) #21, !noalias !137
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gx = load i8, ptr %i.gw, align 16, !tbaa !107, !noalias !140
  %i.gy = icmp eq i8 %i.gx, 1
  br i1 %i.gy, label %bb.bj, label %bb.bl, !prof !97

bb.bj:                                            ; preds = %bb.bi
  %i.gz = load i128, ptr %11, align 16, !tbaa !21, !noalias !140
  %.sroa.0.0.copyload.i.i.i.i.i24.i = load ptr, ptr %10, align 8, !tbaa !115, !noalias !140 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i25.i = load ptr, ptr %i.gv, align 8, !tbaa !115, !noalias !140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !134
  %.not14.i.i.i.i.i26.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i24.i, %.sroa.2.0.copyload.i.i.i.i.i25.i
  br i1 %.not14.i.i.i.i.i26.i, label %.loopexit66.i, label %.lr.ph.i.i.i.i.i27.i

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i27.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i28.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i30.i = icmp eq ptr %i.ha, %.sroa.2.0.copyload.i.i.i.i.i25.i
  br i1 %.not.i.i.i.i.i30.i, label %.loopexit66.i, label %.lr.ph.i.i.i.i.i27.i

.lr.ph.i.i.i.i.i27.i:                             ; preds = %bb.bj, %bb.bk
  %.01115.i.i.i.i.i28.i = phi ptr [ %i.ha, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i.i.i24.i, %bb.bj ] ; 2 uses
  %i.hb = load i8, ptr %.01115.i.i.i.i.i28.i, align 1, !tbaa !13, !noalias !145
  %i.hc = sext i8 %i.hb to i32
  %i.hd = call i32 @isspace(i32 noundef %i.hc) #25, !noalias !145
  %.not12.not.i.i.not.i.i.i29.i = icmp eq i32 %i.hd, 0
  br i1 %.not12.not.i.i.not.i.i.i29.i, label %.loopexit.i, label %bb.bk

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !134
  br label %.loopexit.i
end_hunk_0
